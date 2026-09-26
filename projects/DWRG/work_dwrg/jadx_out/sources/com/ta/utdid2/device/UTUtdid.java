package com.ta.utdid2.device;

import android.content.Context;
import android.provider.Settings;
import com.ta.utdid2.android.utils.Base64;
import com.ta.utdid2.android.utils.IntUtils;
import com.ta.utdid2.android.utils.PhoneInfoUtils;
import com.ta.utdid2.android.utils.StringUtils;
import com.ta.utdid2.core.persistent.PersistentConfiguration;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.util.Random;
import java.util.regex.Pattern;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public class UTUtdid {
    private static final String HMAC_KEY = "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161";
    private static final String S_GLOBAL_PERSISTENT_CONFIG_KEY = "Alvin2";
    private static final String S_LOCAL_STORAGE_KEY = "ContextData";
    private static final String S_LOCAL_STORAGE_NAME = ".DataStorage";
    static final String UM_SETTINGS_STORAGE = "dxCRMxhQkdGePGnp";
    static final String UM_SETTINGS_STORAGE_NEW = "mqBRboGZkQPcAkyk";
    private String mCBDomain;
    private String mCBKey;
    private Context mContext;
    private PersistentConfiguration mPC;
    private PersistentConfiguration mTaoPC;
    private UTUtdidHelper mUtdidHelper;
    private static final Object CREATE_LOCK = new Object();
    private static UTUtdid s_umutdid = null;
    private static final String S_GLOBAL_PERSISTENT_CONFIG_DIR = ".UTSystemConfig" + File.separator + "Global";
    private String mUtdid = null;
    private Pattern mPattern = Pattern.compile("[^0-9a-zA-Z=/+]+");

    public UTUtdid(Context context) {
        this.mContext = null;
        this.mUtdidHelper = null;
        this.mCBKey = "xx_utdid_key";
        this.mCBDomain = "xx_utdid_domain";
        this.mPC = null;
        this.mTaoPC = null;
        this.mContext = context;
        this.mTaoPC = new PersistentConfiguration(context, S_GLOBAL_PERSISTENT_CONFIG_DIR, S_GLOBAL_PERSISTENT_CONFIG_KEY, false, true);
        this.mPC = new PersistentConfiguration(context, S_LOCAL_STORAGE_NAME, S_LOCAL_STORAGE_KEY, false, true);
        this.mUtdidHelper = new UTUtdidHelper();
        this.mCBKey = String.format("K_%d", Integer.valueOf(StringUtils.hashCode(this.mCBKey)));
        this.mCBDomain = String.format("D_%d", Integer.valueOf(StringUtils.hashCode(this.mCBDomain)));
    }

    private void _removeIllegalKeys() {
        boolean z = true;
        if (this.mTaoPC != null) {
            if (StringUtils.isEmpty(this.mTaoPC.getString("UTDID2"))) {
                String string = this.mTaoPC.getString("UTDID");
                if (!StringUtils.isEmpty(string)) {
                    saveUtdidToTaoPPC(string);
                }
            }
            boolean z2 = false;
            if (!StringUtils.isEmpty(this.mTaoPC.getString("DID"))) {
                this.mTaoPC.remove("DID");
                z2 = true;
            }
            if (!StringUtils.isEmpty(this.mTaoPC.getString("EI"))) {
                this.mTaoPC.remove("EI");
                z2 = true;
            }
            if (StringUtils.isEmpty(this.mTaoPC.getString("SI"))) {
                z = z2;
            } else {
                this.mTaoPC.remove("SI");
            }
            if (z) {
                this.mTaoPC.commit();
            }
        }
    }

    public static UTUtdid instance(Context context) {
        if (context != null && s_umutdid == null) {
            synchronized (CREATE_LOCK) {
                if (s_umutdid == null) {
                    UTUtdid uTUtdid = new UTUtdid(context);
                    s_umutdid = uTUtdid;
                    uTUtdid._removeIllegalKeys();
                }
            }
        }
        return s_umutdid;
    }

    private void saveUtdidToTaoPPC(String str) {
        if (isValidUTDID(str)) {
            if (str.endsWith("\n")) {
                str = str.substring(0, str.length() - 1);
            }
            if (str.length() == 24 && this.mTaoPC != null) {
                this.mTaoPC.putString("UTDID2", str);
                this.mTaoPC.commit();
            }
        }
    }

    private void saveUtdidToLocalStorage(String str) {
        if (str != null && this.mPC != null && !str.equals(this.mPC.getString(this.mCBKey))) {
            this.mPC.putString(this.mCBKey, str);
            this.mPC.commit();
        }
    }

    private void saveUtdidToNewSettings(String str) {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.WRITE_SETTINGS") == 0 && isValidUTDID(str)) {
            if (str.endsWith("\n")) {
                str = str.substring(0, str.length() - 1);
            }
            if (24 == str.length()) {
                String str2 = null;
                try {
                    str2 = Settings.System.getString(this.mContext.getContentResolver(), UM_SETTINGS_STORAGE_NEW);
                } catch (Exception e) {
                }
                if (!isValidUTDID(str2)) {
                    try {
                        Settings.System.putString(this.mContext.getContentResolver(), UM_SETTINGS_STORAGE_NEW, str);
                    } catch (Exception e2) {
                    }
                }
            }
        }
    }

    private void syncUTDIDToSettings(String str) {
        String str2 = null;
        try {
            str2 = Settings.System.getString(this.mContext.getContentResolver(), UM_SETTINGS_STORAGE);
        } catch (Exception e) {
        }
        if (!str.equals(str2)) {
            try {
                Settings.System.putString(this.mContext.getContentResolver(), UM_SETTINGS_STORAGE, str);
            } catch (Exception e2) {
            }
        }
    }

    private void saveUtdidToSettings(String str) {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.WRITE_SETTINGS") == 0 && str != null) {
            syncUTDIDToSettings(str);
        }
    }

    private String getUtdidFromTaoPPC() {
        if (this.mTaoPC != null) {
            String string = this.mTaoPC.getString("UTDID2");
            if (!StringUtils.isEmpty(string) && this.mUtdidHelper.packUtdidStr(string) != null) {
                return string;
            }
        }
        return null;
    }

    private boolean isValidUTDID(String str) {
        if (str == null) {
            return false;
        }
        if (str.endsWith("\n")) {
            str = str.substring(0, str.length() - 1);
        }
        return 24 == str.length() && !this.mPattern.matcher(str).find();
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x007b A[Catch: all -> 0x0044, TryCatch #2 {, blocks: (B:4:0x0002, B:6:0x0006, B:12:0x000c, B:13:0x0018, B:15:0x001e, B:18:0x0024, B:19:0x0030, B:21:0x0036, B:23:0x0040, B:24:0x004a, B:26:0x0054, B:28:0x0060, B:30:0x0063, B:31:0x006f, B:33:0x007b, B:34:0x0091, B:36:0x009b, B:38:0x00a3, B:39:0x00a6, B:40:0x00b0, B:42:0x00be, B:44:0x00c8, B:45:0x00ce, B:47:0x00d4, B:49:0x00e0, B:51:0x00e4, B:52:0x00e7, B:54:0x00f0, B:56:0x00f6, B:59:0x010c, B:60:0x010f, B:61:0x0112, B:65:0x0117), top: B:3:0x0002, inners: #4 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized java.lang.String getValue() {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ta.utdid2.device.UTUtdid.getValue():java.lang.String");
    }

    private final byte[] _generateUtdid() throws Exception {
        String sb;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int currentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        int nextInt = new Random().nextInt();
        byte[] bytes = IntUtils.getBytes(currentTimeMillis);
        byte[] bytes2 = IntUtils.getBytes(nextInt);
        byteArrayOutputStream.write(bytes, 0, 4);
        byteArrayOutputStream.write(bytes2, 0, 4);
        byteArrayOutputStream.write(3);
        byteArrayOutputStream.write(0);
        try {
            sb = PhoneInfoUtils.getImei(this.mContext);
        } catch (Exception e) {
            sb = new StringBuilder().append(new Random().nextInt()).toString();
        }
        byteArrayOutputStream.write(IntUtils.getBytes(StringUtils.hashCode(sb)), 0, 4);
        byteArrayOutputStream.write(IntUtils.getBytes(StringUtils.hashCode(_calcHmac(byteArrayOutputStream.toByteArray()))));
        return byteArrayOutputStream.toByteArray();
    }

    private static String _calcHmac(byte[] bArr) throws Exception {
        Mac mac = Mac.getInstance("HmacSHA1");
        mac.init(new SecretKeySpec(HMAC_KEY.getBytes(), mac.getAlgorithm()));
        return Base64.encodeToString(mac.doFinal(bArr), 2);
    }
}
