package com.netease.mpay.widget.a;

import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class g {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(ArrayList arrayList) {
        try {
            return a(arrayList, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(ArrayList arrayList, String str) {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= arrayList.size()) {
                return sb.toString();
            }
            f fVar = (f) arrayList.get(i2);
            if (i2 != 0) {
                sb.append(com.alipay.sdk.sys.a.b);
            }
            sb.append(URLEncoder.encode(fVar.a(), str));
            sb.append("=");
            sb.append(URLEncoder.encode(fVar.b() != null ? fVar.b() : "", str));
            i = i2 + 1;
        }
    }

    public static ArrayList a(ArrayList arrayList, ArrayList arrayList2) {
        boolean z;
        if (arrayList == null && arrayList2 == null) {
            return new ArrayList();
        }
        if (arrayList == null) {
            return arrayList2;
        }
        if (arrayList2 == null) {
            return arrayList;
        }
        ArrayList arrayList3 = new ArrayList(arrayList);
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            f fVar = (f) it.next();
            Iterator it2 = arrayList3.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z = false;
                    break;
                }
                f fVar2 = (f) it2.next();
                if (fVar2 != null && fVar != null && TextUtils.equals(fVar2.a(), fVar.a())) {
                    z = true;
                    break;
                }
            }
            if (!z) {
                arrayList3.add(fVar);
            }
        }
        return arrayList3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] a(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[16384];
        while (true) {
            int read = inputStream.read(bArr, 0, bArr.length);
            if (read == -1) {
                byteArrayOutputStream.flush();
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }
}
