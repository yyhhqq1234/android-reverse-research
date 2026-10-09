package org.json.sdk.controller;

import org.json.JSONObject;
import org.json.eg;
import org.json.jc;
import org.json.l9;
import org.json.lc;
import org.json.mediationsdk.logger.IronLog;
import org.json.mg;
import org.json.mn;
import org.json.oj;
import org.json.pj;
import org.json.qj;
import org.json.sdk.utils.IronSourceStorageUtils;

/* JADX INFO: loaded from: classes3.dex */
class j {
    private final String a;
    private final lc b;

    class a implements mn {
        final /* synthetic */ qj a;
        final /* synthetic */ pj b;

        a(qj qjVar, pj pjVar) {
            this.a = qjVar;
            this.b = pjVar;
        }

        @Override // org.json.mn
        public void a(mg mgVar) {
            try {
                qj qjVar = this.a;
                pj pjVar = this.b;
                qjVar.b(pjVar, j.this.a(pjVar, mgVar.a()));
            } catch (Exception e) {
                l9.d().a(e);
                IronLog.INTERNAL.error(e.toString());
            }
        }

        @Override // org.json.mn
        public void a(mg mgVar, eg egVar) {
            try {
                qj qjVar = this.a;
                pj pjVar = this.b;
                qjVar.a(pjVar, j.this.a(pjVar, egVar.b()));
            } catch (Exception e) {
                l9.d().a(e);
                IronLog.INTERNAL.error(e.toString());
            }
        }
    }

    j(String str, lc lcVar) {
        this.a = str;
        this.b = lcVar;
    }

    private mg a(JSONObject jSONObject, String str) throws Exception {
        if (jSONObject.has(jc.c.d)) {
            return new mg(IronSourceStorageUtils.buildAbsolutePathToDirInCache(str, jSONObject.getString(jc.c.d)));
        }
        throw new Exception(jc.a.b);
    }

    private mn a(pj pjVar, qj qjVar) {
        return new a(qjVar, pjVar);
    }

    private JSONObject a(pj pjVar, long j) {
        try {
            return pjVar.e().put("result", j);
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return new JSONObject();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject a(pj pjVar, String str) {
        try {
            return pjVar.e().put("errMsg", str);
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return new JSONObject();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject a(pj pjVar, JSONObject jSONObject) {
        try {
            return pjVar.e().put("result", jSONObject);
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return new JSONObject();
        }
    }

    private mg b(JSONObject jSONObject, String str) throws Exception {
        if (!jSONObject.has(jc.c.c) || !jSONObject.has(jc.c.b)) {
            throw new Exception(jc.a.a);
        }
        String string = jSONObject.getString(jc.c.c);
        return new mg(IronSourceStorageUtils.buildAbsolutePathToDirInCache(str, string), jSONObject.getString(jc.c.b));
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0066  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    void a(JSONObject jSONObject, oj ojVar) {
        byte b;
        JSONObject jSONObjectA;
        JSONObject jSONObjectA2;
        pj pjVar = new pj(jSONObject);
        qj qjVar = new qj(ojVar);
        try {
            String strB = pjVar.b();
            JSONObject jSONObjectC = pjVar.c();
            mg mgVarB = b(jSONObjectC, this.a);
            IronSourceStorageUtils.ensurePathSafety(mgVarB, this.a);
            switch (strB.hashCode()) {
                case -2073025383:
                    if (!strB.equals(jc.b.a)) {
                        b = -1;
                    } else {
                        b = 0;
                    }
                    break;
                case -1137024519:
                    if (!strB.equals(jc.b.c)) {
                        b = -1;
                    } else {
                        b = 2;
                    }
                    break;
                case -318115535:
                    if (!strB.equals(jc.b.e)) {
                        b = -1;
                    } else {
                        b = 4;
                    }
                    break;
                case 537556755:
                    if (!strB.equals(jc.b.f)) {
                        b = -1;
                    } else {
                        b = 5;
                    }
                    break;
                case 1764172231:
                    if (!strB.equals(jc.b.b)) {
                        b = -1;
                    } else {
                        b = 1;
                    }
                    break;
                case 1953259713:
                    if (!strB.equals(jc.b.d)) {
                        b = -1;
                    } else {
                        b = 3;
                    }
                    break;
                default:
                    b = -1;
                    break;
            }
            if (b == 0) {
                this.b.a(mgVarB, jSONObjectC.optString(jc.c.a), jSONObjectC.optInt("connectionTimeout"), jSONObjectC.optInt("readTimeout"), a(pjVar, qjVar));
                return;
            }
            if (b == 1) {
                this.b.a(mgVarB);
                jSONObjectA = mgVarB.a();
            } else if (b == 2) {
                this.b.b(mgVarB);
                jSONObjectA = mgVarB.a();
            } else {
                if (b != 3) {
                    if (b == 4) {
                        jSONObjectA2 = a(pjVar, this.b.d(mgVarB));
                    } else {
                        if (b != 5) {
                            return;
                        }
                        this.b.a(mgVarB, jSONObjectC.optJSONObject(jc.c.g));
                        jSONObjectA = mgVarB.a();
                    }
                    qjVar.b(pjVar, jSONObjectA2);
                }
                jSONObjectA = this.b.c(mgVarB);
            }
            jSONObjectA2 = a(pjVar, jSONObjectA);
            qjVar.b(pjVar, jSONObjectA2);
        } catch (Exception e) {
            l9.d().a(e);
            qjVar.a(pjVar, a(pjVar, e.getMessage()));
        }
    }
}
