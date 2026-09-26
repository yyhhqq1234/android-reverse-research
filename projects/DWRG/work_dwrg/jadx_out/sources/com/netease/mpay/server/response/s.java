package com.netease.mpay.server.response;

import android.app.Activity;
import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.widget.ImageView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;
import com.tencent.tauth.Tencent;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class s extends n {
    public boolean b;
    String c;
    String d;
    public boolean e;
    public String f;

    /* loaded from: classes.dex */
    public static class a {
        public ArrayList a = new ArrayList();

        public a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(int i) {
        this(i, false, "", false, null, null);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public s(@NonNull int i, @NonNull boolean z, @Nullable String str, @NonNull boolean z2, @Nullable String str2, @Nullable String str3) {
        super(i);
        this.b = z;
        this.c = str;
        this.e = z2;
        this.f = str2;
        this.d = str3;
    }

    public static s a() {
        s sVar = new s(Tencent.REQUEST_LOGIN);
        sVar.b = true;
        return sVar;
    }

    @NonNull
    public String a(Context context) {
        int i;
        if (TextUtils.isEmpty(this.c) && (i = t.a(context, this.a).d) > 0) {
            this.c = context.getString(i);
        }
        return this.c != null ? this.c : "";
    }

    public void a(Activity activity, String str, ImageView imageView) {
        a(activity, str, imageView, t.a(activity, this.a).e, this.d, RIdentifier.e.q, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(Context context) {
        if (!this.b) {
            return false;
        }
        t a2 = t.a(context, this.a);
        return !TextUtils.isEmpty(this.f) || (!a2.b && a2.c);
    }
}
