package com.applovin.impl;

import android.media.DeniedByServerException;
import android.media.MediaDrm;
import android.media.MediaDrmResetException;
import android.media.NotProvisionedException;

/* JADX INFO: loaded from: classes.dex */
public abstract class c7 {
    public static int a(Exception exc, int i) {
        int i2 = xp.a;
        if (i2 >= 21 && b.a(exc)) {
            return b.b(exc);
        }
        if (i2 >= 23 && c.a(exc)) {
            return 6006;
        }
        if (i2 >= 18 && a.b(exc)) {
            return 6002;
        }
        if (i2 >= 18 && a.a(exc)) {
            return 6007;
        }
        if (exc instanceof sp) {
            return 6001;
        }
        if (exc instanceof x5.e) {
            return 6003;
        }
        if (exc instanceof yb) {
            return 6008;
        }
        if (i == 1) {
            return 6006;
        }
        if (i == 2) {
            return 6004;
        }
        if (i == 3) {
            return 6002;
        }
        throw new IllegalArgumentException();
    }

    private static final class a {
        public static boolean b(Throwable th) {
            return th instanceof NotProvisionedException;
        }

        public static boolean a(Throwable th) {
            return th instanceof DeniedByServerException;
        }
    }

    private static final class b {
        public static boolean a(Throwable th) {
            return th instanceof MediaDrm.MediaDrmStateException;
        }

        public static int b(Throwable th) {
            return t2.a(xp.a(((MediaDrm.MediaDrmStateException) th).getDiagnosticInfo()));
        }
    }

    private static final class c {
        public static boolean a(Throwable th) {
            return th instanceof MediaDrmResetException;
        }
    }
}
