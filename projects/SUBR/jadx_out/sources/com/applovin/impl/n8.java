package com.applovin.impl;

import android.net.Uri;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface n8 {
    public static final n8 a = new n8() { // from class: com.applovin.impl.n8$$ExternalSyntheticLambda0
        @Override // com.applovin.impl.n8
        public final j8[] a() {
            return n8.CC.b();
        }

        @Override // com.applovin.impl.n8
        public /* synthetic */ j8[] a(Uri uri, Map map) {
            return a();
        }
    };

    j8[] a();

    j8[] a(Uri uri, Map map);

    /* JADX INFO: renamed from: com.applovin.impl.n8$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
        static {
            n8 n8Var = n8.a;
        }

        public static /* synthetic */ j8[] b() {
            return new j8[0];
        }
    }
}
