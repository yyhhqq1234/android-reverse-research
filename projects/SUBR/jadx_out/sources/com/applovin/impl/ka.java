package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ka {
    public static final ka A;
    public static final ka B;
    public static final ka C;
    public static final ka D;
    public static final ka E;
    public static final ka F;
    public static final ka G;
    public static final ka H;
    public static final ka I;
    public static final ka J;
    public static final ka K;
    public static final ka L;
    public static final ka M;
    public static final ka N;
    public static final ka O;
    public static final ka P;
    public static final ka Q;
    public static final ka R;
    public static final ka S;
    public static final ka T;
    public static final ka U;
    public static final ka V;
    public static final ka W;
    public static final ka X;
    public static final ka Y;
    public static final ka Z;
    public static final ka a0;
    public static final ka b0;
    private static JSONObject c;
    public static final ka c0;
    public static final ka d;
    public static final ka d0;
    public static final ka e;
    public static final ka f;
    public static final ka g;
    public static final ka h;
    public static final ka i;
    public static final ka j;
    public static final ka k;
    public static final ka l;
    public static final ka m;
    public static final ka n;
    public static final ka o;
    public static final ka p;
    public static final ka q;
    public static final ka r;
    public static final ka s;
    public static final ka t;
    public static final ka u;
    public static final ka v;
    public static final ka w;
    public static final ka x;
    public static final ka y;
    public static final ka z;
    private final String a;
    private final b b;

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[b.values().length];
            a = iArr;
            try {
                iArr[b.AD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[b.ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[b.USER_SESSION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public enum b {
        AD,
        ERROR,
        USER_SESSION
    }

    static {
        b bVar = b.ERROR;
        d = new ka("generic", bVar);
        e = new ka("sdk_init", b.USER_SESSION);
        b bVar2 = b.AD;
        f = new ka("ad_requested", bVar2);
        g = new ka("ad_request_success", bVar2);
        h = new ka("ad_request_failure", bVar2);
        i = new ka("ad_load_success", bVar2);
        j = new ka("ad_load_failure", bVar2);
        k = new ka("ad_displayed", bVar2);
        l = new ka("ad_hidden", bVar2);
        m = new ka("resource_load_started", bVar2);
        n = new ka("resource_load_success", bVar2);
        o = new ka("resource_load_failure", bVar2);
        p = new ka("ad_persist_request", bVar2);
        q = new ka("ad_persist_success", bVar2);
        r = new ka("ad_persist_failure", bVar2);
        s = new ka("persisted_ad_requested", bVar2);
        t = new ka("persisted_ad_load_success", bVar2);
        u = new ka("persisted_ad_load_failure", bVar2);
        v = new ka("persisted_ad_expired", bVar2);
        w = new ka("adapter_init_started", bVar2);
        x = new ka("adapter_init_success", bVar2);
        y = new ka("adapter_init_failure", bVar2);
        z = new ka("signal_collection_success", bVar2);
        A = new ka("signal_collection_failure", bVar2);
        B = new ka("mediated_ad_requested", bVar2);
        C = new ka("mediated_ad_request_success", bVar2);
        D = new ka("mediated_ad_request_failure", bVar2);
        E = new ka("mediated_ad_load_started", bVar2);
        F = new ka("mediated_ad_load_success", bVar2);
        G = new ka("mediated_ad_load_failure", bVar2);
        H = new ka("waterfall_processing_complete", bVar2);
        I = new ka("mediated_ad_displayed", bVar2);
        J = new ka("mediated_ad_display_failure", bVar2);
        K = new ka("mediated_ad_hidden", bVar2);
        L = new ka("mediated_ad_hidden_callback_not_called", bVar2);
        M = new ka("anr", bVar);
        N = new ka("app_killed_during_ad", bVar);
        O = new ka("auto_redirect", bVar);
        P = new ka("black_view", bVar);
        Q = new ka("cache_error", bVar);
        R = new ka("caught_exception", bVar);
        S = new ka("consent_flow_error", bVar);
        T = new ka("crash", bVar);
        U = new ka("file_error", bVar);
        V = new ka("integration_error", bVar);
        W = new ka("media_error", bVar);
        X = new ka("native_error", bVar);
        Y = new ka("network_error", bVar);
        Z = new ka("task_exception", bVar);
        a0 = new ka("task_latency_alert", bVar);
        b0 = new ka("template_error", bVar);
        c0 = new ka("unexpected_state", bVar);
        d0 = new ka("web_view_error", bVar);
    }

    public ka(String str, b bVar) {
        this.a = str;
        this.b = bVar;
    }

    public String b() {
        return this.a;
    }

    public b a() {
        return this.b;
    }

    public double a(com.applovin.impl.sdk.j jVar) {
        if (yp.i(com.applovin.impl.sdk.j.m())) {
            return 100.0d;
        }
        double dA = a(this.a, jVar);
        if (dA >= 0.0d) {
            return dA;
        }
        double dA2 = a(this.b, jVar);
        return dA2 >= 0.0d ? dA2 : ((Float) jVar.a(sj.J)).floatValue();
    }

    private double a(String str, com.applovin.impl.sdk.j jVar) {
        if (c == null) {
            c = JsonUtils.deserialize((String) jVar.a(sj.F));
        }
        Double d2 = JsonUtils.getDouble(c, str, (Double) null);
        if (d2 != null) {
            return d2.doubleValue();
        }
        return -1.0d;
    }

    private double a(b bVar, com.applovin.impl.sdk.j jVar) {
        float fFloatValue;
        int i2 = a.a[bVar.ordinal()];
        if (i2 == 1) {
            fFloatValue = ((Float) jVar.a(sj.G)).floatValue();
        } else if (i2 == 2) {
            fFloatValue = ((Float) jVar.a(sj.H)).floatValue();
        } else {
            if (i2 != 3) {
                return -1.0d;
            }
            fFloatValue = ((Float) jVar.a(sj.I)).floatValue();
        }
        return fFloatValue;
    }
}
