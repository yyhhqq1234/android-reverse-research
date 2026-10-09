package org.json;

import java.util.Date;

/* JADX INFO: loaded from: classes3.dex */
public class xa {
    private long a = new Date().getTime();

    public static long a(xa xaVar) {
        if (xaVar == null) {
            return 0L;
        }
        return new Date().getTime() - xaVar.a;
    }
}
