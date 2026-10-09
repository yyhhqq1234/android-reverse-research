package com.applovin.impl;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxDebuggerActivity;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.android.gms.drive.DriveFile;
import com.onesignal.core.internal.database.impl.OneSignalDbContract;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class te implements d4.e {
    private static WeakReference m;
    private static final AtomicBoolean n = new AtomicBoolean();
    private final com.applovin.impl.sdk.j a;
    private final com.applovin.impl.sdk.n b;
    private final Context c;
    private final se d;
    private boolean h;
    private boolean j;
    private Map k;
    private final y0 l;
    private final Map f = new HashMap();
    private final AtomicBoolean g = new AtomicBoolean();
    private int i = 2;

    public String toString() {
        return "MediationDebuggerService{, listAdapter=" + this.d + "}";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c() {
        WeakReference weakReference = m;
        return (weakReference == null || weakReference.get() == null) ? false : true;
    }

    public te(com.applovin.impl.sdk.j jVar) {
        this.a = jVar;
        this.b = jVar.I();
        Context contextM = com.applovin.impl.sdk.j.m();
        this.c = contextM;
        se seVar = new se(contextM);
        this.d = seVar;
        this.l = new y0(jVar, seVar);
    }

    public void e() {
        if (this.g.compareAndSet(false, true)) {
            this.a.i0().a((yl) new mm(this, this.a), tm.b.OTHER);
        }
    }

    public boolean g() {
        return this.h;
    }

    public void h() {
        a((Map) null);
    }

    class a extends p {
        a() {
        }

        @Override // com.applovin.impl.p, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            if (activity instanceof MaxDebuggerActivity) {
                com.applovin.impl.sdk.n.g("AppLovinSdk", "Started mediation debugger");
                if (!te.this.c() || te.m.get() != activity) {
                    MaxDebuggerActivity maxDebuggerActivity = (MaxDebuggerActivity) activity;
                    WeakReference unused = te.m = new WeakReference(maxDebuggerActivity);
                    maxDebuggerActivity.setListAdapter(te.this.d, te.this.a.e());
                }
                te.n.set(false);
            }
        }

        @Override // com.applovin.impl.p, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (activity instanceof MaxDebuggerActivity) {
                com.applovin.impl.sdk.n.g("AppLovinSdk", "Mediation debugger destroyed");
                WeakReference unused = te.m = null;
            }
        }
    }

    private void f() {
        this.a.e().a(new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        Activity activityM0 = this.a.m0();
        if (activityM0 != null && !activityM0.isFinishing()) {
            new AlertDialog.Builder(activityM0).setTitle("Review Integration Errors").setMessage("Looks like MAX Mediation Debugger flagged several errors in your build. Make sure to resolve these before you go live.\n\nNote that this prompt will only be shown in your development builds. Live apps will not be affected.").setPositiveButton("Show Mediation Debugger", new DialogInterface.OnClickListener() { // from class: com.applovin.impl.te$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f$0.a(dialogInterface, i);
                }
            }).setNegativeButton("DISMISS", (DialogInterface.OnClickListener) null).create().show();
        } else {
            com.applovin.impl.sdk.n.h("AppLovinSdk", "MAX Mediation Debugger has flagged several errors in your build. Make sure to resolve these before you go live.\n\nNote that this log will only be shown in your development builds. Live apps will not be affected.");
        }
    }

    private List a(JSONObject jSONObject, List list, com.applovin.impl.sdk.j jVar) {
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "ad_units", new JSONArray());
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null);
            if (jSONObject2 != null) {
                arrayList.add(new z(jSONObject2, this.f, jVar));
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public List a(String str) {
        Map map = this.k;
        if (map == null || map.isEmpty()) {
            return null;
        }
        return (List) this.k.get(str);
    }

    private List a(List list, com.applovin.impl.sdk.j jVar) {
        List<String> adUnitIds;
        if (jVar.x0().get()) {
            adUnitIds = jVar.f0().getInitializationAdUnitIds();
        } else {
            adUnitIds = jVar.G() != null ? jVar.G().getAdUnitIds() : null;
        }
        if (adUnitIds != null && !adUnitIds.isEmpty()) {
            ArrayList arrayList = new ArrayList(adUnitIds.size());
            Iterator it = list.iterator();
            while (it.hasNext()) {
                z zVar = (z) it.next();
                if (adUnitIds.contains(zVar.c())) {
                    arrayList.add(zVar);
                }
            }
            return arrayList;
        }
        return Collections.emptyList();
    }

    private List a(JSONObject jSONObject, com.applovin.impl.sdk.j jVar) {
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "networks", new JSONArray());
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null);
            if (jSONObject2 != null) {
                je jeVar = new je(jSONObject2, jVar);
                arrayList.add(jeVar);
                this.f.put(jeVar.b(), jeVar);
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private List a(JSONObject jSONObject) {
        ArrayList arrayList = new ArrayList();
        for (String str : JsonUtils.getList(jSONObject, "required_app_ads_txt_entries", new ArrayList())) {
            x0 x0Var = new x0(str);
            if (x0Var.h()) {
                arrayList.add(x0Var);
            } else if (com.applovin.impl.sdk.n.a()) {
                this.b.b("MediationDebuggerService", "app-ads.txt entry passed down for validation is misformatted: " + str);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(DialogInterface dialogInterface, int i) {
        h();
    }

    private void a(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            je jeVar = (je) it.next();
            if (jeVar.A() && jeVar.q() == je.a.INVALID_INTEGRATION) {
                AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.te$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.d();
                    }
                }, TimeUnit.SECONDS.toMillis(2L));
                return;
            }
        }
    }

    @Override // com.applovin.impl.d4.e
    public void a(String str, JSONObject jSONObject, int i) {
        List listA = a(jSONObject, this.a);
        List listA2 = a(jSONObject, listA, this.a);
        List listA3 = a(listA2, this.a);
        List listA4 = a(jSONObject);
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "alert", (JSONObject) null);
        this.d.a(listA, listA2, listA3, listA4, JsonUtils.getString(jSONObject2, "title", null), JsonUtils.getString(jSONObject2, OneSignalDbContract.NotificationTable.COLUMN_NAME_MESSAGE, null), JsonUtils.getString(jSONObject, "account_id", null), JsonUtils.getBoolean(jSONObject, "complies_with_google_families_policy", null), JsonUtils.getBoolean(jSONObject, "should_display_cmp_details", Boolean.TRUE).booleanValue(), this.a);
        if (!listA4.isEmpty()) {
            this.l.a();
        }
        if (g()) {
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.te$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.h();
                }
            }, TimeUnit.SECONDS.toMillis(this.i));
        } else {
            a(listA);
        }
    }

    public void a(boolean z, int i) {
        this.h = z;
        this.i = i;
    }

    public void a(Map map) {
        this.k = map;
        e();
        if (!c() && n.compareAndSet(false, true)) {
            if (!this.j) {
                f();
                this.j = true;
            }
            Intent intent = new Intent(this.c, (Class<?>) MaxDebuggerActivity.class);
            intent.setFlags(DriveFile.MODE_READ_ONLY);
            com.applovin.impl.sdk.n.g("AppLovinSdk", "Starting mediation debugger...");
            this.c.startActivity(intent);
            return;
        }
        com.applovin.impl.sdk.n.h("AppLovinSdk", "Mediation debugger is already showing");
    }

    @Override // com.applovin.impl.d4.e
    public void a(String str, int i, String str2, JSONObject jSONObject) {
        if (com.applovin.impl.sdk.n.a()) {
            this.b.b("MediationDebuggerService", "Unable to fetch mediation debugger info: server returned " + i);
        }
        com.applovin.impl.sdk.n.h("AppLovinSdk", "Unable to show mediation debugger.");
        this.d.a(null, null, null, null, null, null, null, null, false, this.a);
        this.g.set(false);
    }
}
