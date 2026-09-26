package com.netease.mpay;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
public class EnterGameActivity extends FragmentActivity {

    /* loaded from: classes.dex */
    public static class a {
        public String a;

        private a(String str) {
            this.a = str;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static a b(Activity activity) {
            Intent intent = activity != null ? activity.getIntent() : null;
            return new a(intent != null ? intent.getStringExtra("ticket") : null);
        }

        public boolean a() {
            return !TextUtils.isEmpty(this.a);
        }
    }

    public EnterGameActivity() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private boolean a() {
        try {
            return getPackageManager().getApplicationInfo(getPackageName(), 128).metaData.getBoolean("com.netease.mpay.support.EnterGame");
        } catch (PackageManager.NameNotFoundException e) {
            Cdo.a((Throwable) e);
            return false;
        }
    }

    private boolean a(Bundle bundle) {
        return bundle != null && bundle.getBoolean("IS_REBUILD");
    }

    private void b() {
        com.netease.mpay.widget.bf.b(this);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.support.v4.app.BaseFragmentActivityDonut, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        a b = a.b(this);
        if (a(bundle) || !b.a() || !a() || !n.a().h()) {
            b();
            return;
        }
        if (n.a().c()) {
            Cdo.a("Enter Game : return to game");
            n.a().d().a(b);
        } else {
            Cdo.a("Enter Game : start the game");
            try {
                Intent launchIntentForPackage = getPackageManager().getLaunchIntentForPackage(getPackageName());
                launchIntentForPackage.setFlags(268435456);
                launchIntentForPackage.addCategory("android.intent.category.LAUNCHER");
                startActivity(launchIntentForPackage);
                n.a().a(b);
            } catch (ActivityNotFoundException e) {
                Cdo.a((Throwable) e);
            }
        }
        b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean("IS_REBUILD", true);
        super.onSaveInstanceState(bundle);
    }
}
