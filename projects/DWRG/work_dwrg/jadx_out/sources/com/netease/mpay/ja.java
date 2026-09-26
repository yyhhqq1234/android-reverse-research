package com.netease.mpay;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.FragmentActivity;
import com.dodola.rocoo.Hack;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class ja extends com.netease.mpay.a {
    private com.netease.mpay.b.q d;

    /* loaded from: classes.dex */
    public static class a implements Serializable {
        ArrayList a;

        a() {
            this.a = new ArrayList();
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        public a(ArrayList arrayList) {
            this.a = new ArrayList(arrayList);
        }

        public boolean a() {
            return this.a != null && this.a.size() > 0;
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        void a(a aVar);
    }

    public ja(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.d = new com.netease.mpay.b.q(intent);
        return this.d;
    }

    @Override // com.netease.mpay.a
    public void a(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        a aVar = new a();
        if (this.d.a != null) {
            Iterator it = this.d.a.a.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                if (!com.netease.mpay.widget.at.b(this.a, str)) {
                    aVar.a.add(str);
                }
            }
        }
        this.a.finish();
        this.d.b.a(aVar);
    }

    @Override // com.netease.mpay.a
    public void b(Bundle bundle) {
        super.b(bundle);
        if (this.d.b == null) {
            this.a.finish();
            return;
        }
        if (this.d.a != null && this.d.a.a != null && this.d.a.a.size() >= 1) {
            ActivityCompat.requestPermissions(this.a, (String[]) this.d.a.a.toArray(new String[this.d.a.a.size()]), 1);
        } else {
            this.a.finish();
            this.d.b.a(new a());
        }
    }
}
