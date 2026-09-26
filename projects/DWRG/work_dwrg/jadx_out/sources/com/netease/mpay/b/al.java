package com.netease.mpay.b;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.dodola.rocoo.Hack;
import com.ut.device.AidConstants;

/* loaded from: classes.dex */
public abstract class al {
    int a;

    /* loaded from: classes.dex */
    private static class a extends al {
        public a() {
            super(AidConstants.EVENT_NETWORK_ERROR);
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // com.netease.mpay.b.al
        void a(Bundle bundle) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public al(int i) {
        this.a = i;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static al a(int i, Intent intent) {
        return 1002 == i ? new ao(intent) : 1003 == i ? new au() : 1005 == i ? new am() : 1006 == i ? new ap() : 1007 == i ? new aq() : 1008 == i ? new at() : 1004 == i ? new an(intent) : 1009 == i ? new ar(intent).a(intent) : new a();
    }

    public void a(Activity activity) {
        Intent intent = new Intent();
        Bundle bundle = new Bundle();
        a(bundle);
        intent.putExtras(bundle);
        activity.setResult(this.a, intent);
        activity.finish();
    }

    abstract void a(Bundle bundle);
}
