package com.applovin.impl;

import android.content.Context;
import android.text.TextUtils;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkConfiguration;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.UByte$$ExternalSyntheticBackport0;

/* JADX INFO: loaded from: classes.dex */
public class se extends dc implements AppLovinCommunicatorSubscriber, y0.a {
    private List A;
    private List B;
    private List C;
    private List D;
    private List E;
    private List F;
    private com.applovin.impl.sdk.j f;
    private List g;
    private List h;
    private List i;
    private String j;
    private String k;
    private String l;
    private Boolean m;
    private boolean n;
    private final StringBuilder o;
    private final AtomicBoolean p;
    private boolean q;
    private List r;
    private List s;
    private List t;
    private List u;
    private List v;
    private List w;
    private List x;
    private List y;
    private List z;

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[y0.b.values().length];
            a = iArr;
            try {
                iArr[y0.b.APP_DETAILS_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[y0.b.INVALID_DEVELOPER_URI.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[y0.b.APPADSTXT_NOT_FOUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[y0.b.MISSING_APPLOVIN_ENTRIES.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[y0.b.MISSING_NON_APPLOVIN_ENTRIES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public enum b {
        AD_UNITS,
        SELECT_LIVE_NETWORKS,
        SELECT_TEST_MODE_NETWORKS,
        INITIALIZATION_AD_UNITS,
        COUNT
    }

    private enum c {
        SUCCESS,
        WARNING,
        ERROR
    }

    public enum d {
        CMP,
        NETWORK_CONSENT_STATUSES,
        DO_NOT_SELL,
        COUNT
    }

    public enum e {
        APP_INFO,
        MAX,
        PRIVACY,
        ADS,
        INCOMPLETE_NETWORKS,
        MICRO_SDK_PARTNER_NETWORKS,
        COMPLETED_NETWORKS,
        MISSING_NETWORKS,
        COUNT
    }

    private cc l() {
        return cc.a().d("MAX Terms and Privacy Policy Flow").a(this.a).a(true).a();
    }

    private cc q() {
        return cc.a().d("Network Consent Statuses").a(this.a).a(true).a();
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "MediationDebuggerListAdapter";
    }

    public String toString() {
        return "MediationDebuggerListAdapter{isInitialized=" + this.p.get() + "}";
    }

    public se(Context context) {
        super(context);
        this.o = new StringBuilder("");
        this.p = new AtomicBoolean();
        this.q = false;
        this.r = new ArrayList();
        this.s = new ArrayList();
        this.t = new ArrayList();
        this.u = new ArrayList();
        this.v = new ArrayList();
        this.w = new ArrayList();
        this.x = new ArrayList();
        this.y = new ArrayList();
        this.z = new ArrayList();
        this.A = new ArrayList();
        this.B = new ArrayList();
        this.C = new ArrayList();
        this.D = new ArrayList();
        this.E = new ArrayList();
        this.F = new ArrayList();
    }

    public boolean v() {
        return this.p.get();
    }

    public boolean d() {
        return this.q;
    }

    public com.applovin.impl.sdk.j s() {
        return this.f;
    }

    public List e() {
        return this.g;
    }

    public List n() {
        return this.h;
    }

    public String h() {
        return this.j;
    }

    public String g() {
        return this.k;
    }

    public List j() {
        return this.v;
    }

    public List u() {
        return this.w;
    }

    public List t() {
        return this.x;
    }

    public String o() {
        return this.o.toString();
    }

    @Override // com.applovin.impl.dc
    protected List c(int i) {
        if (i == e.APP_INFO.ordinal()) {
            return this.y;
        }
        if (i == e.MAX.ordinal()) {
            return this.z;
        }
        if (i == e.PRIVACY.ordinal()) {
            return this.A;
        }
        if (i == e.ADS.ordinal()) {
            return this.B;
        }
        if (i == e.INCOMPLETE_NETWORKS.ordinal()) {
            return this.C;
        }
        if (i == e.MICRO_SDK_PARTNER_NETWORKS.ordinal()) {
            return this.D;
        }
        if (i == e.COMPLETED_NETWORKS.ordinal()) {
            return this.E;
        }
        return this.F;
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        if ("privacy_setting_updated".equals(appLovinCommunicatorMessage.getTopic())) {
            this.A = r();
            c();
            return;
        }
        if ("network_sdk_version_updated".equals(appLovinCommunicatorMessage.getTopic())) {
            this.C = a(this.r);
            this.D = a(this.s);
            this.E = a(this.t);
            c();
            return;
        }
        if ("live_networks_updated".equals(appLovinCommunicatorMessage.getTopic())) {
            this.B = a(a((List) appLovinCommunicatorMessage.getMessageData().getStringArrayList("live_networks"), true), (String) null);
            c();
        } else if ("test_mode_networks_updated".equals(appLovinCommunicatorMessage.getTopic())) {
            this.B = a((String) null, a((List) appLovinCommunicatorMessage.getMessageData().getStringArrayList("test_mode_networks"), false));
            c();
        }
    }

    @Override // com.applovin.impl.dc
    protected int d(int i) {
        if (i == e.APP_INFO.ordinal()) {
            return this.y.size();
        }
        if (i == e.MAX.ordinal()) {
            return this.z.size();
        }
        if (i == e.PRIVACY.ordinal()) {
            return this.A.size();
        }
        if (i == e.ADS.ordinal()) {
            return this.B.size();
        }
        if (i == e.INCOMPLETE_NETWORKS.ordinal()) {
            return this.C.size();
        }
        if (i == e.MICRO_SDK_PARTNER_NETWORKS.ordinal()) {
            return this.D.size();
        }
        if (i == e.COMPLETED_NETWORKS.ordinal()) {
            return this.E.size();
        }
        return this.F.size();
    }

    private void w() {
        StringBuilder sb = new StringBuilder("\n========== MEDIATION DEBUGGER ==========");
        sb.append("\n========== APP INFO ==========");
        sb.append("\nDev Build - " + yp.c(this.f));
        sb.append("\nTest Mode - ".concat(this.f.k0().c() ? "enabled" : "disabled"));
        sb.append("\nTarget SDK - " + this.f.x().B().get("target_sdk"));
        sb.append("\n========== MAX ==========");
        String str = AppLovinSdk.VERSION;
        String str2 = (String) this.f.a(sj.K3);
        String strB = v.b();
        sb.append("\nSDK Version - " + str);
        StringBuilder sb2 = new StringBuilder("\nPlugin Version - ");
        if (!StringUtils.isValidString(str2)) {
            str2 = "None";
        }
        sb2.append(str2);
        sb.append(sb2.toString());
        StringBuilder sb3 = new StringBuilder("\nAd Review Version - ");
        if (!StringUtils.isValidString(strB)) {
            strB = "Disabled";
        }
        sb3.append(strB);
        sb.append(sb3.toString());
        if (this.f.z0()) {
            String strA = yp.a(this.f.f0());
            StringBuilder sb4 = new StringBuilder("\nUnity Version - ");
            sb4.append(StringUtils.isValidString(strA) ? strA : "None");
            sb.append(sb4.toString());
        }
        sb.append("\n========== PRIVACY ==========");
        sb.append(a4.a(this.a));
        sb.append(this.f.u().f());
        sb.append("\n========== CMP (CONSENT MANAGEMENT PLATFORM) ==========");
        sb.append(this.f.j0().j());
        sb.append("\n========== NETWORK CONSENT STATUSES ==========");
        Iterator it = this.f.j0().i().iterator();
        while (it.hasNext()) {
            sb.append(((rn) it.next()).e());
        }
        sb.append("\n========== NETWORKS ==========");
        Iterator it2 = this.s.iterator();
        while (it2.hasNext()) {
            a(sb, ((je) it2.next()).j());
        }
        Iterator it3 = this.t.iterator();
        while (it3.hasNext()) {
            a(sb, ((je) it3.next()).j());
        }
        Iterator it4 = this.r.iterator();
        while (it4.hasNext()) {
            a(sb, ((je) it4.next()).j());
        }
        sb.append("\n========== AD UNITS ==========");
        Iterator it5 = this.g.iterator();
        while (it5.hasNext()) {
            a(sb, ((z) it5.next()).e());
        }
        sb.append("\n========== END ==========");
        com.applovin.impl.sdk.n.g("MediationDebuggerListAdapter", sb.toString());
        this.o.append(sb.toString());
    }

    @Override // com.applovin.impl.dc
    protected cc e(int i) {
        if (i == e.APP_INFO.ordinal()) {
            return new fj("APP INFO");
        }
        if (i == e.MAX.ordinal()) {
            return new fj("MAX");
        }
        if (i == e.PRIVACY.ordinal()) {
            return new fj("PRIVACY");
        }
        if (i == e.ADS.ordinal()) {
            return new fj("ADS");
        }
        if (i == e.INCOMPLETE_NETWORKS.ordinal()) {
            return new fj("INCOMPLETE SDK INTEGRATIONS");
        }
        if (i == e.MICRO_SDK_PARTNER_NETWORKS.ordinal()) {
            return new fj("APPLOVIN MICRO SDK PARTNERS");
        }
        if (i == e.COMPLETED_NETWORKS.ordinal()) {
            return new fj("COMPLETED SDK INTEGRATIONS");
        }
        return new fj("MISSING SDK INTEGRATIONS");
    }

    private void a(StringBuilder sb, String str) {
        String string = sb.toString();
        if (string.length() + str.length() >= ((Integer) this.f.a(sj.t)).intValue()) {
            com.applovin.impl.sdk.n.g("MediationDebuggerListAdapter", string);
            this.o.append(string);
            sb.setLength(1);
        }
        sb.append(str);
    }

    private List i() {
        String str;
        ArrayList arrayList = new ArrayList(7);
        try {
            str = this.a.getPackageManager().getPackageInfo(this.a.getPackageName(), 0).versionName;
        } catch (Throwable unused) {
            str = null;
        }
        arrayList.add(cc.a().d("Package Name").c(this.a.getPackageName()).a());
        cc.b bVarD = cc.a().d("App Version");
        if (!StringUtils.isValidString(str)) {
            str = "None";
        }
        arrayList.add(bVarD.c(str).a());
        arrayList.add(cc.a().d("OS").c(yp.d()).a());
        arrayList.add(cc.a().d("Account").c(StringUtils.isValidString(this.l) ? this.l : "None").a());
        arrayList.add(cc.a().d("Mediation Provider").c(StringUtils.isValidString(this.f.N()) ? this.f.N() : "None").a());
        arrayList.add(cc.a().d("OM SDK Version").c(this.f.V().c()).a());
        arrayList.add(a(com.applovin.impl.sdk.j.w0()));
        if (this.m != null) {
            arrayList.add(cc.a().d("Google Families Policy").c(String.valueOf(this.m)).a());
        }
        return arrayList;
    }

    private List p() {
        ArrayList arrayList = new ArrayList(7);
        arrayList.add(cc.a().d("SDK Version").c(AppLovinSdk.VERSION).a());
        String str = (String) this.f.a(sj.K3);
        cc.b bVarD = cc.a().d("Plugin Version");
        if (!StringUtils.isValidString(str)) {
            str = "None";
        }
        arrayList.add(bVarD.c(str).a());
        cc.b bVarD2 = cc.a().d("Ad Review Version");
        String strB = v.b();
        if (StringUtils.isValidString(strB)) {
            String strA = v.a();
            if (!StringUtils.isValidString(strA) || strA.equals(this.f.a0())) {
                bVarD2.c(strB);
            } else {
                StringBuilder sb = new StringBuilder("MAX Ad Review integrated with wrong SDK key. Please check that your ");
                sb.append(this.f.z0() ? "SDK key is downloaded" : "Gradle plugin snippet is integrated");
                sb.append(" from the correct account.");
                a(bVarD2, sb.toString());
            }
        } else {
            a(bVarD2, "Integrating MAX Ad review is OPTIONAL. This feature gives developers unprecedented transparency into the creatives the users see in their apps.");
        }
        arrayList.add(bVarD2.a());
        if (this.f.z0()) {
            String strA2 = yp.a(this.f.f0());
            arrayList.add(b("Unity Version", StringUtils.isValidString(strA2) ? strA2 : "None"));
        }
        if (this.f.u().j()) {
            arrayList.add(l());
            arrayList.add(m());
        }
        return arrayList;
    }

    private List r() {
        ArrayList arrayList = new ArrayList(d.COUNT.ordinal());
        arrayList.add(k());
        if (StringUtils.isValidString(this.f.j0().k())) {
            arrayList.add(q());
        } else {
            arrayList.add(new xh(a4.b(), false, this.a));
        }
        arrayList.add(new xh(a4.a(), true, this.a));
        return arrayList;
    }

    private List f() {
        boolean zC = this.f.k0().c();
        List listB = this.f.k0().b();
        if (zC) {
            return a((String) null, a(listB, false));
        }
        return a(a(listB, true), (String) null);
    }

    private cc b(String str, String str2) {
        cc.b bVarD = cc.a().d(str);
        if (StringUtils.isValidString(str2)) {
            bVarD.c(str2);
        } else {
            bVarD.a(R.drawable.applovin_ic_x_mark);
            bVarD.b(t3.a(R.color.applovin_sdk_xmarkColor, this.a));
        }
        return bVarD.a();
    }

    private cc m() {
        boolean zHasSupportedCmp = this.f.p().hasSupportedCmp();
        return cc.a().d("Google UMP SDK").a(zHasSupportedCmp ? R.drawable.applovin_ic_check_mark_bordered : R.drawable.applovin_ic_x_mark).b(t3.a(zHasSupportedCmp ? R.color.applovin_sdk_checkmarkColor : R.color.applovin_sdk_xmarkColor, this.a)).b("Google UMP SDK").a("In order to use MAX Terms and Privacy Policy Flow, you must add the Google User Messaging Platform SDK as a dependency.\n\nFor more details, see:\nhttps://developers.applovin.com/en/android/overview/terms-and-privacy-policy-flow").a(!zHasSupportedCmp).a();
    }

    private cc k() {
        String strD = this.f.j0().d();
        boolean zIsValidString = StringUtils.isValidString(strD);
        boolean zIsValidString2 = StringUtils.isValidString(this.f.j0().k());
        cc.b bVarD = cc.a(cc.c.DETAIL).d("CMP (Consent Management Platform)");
        if (!zIsValidString) {
            strD = zIsValidString2 ? "Unknown" : "None";
        }
        cc.b bVarC = bVarD.c(strD);
        if (this.n) {
            bVarC.a(true);
            if (zIsValidString2) {
                bVarC.a(this.a);
            } else {
                bVarC.b("TC Data Not Found");
                bVarC.a("By January 16, 2024, if you use Google AdMob or Google Ad Manager, you must also use a Google-certified CMP. Test your app in EEA and UK regions to ensure that this warning doesn't appear in those regions.\n\nFor more details, see:\nhttps://support.google.com/admob/answer/13554116");
                boolean z = this.f.s().getConsentFlowUserGeography() == AppLovinSdkConfiguration.ConsentFlowUserGeography.GDPR;
                bVarC.a(z ? R.drawable.applovin_ic_x_mark : R.drawable.applovin_ic_warning);
                bVarC.b(t3.a(z ? R.color.applovin_sdk_xmarkColor : R.color.applovin_sdk_warningColor, this.a));
            }
        }
        return bVarC.a();
    }

    private void c(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            je jeVar = (je) it.next();
            if (!jeVar.F()) {
                if (jeVar.q() != je.a.INCOMPLETE_INTEGRATION && jeVar.q() != je.a.INVALID_INTEGRATION) {
                    if (jeVar.q() == je.a.COMPLETE) {
                        if (jeVar.z()) {
                            this.s.add(jeVar);
                        } else {
                            this.t.add(jeVar);
                        }
                    } else if (jeVar.q() == je.a.MISSING) {
                        this.u.add(jeVar);
                    }
                } else if (jeVar.z()) {
                    this.s.add(jeVar);
                } else {
                    this.r.add(jeVar);
                }
            }
        }
    }

    private void d(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            je jeVar = (je) it.next();
            if (jeVar.y() == je.b.READY) {
                this.x.add(jeVar);
            }
        }
    }

    private List a(String str, String str2) {
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(cc.a().d("View Ad Units (" + this.g.size() + ")").a(this.a).a(true).a());
        arrayList.add(a(str));
        arrayList.add(b(str2));
        if (!this.h.isEmpty()) {
            arrayList.add(cc.a().d("Selective Init Ad Units (" + this.h.size() + ")").a(this.a).a(true).a());
        }
        arrayList.add(cc.a().d("Test Mode Enabled").c(String.valueOf(this.f.k0().c())).a());
        return arrayList;
    }

    private cc b(String str) {
        cc.b bVarA = cc.a();
        if (this.f.k0().c()) {
            bVarA.a(this.a);
        }
        cc.b bVarD = bVarA.d((StringUtils.isValidString(str) ? "" : "Select ").concat("Test Mode Network"));
        if (!this.f.k0().c()) {
            str = "Enable";
        }
        return bVarD.c(str).c(-16776961).a("Please re-launch the app to enable test mode. This will allow the selection of test mode networks.").a(true).a();
    }

    private void b(List list) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            a0 a0VarF = ((z) it.next()).f();
            Iterator it2 = a0VarF.a().iterator();
            while (it2.hasNext()) {
                hashSet.add(((ir) it2.next()).b());
            }
            Iterator it3 = a0VarF.e().iterator();
            while (it3.hasNext()) {
                hashSet2.add(((ir) it3.next()).b());
            }
        }
        this.v = new ArrayList(hashSet);
        this.w = new ArrayList(hashSet2);
        Collections.sort(this.v);
        Collections.sort(this.w);
    }

    private String a(y0.b bVar, String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            str = "app-ads.txt URL";
        }
        int i = a.a[bVar.ordinal()];
        if (i == 1) {
            return "Could not retrieve app details from the Play Store for this package name. Check back once this app has been published on the Play Store.";
        }
        if (i == 2) {
            return "Unable to find a valid developer URL from the Play Store listing.";
        }
        if (i == 3) {
            return "Unable to find app-ads.txt file or parse entries of the file at " + str + ".\n\nFor more information, please visit Account -> App-Ads.txt Info at:\nhttps://dash.applovin.com/o/account?r=2#app_ads_txt";
        }
        if (i != 4) {
            if (i != 5) {
                return "";
            }
            return "Text file at " + str + " is missing some of the suggested lines.\n\nFor more information, please visit Account -> App-Ads.txt Info at:\nhttps://dash.applovin.com/o/account?r=2#app_ads_txt";
        }
        return "Text file at " + str + " is missing the required AppLovin line:\n\n" + str2 + "\n\nFor more information, please visit Account -> App-Ads.txt Info at:\nhttps://dash.applovin.com/o/account?r=2#app_ads_txt";
    }

    public void b(boolean z) {
        this.q = z;
    }

    @Override // com.applovin.impl.dc
    protected int b() {
        return e.COUNT.ordinal();
    }

    private cc a(String str, c cVar) {
        int i;
        int iA;
        if (cVar == c.SUCCESS) {
            i = R.drawable.applovin_ic_check_mark_bordered;
            iA = t3.a(R.color.applovin_sdk_checkmarkColor, this.a);
        } else if (cVar == c.WARNING) {
            i = R.drawable.applovin_ic_warning;
            iA = t3.a(R.color.applovin_sdk_warningColor, this.a);
        } else {
            i = R.drawable.applovin_ic_x_mark;
            iA = t3.a(R.color.applovin_sdk_xmarkColor, this.a);
        }
        return cc.a().d("app-ads.txt").a(i).b(iA).b("app-ads.txt").a(str).a(true).a();
    }

    private cc a(boolean z) {
        return cc.a().d("Java 8").a(z ? R.drawable.applovin_ic_check_mark_bordered : R.drawable.applovin_ic_x_mark).b(t3.a(z ? R.color.applovin_sdk_checkmarkColor : R.color.applovin_sdk_xmarkColor, this.a)).b("Upgrade to Java 8").a("For optimal performance, please enable Java 8 support. This will be required in a future SDK release. See: https://developers.applovin.com/en/android/overview/integration").a(!z).a();
    }

    private String a(List list, boolean z) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        if (z) {
            for (ic icVar : this.v) {
                if (list.equals(icVar.b())) {
                    return icVar.a();
                }
            }
            for (ic icVar2 : this.w) {
                if (list.equals(icVar2.b())) {
                    return icVar2.a();
                }
            }
        } else {
            for (je jeVar : this.x) {
                if (list.equals(jeVar.u())) {
                    return jeVar.g();
                }
            }
        }
        return UByte$$ExternalSyntheticBackport0.m(",", list);
    }

