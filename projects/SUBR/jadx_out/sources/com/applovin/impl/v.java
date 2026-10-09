package com.applovin.impl;

import android.os.Bundle;
import android.text.TextUtils;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAdFormat;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridge;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class v implements AppLovinCommunicatorSubscriber {
    private final com.applovin.impl.sdk.j a;
    private final Object b = new Object();
    private final LinkedHashMap c = new a();
    private final Set d = Collections.synchronizedSet(new HashSet());

    public interface b {
        void onCreativeIdGenerated(String str, String str2);
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "v";
    }

    class a extends LinkedHashMap {
        a() {
        }

        @Override // java.util.LinkedHashMap
        protected boolean removeEldestEntry(Map.Entry entry) {
            return size() > 16;
        }
    }

    public v(com.applovin.impl.sdk.j jVar) {
        this.a = jVar;
        if (StringUtils.isValidString(b())) {
            AppLovinCommunicator.getInstance(com.applovin.impl.sdk.j.m()).subscribe(this, "safedk_ad_info");
        }
    }

    public Bundle a(String str) {
        Bundle bundle;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        synchronized (this.b) {
            bundle = (Bundle) this.c.get(str);
        }
        this.a.I();
        if (com.applovin.impl.sdk.n.a()) {
            this.a.I().a("AdReviewManager", "Retrieved ad info (" + bundle + ") for serve id: " + str);
        }
        return bundle;
    }

    public void c(String str) {
        this.a.I();
        if (com.applovin.impl.sdk.n.a()) {
            this.a.I().a("AdReviewManager", "Removing ad info for serve id: " + str);
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (this.b) {
            this.c.remove(str);
        }
    }

    public void b(b bVar) {
        this.d.remove(bVar);
    }

    public static String b() {
        return b(MobileAdsBridge.versionMethodName);
    }

    private static String b(String str) {
        Class<?> cls;
        try {
            try {
                cls = Class.forName("com.applovin.quality.AppLovinQualityService");
            } catch (Throwable unused) {
                cls = Class.forName("com.safedk.android.SafeDK");
            }
            return (String) cls.getMethod(str, new Class[0]).invoke(null, new Object[0]);
        } catch (Throwable unused2) {
            return "";
        }
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        if ("safedk_ad_info".equals(appLovinCommunicatorMessage.getTopic())) {
            Bundle bundle = appLovinCommunicatorMessage.getMessageData().getBundle("public");
            if (bundle == null) {
                this.a.I();
                if (com.applovin.impl.sdk.n.a()) {
                    this.a.I().k("AdReviewManager", "Received SafeDK ad info without public data");
                    return;
                }
                return;
            }
            Bundle bundle2 = appLovinCommunicatorMessage.getMessageData().getBundle("private");
            if (bundle2 == null) {
                this.a.I();
                if (com.applovin.impl.sdk.n.a()) {
                    this.a.I().k("AdReviewManager", "Received SafeDK ad info without private data");
                    return;
                }
                return;
            }
            if (MaxAdFormat.formatFromString(bundle2.getString("ad_format")) == null) {
                this.a.I();
                if (com.applovin.impl.sdk.n.a()) {
                    this.a.I().k("AdReviewManager", "Received SafeDK ad info without ad format");
                    return;
                }
                return;
            }
            final String string = bundle2.getString("id");
            if (TextUtils.isEmpty(string)) {
                this.a.I();
                if (com.applovin.impl.sdk.n.a()) {
                    this.a.I().k("AdReviewManager", "Received SafeDK ad info without serve id");
                    return;
                }
                return;
            }
            synchronized (this.b) {
                this.a.I();
                if (com.applovin.impl.sdk.n.a()) {
                    this.a.I().a("AdReviewManager", "Storing current SafeDK ad info for serve id: " + string + ", public data: " + bundle);
                }
                this.c.put(string, bundle);
            }
            final String string2 = bundle.getString("ad_review_creative_id");
            this.a.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.a.I().a("AdReviewManager", "Received SafeDK ad info with Ad Review creative id: " + string2);
            }
            if (!StringUtils.isValidString(string2) || this.d.isEmpty()) {
                return;
            }
            HashSet<b> hashSet = new HashSet(this.d);
            this.a.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.a.I().a("AdReviewManager", "Notifying listeners: " + this.d);
            }
            for (final b bVar : hashSet) {
                this.a.i0().a((yl) new jn(this.a, "creativeIdGenerated", new Runnable() { // from class: com.applovin.impl.v$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.a(bVar, string, string2);
                    }
                }), tm.b.OTHER);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(b bVar, String str, String str2) {
        this.a.I();
        if (com.applovin.impl.sdk.n.a()) {
            this.a.I().a("AdReviewManager", "Notifying Ad Review creative id generated for listener: " + bVar);
        }
        bVar.onCreativeIdGenerated(str, str2);
    }

    public void a(b bVar) {
        this.d.add(bVar);
    }

    public static String a() {
        return b("getSdkKey");
    }
}
