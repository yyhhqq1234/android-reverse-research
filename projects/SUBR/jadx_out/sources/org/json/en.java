package org.json;

import android.content.Context;
import android.text.TextUtils;
import com.iab.omid.library.ironsrc.Omid;
import com.iab.omid.library.ironsrc.adsession.AdEvents;
import com.iab.omid.library.ironsrc.adsession.AdSession;
import com.iab.omid.library.ironsrc.adsession.AdSessionConfiguration;
import com.iab.omid.library.ironsrc.adsession.AdSessionContext;
import com.iab.omid.library.ironsrc.adsession.CreativeType;
import com.iab.omid.library.ironsrc.adsession.ImpressionType;
import com.iab.omid.library.ironsrc.adsession.Owner;
import com.iab.omid.library.ironsrc.adsession.Partner;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import org.json.sdk.utils.SDKUtils;

/* JADX INFO: loaded from: classes3.dex */
public class en {
    public static final String d = "Ironsrc";
    public static final String e = "7";
    public static final String f = Omid.getVersion();
    public static final String g = "omidVersion";
    public static final String h = "omidPartnerName";
    public static final String i = "omidPartnerVersion";
    public static final String j = "omidActiveAdSessions";
    private static final String k = "Invalid OMID impressionOwner";
    private static final String l = "Invalid OMID videoEventsOwner";
    private static final String m = "Missing OMID impressionOwner";
    private static final String n = "Missing OMID videoEventsOwner";
    private static final String o = "OMID has not been activated";
    private static final String p = "Missing OMID creativeType";
    private static final String q = "Missing adview id in OMID params";
    private static final String r = "No adview found with the provided adViewId";
    private static final String s = "OMID Session has already started";
    private static final String t = "OMID Session has not started";
    private final Partner a = Partner.createPartner(d, e);
    private boolean c = false;
    private final HashMap<String, AdSession> b = new HashMap<>();

    static class a {
        private static final String i = "isolateVerificationScripts";
        private static final String j = "impressionOwner";
        private static final String k = "videoEventsOwner";
        private static final String l = "customReferenceData";
        private static final String m = "creativeType";
        private static final String n = "impressionType";
        public static final String o = "adViewId";
        public boolean a;
        public Owner b;
        public Owner c;
        public String d;
        public ImpressionType e;
        public CreativeType f;
        public String g;
        public Owner h;

        public static a a(JSONObject jSONObject) throws IllegalArgumentException {
            a aVar = new a();
            aVar.a = jSONObject.optBoolean("isolateVerificationScripts", false);
            String strOptString = jSONObject.optString("impressionOwner", "");
            if (TextUtils.isEmpty(strOptString)) {
                throw new IllegalArgumentException(en.m);
            }
            try {
                aVar.b = Owner.valueOf(strOptString.toUpperCase(Locale.getDefault()));
                String strOptString2 = jSONObject.optString("videoEventsOwner", "");
                if (TextUtils.isEmpty(strOptString)) {
                    throw new IllegalArgumentException(en.n);
                }
                try {
                    aVar.c = Owner.valueOf(strOptString2.toUpperCase(Locale.getDefault()));
                    aVar.d = jSONObject.optString("customReferenceData", "");
                    aVar.f = b(jSONObject);
                    aVar.e = c(jSONObject);
                    aVar.g = e(jSONObject);
                    aVar.h = d(jSONObject);
                    return aVar;
                } catch (IllegalArgumentException e) {
                    l9.d().a(e);
                    throw new IllegalArgumentException("Invalid OMID videoEventsOwner " + strOptString2);
                }
            } catch (IllegalArgumentException e2) {
                l9.d().a(e2);
                throw new IllegalArgumentException("Invalid OMID impressionOwner " + strOptString);
            }
        }

        private static CreativeType b(JSONObject jSONObject) throws IllegalArgumentException {
            String strOptString = jSONObject.optString("creativeType", "");
            if (TextUtils.isEmpty(strOptString)) {
                throw new IllegalArgumentException(en.p + strOptString);
            }
            for (CreativeType creativeType : CreativeType.values()) {
                if (strOptString.equalsIgnoreCase(creativeType.toString())) {
                    return creativeType;
                }
            }
            throw new IllegalArgumentException(en.p + strOptString);
        }

