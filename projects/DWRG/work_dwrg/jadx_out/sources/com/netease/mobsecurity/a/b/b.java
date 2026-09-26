package com.netease.mobsecurity.a.b;

import android.content.Context;
import com.netease.mobsecurity.SecException;

/* loaded from: classes.dex */
public class b implements a {
    @Override // com.netease.mobsecurity.a.b.a
    public final int a(Context context) {
        if (context == null) {
            return 0;
        }
        b(context);
        return 1;
    }

    public String a(String str, String str2) {
        char[] charArray = str2.toCharArray();
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < str.length(); i++) {
            stringBuffer.append((char) (str.charAt(i) ^ charArray[i % charArray.length]));
        }
        return stringBuffer.toString();
    }

    @Override // com.netease.mobsecurity.a.b.a
    public final void b(Context context) {
        try {
            c.a(context, a("_Z4bT\\3uZ\u0012s?\u0003\u0011r", "1?@\u0011"));
        } catch (SecException e) {
        }
    }
}
