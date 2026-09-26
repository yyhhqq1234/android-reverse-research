package com.netease.mpay.b;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import com.dodola.rocoo.Hack;
import com.netease.mpay.MpayConfig;
import java.io.Serializable;

/* loaded from: classes.dex */
public class a {

    @NonNull
    private C0035a a;

    /* renamed from: com.netease.mpay.b.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0035a {
        public String a;
        public String b;
        public MpayConfig c;

        public C0035a(String str, String str2, MpayConfig mpayConfig) {
            this.a = str;
            this.b = str2;
            this.c = mpayConfig == null ? new MpayConfig() : mpayConfig;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    public a(Intent intent) {
        this.a = new C0035a(b(intent, ak.GAME_ID), b(intent, ak.USER_TYPE), (MpayConfig) e(intent, ak.MPAY_CONFIG));
    }

    public a(@NonNull C0035a c0035a) {
        this.a = new C0035a(c0035a.a, c0035a.b, c0035a.c);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static void a(Bundle bundle, ak akVar, int i) {
        bundle.putInt(akVar.a(), i);
    }

    public static void a(Bundle bundle, ak akVar, long j) {
        bundle.putLong(akVar.a(), j);
    }

    public static void a(Bundle bundle, ak akVar, Parcelable parcelable) {
        bundle.putParcelable(akVar.a(), parcelable);
    }

    public static void a(Bundle bundle, ak akVar, Serializable serializable) {
        bundle.putSerializable(akVar.a(), serializable);
    }

    public static void a(Bundle bundle, ak akVar, String str) {
        bundle.putString(akVar.a(), str);
    }

    public static void a(Bundle bundle, ak akVar, boolean z) {
        bundle.putBoolean(akVar.a(), z);
    }

    public static boolean a(Intent intent, ak akVar) {
        return intent.getBooleanExtra(akVar.a(), false);
    }

    public static String b(Intent intent, ak akVar) {
        return intent.getStringExtra(akVar.a());
    }

    public static int c(Intent intent, ak akVar) {
        return intent.getIntExtra(akVar.a(), -1);
    }

    public static long d(Intent intent, ak akVar) {
        return intent.getLongExtra(akVar.a(), -1L);
    }

    public static Serializable e(Intent intent, ak akVar) {
        return intent.getSerializableExtra(akVar.a());
    }

    public static Parcelable f(Intent intent, ak akVar) {
        return intent.getParcelableExtra(akVar.a());
    }

    public String a() {
        return this.a.a;
    }

    protected void a(@NonNull Bundle bundle) {
    }

    public String b() {
        return this.a.b;
    }

    public MpayConfig c() {
        return this.a.c;
    }

    @NonNull
    public C0035a d() {
        return this.a;
    }

    public Bundle e() {
        Bundle bundle = new Bundle();
        a(bundle, ak.GAME_ID, this.a.a);
        a(bundle, ak.USER_TYPE, this.a.b);
        a(bundle, ak.MPAY_CONFIG, this.a.c);
        a(bundle);
        return bundle;
    }
}