        private static ImpressionType c(JSONObject jSONObject) throws IllegalArgumentException {
            String strOptString = jSONObject.optString("impressionType", "");
            if (TextUtils.isEmpty(strOptString)) {
                throw new IllegalArgumentException(en.p + strOptString);
            }
            for (ImpressionType impressionType : ImpressionType.values()) {
                if (strOptString.equalsIgnoreCase(impressionType.toString())) {
                    return impressionType;
                }
            }
            throw new IllegalArgumentException(en.p + strOptString);
        }

        private static Owner d(JSONObject jSONObject) throws IllegalArgumentException {
            String strOptString = jSONObject.optString("videoEventsOwner", "");
            Owner owner = Owner.NONE;
            try {
                return Owner.valueOf(strOptString.toUpperCase(Locale.getDefault()));
            } catch (IllegalArgumentException e) {
                l9.d().a(e);
                return owner;
            }
        }

        private static String e(JSONObject jSONObject) throws IllegalArgumentException {
            String strOptString = jSONObject.optString("adViewId", "");
            if (!TextUtils.isEmpty(strOptString)) {
                return strOptString;
            }
            throw new IllegalArgumentException(en.q + strOptString);
        }
    }

    private AdSession a(a aVar, ug ugVar) throws IllegalArgumentException {
        AdSession adSessionCreateAdSession = AdSession.createAdSession(AdSessionConfiguration.createAdSessionConfiguration(aVar.f, aVar.e, aVar.b, aVar.c, aVar.a), AdSessionContext.createHtmlAdSessionContext(this.a, ugVar.getPresentingView(), null, aVar.d));
        adSessionCreateAdSession.registerAdView(ugVar.getPresentingView());
        return adSessionCreateAdSession;
    }

    private void a(JSONObject jSONObject) throws IllegalStateException {
        if (!this.c) {
            throw new IllegalStateException(o);
        }
        if (jSONObject == null) {
            throw new IllegalStateException(t);
        }
    }

    public aq a() {
        aq aqVar = new aq();
        aqVar.b(g, SDKUtils.encodeString(f));
        aqVar.b(h, SDKUtils.encodeString(d));
        aqVar.b(i, SDKUtils.encodeString(e));
        aqVar.b(j, SDKUtils.encodeString(Arrays.toString(this.b.keySet().toArray())));
        return aqVar;
    }

    public void a(Context context) throws IllegalArgumentException {
        if (this.c) {
            return;
        }
        Omid.activate(context);
        this.c = true;
    }

    public void a(a aVar) throws IllegalStateException, IllegalArgumentException {
        if (!this.c) {
            throw new IllegalStateException(o);
        }
        if (TextUtils.isEmpty(aVar.g)) {
            throw new IllegalStateException(q);
        }
        String str = aVar.g;
        if (this.b.containsKey(str)) {
            throw new IllegalStateException(s);
        }
        ug ugVarA = cg.a().a(str);
        if (ugVarA == null) {
            throw new IllegalStateException(r);
        }
        AdSession adSessionA = a(aVar, ugVarA);
        adSessionA.start();
        this.b.put(str, adSessionA);
    }

    public void b(JSONObject jSONObject) throws IllegalStateException {
        a(jSONObject);
        String strOptString = jSONObject.optString("adViewId");
        AdSession adSession = this.b.get(strOptString);
        if (adSession == null) {
            throw new IllegalStateException(t);
        }
        adSession.finish();
        this.b.remove(strOptString);
    }

    public void c(JSONObject jSONObject) throws IllegalStateException, IllegalArgumentException {
        a(jSONObject);
        AdSession adSession = this.b.get(jSONObject.optString("adViewId"));
        if (adSession == null) {
            throw new IllegalStateException(t);
        }
        AdEvents adEventsCreateAdEvents = AdEvents.createAdEvents(adSession);
        if (jSONObject.optBoolean("signalLoaded")) {
            adEventsCreateAdEvents.loaded();
        }
        adEventsCreateAdEvents.impressionOccurred();
    }

    public void d(JSONObject jSONObject) throws IllegalStateException, IllegalArgumentException {
        a(a.a(jSONObject));
    }
}
