package com.netease.mpay;

import android.content.Context;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
public class ig {
    public ig() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a() {
        Cdo.c("It's not Patch");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Context context) {
        new Thread(new ih(this, context)).start();
    }
}
