package com.applovin.impl;

import android.app.Activity;
import android.content.ComponentName;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.browser.customtabs.CustomTabColorSchemeParams;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.browser.customtabs.CustomTabsService;
import androidx.browser.customtabs.CustomTabsServiceConnection;
import androidx.browser.customtabs.CustomTabsSession;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.sdk.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class c5 {
    private final com.applovin.impl.sdk.j a;
    private CustomTabsClient b;

    public c5(com.applovin.impl.sdk.j jVar) {
        this.a = jVar;
    }

    class a extends CustomTabsServiceConnection {
        a() {
        }

        @Override // androidx.browser.customtabs.CustomTabsServiceConnection
        public void onCustomTabsServiceConnected(ComponentName componentName, CustomTabsClient customTabsClient) {
            c5.this.a.I();
            if (com.applovin.impl.sdk.n.a()) {
                c5.this.a.I().a("CustomTabsManager", "Connection successful: " + componentName);
            }
            c5.this.b = customTabsClient;
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            c5.this.a.I();
            if (com.applovin.impl.sdk.n.a()) {
                c5.this.a.I().a("CustomTabsManager", "Service disconnected: " + componentName);
            }
            c5.this.b = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:23:0x006e A[DONT_GENERATE] */
    private void a(LinkedList linkedList) {
        boolean zBindCustomTabsService = false;
        try {
            zBindCustomTabsService = CustomTabsClient.bindCustomTabsService(com.applovin.impl.sdk.j.m(), (String) linkedList.poll(), new a());
            if (!zBindCustomTabsService) {
                this.a.I();
                if (com.applovin.impl.sdk.n.a()) {
                    this.a.I().b("CustomTabsManager", "Custom Tabs service not available");
                }
            }
            if (zBindCustomTabsService || linkedList.isEmpty()) {
                return;
            }
            this.a.I();
            if (com.applovin.impl.sdk.n.a()) {
            }
        } catch (Throwable th) {
            try {
                this.a.I();
                if (com.applovin.impl.sdk.n.a()) {
                    this.a.I().a("CustomTabsManager", "Failed to bind to service", th);
                }
            } finally {
                if (!zBindCustomTabsService && !linkedList.isEmpty()) {
                    this.a.I();
                    if (com.applovin.impl.sdk.n.a()) {
                        this.a.I().a("CustomTabsManager", "Retrying with next package name...");
                    }
                    a(linkedList);
                }
            }
        }
    }

    public void b(final List list, final CustomTabsSession customTabsSession) {
        if (list.isEmpty()) {
            return;
        }
        if (customTabsSession == null) {
            this.a.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.a.I().a("CustomTabsManager", "Custom Tabs session is null, cannot warmup urls");
                return;
            }
            return;
        }
        a("warmup urls", new Runnable() { // from class: com.applovin.impl.c5$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(list, customTabsSession);
            }
        });
    }

    public void a() {
        if (((Boolean) this.a.a(sj.r6)).booleanValue() && this.b == null) {
            String packageName = CustomTabsClient.getPackageName(com.applovin.impl.sdk.j.m(), this.a.c(sj.s6), true);
            String packageName2 = CustomTabsClient.getPackageName(com.applovin.impl.sdk.j.m(), null);
            LinkedList linkedList = new LinkedList();
            if (((Boolean) this.a.a(sj.t6)).booleanValue()) {
                CollectionUtils.addUniqueObjectIfExists(packageName2, linkedList);
                CollectionUtils.addUniqueObjectIfExists(packageName, linkedList);
            } else {
                CollectionUtils.addUniqueObjectIfExists(packageName, linkedList);
                CollectionUtils.addUniqueObjectIfExists(packageName2, linkedList);
            }
            if (linkedList.isEmpty()) {
                this.a.I();
                if (com.applovin.impl.sdk.n.a()) {
                    this.a.I().b("CustomTabsManager", "Unable to find a supported Custom Tabs package name");
                    return;
                }
                return;
            }
            a(linkedList);
        }
    }

    private class b extends CustomTabsCallback {
        private final WeakReference a;

        public b(com.applovin.impl.adview.a aVar) {
            this.a = new WeakReference(aVar);
        }

        @Override // androidx.browser.customtabs.CustomTabsCallback
        public void onNavigationEvent(int i, Bundle bundle) {
            com.applovin.impl.adview.a aVar = (com.applovin.impl.adview.a) this.a.get();
            if (aVar == null) {
                c5.this.a.I();
                if (com.applovin.impl.sdk.n.a()) {
                    c5.this.a.I().b("CustomTabsManager", "Unable to track navigation event (" + i + "). Controller is null.");
                }
                return;
            }
            com.applovin.impl.sdk.ad.b bVarI = aVar.i();
            if (bVarI == null) {
                c5.this.a.I();
                if (com.applovin.impl.sdk.n.a()) {
                    c5.this.a.I().b("CustomTabsManager", "Unable to track navigation event (" + i + "). No ad specified.");
                    return;
                }
                return;
            }
            switch (i) {
                case 1:
                    if (bVarI.T0()) {
                        c5.this.a.j().trackCustomTabsNavigationStarted(bVarI);
                    }
                    break;
                case 2:
                    if (bVarI.T0()) {
                        c5.this.a.j().trackCustomTabsNavigationFinished(bVarI);
                    }
                    break;
                case 3:
                    if (bVarI.T0()) {
                        c5.this.a.j().trackCustomTabsNavigationFailed(bVarI);
                    }
                    break;
                case 4:
                    if (bVarI.T0()) {
                        c5.this.a.j().trackCustomTabsNavigationAborted(bVarI);
                    }
                    break;
                case 5:
                    if (bVarI.T0()) {
                        c5.this.a.j().trackCustomTabsTabShown(bVarI);
                    }
                    fc.c(aVar.e(), bVarI, aVar.k());
                    break;
                case 6:
                    if (bVarI.T0()) {
                        c5.this.a.j().trackCustomTabsTabHidden(bVarI);
                    }
                    fc.a(aVar.e(), bVarI, aVar.k());
                    break;
                default:
                    c5.this.a.I();
                    if (com.applovin.impl.sdk.n.a()) {
                        c5.this.a.I().a("CustomTabsManager", "Unknown navigation event: " + i);
                    }
                    break;
            }
        }

        @Override // androidx.browser.customtabs.CustomTabsCallback
        public void onRelationshipValidationResult(int i, Uri uri, boolean z, Bundle bundle) {
            c5.this.a.I();
            if (com.applovin.impl.sdk.n.a()) {
                com.applovin.impl.sdk.n nVarI = c5.this.a.I();
                StringBuilder sb = new StringBuilder("Validation ");
                sb.append(z ? "succeeded" : com.ironsource.y8.h.t);
                sb.append(" for session-URL relation(");
                sb.append(i);
                sb.append("), requestedOrigin(");
                sb.append(uri);
                sb.append(")");
                nVarI.a("CustomTabsManager", sb.toString());
            }
        }
    }

    private CustomTabsIntent a(com.applovin.impl.adview.a aVar, Activity activity) {
        this.a.I();
        if (com.applovin.impl.sdk.n.a()) {
            this.a.I().a("CustomTabsManager", "Creating Custom Tabs intent");
        }
        com.applovin.impl.sdk.ad.b bVarI = aVar.i();
        CustomTabsIntent.Builder builder = new CustomTabsIntent.Builder(aVar.j());
        d5 d5VarX = bVarI != null ? bVarI.x() : null;
        if (((Boolean) this.a.a(sj.u6)).booleanValue()) {
            builder.setStartAnimations(activity, R.anim.applovin_slide_up_animation, R.anim.applovin_slide_down_animation);
            builder.setExitAnimations(activity, R.anim.applovin_slide_up_animation, R.anim.applovin_slide_down_animation);
        }
        if (d5VarX != null) {
            Integer numH = d5VarX.h();
            if (numH != null) {
                builder.setDefaultColorSchemeParams(new CustomTabColorSchemeParams.Builder().setToolbarColor(numH.intValue()).build());
            }
            Integer numA = d5VarX.a();
            if (numA != null) {
                builder.setColorSchemeParams(2, new CustomTabColorSchemeParams.Builder().setToolbarColor(numA.intValue()).build());
            }
            Boolean boolI = d5VarX.i();
            if (boolI != null) {
                builder.setUrlBarHidingEnabled(boolI.booleanValue());
            }
            Boolean boolG = d5VarX.g();
            if (boolG != null) {
                builder.setShowTitle(boolG.booleanValue());
            }
            Boolean boolC = d5VarX.c();
            if (boolC != null) {
                builder.setInstantAppsEnabled(boolC.booleanValue());
            }
            Integer numF = d5VarX.f();
            if (numF != null) {
                builder.setShareState(numF.intValue());
            }
        }
        CustomTabsIntent customTabsIntentBuild = builder.build();
        if (d5VarX != null) {
            String strD = d5VarX.d();
            if (strD != null) {
                customTabsIntentBuild.intent.putExtra("android.intent.extra.REFERRER", Uri.parse(strD));
            }
            Bundle bundleS = bVarI.s();
            if (!bundleS.isEmpty()) {
                customTabsIntentBuild.intent.putExtra("com.android.browser.headers", bundleS);
            }
        }
        return customTabsIntentBuild;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.applovin.impl.adview.a aVar, Activity activity, String str) {
        a(aVar, activity).launchUrl(activity, Uri.parse(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.applovin.impl.sdk.ad.b bVar, CustomTabsSession customTabsSession) {
        this.b.warmup(0L);
        d5 d5VarX = bVar.x();
        if (d5VarX == null) {
            return;
        }
        Integer numE = d5VarX.e();
        String strB = d5VarX.b();
        if (numE == null || TextUtils.isEmpty(strB)) {
            return;
        }
        if (customTabsSession == null) {
            this.a.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.a.I().b("CustomTabsManager", "Cannot validate session-URL relation because the session is null");
                return;
            }
            return;
        }
        this.a.I();
        if (com.applovin.impl.sdk.n.a()) {
            this.a.I().a("CustomTabsManager", "Validating session-URL relation: " + numE + " with digital asset link: " + strB);
        }
        customTabsSession.validateRelationship(numE.intValue(), Uri.parse(strB), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(List list, CustomTabsSession customTabsSession) {
        this.a.I();
        if (com.applovin.impl.sdk.n.a()) {
            this.a.I().a("CustomTabsManager", "Warming up URLs: " + list);
        }
        String str = (String) list.remove(0);
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            Bundle bundle = new Bundle();
            bundle.putParcelable(CustomTabsService.KEY_URL, Uri.parse(str2));
            arrayList.add(bundle);
        }
        boolean zMayLaunchUrl = customTabsSession.mayLaunchUrl(Uri.parse(str), null, arrayList);
        this.a.I();
        if (com.applovin.impl.sdk.n.a()) {
            this.a.I().a("CustomTabsManager", "Warmup for URLs ".concat(zMayLaunchUrl ? "succeeded" : com.ironsource.y8.h.t));
        }
    }

    public void a(final String str, final com.applovin.impl.adview.a aVar, final Activity activity) {
        a("launch url", new Runnable() { // from class: com.applovin.impl.c5$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(aVar, activity, str);
            }
        });
    }

    private void a(String str, Runnable runnable) {
        try {
            this.a.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.a.I().a("CustomTabsManager", "Running operation: " + str);
            }
            runnable.run();
            this.a.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.a.I().a("CustomTabsManager", "Finished operation: " + str);
            }
        } catch (Throwable th) {
            this.a.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.a.I().a("CustomTabsManager", "Failed to run operation: " + str, th);
            }
            this.a.D().a("CustomTabsManager", str, th);
        }
    }

    public CustomTabsSession a(com.applovin.impl.adview.a aVar) {
        if (this.b == null) {
            this.a.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.a.I().a("CustomTabsManager", "Custom Tabs service is not connected, cannot start session");
            }
            return null;
        }
        this.a.I();
        if (com.applovin.impl.sdk.n.a()) {
            this.a.I().a("CustomTabsManager", "Starting Custom Tabs session");
        }
        try {
            CustomTabsSession customTabsSessionNewSession = this.b.newSession(new b(aVar));
            a(customTabsSessionNewSession, aVar.i());
            return customTabsSessionNewSession;
        } catch (Exception e) {
            this.a.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.a.I().a("CustomTabsManager", "Failed to create Custom Tabs session", e);
            }
            return null;
        }
    }

    private void a(final CustomTabsSession customTabsSession, final com.applovin.impl.sdk.ad.b bVar) {
        if (bVar == null || !bVar.B0()) {
            return;
        }
        a("client warmup", new Runnable() { // from class: com.applovin.impl.c5$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(bVar, customTabsSession);
            }
        });
    }
}
