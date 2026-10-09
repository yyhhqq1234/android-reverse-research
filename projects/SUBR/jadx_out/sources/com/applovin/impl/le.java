package com.applovin.impl;

import android.content.Context;
import android.text.SpannableString;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.sdk.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class le extends dc {
    private final je f;
    private List g;
    private final List h;
    private final List i;
    private final List j;
    private final List k;
    private SpannedString l;

    public enum a {
        INTEGRATIONS,
        PERMISSIONS,
        CONFIGURATION,
        DEPENDENCIES,
        TEST_ADS,
        COUNT
    }

    private List g() {
        ArrayList arrayList = new ArrayList(3);
        CollectionUtils.addObjectIfExists(i(), arrayList);
        CollectionUtils.addObjectIfExists(d(), arrayList);
        CollectionUtils.addObjectIfExists(f(), arrayList);
        return arrayList;
    }

    public String toString() {
        return "MediatedNetworkListAdapter{}";
    }

    le(je jeVar, Context context) {
        super(context);
        this.f = jeVar;
        if (jeVar.q() == je.a.INVALID_INTEGRATION) {
            SpannableString spannableString = new SpannableString("Tap for more information");
            spannableString.setSpan(new AbsoluteSizeSpan(12, true), 0, spannableString.length(), 33);
            this.l = new SpannedString(spannableString);
        } else {
            this.l = new SpannedString("");
        }
        this.g = g();
        this.h = b(jeVar.n());
        this.i = e();
        this.j = a(jeVar.f());
        this.k = j();
        notifyDataSetChanged();
    }

    public je h() {
        return this.f;
    }

    public void k() {
        this.g = g();
    }

    private cc i() {
        cc.b bVarC = cc.a().d("SDK").c(this.f.p());
        if (TextUtils.isEmpty(this.f.p())) {
            bVarC.a(a(this.f.E())).b(b(this.f.E()));
        }
        return bVarC.a();
    }

    private cc d() {
        cc.b bVarC = cc.a().d("Adapter").c(this.f.c());
        if (TextUtils.isEmpty(this.f.c())) {
            bVarC.a(a(this.f.A())).b(b(this.f.A()));
        }
        return bVarC.a();
    }

    private cc f() {
        if (this.f.G()) {
            return null;
        }
        return cc.a().d("Initialization Status").c(f(this.f.i())).a(false).a();
    }

    private String f(int i) {
        if (MaxAdapter.InitializationStatus.INITIALIZED_SUCCESS.getCode() == i || MaxAdapter.InitializationStatus.INITIALIZED_UNKNOWN.getCode() == i || MaxAdapter.InitializationStatus.DOES_NOT_APPLY.getCode() == i) {
            return "Initialized";
        }
        if (MaxAdapter.InitializationStatus.INITIALIZED_FAILURE.getCode() == i) {
            return "Failure";
        }
        return MaxAdapter.InitializationStatus.INITIALIZING.getCode() == i ? "Initializing..." : "Not Initialized";
    }

    private List e() {
        ArrayList arrayList = new ArrayList(1);
        if (this.f.D()) {
            arrayList.add(a("Java 8", "For optimal performance, please enable Java 8 support. See: https://developers.applovin.com/en/android/overview/integration", com.applovin.impl.sdk.j.w0(), true));
        }
        return arrayList;
    }

    private List j() {
        ArrayList arrayList = new ArrayList(3);
        if (StringUtils.isValidString(this.f.v())) {
            arrayList.add(cc.a(cc.c.DETAIL).d(this.f.v()).a());
        }
        if (this.f.y() == je.b.NOT_SUPPORTED) {
            return arrayList;
        }
        if (this.f.s() != null) {
            arrayList.add(c(this.f.s()));
        }
        arrayList.add(a(this.f.y()));
        return arrayList;
    }

    private cc a(String str, String str2, boolean z, boolean z2) {
        return cc.a(z ? cc.c.RIGHT_DETAIL : cc.c.DETAIL).d(str).a(z ? null : this.l).b("Instructions").a(str2).a(z ? R.drawable.applovin_ic_check_mark_bordered : c(z2)).b(z ? t3.a(R.color.applovin_sdk_checkmarkColor, this.a) : d(z2)).a(!z).a();
    }

    private int c(boolean z) {
        return z ? R.drawable.applovin_ic_x_mark : R.drawable.applovin_ic_warning;
    }

    private int b(boolean z) {
        return t3.a(z ? R.color.applovin_sdk_checkmarkColor : R.color.applovin_sdk_xmarkColor, this.a);
    }

    @Override // com.applovin.impl.dc
    protected cc e(int i) {
        if (i == a.INTEGRATIONS.ordinal()) {
            return new fj("INTEGRATIONS");
        }
        if (i == a.PERMISSIONS.ordinal()) {
            return new fj("PERMISSIONS");
        }
        if (i == a.CONFIGURATION.ordinal()) {
            return new fj("CONFIGURATION");
        }
        if (i == a.DEPENDENCIES.ordinal()) {
            return new fj("DEPENDENCIES");
        }
        return new fj("TEST ADS");
    }

    @Override // com.applovin.impl.dc
    protected List c(int i) {
        if (i == a.INTEGRATIONS.ordinal()) {
            return this.g;
        }
        if (i == a.PERMISSIONS.ordinal()) {
            return this.h;
        }
        if (i == a.CONFIGURATION.ordinal()) {
            return this.i;
        }
        if (i == a.DEPENDENCIES.ordinal()) {
            return this.j;
        }
        return this.k;
    }

    private cc c(List list) {
        return cc.a().d("Region/VPN Required").c(CollectionUtils.implode(list, ", ", list.size())).a();
    }

    private int d(boolean z) {
        return t3.a(z ? R.color.applovin_sdk_xmarkColor : R.color.applovin_sdk_warningColor, this.a);
    }

    private List b(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        if (list.size() > 0) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                gh ghVar = (gh) it.next();
                arrayList.add(a(ghVar.b(), ghVar.a(), ghVar.c(), true));
            }
        }
        return arrayList;
    }

    @Override // com.applovin.impl.dc
    protected int b() {
        return a.COUNT.ordinal();
    }

    private List a(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        if (list.size() > 0) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                o6 o6Var = (o6) it.next();
                arrayList.add(a(o6Var.b(), o6Var.a(), o6Var.c(), true));
            }
        }
        return arrayList;
    }

    @Override // com.applovin.impl.dc
    protected int d(int i) {
        if (i == a.INTEGRATIONS.ordinal()) {
            return this.g.size();
        }
        if (i == a.PERMISSIONS.ordinal()) {
            return this.h.size();
        }
        if (i == a.CONFIGURATION.ordinal()) {
            return this.i.size();
        }
        if (i == a.DEPENDENCIES.ordinal()) {
            return this.j.size();
        }
        return this.k.size();
    }

    private int a(boolean z) {
        return z ? R.drawable.applovin_ic_check_mark_bordered : R.drawable.applovin_ic_x_mark;
    }

    private cc a(je.b bVar) {
        cc.b bVarA = cc.a();
        if (bVar == je.b.READY) {
            bVarA.a(this.a);
        }
        return bVarA.d("Test Mode").c(bVar.c()).c(bVar.d()).b("Restart Required").a(bVar.b()).a(true).a();
    }

    public boolean a(kb kbVar) {
        return kbVar.b() == a.TEST_ADS.ordinal() && kbVar.a() == this.k.size() - 1;
    }
}
