package com.netease.mpay.e.c;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.e.c.a.d;
import com.netease.mpay.widget.ad;
import com.netease.mpay.widget.bd;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class j extends com.netease.mpay.e.c.a.d {

    /* loaded from: classes.dex */
    public static class a {
        public static Bitmap a(Context context, String str, String str2) {
            return a(context, str, str2, -1, -1);
        }

        public static Bitmap a(Context context, String str, String str2, int i, int i2) {
            if (!com.netease.mpay.e.c.a.d.d()) {
                return null;
            }
            String b = bd.b(bd.a(str2.getBytes()));
            j jVar = new j(context, str);
            String str3 = j.a() + b;
            File file = new File(str3);
            com.netease.mpay.e.b.m a = jVar.a(b);
            if (a == null) {
                return null;
            }
            if (file.exists() && file.isFile()) {
                if (a.b.equals(file.getName() + String.valueOf(file.length()))) {
                    Bitmap c = (i2 <= 0 || i <= 0) ? c(str3) : a(file, i, i2);
                    if (c != null) {
                        return c;
                    }
                }
                file.delete();
            }
            jVar.b(a);
            return null;
        }

        private static Bitmap a(File file, int i, int i2) {
            int i3 = 1;
            try {
                int a = ad.a(file);
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                FileInputStream fileInputStream = new FileInputStream(file);
                BitmapFactory.decodeStream(fileInputStream, null, options);
                fileInputStream.close();
                int i4 = options.outWidth;
                int i5 = options.outHeight;
                while (i4 / 2 > i && i5 / 2 > i2) {
                    i4 /= 2;
                    i5 /= 2;
                    i3 *= 2;
                }
                BitmapFactory.Options options2 = new BitmapFactory.Options();
                options2.inSampleSize = i3;
                FileInputStream fileInputStream2 = new FileInputStream(file);
                Bitmap decodeStream = BitmapFactory.decodeStream(fileInputStream2, null, options2);
                fileInputStream2.close();
                Matrix matrix = new Matrix();
                matrix.setRotate(a);
                return a == 0 ? decodeStream : Bitmap.createBitmap(decodeStream, 0, 0, decodeStream.getWidth(), decodeStream.getHeight(), matrix, true);
            } catch (FileNotFoundException e) {
                Cdo.a((Throwable) e);
                return null;
            } catch (IOException e2) {
                Cdo.a((Throwable) e2);
                return null;
            }
        }

        public static Bitmap a(String str) {
            return a(b(str));
        }

        private static Bitmap a(byte[] bArr) {
            if (bArr == null) {
                return null;
            }
            int a = ad.a(bArr);
            Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
            if (a == 0 || decodeByteArray == null) {
                return decodeByteArray;
            }
            Matrix matrix = new Matrix();
            matrix.setRotate(a);
            return Bitmap.createBitmap(decodeByteArray, 0, 0, decodeByteArray.getWidth(), decodeByteArray.getHeight(), matrix, true);
        }

        public static Bitmap b(Context context, String str, String str2, int i, int i2) {
            Bitmap a;
            String b = bd.b(bd.a(str2.getBytes()));
            if (!com.netease.mpay.e.c.a.d.d()) {
                byte[] b2 = b(str2);
                if (b2 == null) {
                    return null;
                }
                File cacheDir = context.getCacheDir();
                if (!cacheDir.exists()) {
                    cacheDir.mkdirs();
                }
                File file = new File(cacheDir, b);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    fileOutputStream.write(b2);
                    fileOutputStream.close();
                    return a(file, i, i2);
                } catch (FileNotFoundException e) {
                    Cdo.a((Throwable) e);
                    return null;
                } catch (IOException e2) {
                    Cdo.a((Throwable) e2);
                    return null;
                }
            }
            j jVar = new j(context, str);
            File file2 = new File(j.a() + b);
            com.netease.mpay.e.b.m a2 = jVar.a(b);
            if (a2 != null) {
                if (file2.exists() && file2.isFile()) {
                    if (a2.b.equals(file2.getName() + String.valueOf(file2.length())) && (a = a(file2, i, i2)) != null) {
                        return a;
                    }
                    file2.delete();
                }
                jVar.b(a2);
            }
            byte[] b3 = b(str2);
            if (b3 == null) {
                return null;
            }
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                fileOutputStream2.write(b3);
                fileOutputStream2.close();
                com.netease.mpay.e.b.m mVar = new com.netease.mpay.e.b.m();
                mVar.a = b;
                mVar.b = b + b3.length;
                jVar.a(mVar);
                return a(file2, i, i2);
            } catch (IOException e3) {
                Cdo.a((Throwable) e3);
                return null;
            }
        }

        public static void b(Context context, String str, String str2) {
            if (com.netease.mpay.e.c.a.d.d()) {
                j jVar = new j(context, str);
                String b = bd.b(bd.a(str2.getBytes()));
                File file = new File(j.a() + b);
                com.netease.mpay.e.b.m a = jVar.a(b);
                if (a != null) {
                    if (file.exists() && file.isFile()) {
                        if (a.b.equals(file.getName() + String.valueOf(file.length()))) {
                            return;
                        } else {
                            file.delete();
                        }
                    }
                    jVar.b(a);
                }
                byte[] b2 = b(str2);
                if (b2 != null) {
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        fileOutputStream.write(b2);
                        fileOutputStream.close();
                        com.netease.mpay.e.b.m mVar = new com.netease.mpay.e.b.m();
                        mVar.a = b;
                        mVar.b = b + b2.length;
                        jVar.a(mVar);
                    } catch (IOException e) {
                        Cdo.a((Throwable) e);
                    }
                }
            }
        }

        private static byte[] b(String str) {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setConnectTimeout(15000);
                InputStream inputStream = httpURLConnection.getInputStream();
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read == -1) {
                        inputStream.close();
                        return byteArrayOutputStream.toByteArray();
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
            } catch (IOException e) {
                return null;
            }
        }

        public static Bitmap c(Context context, String str, String str2) {
            Bitmap c;
            if (!com.netease.mpay.e.c.a.d.d()) {
                return a(b(str2));
            }
            j jVar = new j(context, str);
            String b = bd.b(bd.a(str2.getBytes()));
            String str3 = j.a() + b;
            File file = new File(str3);
            com.netease.mpay.e.b.m a = jVar.a(b);
            if (a != null) {
                if (file.exists() && file.isFile()) {
                    if (a.b.equals(file.getName() + String.valueOf(file.length())) && (c = c(str3)) != null) {
                        return c;
                    }
                    file.delete();
                }
                jVar.b(a);
            }
            byte[] b2 = b(str2);
            if (b2 == null) {
                return null;
            }
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                fileOutputStream.write(b2);
                fileOutputStream.close();
                com.netease.mpay.e.b.m mVar = new com.netease.mpay.e.b.m();
                mVar.a = b;
                mVar.b = b + b2.length;
                jVar.a(mVar);
                return a(b2);
            } catch (IOException e) {
                Cdo.a((Throwable) e);
                return null;
            }
        }

        private static Bitmap c(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            try {
                return a(bd.a(new FileInputStream(str)));
            } catch (FileNotFoundException e) {
                e.printStackTrace();
                return null;
            } catch (IOException e2) {
                e2.printStackTrace();
                return null;
            }
        }
    }

    public j(Context context, String str) {
        super(context, str, "cache.xml");
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static String a() {
        String str = d.a.a() + "images" + File.separator;
        File file = new File(str);
        if (!file.exists() || !file.isDirectory()) {
            file.mkdirs();
        }
        return str;
    }

    private void a(com.netease.mpay.e.b.n nVar) {
        Cdo.a("saveImageStore", nVar);
        c(b(nVar.a()));
    }

    private com.netease.mpay.e.b.n b() {
        byte[] a2;
        byte[] c = c();
        if (c == null || (a2 = a(c)) == null) {
            return null;
        }
        return com.netease.mpay.e.b.n.a(a2);
    }

    public com.netease.mpay.e.b.m a(String str) {
        if (!d()) {
            return null;
        }
        com.netease.mpay.e.b.n b = b();
        if (b == null || b.a == null) {
            return null;
        }
        Iterator it = b.a.iterator();
        while (it.hasNext()) {
            com.netease.mpay.e.b.m mVar = (com.netease.mpay.e.b.m) it.next();
            if (mVar.a.equals(str)) {
                com.netease.mpay.e.b.m mVar2 = new com.netease.mpay.e.b.m();
                mVar2.a = mVar.a;
                mVar2.b = mVar.b;
                Cdo.a("getImageInfo", mVar2);
                return mVar2;
            }
        }
        return null;
    }

    public void a(com.netease.mpay.e.b.m mVar) {
        com.netease.mpay.e.b.n nVar;
        if (d()) {
            com.netease.mpay.e.b.n b = b();
            if (b != null && b.a != null) {
                Iterator it = b.a.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        nVar = b;
                        break;
                    }
                    com.netease.mpay.e.b.m mVar2 = (com.netease.mpay.e.b.m) it.next();
                    if (mVar2.a.equals(mVar.a)) {
                        b.a.remove(mVar2);
                        nVar = b;
                        break;
                    }
                }
            } else {
                nVar = new com.netease.mpay.e.b.n();
                nVar.a = new ArrayList();
            }
            nVar.a.add(mVar);
            a(nVar);
        }
    }

    public void b(com.netease.mpay.e.b.m mVar) {
        com.netease.mpay.e.b.n b;
        if (!d() || (b = b()) == null || b.a == null) {
            return;
        }
        Iterator it = b.a.iterator();
        while (it.hasNext()) {
            com.netease.mpay.e.b.m mVar2 = (com.netease.mpay.e.b.m) it.next();
            if (mVar2.a.equals(mVar.a) && mVar2.b.equals(mVar.b)) {
                b.a.remove(mVar2);
                a(b);
                return;
            }
        }
    }
}
