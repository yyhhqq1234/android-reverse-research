package com.applovin.impl.sdk;

import android.os.SystemClock;
import android.text.TextUtils;
import com.applovin.impl.aq;
import com.applovin.impl.hh;
import com.applovin.impl.jn;
import com.applovin.impl.ka;
import com.applovin.impl.la;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sj;
import com.applovin.impl.tm;
import com.applovin.impl.yl;
import com.applovin.sdk.AppLovinAdType;
import com.unity3d.services.UnityAdsConstants;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class c {
    private static final File b = new File(j.m().getFilesDir(), "al/persisted-ads");
    private final j a;

    public static class a implements hh {
        private final String a;
        private final AppLovinAdType b;
        private final boolean c;
        private final long d;

        public a(String str, AppLovinAdType appLovinAdType, boolean z, long j) {
            this.a = str;
            this.b = appLovinAdType;
            this.c = z;
            this.d = j;
        }

        protected boolean a(Object obj) {
            return obj instanceof a;
        }

        public long b() {
            return this.d;
        }

        public String c() {
            return this.a + "_" + this.b;
        }

        public String d() {
            return this.a;
        }

        public AppLovinAdType e() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (!aVar.a(this)) {
                return false;
            }
            String strD = d();
            String strD2 = aVar.d();
            if (strD != null ? !strD.equals(strD2) : strD2 != null) {
                return false;
            }
            AppLovinAdType appLovinAdTypeE = e();
            AppLovinAdType appLovinAdTypeE2 = aVar.e();
            return appLovinAdTypeE != null ? appLovinAdTypeE.equals(appLovinAdTypeE2) : appLovinAdTypeE2 == null;
        }

        public boolean f() {
            return this.c;
        }

        public int hashCode() {
            String strD = d();
            int iHashCode = strD == null ? 43 : strD.hashCode();
            AppLovinAdType appLovinAdTypeE = e();
            return ((iHashCode + 59) * 59) + (appLovinAdTypeE != null ? appLovinAdTypeE.hashCode() : 43);
        }

        public String toString() {
            return "AdPersistenceFileService.PersistedAdFilePath(id=" + d() + ", type=" + e() + ", isAdServerAd=" + f() + ", expiryTimeMillis=" + b() + ")";
        }

        public static a a(com.applovin.impl.sdk.ad.b bVar) {
            return a(bVar, 0L);
        }

        public static a a(com.applovin.impl.sdk.ad.b bVar, long j) {
            if (bVar == null) {
                return null;
            }
            return new a(StringUtils.isValidString(bVar.I()) ? bVar.I() : UUID.randomUUID().toString(), bVar.getType(), bVar instanceof com.applovin.impl.sdk.ad.a, SystemClock.elapsedRealtime() + j);
        }

        public static a a(JSONObject jSONObject, j jVar) {
            String string = JsonUtils.getString(jSONObject, "id", "");
            String string2 = JsonUtils.getString(jSONObject, "type", "");
            Boolean bool = JsonUtils.getBoolean(jSONObject, "is_ad_server_ad", null);
            long j = JsonUtils.getLong(jSONObject, "expiry_time_millis", 0L);
            if (TextUtils.isEmpty(string) || TextUtils.isEmpty(string2) || bool == null) {
                return null;
            }
            return new a(string, AppLovinAdType.fromString(string2), bool.booleanValue(), j);
        }

        @Override // com.applovin.impl.hh
        public JSONObject a() {
            JSONObject jSONObject = new JSONObject();
            JsonUtils.putString(jSONObject, "id", this.a);
            JsonUtils.putString(jSONObject, "type", this.b.toString());
            JsonUtils.putBoolean(jSONObject, "is_ad_server_ad", this.c);
            JsonUtils.putLong(jSONObject, "expiry_time_millis", this.d);
            return jSONObject;
        }
    }

    public interface b {
        void a(a aVar);
    }

    /* JADX INFO: renamed from: com.applovin.impl.sdk.c$c, reason: collision with other inner class name */
    public interface InterfaceC0037c {
        void a(com.applovin.impl.sdk.ad.b bVar, String str);
    }

    public c(j jVar) {
        this.a = jVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.applovin.impl.sdk.ad.b bVar, b bVar2) {
        a aVarA = a.a(bVar, ((Long) this.a.a(sj.a1)).longValue());
        File fileA = a(aVarA);
        if (fileA == null) {
            a("Could not persist incompatible ad", bVar, bVar2);
            return;
        }
        try {
            JSONObject jSONObjectA = bVar.a();
            if (jSONObjectA == null) {
                a("Could not serialize ad for persistence", bVar, bVar2);
                return;
            }
            if (this.a.A().b(new ByteArrayInputStream(jSONObjectA.toString().getBytes("UTF-8")), fileA, true)) {
                a(aVarA, bVar, bVar2);
            } else {
                a("Failed to write persisted ad to disk", bVar, bVar2);
            }
        } catch (Throwable th) {
            a("Ad could not be persisted", bVar, bVar2);
            this.a.D().a("AdPersistenceFileService", th, CollectionUtils.map("error_message", "Ad could not be persisted"));
        }
    }

    public void b(final com.applovin.impl.sdk.ad.b bVar, final b bVar2) {
        if (b()) {
            this.a.i0().a((yl) new jn(this.a, "persistAd", new Runnable() { // from class: com.applovin.impl.sdk.c$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(bVar, bVar2);
                }
            }), tm.b.CACHING);
        } else {
            a("Ad Persistence directory could not be created", bVar, bVar2);
        }
    }

    private boolean b() {
        File file = b;
        if (file.exists()) {
            return true;
        }
        return file.mkdir();
    }

    public void b(a aVar) {
        File fileA = a(aVar);
        if (fileA != null) {
            fileA.delete();
        }
    }

    public void a(final a aVar, final InterfaceC0037c interfaceC0037c) {
        final File fileA = a(aVar);
        if (fileA != null && fileA.exists()) {
            this.a.i0().a((yl) new jn(this.a, "retrievePersistedAd", new Runnable() { // from class: com.applovin.impl.sdk.c$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    this.f$0.a(fileA, interfaceC0037c, aVar);
                }
            }), tm.b.OTHER);
        } else {
            interfaceC0037c.a(null, "Persisted ad could not be retrieved: Retrieval failed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(File file, InterfaceC0037c interfaceC0037c, a aVar) throws Throwable {
        com.applovin.impl.sdk.ad.b bVarA;
        String strE = this.a.A().e(file);
        if (strE == null) {
            interfaceC0037c.a(null, "Persisted ad could not be retrieved: Read failed");
            return;
        }
        try {
            JSONObject jSONObjectJsonObjectFromJsonString = JsonUtils.jsonObjectFromJsonString(strE, new JSONObject());
            JsonUtils.putBoolean(JsonUtils.getJSONObject(jSONObjectJsonObjectFromJsonString, "full_response", new JSONObject()), "is_persisted_ad", true);
            if (aVar.f()) {
                bVarA = com.applovin.impl.sdk.ad.a.a(jSONObjectJsonObjectFromJsonString, this.a);
            } else {
                bVarA = aq.a(jSONObjectJsonObjectFromJsonString, this.a);
            }
            if (bVarA == null) {
                interfaceC0037c.a(null, "Persisted ad could not be retrieved: Deserialization failed");
            } else {
                interfaceC0037c.a(bVarA, null);
            }
        } catch (Throwable th) {
            interfaceC0037c.a(null, "Persisted ad could not be retrieved: Deserialization failed");
            this.a.D().a("AdPersistenceFileService", th, CollectionUtils.map("error_message", "Persisted ad could not be retrieved: Deserialization failed"));
        }
    }

    private File a(a aVar) {
        if (aVar == null) {
            return null;
        }
        return new File(b.getAbsolutePath() + UnityAdsConstants.DefaultUrls.AD_ASSET_PATH + aVar.c());
    }

    private void a(a aVar, com.applovin.impl.sdk.ad.b bVar, b bVar2) {
        if (bVar2 == null) {
            return;
        }
        this.a.I();
        if (n.a()) {
            this.a.I().a("AdPersistenceFileService", "Ad was persisted successfully");
        }
        bVar2.a(aVar);
        this.a.D().a(ka.q, bVar);
    }

    private void a(String str, com.applovin.impl.sdk.ad.b bVar, b bVar2) {
        if (bVar2 == null) {
            return;
        }
        this.a.I();
        if (n.a()) {
            this.a.I().a("AdPersistenceFileService", str);
        }
        bVar2.a(null);
        Map mapA = la.a(bVar);
        CollectionUtils.putStringIfValid("error_message", str, mapA);
        this.a.D().a(ka.r, mapA);
    }

    public void a(List list) {
        File[] fileArrListFiles = b.listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        boolean z = false;
        for (File file : fileArrListFiles) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (((a) it.next()).c().equals(file.getName())) {
                    z = true;
                    break;
                }
            }
            if (!z) {
                file.delete();
            }
        }
    }

    public void a() {
        File[] fileArrListFiles;
        File file = b;
        if (file.exists() && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                file2.delete();
            }
        }
    }
}
