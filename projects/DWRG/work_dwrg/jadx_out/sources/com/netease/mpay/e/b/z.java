package com.netease.mpay.e.b;

import android.content.Context;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.download.Const;
import com.netease.mpay.Cdo;
import com.netease.mpay.e.c.a.d;
import com.netease.mpay.widget.bd;
import com.tencent.connect.common.Constants;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.HashMap;

/* loaded from: classes.dex */
public class z {
    public String a;
    public String b;
    public String c;
    public String d;
    public String e;
    public a f;
    public String g;
    public HashMap h;

    /* loaded from: classes.dex */
    public enum a {
        INIT,
        UN_INSTALL,
        INSTALLED,
        INVALID,
        VALID;

        a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        static a a(int i) {
            try {
                return values()[i];
            } catch (IndexOutOfBoundsException e) {
                return INIT;
            }
        }
    }

    public z(String str, String str2, String str3, String str4, String str5, String str6, a aVar) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.g = str6;
        this.f = aVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static z a(byte[] bArr) {
        try {
            HashMap a2 = com.netease.mpay.e.a.a((HashMap) com.netease.mpay.e.a.a(bArr), String.class, String.class);
            z zVar = new z((String) a2.remove("0"), (String) a2.remove("1"), (String) a2.remove("2"), (String) a2.remove("3"), (String) a2.remove("4"), (String) a2.remove(Constants.VIA_SHARE_TYPE_INFO), a.a(Integer.valueOf((String) a2.remove("5")).intValue()));
            zVar.h = a2;
            return zVar;
        } catch (ClassCastException e) {
            return null;
        }
    }

    private String b(Context context) {
        return context.getCacheDir().getPath() + File.separator + bd.b(bd.a(this.e.getBytes())) + ".jar";
    }

    public static String c() {
        return d.a.a() + Const.TYPE_TARGET_PATCH + File.separator + bd.b(bd.a("2.14.1".getBytes()));
    }

    private boolean e() {
        return TextUtils.equals("b1fbce6de7", this.g) && (this.f == a.INIT || this.f == a.VALID);
    }

    public File a(Context context) {
        if (!e() || !new File(b()).exists()) {
            return null;
        }
        String b = b();
        String b2 = b(context);
        try {
            com.netease.mpay.widget.ac.a("2825f7647943f932".getBytes(), new FileInputStream(b), new FileOutputStream(b2), "mpaympaympaympay".getBytes(), "AES/CBC/PKCS7Padding");
            if (TextUtils.equals(new String(com.netease.mpay.widget.ac.a("MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDO3FVaJTbxJnTgNayd9HgvezmG\n/tCdtzkHS0n4m6FcsNd7H9ngXEObYupPgjfgDBkAdOEF9WKtImlxbZco8ACWRPLk\noPNq5OrwxXqqh4biIfrY8jVzUoH9dYvSl3SwvTooh1PUe5m+P9sAstrzlQ6EUM9F\nOfIfVAwvBirt5BREbQIDAQAB\n", com.netease.mpay.widget.y.a(this.d, 0))), new String(bd.a(new File(b2))))) {
                return new File(b2);
            }
        } catch (IOException e) {
            Cdo.a((Throwable) e);
        } catch (NullPointerException e2) {
            Cdo.a((Throwable) e2);
        }
        File file = new File(b);
        if (file.exists()) {
            file.delete();
        }
        File file2 = new File(b2);
        if (file2.exists()) {
            file2.delete();
        }
        return null;
    }

    public void a() {
        if (!e() || new File(b()).exists()) {
            return;
        }
        try {
            InputStream openStream = new URL(this.e).openStream();
            FileOutputStream fileOutputStream = new FileOutputStream(b());
            byte[] bArr = new byte[1024];
            while (true) {
                int read = openStream.read(bArr);
                if (read <= 0) {
                    openStream.close();
                    fileOutputStream.close();
                    return;
                }
                fileOutputStream.write(bArr, 0, read);
            }
        } catch (IOException e) {
            Cdo.a((Throwable) e);
        }
    }

    public boolean a(z zVar) {
        return zVar != null && bd.b(zVar.a, this.a);
    }

    public String b() {
        String str = c() + File.separator;
        File file = new File(str);
        if (!file.exists() || !file.isDirectory()) {
            file.mkdirs();
        }
        return str + bd.b(bd.a(this.e.getBytes()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] d() {
        HashMap hashMap = new HashMap();
        if (this.h != null) {
            hashMap.putAll(this.h);
        }
        hashMap.put("0", this.a);
        hashMap.put("1", this.b);
        hashMap.put("2", this.c);
        hashMap.put("3", this.d);
        hashMap.put("4", this.e);
        hashMap.put(Constants.VIA_SHARE_TYPE_INFO, this.g);
        hashMap.put("5", String.valueOf(this.f.ordinal()));
        return com.netease.mpay.e.a.a(hashMap);
    }
}
