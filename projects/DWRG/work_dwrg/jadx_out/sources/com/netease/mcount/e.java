package com.netease.mcount;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import com.netease.download.Const;
import com.netease.push.utils.PushConstants;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.io.StreamCorruptedException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class e {
    private Context c;
    private int f = Const.DOWNLOAD_SPEED_LIMIT;
    private boolean g = true;
    boolean a = false;
    boolean b = false;
    private byte[] e = r.a(296820617620323457L);
    private String d = b(h());

    public e(Context context) {
        this.c = context;
        g();
    }

    private int a(byte[] bArr, int i) {
        if (bArr == null || bArr.length < this.e.length + i) {
            return -1;
        }
        while (i <= bArr.length - this.e.length) {
            if (b(bArr, i)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    private String a(String str) {
        StringBuffer stringBuffer = new StringBuffer(str);
        stringBuffer.append(File.separator);
        stringBuffer.append("netease");
        stringBuffer.append(File.separator);
        stringBuffer.append("mcount");
        stringBuffer.append(File.separator);
        stringBuffer.append("logs");
        stringBuffer.append(File.separator);
        return stringBuffer.toString();
    }

    private void a(g gVar) {
        if (!i() || gVar == null || gVar.a == null) {
            return;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            Iterator it = gVar.a.iterator();
            while (it.hasNext()) {
                byteArrayOutputStream.write(c(((f) it.next()).a()));
                byteArrayOutputStream.write(this.e);
            }
            File file = new File(this.d);
            if ((file.exists() && !file.delete()) || byteArrayOutputStream.size() < 1) {
                byteArrayOutputStream.close();
                return;
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            byteArrayOutputStream.writeTo(fileOutputStream);
            fileOutputStream.close();
            byteArrayOutputStream.close();
        } catch (IOException e) {
            r.a(e);
        }
    }

    private byte[] a(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        if (i2 - i <= 0) {
            return null;
        }
        for (int i4 = i; i4 < i2; i4++) {
            bArr2[(i4 - i) + i3] = bArr[i4];
        }
        return bArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Serializable b(byte[] bArr) {
        try {
            return (Serializable) new ObjectInputStream(new ByteArrayInputStream(bArr)).readObject();
        } catch (StreamCorruptedException e) {
            r.a(e);
            return null;
        } catch (IOException e2) {
            r.a(e2);
            return null;
        } catch (ClassCastException e3) {
            r.a(e3);
            return null;
        } catch (ClassNotFoundException e4) {
            r.a(e4);
            return null;
        }
    }

    private String b(String str) {
        return str + r.b(r.a((this.c.getPackageName() + PushConstants.KEY_SEPARATOR + new q(this.c).a()).getBytes())) + ".log";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static HashMap b(HashMap hashMap, Class cls, Class cls2) {
        if (hashMap == null) {
            return null;
        }
        HashMap hashMap2 = new HashMap();
        for (Object obj : hashMap.keySet().toArray()) {
            if (obj != null && !cls.isAssignableFrom(obj.getClass())) {
                throw new ClassCastException("Cannot cast to HashMap<" + cls.getSimpleName() + ", " + cls2.getSimpleName() + ">, key " + obj + " is not a " + cls.getSimpleName());
            }
            Object obj2 = hashMap.get(obj);
            if (obj2 != null && !cls2.isAssignableFrom(obj2.getClass())) {
                throw new ClassCastException("Cannot cast to HashMap<" + cls.getSimpleName() + ", " + cls2.getSimpleName() + ">, value " + obj2 + " is not a " + cls2.getSimpleName());
            }
            hashMap2.put(cls.cast(obj), cls2.cast(obj2));
        }
        return hashMap2;
    }

    private boolean b(byte[] bArr, int i) {
        if (bArr.length < this.e.length + i) {
            return false;
        }
        for (int i2 = 0; i2 < this.e.length; i2++) {
            if (this.e[i2] != bArr[i + i2]) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:35:0x003e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] b(java.io.Serializable r4) {
        /*
            r0 = 0
            java.io.ByteArrayOutputStream r3 = new java.io.ByteArrayOutputStream
            r3.<init>()
            java.io.ObjectOutputStream r2 = new java.io.ObjectOutputStream     // Catch: java.io.IOException -> L26 java.lang.Throwable -> L39
            r2.<init>(r3)     // Catch: java.io.IOException -> L26 java.lang.Throwable -> L39
            r2.writeObject(r4)     // Catch: java.lang.Throwable -> L4a java.io.IOException -> L4c
            r2.close()     // Catch: java.lang.Throwable -> L4a java.io.IOException -> L4c
            r3.flush()     // Catch: java.lang.Throwable -> L4a java.io.IOException -> L4c
            byte[] r0 = r3.toByteArray()     // Catch: java.lang.Throwable -> L4a java.io.IOException -> L4c
            if (r2 == 0) goto L1d
            r2.close()     // Catch: java.io.IOException -> L21
        L1d:
            r3.close()     // Catch: java.io.IOException -> L21
        L20:
            return r0
        L21:
            r1 = move-exception
            com.netease.mcount.r.a(r1)
            goto L20
        L26:
            r1 = move-exception
            r2 = r0
        L28:
            com.netease.mcount.r.a(r1)     // Catch: java.lang.Throwable -> L4a
            if (r2 == 0) goto L30
            r2.close()     // Catch: java.io.IOException -> L34
        L30:
            r3.close()     // Catch: java.io.IOException -> L34
            goto L20
        L34:
            r1 = move-exception
            com.netease.mcount.r.a(r1)
            goto L20
        L39:
            r1 = move-exception
            r2 = r0
            r0 = r1
        L3c:
            if (r2 == 0) goto L41
            r2.close()     // Catch: java.io.IOException -> L45
        L41:
            r3.close()     // Catch: java.io.IOException -> L45
        L44:
            throw r0
        L45:
            r1 = move-exception
            com.netease.mcount.r.a(r1)
            goto L44
        L4a:
            r0 = move-exception
            goto L3c
        L4c:
            r1 = move-exception
            goto L28
        */
        throw new UnsupportedOperationException("Method not decompiled: com.netease.mcount.e.b(java.io.Serializable):byte[]");
    }

    private g c(String str) {
        int i = 0;
        g gVar = new g();
        try {
            File file = new File(str);
            if (!file.exists()) {
                return null;
            }
            FileInputStream fileInputStream = new FileInputStream(file);
            byte[] bArr = new byte[fileInputStream.available()];
            fileInputStream.read(bArr);
            while (true) {
                int a = a(bArr, i);
                if (a <= 0) {
                    break;
                }
                byte[] bArr2 = new byte[a - i];
                a(bArr, i, a, bArr2, 0);
                gVar.a.add(f.a(d(bArr2)));
                i = a + this.e.length;
            }
            fileInputStream.close();
            if (gVar.a.size() >= 1) {
                return gVar;
            }
            file.delete();
            return null;
        } catch (IOException e) {
            r.a(e);
            return null;
        } catch (ArrayIndexOutOfBoundsException e2) {
            r.a(e2);
            return null;
        } catch (NullPointerException e3) {
            r.a(e3);
            return null;
        } catch (RuntimeException e4) {
            r.a(e4);
            return null;
        } catch (Exception e5) {
            r.a(e5);
            return null;
        }
    }

    private byte[] c(byte[] bArr) {
        byte[] a = r.a(bArr);
        byte[] bArr2 = new byte[bArr.length + 16];
        a(bArr, 0, bArr.length, bArr2, 0);
        a(a, 0, 16, bArr2, bArr.length);
        return i.a(bArr2, j.d(this.c));
    }

    private byte[] d(byte[] bArr) {
        int length;
        byte[] b = i.b(bArr, j.d(this.c));
        if (b != null && b.length - 16 > 0) {
            byte[] bArr2 = new byte[length];
            a(b, 0, length, bArr2, 0);
            byte[] bArr3 = new byte[16];
            a(b, b.length - 16, b.length, bArr3, 0);
            if (Arrays.equals(bArr3, r.a(bArr2))) {
                return bArr2;
            }
            return null;
        }
        return null;
    }

    private void f() {
        String externalStorageState = Environment.getExternalStorageState();
        if ("mounted".equals(externalStorageState)) {
            this.b = true;
            this.a = true;
        } else if ("mounted_ro".equals(externalStorageState)) {
            this.a = true;
            this.b = false;
        } else {
            this.b = false;
            this.a = false;
        }
    }

    private boolean g() {
        String b = b(a(Environment.getExternalStorageDirectory().getPath()));
        if (!i() || TextUtils.isEmpty(b) || !r.a(this.c, "android.permission.WRITE_EXTERNAL_STORAGE")) {
            return false;
        }
        File file = new File(b);
        File file2 = new File(this.d);
        if (file.exists() && file.isFile() && !file2.exists()) {
            return file.renameTo(file2);
        }
        return false;
    }

    @SuppressLint({"SdCardPath", "NewApi"})
    private String h() {
        f();
        File externalFilesDir = Build.VERSION.SDK_INT >= 8 ? this.c.getExternalFilesDir(null) : Environment.getExternalStorageDirectory();
        String path = externalFilesDir != null ? externalFilesDir.getPath() : null;
        this.f = Const.DOWNLOAD_SPEED_LIMIT;
        this.g = true;
        if (path == null || path.trim().length() == 0 || !a() || !this.a || !this.b) {
            path = this.c.getFilesDir().getPath();
            this.f = 1048576;
            this.g = false;
        }
        return a(path);
    }

    private boolean i() {
        try {
            File file = new File(h());
            if (file.exists()) {
                return true;
            }
            return file.mkdirs();
        } catch (Exception e) {
            return false;
        }
    }

    private g j() {
        String b;
        g c;
        if (!this.g || (c = c((b = b(a(this.c.getFilesDir().getPath()))))) == null) {
            return null;
        }
        File file = new File(b);
        if (file.exists() && file.delete()) {
            return c;
        }
        return null;
    }

    private int k() {
        File file = new File(this.d);
        if (!file.exists()) {
            return 0;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            int available = fileInputStream.available();
            fileInputStream.close();
            return available;
        } catch (IOException e) {
            return 0;
        }
    }

    public void a(f fVar) {
        if (i()) {
            if (k() > this.f) {
                d();
            }
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byteArrayOutputStream.write(c(fVar.a()));
                byteArrayOutputStream.write(this.e);
                FileOutputStream fileOutputStream = new FileOutputStream(new File(this.d), true);
                byteArrayOutputStream.writeTo(fileOutputStream);
                fileOutputStream.close();
                byteArrayOutputStream.close();
            } catch (IOException e) {
                r.a(e);
            }
        }
    }

    public void a(List list) {
        f fVar;
        if (list == null || list.size() < 1) {
            return;
        }
        g c = c(this.d);
        if (c == null || c.a == null || list.size() >= c.a.size()) {
            e();
            return;
        }
        f fVar2 = null;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            f fVar3 = (f) it.next();
            Iterator it2 = c.a.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    fVar = fVar2;
                    break;
                }
                fVar = (f) it2.next();
                if (fVar3.a.equals(fVar.a) && fVar3.b.equals(fVar.b)) {
                    it2.remove();
                    break;
                }
            }
            fVar2 = fVar;
        }
        if (fVar2 != null) {
            a(c);
        }
    }

    public boolean a() {
        return Build.VERSION.SDK_INT >= 19 || r.a(this.c, "android.permission.WRITE_EXTERNAL_STORAGE");
    }

    public boolean b() {
        return !new File(this.d).exists();
    }

    public g c() {
        g c = c(this.d);
        g j = j();
        if (j != null) {
            if (c == null) {
                c = new g();
            }
            c.a.addAll(j.a);
            a(c);
        }
        return c;
    }

    public void d() {
        g c = c(this.d);
        if (c == null || c.a == null) {
            e();
            return;
        }
        int size = c.a.size() / 2;
        Iterator it = c.a.iterator();
        while (it.hasNext()) {
            int i = size - 1;
            if (size <= 0) {
                break;
            }
            it.next();
            it.remove();
            size = i;
        }
        a(c);
    }

    public void e() {
        File file = new File(this.d);
        if (file.exists()) {
            file.delete();
        }
    }
}
