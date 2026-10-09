package com.applovin.impl.sdk;

import android.adservices.measurement.MeasurementManager;
import android.adservices.topics.GetTopicsRequest;
import android.adservices.topics.GetTopicsResponse;
import android.adservices.topics.Topic;
import android.adservices.topics.TopicsManager;
import android.content.Context;
import android.net.Uri;
import android.os.OutcomeReceiver;
import android.text.TextUtils;
import android.view.InputEvent;
import com.applovin.impl.jn;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sj;
import com.applovin.impl.tm;
import com.applovin.impl.wh;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.md;

/* JADX INFO: loaded from: classes.dex */
public class q {
    private final j a;
    private final Executor b;
    private final MeasurementManager e;
    private final TopicsManager h;
    private final Set c = new HashSet();
    private final Object d = new Object();
    private final AtomicReference f = new AtomicReference(new JSONArray());
    private final d g = new d(this, null);

    class a implements OutcomeReceiver {
        a() {
        }

        @Override // android.os.OutcomeReceiver
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onError(Exception exc) {
            q.this.a.I();
            if (n.a()) {
                q.this.a.I().a("PrivacySandboxService", "Failed to register impression", exc);
            }
        }

        @Override // android.os.OutcomeReceiver
        public void onResult(Object obj) {
            q.this.a.I();
            if (n.a()) {
                q.this.a.I().a("PrivacySandboxService", "Successfully registered impression");
            }
        }
    }

    class b implements OutcomeReceiver {
        b() {
        }

        @Override // android.os.OutcomeReceiver
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onError(Exception exc) {
            q.this.a.I();
            if (n.a()) {
                q.this.a.I().a("PrivacySandboxService", "Failed to register click", exc);
            }
        }

        @Override // android.os.OutcomeReceiver
        public void onResult(Object obj) {
            q.this.a.I();
            if (n.a()) {
                q.this.a.I().a("PrivacySandboxService", "Successfully registered click");
            }
        }
    }

    class c implements OutcomeReceiver {
        c() {
        }

        @Override // android.os.OutcomeReceiver
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onError(Exception exc) {
            q.this.a.I();
            if (n.a()) {
                q.this.a.I().a("PrivacySandboxService", "Failed to register conversion", exc);
            }
        }

        @Override // android.os.OutcomeReceiver
        public void onResult(Object obj) {
            q.this.a.I();
            if (n.a()) {
                q.this.a.I().a("PrivacySandboxService", "Successfully registered conversion");
            }
        }
    }

    private class d implements OutcomeReceiver {
        private d() {
        }

        @Override // android.os.OutcomeReceiver
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onResult(GetTopicsResponse getTopicsResponse) {
            List<Topic> topics = getTopicsResponse.getTopics();
            int size = topics.size();
            q.this.a.I();
            if (n.a()) {
                q.this.a.I().d("PrivacySandboxService", size + " topic(s) received");
            }
            JSONArray jSONArray = new JSONArray();
            for (Topic topic : topics) {
                JSONObject jSONObject = new JSONObject();
                JsonUtils.putInt(jSONObject, "id", topic.getTopicId());
                JsonUtils.putLong(jSONObject, md.v, topic.getModelVersion());
                JsonUtils.putLong(jSONObject, "taxonomy", topic.getTaxonomyVersion());
                jSONArray.put(jSONObject);
            }
            q.this.f.set(jSONArray);
            q.this.b(((Boolean) q.this.a.a(sj.y6)).booleanValue(), ((Long) q.this.a.a(sj.w6)).longValue());
        }

        /* synthetic */ d(q qVar, a aVar) {
            this();
        }

