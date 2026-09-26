package com.netease.mpay.e;

import android.content.Context;
import com.netease.mpay.Cdo;
import com.netease.mpay.e.c.q;
import com.netease.mpay.widget.ac;
import com.netease.mpay.widget.bd;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.io.StreamCorruptedException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public class a {
    public static Serializable a(byte[] bArr) {
        try {
            return (Serializable) new ObjectInputStream(new ByteArrayInputStream(bArr)).readObject();
        } catch (StreamCorruptedException e) {
            Cdo.a((Throwable) e);
            return null;
        } catch (IOException e2) {
            Cdo.a((Throwable) e2);
            return null;
        } catch (ClassCastException e3) {
            Cdo.a((Throwable) e3);
            return null;
        } catch (ClassNotFoundException e4) {
            Cdo.a((Throwable) e4);
            return null;
        } catch (NullPointerException e5) {
            Cdo.a((Throwable) e5);
            return null;
        }
    }

    public static ArrayList a(ArrayList arrayList, Class cls) {
        if (arrayList == null) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (next != null && !cls.isAssignableFrom(next.getClass())) {
                throw new ClassCastException("Cannot cast to ArrayList<" + cls.getSimpleName() + ">, elm " + next + " is not a " + cls.getSimpleName());
            }
            arrayList2.add(cls.cast(next));
        }
        return arrayList2;
    }

    public static HashMap a(HashMap hashMap, Class cls, Class cls2) {
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

    /* JADX WARN: Removed duplicated region for block: B:35:0x003e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] a(java.io.Serializable r4) {
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
            com.netease.mpay.Cdo.a(r1)
            goto L20
        L26:
            r1 = move-exception
            r2 = r0
        L28:
            com.netease.mpay.Cdo.a(r1)     // Catch: java.lang.Throwable -> L4a
            if (r2 == 0) goto L30
            r2.close()     // Catch: java.io.IOException -> L34
        L30:
            r3.close()     // Catch: java.io.IOException -> L34
            goto L20
        L34:
            r1 = move-exception
            com.netease.mpay.Cdo.a(r1)
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
            com.netease.mpay.Cdo.a(r1)
            goto L44
        L4a:
            r0 = move-exception
            goto L3c
        L4c:
            r1 = move-exception
            goto L28
        */
        throw new UnsupportedOperationException("Method not decompiled: com.netease.mpay.e.a.a(java.io.Serializable):byte[]");
    }

    private static byte[] a(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        if (i2 - i <= 0) {
            return null;
        }
        for (int i4 = i; i4 < i2; i4++) {
            bArr2[(i4 - i) + i3] = bArr[i4];
        }
        return bArr2;
    }

    public static byte[] a(byte[] bArr, Context context, String str) {
        byte[] a = bd.a(bArr);
        byte[] bArr2 = new byte[bArr.length + 16 + 16];
        a(bd.a(16), 0, 16, bArr2, 0);
        a(bArr, 0, bArr.length, bArr2, 16);
        a(a, 0, 16, bArr2, bArr.length + 16);
        return ac.a(bArr2, new q(context, str).a());
    }

    public static byte[] b(byte[] bArr, Context context, String str) {
        byte[] b = ac.b(bArr, new q(context, str).a());
        if (b == null || (b.length - 16) - 16 <= 0) {
            return null;
        }
        byte[] bArr2 = new byte[(b.length - 16) - 16];
        a(b, 16, b.length - 16, bArr2, 0);
        byte[] bArr3 = new byte[16];
        a(b, b.length - 16, b.length, bArr3, 0);
        if (Arrays.equals(bArr3, bd.a(bArr2))) {
            return bArr2;
        }
        return null;
    }
}
