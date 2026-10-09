package org.json.sdk.controller;

import android.webkit.JavascriptInterface;
import java.lang.reflect.Method;
import java.security.AccessControlException;
import org.json.sdk.utils.Logger;

/* JADX INFO: loaded from: classes3.dex */
class b {
    private static final String b = "b";
    private final v.r a;

    b(v.r rVar) {
        this.a = rVar;
    }

    void a(String str) {
        v.r rVar = this.a;
        if (rVar != null) {
            rVar.c(str);
        }
    }

    synchronized void a(String str, String str2) throws Exception {
        if (this.a == null) {
            Logger.e(b, "!!! nativeAPI == null !!!");
            return;
        }
        Method declaredMethod = v.r.class.getDeclaredMethod(str, String.class);
        if (declaredMethod.isAnnotationPresent(JavascriptInterface.class)) {
            declaredMethod.invoke(this.a, str2);
        } else {
            throw new AccessControlException("Trying to access a private function: " + str);
        }
    }
}