        @Override // android.os.OutcomeReceiver
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onError(Exception exc) {
            String str;
            Long l = (Long) q.this.a.a(sj.x6);
            boolean z = l.longValue() == -1;
            q.this.a.I();
            if (n.a()) {
                n nVarI = q.this.a.I();
                StringBuilder sb = new StringBuilder("Failed to retrieve topics");
                if (z) {
                    str = "";
                } else {
                    str = ", retrying in " + l + " ms";
                }
                sb.append(str);
                nVarI.a("PrivacySandboxService", sb.toString(), exc);
            }
            if (z) {
                return;
            }
            q.this.b(((Boolean) q.this.a.a(sj.z6)).booleanValue(), l.longValue());
        }
    }

    protected q(j jVar) {
        this.a = jVar;
        this.b = jVar.i0().a();
        Context contextM = j.m();
        this.e = (MeasurementManager) contextM.getSystemService(MeasurementManager.class);
        this.h = (TopicsManager) contextM.getSystemService(TopicsManager.class);
        if (((Boolean) jVar.a(sj.v6)).booleanValue()) {
            b(((Boolean) jVar.a(sj.y6)).booleanValue(), 0L);
        }
    }

    private boolean c(String str) {
        synchronized (this.d) {
            if (this.c.contains(str)) {
                return false;
            }
            this.c.add(str);
            return true;
        }
    }

    public void b(final List list) {
        a("register impression", new Runnable() { // from class: com.applovin.impl.sdk.q$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(List list) {
        if (list == null || list.isEmpty() || this.e == null || !wh.e(j.v0)) {
            return;
        }
        this.a.I();
        if (n.a()) {
            this.a.I().a("PrivacySandboxService", "Registering impression...");
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            this.e.registerSource(Uri.parse((String) it.next()), null, this.b, new a());
        }
    }

    public void b(final List list, final InputEvent inputEvent) {
        a("register click", new Runnable() { // from class: com.applovin.impl.sdk.q$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(list, inputEvent);
            }
        });
    }

    public void b(final String str) {
        a("register conversion trigger event", new Runnable() { // from class: com.applovin.impl.sdk.q$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final boolean z, final long j) {
        a("retrieve topics", new Runnable() { // from class: com.applovin.impl.sdk.q$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(z, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(List list, InputEvent inputEvent) {
        if (list == null || list.isEmpty() || this.e == null || !wh.e(j.v0)) {
            return;
        }
        this.a.I();
        if (n.a()) {
            this.a.I().a("PrivacySandboxService", "Registering click...");
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            this.e.registerSource(Uri.parse((String) it.next()), inputEvent, this.b, new b());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str) {
        if (TextUtils.isEmpty(str) || this.e == null || !wh.e(j.v0)) {
            return;
        }
        this.a.I();
        if (n.a()) {
            this.a.I().a("PrivacySandboxService", "Registering conversion: " + str);
        }
        this.e.registerTrigger(Uri.parse(str), this.b, new c());
    }

    public JSONArray a() {
        return (JSONArray) this.f.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z, long j) {
        if (this.h == null) {
            return;
        }
        final GetTopicsRequest getTopicsRequestBuild = new GetTopicsRequest.Builder().setShouldRecordObservation(z).setAdsSdkName("AppLovin").build();
        if (j > 0) {
            this.a.i0().a(new jn(this.a, true, "getTopics", new Runnable() { // from class: com.applovin.impl.sdk.q$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(getTopicsRequestBuild);
                }
            }), tm.b.OTHER, j);
        } else {
            this.h.getTopics(getTopicsRequestBuild, this.b, this.g);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(GetTopicsRequest getTopicsRequest) {
        this.h.getTopics(getTopicsRequest, this.b, this.g);
    }

    private void a(String str, Runnable runnable) {
        try {
            this.a.I();
            if (n.a()) {
                this.a.I().a("PrivacySandboxService", "Running operation: " + str);
            }
            runnable.run();
        } catch (Throwable th) {
            this.a.I();
            if (n.a()) {
                this.a.I().a("PrivacySandboxService", "Failed to run operation: " + str, th);
            }
            if (c(str)) {
                this.a.D().a("PrivacySandboxService", str, th);
            }
        }
    }
}
