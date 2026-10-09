package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdLoadListener;
import java.util.Iterator;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class zm extends yl {
    private final AppLovinAdLoadListener h;
    private final a i;

    zm(eq eqVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.j jVar) {
        super("TaskProcessVastResponse", jVar);
        if (eqVar != null) {
            this.h = appLovinAdLoadListener;
            this.i = (a) eqVar;
            return;
        }
        throw new IllegalArgumentException("No context specified.");
    }

    protected es b(String str) {
        try {
            return fs.a(str, this.a);
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "Failed to process VAST response", th);
            }
            a(fq.XML_PARSING);
            return null;
        }
    }

    protected void c(String str) {
        if (str == null) {
            return;
        }
        Iterator<String> it = StringUtils.getRegexMatches(StringUtils.match(str, (String) this.a.a(sj.Z4)), 1).iterator();
        while (it.hasNext()) {
            es esVarB = b("<VAST>" + it.next() + "</VAST>");
            if (esVarB != null) {
                this.i.a(esVarB);
            }
        }
    }

    void a(es esVar) {
        int iD = this.i.d();
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a(this.b, "Finished parsing XML at depth " + iD);
        }
        this.i.a(esVar);
        if (mq.b(esVar)) {
            int iIntValue = ((Integer) this.a.a(sj.G4)).intValue();
            if (iD < iIntValue) {
                if (com.applovin.impl.sdk.n.a()) {
                    this.c.a(this.b, "VAST response is wrapper. Resolving...");
                }
                this.a.i0().a(new hn(this.i, this.h, this.a));
                return;
            }
            if (com.applovin.impl.sdk.n.a()) {
                this.c.b(this.b, "Reached beyond max wrapper depth of " + iIntValue);
            }
            a(fq.WRAPPER_LIMIT_REACHED);
            return;
        }
        if (mq.a(esVar)) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "VAST response is inline. Rendering ad...");
            }
            this.a.i0().a(new cn(this.i, this.h, this.a));
            return;
        }
        if (com.applovin.impl.sdk.n.a()) {
            this.c.b(this.b, "VAST response is an error");
        }
        a(fq.NO_WRAPPER_RESPONSE);
    }

    public static zm a(JSONObject jSONObject, JSONObject jSONObject2, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.j jVar) {
        return new c(new a(jSONObject, jSONObject2, jVar), appLovinAdLoadListener, jVar);
    }

    public static zm a(String str, JSONObject jSONObject, JSONObject jSONObject2, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.j jVar) {
        return new b(str, new a(jSONObject, jSONObject2, jVar), appLovinAdLoadListener, jVar);
    }

    public static zm a(es esVar, eq eqVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.j jVar) {
        return new d(esVar, eqVar, appLovinAdLoadListener, jVar);
    }

    void a(fq fqVar) {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.b(this.b, "Failed to process VAST response due to VAST error code " + fqVar);
        }
        mq.a(this.i, this.h, fqVar, -6, this.a);
    }

    private static final class c extends zm {
        private final JSONObject j;

        @Override // java.lang.Runnable
        public void run() {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "Processing SDK JSON response...");
            }
            String string = JsonUtils.getString(this.j, "xml", null);
            if (!StringUtils.isValidString(string)) {
                if (com.applovin.impl.sdk.n.a()) {
                    this.c.b(this.b, "No VAST response received.");
                }
                a(fq.NO_WRAPPER_RESPONSE);
                return;
            }
            if (string.length() >= ((Integer) this.a.a(sj.F4)).intValue()) {
                if (com.applovin.impl.sdk.n.a()) {
                    this.c.b(this.b, "VAST response is over max length");
                }
                a(fq.XML_PARSING);
                return;
            }
            es esVarB = b(string);
            if (esVarB != null) {
                a(esVarB);
                return;
            }
            if (com.applovin.impl.sdk.n.a()) {
                this.c.b(this.b, "Unable to process XML: " + string);
            }
            c(string);
            a(fq.XML_PARSING);
        }

        c(eq eqVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.j jVar) {
            super(eqVar, appLovinAdLoadListener, jVar);
            this.j = eqVar.b();
        }
    }

    private static final class b extends zm {
        private final String j;

        b(String str, eq eqVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.j jVar) {
            super(eqVar, appLovinAdLoadListener, jVar);
            this.j = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            es esVarB = b(this.j);
            if (esVarB != null) {
                a(esVarB);
                return;
            }
            if (com.applovin.impl.sdk.n.a()) {
                this.c.b(this.b, "Unable to process XML: " + this.j);
            }
            c(this.j);
            a(fq.XML_PARSING);
        }
    }

    private static final class d extends zm {
        private final es j;

        @Override // java.lang.Runnable
        public void run() {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "Processing VAST Wrapper response...");
            }
            a(this.j);
        }

        d(es esVar, eq eqVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.j jVar) {
            super(eqVar, appLovinAdLoadListener, jVar);
            if (esVar == null) {
                throw new IllegalArgumentException("No response specified.");
            }
            if (eqVar == null) {
                throw new IllegalArgumentException("No context specified.");
            }
            if (appLovinAdLoadListener != null) {
                this.j = esVar;
                return;
            }
            throw new IllegalArgumentException("No callback specified.");
        }
    }

    private static final class a extends eq {
        a(JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.j jVar) {
            super(jSONObject, jSONObject2, jVar);
        }

        void a(es esVar) {
            if (esVar != null) {
                this.b.add(esVar);
                return;
            }
            throw new IllegalArgumentException("No aggregated vast response specified");
        }
    }
}
