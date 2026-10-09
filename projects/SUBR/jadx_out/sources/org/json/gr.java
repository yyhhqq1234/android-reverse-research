package org.json;

import android.content.Context;
import android.text.TextUtils;
import com.onesignal.notifications.internal.common.NotificationFormatHelper;
import com.unity3d.ads.core.domain.CommonGetHeaderBiddingToken;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.environment.StringUtils;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.model.InterstitialPlacement;
import org.json.mediationsdk.model.NetworkSettings;
import org.json.mediationsdk.model.Placement;
import org.json.mediationsdk.utils.IronSourceUtils;

/* JADX INFO: loaded from: classes3.dex */
public class gr {
    protected static final boolean A = false;
    protected static final String A0 = "parallelInit";
    protected static final String A1 = "adSourceName";
    protected static final int B = 60;
    protected static final String B0 = "waitUntilAllProvidersFinishInit";
    protected static final String B1 = "providerNetworkKey";
    protected static final int C = 10000;
    protected static final String C0 = "sharedManagersThread";
    protected static final String C1 = "spId";
    protected static final int D = 10000;
    protected static final String D0 = "parallelLoad";
    protected static final String D1 = "mpis";
    protected static final int E = -1;
    protected static final String E0 = "bidderExclusive";
    protected static final String E1 = "auction";
    protected static final int F = 5000;
    protected static final String F0 = "adapterTimeOutInSeconds";
    protected static final String F1 = "auctionData";
    protected static final int G = 3;
    protected static final String G0 = "atim";
    protected static final String G1 = "auctioneerURL";
    protected static final int H = 3;
    protected static final String H0 = "bannerInterval";
    protected static final String H1 = "extAuctioneerURL";
    protected static final int I = 3;
    protected static final String I0 = "isOneFlow";
    protected static final String I1 = "objectPerWaterfall";
    protected static final int J = 0;
    protected static final String J0 = "expiredDurationInMinutes";
    protected static final String J1 = "minTimeBeforeFirstAuction";
    protected static final int K = 2;
    protected static final String K0 = "server";
    protected static final String K1 = "timeToWaitBeforeAuction";
    protected static final int L = 15;
    protected static final String L0 = "publisher";
    protected static final String L1 = "timeToWaitBeforeLoad";
    protected static final long M = 10000;
    protected static final String M0 = "console";
    protected static final String M1 = "auctionRetryInterval";
    protected static final boolean N = false;
    protected static final String N0 = "sendUltraEvents";
    protected static final String N1 = "isLoadWhileShow";
    protected static final long O = 3000;
    protected static final String O0 = "sendEventsToggle";
    protected static final String O1 = "auctionTrials";
    protected static final boolean P = false;
    protected static final String P0 = "eventsCompression";
    protected static final String P1 = "auctionTimeout";
    protected static final boolean Q = false;
    protected static final String Q0 = "eventsCompressionLevel";
    protected static final String Q1 = "auctionSavedHistory";
    protected static final int R = 30000;
    protected static final String R0 = "serverEventsURL";
    protected static final String R1 = "disableLoadWhileShowSupportFor";
    protected static final int S = -1;
    protected static final String S0 = "serverEventsType";
    protected static final String S1 = "timeToDeleteOldWaterfallAfterAuction";
    protected static final int T = 5000;
    protected static final String T0 = "backupThreshold";
    protected static final String T1 = "compressAuctionRequest";
    protected static final int U = 1;
    protected static final String U0 = "maxNumberOfEvents";
    protected static final String U1 = "compressAuctionResponse";
    protected static final boolean V = false;
    protected static final String V0 = "maxEventsPerBatch";
    protected static final String V1 = "encryptionVersion";
    protected static final int W = 15000;
    protected static final String W0 = "optOut";
    protected static final String W1 = "shouldSendBannerBURLFromImpression";
    protected static final int X = 15000;
    protected static final String X0 = "optIn";
    protected static final String X1 = "impressionTimeout";
    protected static final String Y = "providerOrder";
    protected static final String Y0 = "triggerEvents";
    protected static final String Y1 = "optInKeys";
    protected static final String Z = "providerSettings";
    protected static final String Z0 = "nonConnectivityEvents";
    protected static final String Z1 = "tokenGenericParams";
    protected static final String a0 = "configurations";
    protected static final String a1 = "shouldSendPublisherLogsOnUIThread";
    protected static final String a2 = "compressToken";
    protected static final String b0 = "genericParams";
    protected static final String b1 = "pixel";
    protected static final String b2 = "compressExternalToken";
    protected static final String c0 = "adUnits";
    protected static final String c1 = "pixelEventsUrl";
    protected static final String c2 = "instanceType";
    protected static final String d0 = "providerLoadName";
    protected static final String d1 = "pixelEventsEnabled";
    protected static final String d2 = "maxAdsPerSession";
    protected static final String e0 = "application";
    protected static final String e1 = "placements";
    protected static final String e2 = "reward";
    protected static final String f0 = "rewardedVideo";
    protected static final String f1 = "placementId";
    protected static final String f2 = "name";
    protected static final String g0 = "interstitial";
    protected static final String g1 = "placementName";
    protected static final String g2 = "amount";
    protected static final String h0 = "banner";
    protected static final String h1 = "delivery";
    protected static final String h2 = "bannerRefreshRate";
    protected static final String i0 = "nativeAd";
    protected static final String i1 = "isDefault";
    protected static final String i2 = "protocolVersion";
    protected static final String j0 = "integration";
    protected static final String j1 = "capping";
    protected static final String j2 = "adFormats";
    protected static final String k0 = "loggers";
    protected static final String k1 = "pacing";
    protected static final String k2 = "adUnits";
    public static final String l = "appKey";
    protected static final String l0 = "segment";
    protected static final String l1 = "enabled";
    protected static final String l2 = "rewarded";
    public static final String m = "userId";
    protected static final String m0 = "events";
    protected static final String m1 = "maxImpressions";
    public static final String n = "response";
    protected static final String n0 = "crashReporter";
    protected static final String n1 = "numOfSeconds";
    protected static final String o = "error";
    protected static final String o0 = "token";
    protected static final String o1 = "unit";
    protected static final int p = 3;
    protected static final String p0 = "external";
    protected static final String p1 = "virtualItemName";
    protected static final boolean q = false;
    protected static final String q0 = "mediationTypes";
    protected static final String q1 = "virtualItemCount";
    protected static final boolean r = true;
    protected static final String r0 = "providerDefaultInstance";
    protected static final String r1 = "uuidEnabled";
    protected static final boolean s = true;
    protected static final String s0 = "testSuite";
    protected static final String s1 = "abt";
    protected static final int t = 2;
    protected static final String t0 = "controllerUrl";
    protected static final String t1 = "delayLoadFailure";
    protected static final int u = 2;
    protected static final String u0 = "AdQuality";
    protected static final String u1 = "keysToInclude";
    protected static final int v = 1;
    protected static final String v0 = "initSDK";
    protected static final String v1 = "reporterURL";
    protected static final int w = 1;
    protected static final String w0 = "settings";
    protected static final String w1 = "reporterKeyword";
    protected static final boolean x = true;
    protected static final String x0 = "collectBiddingDataTimeout";
    protected static final String x1 = "includeANR";
    protected static final boolean y = false;
    protected static final String y0 = "collectBiddingDataAsyncEnabled";
    protected static final String y1 = "timeout";
    protected static final boolean z = false;
    protected static final String z0 = "providers";
    protected static final String z1 = "setIgnoreDebugger";
    private vo a;
    private xo b;
    private p8 c;
    private String d;
    private String e;
    private JSONObject f;
    private Context g;
    private a h;
    private cf.a i;
    private boolean j;
    private bc k;

    public enum a {
        NOT_SET("0"),
        CACHE("1"),
        SERVER(CommonGetHeaderBiddingToken.HB_TOKEN_VERSION);

        private final String a;

        a(String str) {
            this.a = str;
        }

        public String a() {
            return this.a;
        }
    }

    public gr(Context context, String str, String str2, String str3) {
        this.h = a.NOT_SET;
        this.j = false;
        this.g = context;
        this.i = jl.K().m();
        try {
            this.f = TextUtils.isEmpty(str3) ? new JSONObject() : new JSONObject(str3);
            this.j = n();
            s();
            q();
            r();
            this.d = TextUtils.isEmpty(str) ? "" : str;
            this.e = TextUtils.isEmpty(str2) ? "" : str2;
            b(this.f);
        } catch (JSONException e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            a();
        }
    }

    public gr(gr grVar) {
        this.h = a.NOT_SET;
        this.j = false;
        try {
            this.g = grVar.d();
            this.f = new JSONObject(grVar.f.toString());
            this.d = grVar.d;
            this.e = grVar.e;
            this.j = grVar.j;
            this.a = grVar.j();
            this.b = grVar.k();
            this.c = grVar.c();
            this.h = grVar.h();
            this.i = jl.K().m();
            b(this.f);
        } catch (Exception e) {
            l9.d().a(e);
            a();
        }
    }

