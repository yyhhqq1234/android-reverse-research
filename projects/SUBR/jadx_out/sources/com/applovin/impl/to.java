package com.applovin.impl;

import java.util.Arrays;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes.dex */
public final class to {
    public final int a;
    private final so[] b;
    private int c;

    public to(so... soVarArr) {
        this.b = soVarArr;
        this.a = soVarArr.length;
    }

    public so a(int i) {
        return this.b[i];
    }

    public int hashCode() {
        if (this.c == 0) {
            this.c = Arrays.hashCode(this.b) + IronSourceError.ERROR_NON_EXISTENT_INSTANCE;
        }
        return this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || to.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.b, ((to) obj).b);
    }
}
