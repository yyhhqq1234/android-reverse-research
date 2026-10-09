package com.applovin.impl;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import com.applovin.sdk.AppLovinSdkUtils;

/* JADX INFO: loaded from: classes.dex */
public class jb {
    private final com.applovin.impl.sdk.j a;
    private final Activity b;
    private AlertDialog c;
    private a d;

    public interface a {
        void b();

        void c();
    }

    public jb(Activity activity, com.applovin.impl.sdk.j jVar) {
        this.a = jVar;
        this.b = activity;
    }

    public void a() {
        this.b.runOnUiThread(new Runnable() { // from class: com.applovin.impl.jb$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.c();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        AlertDialog alertDialog = this.c;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        this.c = new AlertDialog.Builder(this.b).setTitle((CharSequence) this.a.a(sj.h1)).setMessage((CharSequence) this.a.a(sj.i1)).setCancelable(false).setPositiveButton((CharSequence) this.a.a(sj.k1), new DialogInterface.OnClickListener() { // from class: com.applovin.impl.jb$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.a(dialogInterface, i);
            }
        }).setNegativeButton((CharSequence) this.a.a(sj.j1), new DialogInterface.OnClickListener() { // from class: com.applovin.impl.jb$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.b(dialogInterface, i);
            }
        }).show();
    }

    public void e() {
        this.b.runOnUiThread(new Runnable() { // from class: com.applovin.impl.jb$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.d();
            }
        });
    }

    public boolean b() {
        AlertDialog alertDialog = this.c;
        if (alertDialog != null) {
            return alertDialog.isShowing();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Runnable runnable, DialogInterface dialogInterface, int i) {
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(DialogInterface dialogInterface, int i) {
        this.d.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.applovin.impl.sdk.ad.b bVar, final Runnable runnable) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.b);
        builder.setTitle(bVar.c0());
        String strA0 = bVar.a0();
        if (AppLovinSdkUtils.isValidString(strA0)) {
            builder.setMessage(strA0);
        }
        builder.setPositiveButton(bVar.b0(), new DialogInterface.OnClickListener() { // from class: com.applovin.impl.jb$$ExternalSyntheticLambda4
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                jb.a(runnable, dialogInterface, i);
            }
        });
        builder.setCancelable(false);
        this.c = builder.show();
    }

    public void b(final com.applovin.impl.sdk.ad.b bVar, final Runnable runnable) {
        this.b.runOnUiThread(new Runnable() { // from class: com.applovin.impl.jb$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(bVar, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(DialogInterface dialogInterface, int i) {
        this.d.c();
    }

    public void a(a aVar) {
        this.d = aVar;
    }
}