    private int a(JSONObject jSONObject, JSONObject jSONObject2, String str, int i) {
        int iOptInt = 0;
        if (jSONObject.has(str)) {
            iOptInt = jSONObject.optInt(str, 0);
        } else if (jSONObject2.has(str)) {
            iOptInt = jSONObject2.optInt(str, 0);
        }
        return iOptInt == 0 ? i : iOptInt;
    }

    private long a(JSONObject jSONObject, JSONObject jSONObject2, String str, long j) {
        long jOptLong;
        if (jSONObject.has(str)) {
            jOptLong = jSONObject.optLong(str, 0L);
        } else {
            jOptLong = jSONObject2.has(str) ? jSONObject2.optLong(str, 0L) : 0L;
        }
        return jOptLong == 0 ? j : jOptLong;
    }

    public static a a(gr grVar) {
        return grVar != null ? grVar.h() : a.NOT_SET;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0036 A[PHI: r7
  0x0036: PHI (r7v3 com.ironsource.lo) = (r7v1 com.ironsource.lo), (r7v2 com.ironsource.lo) binds: [B:10:0x0034, B:13:0x0042] A[DONT_GENERATE, DONT_INLINE]] */
    private ho a(JSONObject jSONObject) {
        lo loVar = null;
        if (jSONObject == null) {
            return null;
        }
        ho.b bVar = new ho.b();
        bVar.a(jSONObject.optBoolean("delivery", true));
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("capping");
        if (jSONObjectOptJSONObject != null) {
            String strOptString = jSONObjectOptJSONObject.optString(o1);
            if (!TextUtils.isEmpty(strOptString)) {
                lo loVar2 = lo.PER_DAY;
                if (loVar2.toString().equals(strOptString)) {
                    loVar = loVar2;
                } else {
                    loVar2 = lo.PER_HOUR;
                    if (loVar2.toString().equals(strOptString)) {
                        loVar = loVar2;
                    }
                }
            }
            int iOptInt = jSONObjectOptJSONObject.optInt(m1, 0);
            bVar.a(jSONObjectOptJSONObject.optBoolean("enabled", false) && iOptInt > 0, loVar, iOptInt);
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("pacing");
        if (jSONObjectOptJSONObject2 != null) {
            int iOptInt2 = jSONObjectOptJSONObject2.optInt(n1, 0);
            bVar.a(jSONObjectOptJSONObject2.optBoolean("enabled", false) && iOptInt2 > 0, iOptInt2);
        }
        return bVar.a();
    }

    private String a(String str) {
        try {
            JSONObject jSONObjectC = c(c(c(c(this.f, "configurations"), "adFormats"), str), v2.c);
            if (jSONObjectC == null) {
                return null;
            }
            Iterator<String> itKeys = jSONObjectC.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                JSONObject jSONObjectC2 = c(jSONObjectC, next);
                if (jSONObjectC2 != null && jSONObjectC2.optBoolean(i1)) {
                    return next;
                }
            }
            return null;
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return null;
        }
    }

    private void a() {
        this.f = new JSONObject();
        this.d = "";
        this.e = "";
        this.a = new vo();
        this.b = xo.c();
        this.c = new p8.a().a();
        this.i = jl.K().m();
        b(this.f);
    }

    private boolean a(JSONObject jSONObject, JSONObject jSONObject2, String str, boolean z2) {
        if (jSONObject.has(str)) {
            return jSONObject.optBoolean(str, z2);
        }
        return jSONObject2.has(str) ? jSONObject2.optBoolean(str, z2) : z2;
    }

    private int[] a(JSONObject jSONObject, String str) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        if (jSONArrayOptJSONArray == null) {
            return null;
        }
        int[] iArr = new int[jSONArrayOptJSONArray.length()];
        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
            iArr[i] = jSONArrayOptJSONArray.optInt(i);
        }
        return iArr;
    }

    public static xt b(gr grVar) {
        return (grVar == null || !grVar.p()) ? xt.a() : grVar.c().getApplicationConfigurations().j();
    }

    private String b() {
        return this.j ? "adFormats" : v2.c;
    }

    private JSONArray b(JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            return null;
        }
        if (!this.j) {
            return jSONObject.optJSONArray(str);
        }
        JSONObject jSONObjectC = c(jSONObject, str);
        String strA = a(str);
        if (jSONObjectC == null || strA == null) {
            return null;
        }
        return jSONObjectC.optJSONArray(strA);
    }

    private void b(JSONObject jSONObject) {
        this.k = new bc(jSONObject.optJSONObject(oq.d));
    }

    private boolean b(String str) {
        return this.b.a("Mediation") && StringUtils.toLowerCase("IronSource").equals(StringUtils.toLowerCase(str));
    }

    private d1 c(JSONObject jSONObject) {
        d1 d1Var = new d1();
        JSONObject jSONObjectC = c(jSONObject, "AdQuality");
        if (jSONObjectC != null) {
            d1Var.a(jSONObjectC.optBoolean(v0));
        }
        return d1Var;
    }

    private JSONObject c(JSONObject jSONObject, String str) {
        if (jSONObject != null) {
            return jSONObject.optJSONObject(str);
        }
        return null;
    }

    private Context d() {
        return this.g;
    }

    private e7 d(JSONObject jSONObject) {
        if (jSONObject != null) {
            int iOptInt = jSONObject.optInt("placementId", -1);
            String strOptString = jSONObject.optString("placementName", "");
            boolean zOptBoolean = jSONObject.optBoolean(i1, false);
            ho hoVarA = a(jSONObject);
            if (iOptInt >= 0 && !TextUtils.isEmpty(strOptString)) {
                e7 e7Var = new e7(iOptInt, strOptString, zOptBoolean, hoVarA);
                if (hoVarA == null) {
                    return e7Var;
                }
                this.i.c(this.g, e7Var, IronSource.AD_UNIT.BANNER);
                return e7Var;
            }
        }
        return null;
    }

    private JSONObject d(JSONObject jSONObject, String str) {
        JSONObject jSONObjectC = c(jSONObject, str);
        return jSONObjectC != null ? jSONObjectC : new JSONObject();
    }

    private InterstitialPlacement e(JSONObject jSONObject) {
        if (jSONObject != null) {
            int iOptInt = jSONObject.optInt("placementId", -1);
            String strOptString = jSONObject.optString("placementName", "");
            boolean zOptBoolean = jSONObject.optBoolean(i1, false);
            ho hoVarA = a(jSONObject);
            if (iOptInt >= 0 && !TextUtils.isEmpty(strOptString)) {
                InterstitialPlacement interstitialPlacement = new InterstitialPlacement(iOptInt, strOptString, zOptBoolean, hoVarA);
                if (hoVarA == null) {
                    return interstitialPlacement;
                }
                this.i.c(this.g, interstitialPlacement, IronSource.AD_UNIT.INTERSTITIAL);
                return interstitialPlacement;
            }
        }
        return null;
    }

    private zl f(JSONObject jSONObject) {
        if (jSONObject != null) {
            int iOptInt = jSONObject.optInt("placementId", -1);
            String strOptString = jSONObject.optString("placementName", "");
            boolean zOptBoolean = jSONObject.optBoolean(i1, false);
            ho hoVarA = a(jSONObject);
            if (iOptInt >= 0 && !TextUtils.isEmpty(strOptString)) {
                zl zlVar = new zl(iOptInt, strOptString, zOptBoolean, hoVarA);
                if (hoVarA == null) {
                    return zlVar;
                }
                this.i.c(this.g, zlVar, IronSource.AD_UNIT.NATIVE_AD);
                return zlVar;
            }
        }
        return null;
    }

    private Placement g(JSONObject jSONObject) {
        if (jSONObject != null) {
            int iOptInt = jSONObject.optInt("placementId", -1);
            String strOptString = jSONObject.optString("placementName", "");
            boolean zOptBoolean = jSONObject.optBoolean(i1, false);
            String strOptString2 = jSONObject.optString("virtualItemName", "");
            int iOptInt2 = jSONObject.optInt("virtualItemCount", -1);
            ho hoVarA = a(jSONObject);
            if (iOptInt >= 0 && !TextUtils.isEmpty(strOptString) && !TextUtils.isEmpty(strOptString2) && iOptInt2 > 0) {
                Placement placement = new Placement(iOptInt, strOptString, zOptBoolean, strOptString2, iOptInt2, hoVarA);
                if (hoVarA == null) {
                    return placement;
                }
                this.i.c(this.g, placement, IronSource.AD_UNIT.REWARDED_VIDEO);
                return placement;
            }
        }
        return null;
    }

    private jt h(JSONObject jSONObject) {
        jt jtVar = new jt();
        JSONObject jSONObjectC = c(jSONObject, "testSuite");
        if (jSONObjectC != null) {
            jtVar.b(jSONObjectC.optString("controllerUrl"));
        }
        return jtVar;
    }

    private String l() {
        return this.j ? "rewarded" : f0;
    }

    private boolean m() {
        JSONObject jSONObjectC;
        JSONArray jSONArrayOptJSONArray;
        JSONObject jSONObjectC2 = c(this.f, "providerOrder");
        JSONArray jSONArrayNames = jSONObjectC2.names();
        if (jSONArrayNames == null) {
            return true;
        }
        JSONObject jSONObjectC3 = c(c(this.f, "configurations"), b());
        for (int i = 0; i < jSONArrayNames.length(); i++) {
            String strOptString = jSONArrayNames.optString(i);
            JSONArray jSONArrayOptJSONArray2 = jSONObjectC2.optJSONArray(strOptString);
            if (jSONArrayOptJSONArray2 != null && jSONArrayOptJSONArray2.length() != 0 && (jSONObjectC = c(jSONObjectC3, strOptString)) != null && ((jSONArrayOptJSONArray = jSONObjectC.optJSONArray("placements")) == null || jSONArrayOptJSONArray.length() == 0)) {
                return false;
            }
        }
        return true;
    }

    private boolean n() {
        int iOptInt;
        try {
            iOptInt = this.f.optInt(i2, 0);
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            iOptInt = 0;
        }
        return iOptInt == 1;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:160:0x073b  */
    /* JADX WARN: Code duplicated, block: B:163:0x0742 A[Catch: Exception -> 0x0b56, TryCatch #0 {Exception -> 0x0b56, blocks: (B:3:0x0004, B:5:0x006f, B:9:0x0089, B:11:0x0095, B:16:0x00da, B:18:0x0178, B:19:0x0185, B:21:0x018b, B:24:0x019f, B:26:0x01a7, B:27:0x01b0, B:29:0x01b6, B:32:0x01c6, B:34:0x01ce, B:35:0x01d5, B:37:0x01db, B:40:0x01e9, B:42:0x01f1, B:43:0x01f8, B:45:0x01fe, B:48:0x020c, B:50:0x0215, B:53:0x02c1, B:55:0x02c7, B:58:0x02e7, B:61:0x02f1, B:63:0x02f7, B:65:0x0301, B:66:0x0304, B:70:0x0323, B:72:0x03c8, B:73:0x03d5, B:75:0x03db, B:78:0x03ef, B:80:0x03f7, B:81:0x0400, B:83:0x0406, B:86:0x0416, B:88:0x041e, B:89:0x0425, B:91:0x042b, B:94:0x0439, B:96:0x0441, B:97:0x0448, B:99:0x044e, B:102:0x045c, B:104:0x0467, B:106:0x04de, B:109:0x04e8, B:111:0x04ee, B:113:0x04f8, B:114:0x04fb, B:118:0x0518, B:120:0x05e5, B:121:0x05f0, B:123:0x05f6, B:126:0x0608, B:128:0x0610, B:129:0x0619, B:131:0x061f, B:134:0x062f, B:136:0x0637, B:137:0x063e, B:139:0x0644, B:142:0x0652, B:144:0x065a, B:145:0x0661, B:147:0x0667, B:150:0x0675, B:152:0x0680, B:154:0x068a, B:158:0x072e, B:161:0x073c, B:163:0x0742, B:165:0x074e, B:166:0x0751, B:170:0x0780, B:172:0x081f, B:173:0x0826, B:175:0x082c, B:178:0x083a, B:180:0x0842, B:181:0x0849, B:183:0x084f, B:186:0x085d, B:188:0x0865, B:189:0x086c, B:191:0x0872, B:194:0x0880, B:196:0x0888, B:197:0x088f, B:199:0x0895, B:202:0x08a3, B:204:0x08b0, B:206:0x08b8, B:210:0x0929, B:213:0x0939, B:215:0x093f, B:217:0x0949, B:218:0x094c, B:220:0x0965, B:222:0x096c, B:225:0x0979, B:227:0x097f, B:228:0x0989, B:230:0x0991, B:231:0x0994, B:233:0x09a1, B:235:0x09aa, B:237:0x09c3, B:239:0x09c8, B:240:0x09e6, B:242:0x0a0e, B:245:0x0a54, B:247:0x0a5a, B:250:0x0a68, B:252:0x0a86, B:256:0x0a93, B:258:0x0a9f, B:260:0x0aac, B:261:0x0ab0, B:262:0x0ab5, B:264:0x0abc, B:265:0x0ac5, B:267:0x0b24, B:269:0x0b2c, B:271:0x0b43, B:255:0x0a8d, B:207:0x0918, B:208:0x0920, B:155:0x0713, B:156:0x0721, B:105:0x04d3, B:57:0x02d4), top: B:276:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:165:0x074e A[Catch: Exception -> 0x0b56, TryCatch #0 {Exception -> 0x0b56, blocks: (B:3:0x0004, B:5:0x006f, B:9:0x0089, B:11:0x0095, B:16:0x00da, B:18:0x0178, B:19:0x0185, B:21:0x018b, B:24:0x019f, B:26:0x01a7, B:27:0x01b0, B:29:0x01b6, B:32:0x01c6, B:34:0x01ce, B:35:0x01d5, B:37:0x01db, B:40:0x01e9, B:42:0x01f1, B:43:0x01f8, B:45:0x01fe, B:48:0x020c, B:50:0x0215, B:53:0x02c1, B:55:0x02c7, B:58:0x02e7, B:61:0x02f1, B:63:0x02f7, B:65:0x0301, B:66:0x0304, B:70:0x0323, B:72:0x03c8, B:73:0x03d5, B:75:0x03db, B:78:0x03ef, B:80:0x03f7, B:81:0x0400, B:83:0x0406, B:86:0x0416, B:88:0x041e, B:89:0x0425, B:91:0x042b, B:94:0x0439, B:96:0x0441, B:97:0x0448, B:99:0x044e, B:102:0x045c, B:104:0x0467, B:106:0x04de, B:109:0x04e8, B:111:0x04ee, B:113:0x04f8, B:114:0x04fb, B:118:0x0518, B:120:0x05e5, B:121:0x05f0, B:123:0x05f6, B:126:0x0608, B:128:0x0610, B:129:0x0619, B:131:0x061f, B:134:0x062f, B:136:0x0637, B:137:0x063e, B:139:0x0644, B:142:0x0652, B:144:0x065a, B:145:0x0661, B:147:0x0667, B:150:0x0675, B:152:0x0680, B:154:0x068a, B:158:0x072e, B:161:0x073c, B:163:0x0742, B:165:0x074e, B:166:0x0751, B:170:0x0780, B:172:0x081f, B:173:0x0826, B:175:0x082c, B:178:0x083a, B:180:0x0842, B:181:0x0849, B:183:0x084f, B:186:0x085d, B:188:0x0865, B:189:0x086c, B:191:0x0872, B:194:0x0880, B:196:0x0888, B:197:0x088f, B:199:0x0895, B:202:0x08a3, B:204:0x08b0, B:206:0x08b8, B:210:0x0929, B:213:0x0939, B:215:0x093f, B:217:0x0949, B:218:0x094c, B:220:0x0965, B:222:0x096c, B:225:0x0979, B:227:0x097f, B:228:0x0989, B:230:0x0991, B:231:0x0994, B:233:0x09a1, B:235:0x09aa, B:237:0x09c3, B:239:0x09c8, B:240:0x09e6, B:242:0x0a0e, B:245:0x0a54, B:247:0x0a5a, B:250:0x0a68, B:252:0x0a86, B:256:0x0a93, B:258:0x0a9f, B:260:0x0aac, B:261:0x0ab0, B:262:0x0ab5, B:264:0x0abc, B:265:0x0ac5, B:267:0x0b24, B:269:0x0b2c, B:271:0x0b43, B:255:0x0a8d, B:207:0x0918, B:208:0x0920, B:155:0x0713, B:156:0x0721, B:105:0x04d3, B:57:0x02d4), top: B:276:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:299:0x0751 A[SYNTHETIC] */
    private void q() {
        String str;
        String str2;
        JSONObject jSONObject;
        String str3;
        tp tpVar;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        JSONObject jSONObject2;
        String str9;
        String str10;
        ji jiVar;
        String str11;
        String str12;
        String str13;
        String str14;
        String str15;
        String str16;
        String str17;
        String str18;
        JSONObject jSONObject3;
        String str19;
        r6 r6Var;
        JSONObject jSONObject4;
        r6 r6Var2;
        String str20;
        String str21;
        JSONObject jSONObject5;
        String str22;
        String str23;
        String str24;
        String str25;
        String str26;
        ol olVar;
        boolean zOptBoolean;
        String str27;
        JSONObject jSONObjectC;
        int[] iArr;
        int[] iArr2;
        int[] iArr3;
        int[] iArr4;
        l5 l5Var;
        JSONObject jSONObjectC2;
        int[] iArr5;
        int[] iArr6;
        int[] iArr7;
        int[] iArr8;
        l5 l5Var2;
        l5 l5Var3;
        r6 r6Var3;
        int i;
        e7 e7VarD;
        int[] iArr9;
        int[] iArr10;
        int[] iArr11;
        int[] iArr12;
        l5 l5Var4;
        int[] iArr13;
        int[] iArr14;
        int[] iArr15;
        int[] iArr16;
        l5 l5Var5;
        try {
            JSONObject jSONObjectC3 = c(this.f, "configurations");
            JSONObject jSONObjectC4 = c(jSONObjectC3, b());
            JSONObject jSONObjectC5 = c(jSONObjectC3, "application");
            JSONObject jSONObjectC6 = c(jSONObjectC4, l());
            JSONObject jSONObjectC7 = c(jSONObjectC4, "interstitial");
            JSONObject jSONObjectC8 = c(jSONObjectC4, "banner");
            JSONObject jSONObjectC9 = c(jSONObjectC4, "nativeAd");
            JSONObject jSONObjectC10 = c(jSONObjectC5, "events");
            JSONObject jSONObjectC11 = c(jSONObjectC5, "loggers");
            JSONObject jSONObjectC12 = c(jSONObjectC5, "token");
            JSONObject jSONObjectC13 = c(jSONObjectC5, "segment");
            JSONObject jSONObjectC14 = c(jSONObjectC5, "auction");
            JSONObject jSONObjectC15 = c(jSONObjectC5, "crashReporter");
            JSONObject jSONObjectC16 = c(jSONObjectC5, "settings");
            JSONObject jSONObjectC17 = c(jSONObjectC5, "external");
            JSONObject jSONObjectC18 = c(jSONObjectC10, b1);
            if (jSONObjectC5 != null) {
                IronSourceUtils.saveBooleanToSharedPrefs(this.g, "uuidEnabled", jSONObjectC5.optBoolean("uuidEnabled", true));
            }
            if (jSONObjectC10 != null) {
                String strOptString = jSONObjectC10.optString("abt");
                if (TextUtils.isEmpty(strOptString)) {
                    str = null;
                } else {
                    li.i().a(strOptString);
                    vp.i().a(strOptString);
                    str = strOptString;
                }
            } else {
                str = null;
            }
            String str28 = x0;
            String str29 = y0;
            String str30 = "eventsCompressionLevel";
            String str31 = F1;
            String str32 = "eventsCompression";
            JSONObject jSONObject6 = jSONObjectC14;
            String str33 = "optIn";
            String str34 = "optOut";
            if (jSONObjectC6 != null) {
                JSONArray jSONArrayOptJSONArray = jSONObjectC6.optJSONArray("placements");
                JSONObject jSONObjectC19 = c(jSONObjectC6, "events");
                JSONObject jSONObjectD = d(jSONObjectC6, z0);
                boolean zOptBoolean2 = jSONObjectC6.optBoolean(y0, false);
                long jOptLong = jSONObjectC6.optLong(x0, O);
                boolean zOptBoolean3 = jSONObjectD.optBoolean(A0, false);
                boolean zOptBoolean4 = jSONObjectD.optBoolean(B0, false);
                boolean zOptBoolean5 = jSONObjectC6.optBoolean(C0, true);
                int iA = a(jSONObjectC6, jSONObject, "parallelLoad", 2);
                boolean zA = a(jSONObjectC6, jSONObject, "bidderExclusive", true);
                int iA2 = a(jSONObjectC6, jSONObject, F0, 60);
                int iA3 = a(jSONObjectC6, jSONObject, "expiredDurationInMinutes", -1);
                int iA4 = a(jSONObjectC6, jSONObject, t1, 3);
                boolean zA2 = a(jSONObjectC6, jSONObject, "isOneFlow", false);
                JSONObject jSONObjectMergeJsons = IronSourceUtils.mergeJsons(jSONObjectC19, jSONObjectC10);
                boolean zOptBoolean6 = jSONObjectMergeJsons.optBoolean("sendUltraEvents", false);
                boolean zOptBoolean7 = jSONObjectMergeJsons.optBoolean("sendEventsToggle", false);
                boolean zOptBoolean8 = jSONObjectMergeJsons.optBoolean("eventsCompression", false);
                int iOptInt = jSONObjectMergeJsons.optInt("eventsCompressionLevel", -1);
                str3 = "";
                String strOptString2 = jSONObjectMergeJsons.optString("serverEventsURL", str3);
                String strOptString3 = jSONObjectMergeJsons.optString("serverEventsType", str3);
                int iOptInt2 = jSONObjectMergeJsons.optInt("backupThreshold", -1);
                int iOptInt3 = jSONObjectMergeJsons.optInt("maxNumberOfEvents", -1);
                int iOptInt4 = jSONObjectMergeJsons.optInt("maxEventsPerBatch", 5000);
                str34 = str34;
                JSONArray jSONArrayOptJSONArray2 = jSONObjectMergeJsons.optJSONArray(str34);
                if (jSONArrayOptJSONArray2 != null) {
                    jSONObject = jSONObjectC5;
                    int[] iArr17 = new int[jSONArrayOptJSONArray2.length()];
                    for (int i3 = 0; i3 < jSONArrayOptJSONArray2.length(); i3++) {
                        iArr17[i3] = jSONArrayOptJSONArray2.optInt(i3);
                    }
                    iArr13 = iArr17;
                } else {
                    jSONObject = jSONObjectC5;
                    iArr13 = null;
                }
                str33 = str33;
                JSONArray jSONArrayOptJSONArray3 = jSONObjectMergeJsons.optJSONArray(str33);
                if (jSONArrayOptJSONArray3 != null) {
                    int[] iArr18 = new int[jSONArrayOptJSONArray3.length()];
                    for (int i4 = 0; i4 < jSONArrayOptJSONArray3.length(); i4++) {
                        iArr18[i4] = jSONArrayOptJSONArray3.optInt(i4);
                    }
                    iArr14 = iArr18;
                } else {
                    iArr14 = null;
                }
                JSONArray jSONArrayOptJSONArray4 = jSONObjectMergeJsons.optJSONArray("triggerEvents");
                if (jSONArrayOptJSONArray4 != null) {
                    int[] iArr19 = new int[jSONArrayOptJSONArray4.length()];
                    for (int i5 = 0; i5 < jSONArrayOptJSONArray4.length(); i5++) {
                        iArr19[i5] = jSONArrayOptJSONArray4.optInt(i5);
                    }
                    iArr15 = iArr19;
                } else {
                    iArr15 = null;
                }
                JSONArray jSONArrayOptJSONArray5 = jSONObjectMergeJsons.optJSONArray("nonConnectivityEvents");
                if (jSONArrayOptJSONArray5 != null) {
                    int[] iArr20 = new int[jSONArrayOptJSONArray5.length()];
                    for (int i6 = 0; i6 < jSONArrayOptJSONArray5.length(); i6++) {
                        iArr20[i6] = jSONArrayOptJSONArray5.optInt(i6);
                    }
                    iArr16 = iArr20;
                } else {
                    iArr16 = null;
                }
                e4 e4Var = new e4(zOptBoolean6, zOptBoolean7, zOptBoolean8, iOptInt, strOptString2, strOptString3, iOptInt2, iOptInt3, iOptInt4, iArr13, iArr14, iArr15, iArr16);
                if (jSONObject6 != null) {
                    JSONObject jSONObjectC20 = c(jSONObject6, l());
                    String strOptString4 = jSONObject6.optString(str31, str3);
                    String strOptString5 = jSONObject6.optString(G1, str3);
                    String strOptString6 = jSONObject6.optString(H1, str3);
                    int iOptInt5 = jSONObject6.optInt("auctionTrials", 2);
                    long jOptLong2 = jSONObject6.optLong(P1, 10000L);
                    int iOptInt6 = jSONObject6.optInt(Q1, 15);
                    boolean zOptBoolean9 = jSONObject6.optBoolean(T1, false);
                    boolean zOptBoolean10 = jSONObject6.optBoolean(U1, false);
                    int iOptInt7 = jSONObject6.optInt(V1, 1);
                    int iOptInt8 = jSONObjectC20.optInt(J1, 2000);
                    int iOptInt9 = jSONObjectC20.optInt(M1, 30000);
                    int iOptInt10 = jSONObjectC20.optInt(K1, 5000);
                    int iOptInt11 = jSONObjectC20.optInt(L1, 50);
                    boolean zOptBoolean11 = jSONObjectC20.optBoolean(I1, false);
                    boolean zOptBoolean12 = jSONObjectC20.optBoolean("isLoadWhileShow", true);
                    int iOptInt12 = jSONObjectC20.optInt(S1, 30000);
                    str2 = A0;
                    l5 l5Var6 = new l5(strOptString4, strOptString5, strOptString6, iOptInt5, iOptInt6, jOptLong2, iOptInt8, iOptInt9, iOptInt10, iOptInt11, zOptBoolean12, iOptInt12, zOptBoolean9, zOptBoolean10, zOptBoolean11, iOptInt7, false);
                    JSONArray jSONArrayOptJSONArray6 = jSONObjectC20.optJSONArray(R1);
                    if (jSONArrayOptJSONArray6 != null) {
                        str31 = str31;
                        jSONObject6 = jSONObject6;
                        for (int i7 = 0; i7 < jSONArrayOptJSONArray6.length(); i7++) {
                            l5Var6.a(jSONArrayOptJSONArray6.optString(i7));
                        }
                    }
                    str31 = str31;
                    jSONObject6 = jSONObject6;
                    l5Var5 = l5Var6;
                } else {
                    str2 = A0;
                    l5Var5 = new l5();
                }
                tp tpVar2 = new tp(iA, zA, iA2, iA3, e4Var, l5Var5, iA4, zA2, zOptBoolean2, jOptLong, zOptBoolean3, zOptBoolean4, zOptBoolean5);
                if (jSONArrayOptJSONArray != null) {
                    for (int i8 = 0; i8 < jSONArrayOptJSONArray.length(); i8++) {
                        Placement placementG = g(jSONArrayOptJSONArray.optJSONObject(i8));
                        if (placementG != null) {
                            tpVar2.a(placementG);
                        }
                    }
                }
                tpVar = tpVar2;
            } else {
                str2 = A0;
                jSONObject = jSONObjectC5;
                str32 = "eventsCompression";
                jSONObjectC10 = jSONObjectC10;
                str28 = x0;
                str29 = y0;
                str3 = "";
                str30 = "eventsCompressionLevel";
                tpVar = null;
            }
            if (jSONObjectC7 != null) {
                str6 = "placements";
                JSONArray jSONArrayOptJSONArray7 = jSONObjectC7.optJSONArray(str6);
                str7 = "events";
                JSONObject jSONObjectC21 = c(jSONObjectC7, str7);
                str8 = z0;
                JSONObject jSONObjectD2 = d(jSONObjectC7, str8);
                str10 = str29;
                boolean zOptBoolean13 = jSONObjectC7.optBoolean(str10, false);
                str9 = str28;
                long jOptLong3 = jSONObjectC7.optLong(str9, O);
                str2 = str2;
                boolean zOptBoolean14 = jSONObjectD2.optBoolean(str2, false);
                boolean zOptBoolean15 = jSONObjectD2.optBoolean(B0, false);
                boolean zOptBoolean16 = jSONObjectC7.optBoolean(C0, true);
                jSONObject2 = jSONObject;
                int iA5 = a(jSONObjectC7, jSONObject2, "parallelLoad", 2);
                boolean zA3 = a(jSONObjectC7, jSONObject2, "bidderExclusive", false);
                int iA6 = a(jSONObjectC7, jSONObject2, F0, 60);
                int iA7 = a(jSONObjectC7, jSONObject2, t1, 3);
                boolean zA4 = a(jSONObjectC7, jSONObject2, "isOneFlow", false);
                JSONObject jSONObject7 = jSONObjectC10;
                JSONObject jSONObjectMergeJsons2 = IronSourceUtils.mergeJsons(jSONObjectC21, jSONObject7);
                boolean zOptBoolean17 = jSONObjectMergeJsons2.optBoolean("sendEventsToggle", false);
                str32 = str32;
                boolean zOptBoolean18 = jSONObjectMergeJsons2.optBoolean(str32, false);
                String str35 = str30;
                int iOptInt13 = jSONObjectMergeJsons2.optInt(str35, -1);
                str5 = str35;
                str3 = str3;
                String strOptString7 = jSONObjectMergeJsons2.optString("serverEventsURL", str3);
                String strOptString8 = jSONObjectMergeJsons2.optString("serverEventsType", str3);
                jSONObjectC10 = jSONObject7;
                int iOptInt14 = jSONObjectMergeJsons2.optInt("backupThreshold", -1);
                int iOptInt15 = jSONObjectMergeJsons2.optInt("maxNumberOfEvents", -1);
                int iOptInt16 = jSONObjectMergeJsons2.optInt("maxEventsPerBatch", 5000);
                str34 = str34;
                JSONArray jSONArrayOptJSONArray8 = jSONObjectMergeJsons2.optJSONArray(str34);
                if (jSONArrayOptJSONArray8 != null) {
                    int[] iArr21 = new int[jSONArrayOptJSONArray8.length()];
                    for (int i9 = 0; i9 < jSONArrayOptJSONArray8.length(); i9++) {
                        iArr21[i9] = jSONArrayOptJSONArray8.optInt(i9);
                    }
                    iArr9 = iArr21;
                } else {
                    iArr9 = null;
                }
                str33 = str33;
                JSONArray jSONArrayOptJSONArray9 = jSONObjectMergeJsons2.optJSONArray(str33);
                if (jSONArrayOptJSONArray9 != null) {
                    int[] iArr22 = new int[jSONArrayOptJSONArray9.length()];
                    for (int i10 = 0; i10 < jSONArrayOptJSONArray9.length(); i10++) {
                        iArr22[i10] = jSONArrayOptJSONArray9.optInt(i10);
                    }
                    iArr10 = iArr22;
                } else {
                    iArr10 = null;
                }
                JSONArray jSONArrayOptJSONArray10 = jSONObjectMergeJsons2.optJSONArray("triggerEvents");
                if (jSONArrayOptJSONArray10 != null) {
                    int[] iArr23 = new int[jSONArrayOptJSONArray10.length()];
                    for (int i11 = 0; i11 < jSONArrayOptJSONArray10.length(); i11++) {
                        iArr23[i11] = jSONArrayOptJSONArray10.optInt(i11);
                    }
                    iArr11 = iArr23;
                } else {
                    iArr11 = null;
                }
                JSONArray jSONArrayOptJSONArray11 = jSONObjectMergeJsons2.optJSONArray("nonConnectivityEvents");
                if (jSONArrayOptJSONArray11 != null) {
                    int[] iArr24 = new int[jSONArrayOptJSONArray11.length()];
                    for (int i12 = 0; i12 < jSONArrayOptJSONArray11.length(); i12++) {
                        iArr24[i12] = jSONArrayOptJSONArray11.optInt(i12);
                    }
                    iArr12 = iArr24;
                } else {
                    iArr12 = null;
                }
                e4 e4Var2 = new e4(false, zOptBoolean17, zOptBoolean18, iOptInt13, strOptString7, strOptString8, iOptInt14, iOptInt15, iOptInt16, iArr9, iArr10, iArr11, iArr12);
                if (jSONObject6 != null) {
                    JSONObject jSONObject8 = jSONObject6;
                    str4 = str31;
                    jSONObject6 = jSONObject8;
                    l5Var4 = new l5(jSONObject8.optString(str4, str3), jSONObject8.optString(G1, str3), jSONObject8.optString(H1, str3), jSONObject8.optInt("auctionTrials", 2), jSONObject8.optInt(Q1, 15), jSONObject8.optLong(P1, 10000L), c(jSONObject8, "interstitial").optInt(J1, 2000), 0L, 0L, 0L, true, 0, jSONObject8.optBoolean(T1, false), jSONObject8.optBoolean(U1, false), true, jSONObject8.optInt(V1, 1), false);
                } else {
                    str4 = str31;
                    l5Var4 = new l5();
                }
                ji jiVar2 = new ji(iA5, zA3, iA6, e4Var2, l5Var4, iA7, zA4, zOptBoolean13, jOptLong3, zOptBoolean14, zOptBoolean15, zOptBoolean16);
                if (jSONArrayOptJSONArray7 != null) {
                    for (int i13 = 0; i13 < jSONArrayOptJSONArray7.length(); i13++) {
                        InterstitialPlacement interstitialPlacementE = e(jSONArrayOptJSONArray7.optJSONObject(i13));
                        if (interstitialPlacementE != null) {
                            jiVar2.a(interstitialPlacementE);
                        }
                    }
                }
                jiVar = jiVar2;
            } else {
                str4 = str31;
                str5 = str30;
                str6 = r12;
                str7 = r8;
                str8 = r9;
                jSONObject2 = jSONObject;
                str9 = str28;
                str10 = str29;
                jiVar = null;
            }
            if (jSONObjectC8 != null) {
                JSONArray jSONArrayOptJSONArray12 = jSONObjectC8.optJSONArray(str6);
                JSONObject jSONObjectC22 = c(jSONObjectC8, str7);
                JSONObject jSONObjectD3 = d(jSONObjectC8, str8);
                String str36 = str5;
                str16 = str2;
                String str37 = str33;
                String str38 = str3;
                JSONArray jSONArray = jSONArrayOptJSONArray12;
                str17 = str4;
                str18 = B0;
                jSONObject3 = jSONObjectC10;
                long jA = a(jSONObjectC8, jSONObject2, G0, 10000L);
                str13 = t1;
                int iA8 = a(jSONObjectC8, jSONObject2, str13, 3);
                int iOptInt17 = jSONObjectC8.optInt("bannerInterval", 60);
                long jOptLong4 = jSONObjectC8.optLong(X1, 15000L);
                boolean zA5 = a(jSONObjectC8, jSONObject2, "isOneFlow", false);
                boolean zOptBoolean19 = jSONObjectC8.optBoolean(str10, false);
                long jOptLong5 = jSONObjectC8.optLong(str9, O);
                boolean zOptBoolean20 = jSONObjectD3.optBoolean(str16, false);
                boolean zOptBoolean21 = jSONObjectD3.optBoolean(str18, false);
                boolean zOptBoolean22 = jSONObjectC8.optBoolean(C0, true);
                JSONObject jSONObjectMergeJsons3 = IronSourceUtils.mergeJsons(jSONObjectC22, jSONObject3);
                boolean zOptBoolean23 = jSONObjectMergeJsons3.optBoolean("sendEventsToggle", false);
                str19 = str32;
                boolean zOptBoolean24 = jSONObjectMergeJsons3.optBoolean(str19, false);
                str14 = str36;
                int iOptInt18 = jSONObjectMergeJsons3.optInt(str14, -1);
                str15 = str38;
                String strOptString9 = jSONObjectMergeJsons3.optString("serverEventsURL", str15);
                String strOptString10 = jSONObjectMergeJsons3.optString("serverEventsType", str15);
                int iOptInt19 = jSONObjectMergeJsons3.optInt("backupThreshold", -1);
                int iOptInt20 = jSONObjectMergeJsons3.optInt("maxNumberOfEvents", -1);
                int iOptInt21 = jSONObjectMergeJsons3.optInt("maxEventsPerBatch", 5000);
                str12 = str34;
                JSONArray jSONArrayOptJSONArray13 = jSONObjectMergeJsons3.optJSONArray(str12);
                if (jSONArrayOptJSONArray13 != null) {
                    int[] iArr25 = new int[jSONArrayOptJSONArray13.length()];
                    for (int i14 = 0; i14 < jSONArrayOptJSONArray13.length(); i14++) {
                        iArr25[i14] = jSONArrayOptJSONArray13.optInt(i14);
                    }
                    iArr5 = iArr25;
                } else {
                    iArr5 = null;
                }
                str11 = str37;
                JSONArray jSONArrayOptJSONArray14 = jSONObjectMergeJsons3.optJSONArray(str11);
                if (jSONArrayOptJSONArray14 != null) {
                    int[] iArr26 = new int[jSONArrayOptJSONArray14.length()];
                    for (int i15 = 0; i15 < jSONArrayOptJSONArray14.length(); i15++) {
                        iArr26[i15] = jSONArrayOptJSONArray14.optInt(i15);
                    }
                    iArr6 = iArr26;
                } else {
                    iArr6 = null;
                }
                JSONArray jSONArrayOptJSONArray15 = jSONObjectMergeJsons3.optJSONArray("triggerEvents");
                if (jSONArrayOptJSONArray15 != null) {
                    int[] iArr27 = new int[jSONArrayOptJSONArray15.length()];
                    for (int i16 = 0; i16 < jSONArrayOptJSONArray15.length(); i16++) {
                        iArr27[i16] = jSONArrayOptJSONArray15.optInt(i16);
                    }
                    iArr7 = iArr27;
                } else {
                    iArr7 = null;
                }
                JSONArray jSONArrayOptJSONArray16 = jSONObjectMergeJsons3.optJSONArray("nonConnectivityEvents");
                if (jSONArrayOptJSONArray16 != null) {
                    int[] iArr28 = new int[jSONArrayOptJSONArray16.length()];
                    for (int i17 = 0; i17 < jSONArrayOptJSONArray16.length(); i17++) {
                        iArr28[i17] = jSONArrayOptJSONArray16.optInt(i17);
                    }
                    iArr8 = iArr28;
                } else {
                    iArr8 = null;
                }
                e4 e4Var3 = new e4(false, zOptBoolean23, zOptBoolean24, iOptInt18, strOptString9, strOptString10, iOptInt19, iOptInt20, iOptInt21, iArr5, iArr6, iArr7, iArr8);
                if (jSONObject6 != null) {
                    JSONObject jSONObject9 = jSONObject6;
                    JSONObject jSONObjectC23 = c(jSONObject9, "banner");
                    if (jSONObjectC23 != null) {
                        str15 = str15;
                        jSONObject6 = jSONObject9;
                        str17 = str17;
                        str19 = str19;
                        str11 = str11;
                        l5Var3 = new l5(jSONObject9.optString(str17, str15), jSONObject9.optString(G1, str15), jSONObject9.optString(H1, str15), jSONObject9.optInt("auctionTrials", 2), jSONObject9.optInt(Q1, 15), jSONObject9.optLong(P1, 10000L), jSONObjectC23.optInt(J1, 2000), jSONObjectC23.optInt(M1, 15000), jSONObjectC23.optInt(K1, 50), 0L, jSONObjectC23.optBoolean("isLoadWhileShow", false), 0, jSONObject9.optBoolean(T1, false), jSONObject9.optBoolean(U1, false), jSONObjectC23.optBoolean(I1, true), jSONObject9.optInt(V1, 1), jSONObjectC23.optBoolean(W1, true));
                    } else {
                        jSONObject6 = jSONObject9;
                        l5Var2 = new l5();
                    }
                    r6Var3 = new r6(1, jA, false, e4Var3, iOptInt17, l5Var3, iA8, zA5, zOptBoolean19, jOptLong5, zOptBoolean20, zOptBoolean21, zOptBoolean22, jOptLong4);
                    if (jSONArray != null) {
                        i = 0;
                        while (i < jSONArray.length()) {
                            JSONArray jSONArray2 = jSONArray;
                            e7VarD = d(jSONArray2.optJSONObject(i));
                            if (e7VarD != null) {
                                r6Var3.a(e7VarD);
                            }
                            i++;
                            jSONArray = jSONArray2;
                        }
                    }
                    r6Var = r6Var3;
                } else {
                    l5Var2 = new l5();
                }
                l5Var3 = l5Var2;
                r6Var3 = new r6(1, jA, false, e4Var3, iOptInt17, l5Var3, iA8, zA5, zOptBoolean19, jOptLong5, zOptBoolean20, zOptBoolean21, zOptBoolean22, jOptLong4);
                if (jSONArray != null) {
                    i = 0;
                    while (i < jSONArray.length()) {
                        JSONArray jSONArray3 = jSONArray;
                        e7VarD = d(jSONArray3.optJSONObject(i));
                        if (e7VarD != null) {
                            r6Var3.a(e7VarD);
                        }
                        i++;
                        jSONArray = jSONArray3;
                    }
                }
                r6Var = r6Var3;
            } else {
                str11 = str33;
                str12 = str34;
                str13 = r1;
                str14 = str5;
                str15 = str3;
                str16 = str2;
                str17 = str4;
                str18 = r5;
                jSONObject3 = jSONObjectC10;
                str19 = str32;
                r6Var = null;
            }
            if (jSONObjectC9 != null) {
                JSONArray jSONArrayOptJSONArray17 = jSONObjectC9.optJSONArray(str6);
                String str39 = str7;
                JSONObject jSONObjectC24 = c(jSONObjectC9, str39);
                JSONObject jSONObjectD4 = d(jSONObjectC9, str8);
                r6Var2 = r6Var;
                str22 = str39;
                str20 = str17;
                JSONObject jSONObject10 = jSONObject6;
                long jA2 = a(jSONObjectC9, jSONObject2, G0, 10000L);
                int iA9 = a(jSONObjectC9, jSONObject2, str13, 0);
                boolean zOptBoolean25 = jSONObjectC9.optBoolean(str10, false);
                long jOptLong6 = jSONObjectC9.optLong(str9, O);
                boolean zOptBoolean26 = jSONObjectD4.optBoolean(str16, false);
                boolean zOptBoolean27 = jSONObjectD4.optBoolean(str18, false);
                boolean zOptBoolean28 = jSONObjectC9.optBoolean(C0, true);
                jSONObject4 = jSONObject3;
                JSONObject jSONObjectMergeJsons4 = IronSourceUtils.mergeJsons(jSONObjectC24, jSONObject4);
                boolean zOptBoolean29 = jSONObjectMergeJsons4.optBoolean("sendEventsToggle", false);
                str21 = str19;
                boolean zOptBoolean30 = jSONObjectMergeJsons4.optBoolean(str21, false);
                str23 = str14;
                int iOptInt22 = jSONObjectMergeJsons4.optInt(str23, -1);
                str26 = str15;
                String strOptString11 = jSONObjectMergeJsons4.optString("serverEventsURL", str26);
                String strOptString12 = jSONObjectMergeJsons4.optString("serverEventsType", str26);
                int iOptInt23 = jSONObjectMergeJsons4.optInt("backupThreshold", -1);
                int iOptInt24 = jSONObjectMergeJsons4.optInt("maxNumberOfEvents", -1);
                int iOptInt25 = jSONObjectMergeJsons4.optInt("maxEventsPerBatch", 5000);
                str25 = str12;
                JSONArray jSONArrayOptJSONArray18 = jSONObjectMergeJsons4.optJSONArray(str25);
                if (jSONArrayOptJSONArray18 != null) {
                    int[] iArr29 = new int[jSONArrayOptJSONArray18.length()];
                    for (int i18 = 0; i18 < jSONArrayOptJSONArray18.length(); i18++) {
                        iArr29[i18] = jSONArrayOptJSONArray18.optInt(i18);
                    }
                    iArr = iArr29;
                } else {
                    iArr = null;
                }
                str24 = str11;
                JSONArray jSONArrayOptJSONArray19 = jSONObjectMergeJsons4.optJSONArray(str24);
                if (jSONArrayOptJSONArray19 != null) {
                    int[] iArr30 = new int[jSONArrayOptJSONArray19.length()];
                    for (int i19 = 0; i19 < jSONArrayOptJSONArray19.length(); i19++) {
                        iArr30[i19] = jSONArrayOptJSONArray19.optInt(i19);
                    }
                    iArr2 = iArr30;
                } else {
                    iArr2 = null;
                }
                JSONArray jSONArrayOptJSONArray20 = jSONObjectMergeJsons4.optJSONArray("triggerEvents");
                if (jSONArrayOptJSONArray20 != null) {
                    int[] iArr31 = new int[jSONArrayOptJSONArray20.length()];
                    for (int i20 = 0; i20 < jSONArrayOptJSONArray20.length(); i20++) {
                        iArr31[i20] = jSONArrayOptJSONArray20.optInt(i20);
                    }
                    iArr3 = iArr31;
                } else {
                    iArr3 = null;
                }
                JSONArray jSONArrayOptJSONArray21 = jSONObjectMergeJsons4.optJSONArray("nonConnectivityEvents");
                if (jSONArrayOptJSONArray21 != null) {
                    int[] iArr32 = new int[jSONArrayOptJSONArray21.length()];
                    for (int i21 = 0; i21 < jSONArrayOptJSONArray21.length(); i21++) {
                        iArr32[i21] = jSONArrayOptJSONArray21.optInt(i21);
                    }
                    iArr4 = iArr32;
                } else {
                    iArr4 = null;
                }
                e4 e4Var4 = new e4(false, zOptBoolean29, zOptBoolean30, iOptInt22, strOptString11, strOptString12, iOptInt23, iOptInt24, iOptInt25, iArr, iArr2, iArr3, iArr4);
                jSONObject5 = jSONObject10;
                if (jSONObject5 == null || (jSONObjectC2 = c(jSONObject5, "nativeAd")) == null) {
                    l5 l5Var7 = new l5();
                    l5Var = l5Var7;
                } else {
                    str20 = str20;
                    l5Var = new l5(jSONObject5.optString(str20, str26), jSONObject5.optString(G1, str26), jSONObject5.optString(H1, str26), jSONObject5.optInt("auctionTrials", 2), jSONObject5.optInt(Q1, 15), jSONObject5.optLong(P1, 10000L), jSONObjectC2.optInt(J1, 2000), 0L, 0L, 0L, true, 0, jSONObject5.optBoolean(T1, false), jSONObject5.optBoolean(U1, false), true, jSONObject5.optInt(V1, 1), false);
                }
                olVar = new ol(1, jA2, false, e4Var4, l5Var, iA9, zOptBoolean25, jOptLong6, zOptBoolean26, zOptBoolean27, zOptBoolean28);
                if (jSONArrayOptJSONArray17 != null) {
                    for (int i22 = 0; i22 < jSONArrayOptJSONArray17.length(); i22++) {
                        zl zlVarF = f(jSONArrayOptJSONArray17.optJSONObject(i22));
                        if (zlVarF != null) {
                            olVar.a(zlVarF);
                        }
                    }
                }
            } else {
                jSONObject4 = jSONObject3;
                r6Var2 = r6Var;
                str20 = str17;
                str21 = str19;
                jSONObject5 = jSONObject6;
                str22 = str7;
                str23 = str14;
                str24 = str11;
                str25 = str12;
                str26 = str15;
                olVar = null;
            }
            xt xtVar = new xt();
            if (jSONObjectC12 != null) {
                JSONArray jSONArrayOptJSONArray22 = jSONObjectC12.optJSONArray(Y1);
                if (jSONArrayOptJSONArray22 != null) {
                    for (int i23 = 0; i23 < jSONArrayOptJSONArray22.length(); i23++) {
                        xtVar.a(jSONArrayOptJSONArray22.optString(i23));
                    }
                }
                JSONObject jSONObjectOptJSONObject = jSONObjectC12.optJSONObject(Z1);
                if (jSONObjectOptJSONObject != null) {
                    xtVar.a(jSONObjectOptJSONObject);
                }
                xtVar.a(jSONObjectC12.optBoolean(a2, true));
            }
            fo foVar = new fo();
            if (jSONObjectC18 != null) {
                String strOptString13 = jSONObjectC18.optString(c1, go.a);
                zOptBoolean = jSONObjectC18.optBoolean(d1, true);
                foVar.a(strOptString13);
            } else {
                zOptBoolean = true;
            }
            foVar.b(zOptBoolean);
            if (zOptBoolean) {
                foVar.b(a(jSONObject4, str25));
                foVar.a(a(jSONObject4, str24));
                foVar.a(jSONObject4.optBoolean(str21, false));
                foVar.a(jSONObject4.optInt(str23, -1));
            }
            l4 l4Var = new l4(jSONObjectC11.optInt("server", 3), jSONObjectC11.optInt("publisher", 3), jSONObjectC11.optInt("console", 3), jSONObjectC11.optBoolean("shouldSendPublisherLogsOnUIThread", false));
            b4 b4Var = new b4();
            if (jSONObjectC15 != 0) {
                b4Var.a(jSONObjectC15.optBoolean("enabled", false));
                b4Var.c(jSONObjectC15.optString("reporterURL", str26));
                b4Var.b(jSONObjectC15.optString("reporterKeyword", str26));
                b4Var.c(jSONObjectC15.optBoolean("includeANR", false));
                b4Var.a(jSONObjectC15.optInt("timeout", 5000));
                b4Var.b(jSONObjectC15.optBoolean("setIgnoreDebugger", false));
                JSONArray jSONArrayOptJSONArray23 = jSONObjectC15.optJSONArray("keysToInclude");
                if (jSONArrayOptJSONArray23 != null) {
                    for (int i24 = 0; i24 < jSONArrayOptJSONArray23.length(); i24++) {
                        b4Var.a(jSONArrayOptJSONArray23.optString(i24));
                    }
                }
            }
            hr hrVar = jSONObjectC13 != null ? new hr(jSONObjectC13.optString("name", str26), jSONObjectC13.optString("id", "-1"), jSONObjectC13.optJSONObject(NotificationFormatHelper.PAYLOAD_OS_ROOT_CUSTOM)) : null;
            if (jSONObjectC16 == null) {
                jSONObjectC16 = new JSONObject();
            }
            h4 h4Var = new h4(jSONObjectC16);
            g4 g4Var = new g4();
            if (jSONObjectC17 != null) {
                JSONObject jSONObjectOptJSONObject2 = jSONObjectC17.optJSONObject(q0);
                Map map = new HashMap();
                if (jSONObjectOptJSONObject2 != null) {
                    map = IronSourceUtils.parseJsonToStringMap(jSONObjectOptJSONObject2);
                }
                g4Var = new g4(map);
            }
            v3 v3Var = new v3();
            if (jSONObject5 != null) {
                v3Var = new v3(jSONObject5.optString(str20));
            }
            x3 x3Var = new x3(l4Var, hrVar, xtVar, jSONObject2.optBoolean("integration", false), b4Var, h4Var, g4Var, foVar, v3Var, str);
            jt jtVarH = h(jSONObjectC3);
            d1 d1VarC = c(jSONObjectC3);
            p8.a aVar = new p8.a();
            aVar.a(tpVar);
            aVar.a(jiVar);
            aVar.a(r6Var2);
            aVar.a(olVar);
            aVar.a(x3Var);
            aVar.b(jtVarH);
            aVar.a(d1VarC);
            p8 p8VarA = aVar.a();
            this.c = p8VarA;
            IronLog.INTERNAL.verbose(p8VarA.toString());
            JSONObject jSONObjectC25 = c(jSONObject4, "genericParams");
            if (jSONObjectC25 != null && (jSONObjectC = c(jSONObjectC25, (str27 = str22))) != null) {
                jSONObjectC25.remove(str27);
                Map<String, String> jsonToStringMap = IronSourceUtils.parseJsonToStringMap(jSONObjectC);
                vp.i().b(jsonToStringMap);
                li.i().b(jsonToStringMap);
            }
            if (jSONObjectC25 != null) {
                Map<String, String> jsonToStringMap2 = IronSourceUtils.parseJsonToStringMap(jSONObjectC25);
                vp.i().a(jsonToStringMap2);
                li.i().a(jsonToStringMap2);
            }
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    private void r() {
        try {
            JSONObject jSONObjectC = c(this.f, "providerOrder");
            JSONArray jSONArrayB = b(jSONObjectC, l());
            JSONArray jSONArrayB2 = b(jSONObjectC, "interstitial");
            JSONArray jSONArrayB3 = b(jSONObjectC, "banner");
            JSONArray jSONArrayB4 = b(jSONObjectC, "nativeAd");
            this.a = new vo();
            if (jSONArrayB != null && c() != null && c().getRewardedVideoConfigurations() != null) {
                for (int i = 0; i < jSONArrayB.length(); i++) {
                    String strOptString = jSONArrayB.optString(i);
                    this.a.d(strOptString);
                    NetworkSettings networkSettingsB = xo.c().b(strOptString);
                    if (networkSettingsB != null) {
                        networkSettingsB.setRewardedVideoPriority(i);
                    }
                }
            }
            if (jSONArrayB2 != null && c() != null && c().getInterstitialConfigurations() != null) {
                for (int i3 = 0; i3 < jSONArrayB2.length(); i3++) {
                    String strOptString2 = jSONArrayB2.optString(i3);
                    this.a.b(strOptString2);
                    NetworkSettings networkSettingsB2 = xo.c().b(strOptString2);
                    if (networkSettingsB2 != null) {
                        networkSettingsB2.setInterstitialPriority(i3);
                    }
                }
            }
            if (jSONArrayB3 != null) {
                for (int i4 = 0; i4 < jSONArrayB3.length(); i4++) {
                    String strOptString3 = jSONArrayB3.optString(i4);
                    this.a.a(strOptString3);
                    NetworkSettings networkSettingsB3 = xo.c().b(strOptString3);
                    if (networkSettingsB3 != null) {
                        networkSettingsB3.setBannerPriority(i4);
                    }
                }
            }
            if (jSONArrayB4 != null) {
                for (int i5 = 0; i5 < jSONArrayB4.length(); i5++) {
                    String strOptString4 = jSONArrayB4.optString(i5);
                    this.a.c(strOptString4);
                    NetworkSettings networkSettingsB4 = xo.c().b(strOptString4);
                    if (networkSettingsB4 != null) {
                        networkSettingsB4.setNativeAdPriority(i5);
                    }
                }
            }
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    private void s() {
        gr grVar;
        NetworkSettings networkSettings;
        gr grVar2 = this;
        try {
            grVar2.b = xo.c();
            JSONObject jSONObjectC = grVar2.c(grVar2.f, "providerSettings");
            Iterator<String> itKeys = jSONObjectC.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                JSONObject jSONObjectOptJSONObject = jSONObjectC.optJSONObject(next);
                if (jSONObjectOptJSONObject != null) {
                    boolean zOptBoolean = jSONObjectOptJSONObject.optBoolean("mpis", false);
                    String strOptString = jSONObjectOptJSONObject.optString("spId", "0");
                    String strOptString2 = jSONObjectOptJSONObject.optString("adSourceName", null);
                    String strOptString3 = jSONObjectOptJSONObject.optString("providerNetworkKey", null);
                    String strOptString4 = jSONObjectOptJSONObject.optString("providerLoadName", next);
                    String strOptString5 = jSONObjectOptJSONObject.optString("providerDefaultInstance", strOptString4);
                    JSONObject jSONObjectC2 = grVar2.c(jSONObjectOptJSONObject, b());
                    JSONObject jSONObjectC3 = grVar2.c(jSONObjectOptJSONObject, "application");
                    JSONObject jSONObjectC4 = grVar2.c(jSONObjectC2, l());
                    JSONObject jSONObjectC5 = grVar2.c(jSONObjectC2, "interstitial");
                    JSONObject jSONObjectC6 = grVar2.c(jSONObjectC2, "banner");
                    JSONObject jSONObjectC7 = grVar2.c(jSONObjectC2, "nativeAd");
                    JSONObject jSONObjectMergeJsons = IronSourceUtils.mergeJsons(jSONObjectC4, jSONObjectC3);
                    JSONObject jSONObjectMergeJsons2 = IronSourceUtils.mergeJsons(jSONObjectC5, jSONObjectC3);
                    JSONObject jSONObjectMergeJsons3 = IronSourceUtils.mergeJsons(jSONObjectC6, jSONObjectC3);
                    JSONObject jSONObjectMergeJsons4 = IronSourceUtils.mergeJsons(jSONObjectC7, jSONObjectC3);
                    if (grVar2.b.a(next)) {
                        NetworkSettings networkSettingsB = grVar2.b.b(next);
                        JSONObject rewardedVideoSettings = networkSettingsB.getRewardedVideoSettings();
                        JSONObject interstitialSettings = networkSettingsB.getInterstitialSettings();
                        JSONObject bannerSettings = networkSettingsB.getBannerSettings();
                        JSONObject nativeAdSettings = networkSettingsB.getNativeAdSettings();
                        networkSettingsB.setRewardedVideoSettings(IronSourceUtils.mergeJsons(rewardedVideoSettings, jSONObjectMergeJsons));
                        networkSettingsB.setInterstitialSettings(IronSourceUtils.mergeJsons(interstitialSettings, jSONObjectMergeJsons2));
                        networkSettingsB.setBannerSettings(IronSourceUtils.mergeJsons(bannerSettings, jSONObjectMergeJsons3));
                        networkSettingsB.setNativeAdSettings(IronSourceUtils.mergeJsons(nativeAdSettings, jSONObjectMergeJsons4));
                        networkSettingsB.setIsMultipleInstances(zOptBoolean);
                        networkSettingsB.setSubProviderId(strOptString);
                        networkSettingsB.setAdSourceNameForEvents(strOptString2);
                        networkSettingsB.setProviderNetworkKey(strOptString3);
                    } else {
                        if (grVar2.b(strOptString4)) {
                            NetworkSettings networkSettingsB2 = grVar2.b.b("Mediation");
                            JSONObject rewardedVideoSettings2 = networkSettingsB2.getRewardedVideoSettings();
                            JSONObject interstitialSettings2 = networkSettingsB2.getInterstitialSettings();
                            JSONObject bannerSettings2 = networkSettingsB2.getBannerSettings();
                            JSONObject nativeAdSettings2 = networkSettingsB2.getNativeAdSettings();
                            JSONObject jSONObject = new JSONObject(rewardedVideoSettings2.toString());
                            JSONObject jSONObject2 = new JSONObject(interstitialSettings2.toString());
                            try {
                                networkSettings = new NetworkSettings(next, strOptString4, strOptString5, strOptString3, jSONObjectC3, IronSourceUtils.mergeJsons(jSONObject, jSONObjectMergeJsons), IronSourceUtils.mergeJsons(jSONObject2, jSONObjectMergeJsons2), IronSourceUtils.mergeJsons(new JSONObject(bannerSettings2.toString()), jSONObjectMergeJsons3), IronSourceUtils.mergeJsons(new JSONObject(nativeAdSettings2.toString()), jSONObjectMergeJsons4));
                                networkSettings.setIsMultipleInstances(zOptBoolean);
                                networkSettings.setSubProviderId(strOptString);
                                networkSettings.setAdSourceNameForEvents(strOptString2);
                                grVar = this;
                            } catch (Exception e) {
                                e = e;
                                l9.d().a(e);
                                IronLog.INTERNAL.error(e.toString());
                                return;
                            }
                        } else {
                            grVar = grVar2;
                            networkSettings = new NetworkSettings(next, strOptString4, strOptString5, strOptString3, jSONObjectC3, jSONObjectMergeJsons, jSONObjectMergeJsons2, jSONObjectMergeJsons3, jSONObjectMergeJsons4);
                            networkSettings.setIsMultipleInstances(zOptBoolean);
                            networkSettings.setSubProviderId(strOptString);
                            networkSettings.setAdSourceNameForEvents(strOptString2);
                        }
                        try {
                            grVar.b.a(networkSettings);
                            grVar2 = grVar;
                            jSONObjectC = jSONObjectC;
                            itKeys = itKeys;
                        } catch (Exception e3) {
                            e = e3;
                            l9.d().a(e);
                            IronLog.INTERNAL.error(e.toString());
                            return;
                        }
                    }
                }
            }
            grVar2.b.b();
        } catch (Exception e4) {
            e = e4;
        }
    }

    public void a(a aVar) {
        this.h = aVar;
    }

    public p8 c() {
        return this.c;
    }

    public bc e() {
        return this.k;
    }

    public ih f() {
        return new ih(this.d, this.e);
    }

    public List<IronSource.AD_UNIT> g() {
        vo voVar;
        vo voVar2;
        vo voVar3;
        vo voVar4;
        if (this.f == null || this.c == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (this.c.getRewardedVideoConfigurations() != null && (voVar4 = this.a) != null && !voVar4.d().isEmpty()) {
            arrayList.add(IronSource.AD_UNIT.REWARDED_VIDEO);
        }
        if (this.c.getInterstitialConfigurations() != null && (voVar3 = this.a) != null && !voVar3.b().isEmpty()) {
            arrayList.add(IronSource.AD_UNIT.INTERSTITIAL);
        }
        if (this.c.getBannerConfigurations() != null && (voVar2 = this.a) != null && !voVar2.a().isEmpty()) {
            arrayList.add(IronSource.AD_UNIT.BANNER);
        }
        if (this.c.getNativeAdConfigurations() != null && (voVar = this.a) != null && !voVar.c().isEmpty()) {
            arrayList.add(IronSource.AD_UNIT.NATIVE_AD);
        }
        return arrayList;
    }

    public a h() {
        return this.h;
    }

    public JSONObject i() {
        return this.f;
    }

    public vo j() {
        return this.a;
    }

    public xo k() {
        return this.b;
    }

    public boolean o() {
        return !TextUtils.isEmpty(c().getTestSuiteSettings().b());
    }

    public boolean p() {
        JSONObject jSONObject = this.f;
        return (((((jSONObject != null) && !jSONObject.has("error")) && this.a != null) && this.b != null) && this.c != null) && m();
    }

    public String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("appKey", this.d);
            jSONObject.put("userId", this.e);
            jSONObject.put(n, this.f);
        } catch (JSONException e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
        return jSONObject.toString();
    }
}
