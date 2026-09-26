package com.netease.mpay.widget;

import android.os.Handler;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
public class aw {

    /* loaded from: classes.dex */
    public static abstract class a {
        public a() {
            Handler handler = new Handler();
            Runnable[] runnableArr = {new ax(this, handler, runnableArr)};
            handler.post(runnableArr[0]);
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public abstract long a();

        /* JADX INFO: Access modifiers changed from: protected */
        public abstract boolean b();

        /* JADX INFO: Access modifiers changed from: protected */
        public abstract void c();
    }

    /* loaded from: classes.dex */
    public static class b {
        private static long a;

        public static long a() {
            return a;
        }

        public static void a(long j) {
            if (Math.abs(j) <= 600) {
                j = 0;
            }
            a = j;
        }

        public static long b() {
            return (System.currentTimeMillis() / 1000) + a;
        }
    }
}