    private List a(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new bg((je) it.next(), this.a));
        }
        return arrayList;
    }

    private cc a(String str) {
        cc.b bVarA = cc.a();
        if (!this.f.k0().c()) {
            bVarA.a(this.a);
        }
        cc.b bVarD = bVarA.d((StringUtils.isValidString(str) ? "" : "Select ").concat("Live Network"));
        if (this.f.k0().c()) {
            str = "Enable";
        }
        return bVarD.c(str).c(-16776961).a("Ad loads are not supported while Test Mode is enabled. Please restart the app and make sure your GAID has not been enabled for test mode and that you are not on an emulator.").a(true).a();
    }

    public void a(List list, List list2, List list3, List list4, String str, String str2, String str3, Boolean bool, boolean z, com.applovin.impl.sdk.j jVar) {
        this.f = jVar;
        this.g = list2;
        this.h = list3;
        this.i = list4;
        this.j = str;
        this.k = str2;
        this.l = str3;
        this.m = bool;
        this.n = z;
        if (list != null && this.p.compareAndSet(false, true)) {
            jVar.I();
            if (com.applovin.impl.sdk.n.a()) {
                jVar.I().a("MediationDebuggerListAdapter", "Populating networks...");
            }
            jVar.j0().a(list);
            c(list);
            b(list2);
            d(this.t);
            this.y.addAll(i());
            this.z.addAll(p());
            this.A.addAll(r());
            this.B.addAll(f());
            this.C = a(this.r);
            this.D = a(this.s);
            this.E = a(this.t);
            this.F = a(this.u);
            ArrayList arrayList = new ArrayList(3);
            arrayList.add("privacy_setting_updated");
            arrayList.add("network_sdk_version_updated");
            arrayList.add("live_networks_updated");
            arrayList.add("test_mode_networks_updated");
            AppLovinCommunicator.getInstance(this.a).subscribe(this, arrayList);
            w();
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.se$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.notifyDataSetChanged();
            }
        });
    }

    public boolean a(cc ccVar) {
        if (ccVar.k() == null) {
            return false;
        }
        return "MAX Terms and Privacy Policy Flow".equals(ccVar.k().toString());
    }

    @Override // com.applovin.impl.y0.a
    public void a(y0.b bVar, String str) {
        if (bVar == y0.b.APP_DETAILS_NOT_FOUND) {
            this.f.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.f.I().a("MediationDebuggerListAdapter", "Could not retrieve app details for this package name; app-ads.txt row will not show on the mediation debugger.");
                return;
            }
            return;
        }
        this.z.add(a(a(bVar, str, null), a(bVar)));
        c();
    }

    @Override // com.applovin.impl.y0.a
    public void a(w0 w0Var, String str) {
        x0 x0Var;
        String strA;
        c cVarA;
        c cVar;
        String str2;
        ArrayList arrayList = new ArrayList();
        for (x0 x0Var2 : this.i) {
            List list = (List) w0Var.a().get(x0Var2.b());
            if (list == null || !list.contains(x0Var2)) {
                this.f.I();
                if (com.applovin.impl.sdk.n.a()) {
                    this.f.I().b("MediationDebuggerListAdapter", str + " is missing a required entry: " + x0Var2.d());
                }
                arrayList.add(x0Var2);
            }
        }
        if (arrayList.isEmpty()) {
            str2 = "All required entries found at " + str + ".";
            cVar = c.SUCCESS;
        } else {
            Iterator it = arrayList.iterator();
            do {
                if (!it.hasNext()) {
                    x0Var = null;
                    break;
                }
                x0Var = (x0) it.next();
            } while (!x0Var.g());
            if (x0Var != null) {
                y0.b bVar = y0.b.MISSING_APPLOVIN_ENTRIES;
                strA = a(bVar, str, x0Var.d());
                cVarA = a(bVar);
            } else {
                y0.b bVar2 = y0.b.MISSING_NON_APPLOVIN_ENTRIES;
                strA = a(bVar2, str, null);
                cVarA = a(bVar2);
            }
            String str3 = strA;
            cVar = cVarA;
            str2 = str3;
        }
        this.z.add(a(str2, cVar));
        c();
    }

    private void a(cc.b bVar, String str) {
        bVar.b("MAX Ad Review").a(str).a(R.drawable.applovin_ic_x_mark).b(t3.a(R.color.applovin_sdk_xmarkColor, this.a)).a(true);
    }

    private c a(y0.b bVar) {
        int i = a.a[bVar.ordinal()];
        if (i == 1 || i == 2 || i == 3 || i == 4) {
            return c.ERROR;
        }
        if (i != 5) {
            return c.ERROR;
        }
        return c.WARNING;
    }
}
