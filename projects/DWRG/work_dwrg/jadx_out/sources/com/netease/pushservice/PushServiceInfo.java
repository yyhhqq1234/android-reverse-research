package com.netease.pushservice;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.netease.ntunisdk.base.PatchPlaceholder;
import java.util.Arrays;
import java.util.Random;
import java.util.UUID;

/* loaded from: classes.dex */
public class PushServiceInfo {
    private static final String TAG = "NGPush_" + PushServiceInfo.class.getSimpleName();
    public String mPushSrv = "unipush.x.netease.com:50441";
    public String mDevId = "";
    private boolean mbReset = false;
    private char[] charArray = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};

    private void patchPlaceholder() {
        Log.i(TAG, PatchPlaceholder.class.getSimpleName());
    }

    public void resetUUID() {
        this.mbReset = true;
        this.mDevId = "";
    }

    public void setPushSrv(String pushSrv) {
        if (!TextUtils.isEmpty(pushSrv)) {
            this.mPushSrv = pushSrv;
        }
    }

    public String getPushSrv() {
        return this.mPushSrv;
    }

    public String createUUID(Context context) {
        return createSpecialUUID(context);
    }

    private String createFixUUID(Context context) {
        TelephonyManager tm = (TelephonyManager) context.getSystemService("phone");
        String tmDevice = "";
        String tmSerial = "";
        try {
            tmDevice = tm.getDeviceId();
            tmSerial = tm.getSimSerialNumber();
        } catch (Exception e) {
            Log.e(TAG, "createFixUUID exception:" + e.getMessage());
            e.printStackTrace();
        }
        String androidId = Settings.Secure.getString(context.getContentResolver(), "android_id");
        UUID deviceUuid = new UUID(androidId.hashCode(), (tmDevice.hashCode() << 32) | tmSerial.hashCode());
        String uniqueId = deviceUuid.toString();
        return uniqueId;
    }

    private String createRandomUUID() {
        return UUID.randomUUID().toString();
    }

    private String createSpecialUUID(Context context) {
        StringBuilder stringBuilder = new StringBuilder();
        int length = this.charArray.length;
        StringBuilder tmpStringBuilder = new StringBuilder();
        long timeStamp = System.currentTimeMillis();
        Log.d(TAG, "time:" + timeStamp);
        for (int i = 0; i < 8; i++) {
            tmpStringBuilder.append(this.charArray[(int) (timeStamp % length)]);
            timeStamp /= length;
        }
        String ts = tmpStringBuilder.reverse().toString();
        if (TextUtils.isEmpty(ts)) {
            ts = createRandom(8, this.charArray);
        }
        appendString(stringBuilder, ts, 8);
        String sModel = Build.MODEL;
        if (TextUtils.isEmpty(sModel)) {
            sModel = createRandom(6, this.charArray);
        }
        Log.d(TAG, "model:" + sModel);
        appendString(stringBuilder, sModel, 6);
        String tmDevice = createRandom(6, this.charArray);
        try {
            tmDevice = Settings.Secure.getString(context.getContentResolver(), "android_id");
            TelephonyManager tm = (TelephonyManager) context.getSystemService("phone");
            if (tm.getDeviceId() != null) {
                tmDevice = tm.getDeviceId();
            }
        } catch (Exception e) {
            Log.e(TAG, "createSpecialUUID exception:" + e.getMessage());
            e.printStackTrace();
        }
        if (TextUtils.isEmpty(tmDevice)) {
            tmDevice = createRandom(6, this.charArray);
        }
        Log.d(TAG, "IMEI:" + tmDevice);
        appendString(stringBuilder, tmDevice, -6);
        String sMac = "";
        WifiManager wifiMgr = (WifiManager) context.getSystemService("wifi");
        WifiInfo info = wifiMgr == null ? null : wifiMgr.getConnectionInfo();
        if (info != null) {
            sMac = info.getMacAddress();
            if ("40:F3:08:3F:FA:D3".equals(sMac)) {
                return "etrl52GTI95035737640F308png781lw";
            }
            if (sMac == null) {
                sMac = "";
            }
        }
        if (sMac.contains("00:00:00")) {
            sMac = createRandom(6, this.charArray);
        }
        if (TextUtils.isEmpty(sMac)) {
            sMac = createRandom(6, this.charArray);
        }
        Log.d(TAG, "MAC:" + sMac);
        appendString(stringBuilder, sMac, -6);
        String randomString = createRandom(6, this.charArray);
        appendString(stringBuilder, randomString, 6);
        return stringBuilder.toString();
    }

    @SuppressLint({"DefaultLocale"})
    private void appendString(StringBuilder dstStringBuilder, String srcString, int nsize) {
        int size = Math.abs(nsize);
        String srcString2 = srcString.toLowerCase().replaceAll("\\W+", "");
        if (srcString2.length() > size) {
            if (nsize > 0) {
                srcString2 = srcString2.substring(0, size);
            } else {
                srcString2 = srcString2.substring(srcString2.length() - size);
            }
        }
        StringBuilder tmpStringBuilder = new StringBuilder(srcString2);
        Random r = new Random();
        for (int i = 0; i < size; i++) {
            if (i == srcString2.length()) {
                tmpStringBuilder.append('_');
            } else if (i > srcString2.length()) {
                tmpStringBuilder.append(this.charArray[r.nextInt(this.charArray.length)]);
            } else if (Arrays.binarySearch(this.charArray, srcString2.charAt(i)) < 0) {
                tmpStringBuilder.setCharAt(i, this.charArray[r.nextInt(this.charArray.length)]);
            }
        }
        dstStringBuilder.append(tmpStringBuilder.subSequence(0, size));
    }

    private String createRandom(int size, char[] array) {
        int length = array.length;
        StringBuilder stringBuilder = new StringBuilder();
        Random random = new Random();
        for (int i = 0; i < size; i++) {
            int iRandom = random.nextInt(length);
            stringBuilder.append(array[iRandom]);
        }
        return stringBuilder.toString();
    }
}
