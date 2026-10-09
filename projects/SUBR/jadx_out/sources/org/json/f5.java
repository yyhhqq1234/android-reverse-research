package org.json;

import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import org.json.mediationsdk.d;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u0000 \u00102\u00020\u0001:\u0002\u0007\fBI\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0016\u001a\u00020\u0006\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u0017\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u0017\u0012\b\u0010!\u001a\u0004\u0018\u00010\u001e\u0012\b\u0010&\u001a\u0004\u0018\u00010\"¢\u0006\u0004\b'\u0010(J\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0006\u0010\t\u001a\u00020\bJ\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\n\u001a\u00020\u0004R\u0019\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u000b\u001a\u0004\b\f\u0010\rR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\f\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0016\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0019\u0010\u001c\u001a\u0004\u0018\u00010\u00178\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0019\u0010\u001d\u001a\u0004\u0018\u00010\u00178\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0019\u001a\u0004\b\u0018\u0010\u001bR\u0019\u0010!\u001a\u0004\u0018\u00010\u001e8\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001f\u001a\u0004\b\u0012\u0010 R\u0019\u0010&\u001a\u0004\u0018\u00010\"8\u0006¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b#\u0010%¨\u0006)"}, d2 = {"Lcom/ironsource/f5;", "", "Lcom/ironsource/mediationsdk/demandOnly/a;", d.h, "", "instanceId", "Lcom/ironsource/j5;", "a", "", "i", "providerName", "Ljava/lang/String;", "b", "()Ljava/lang/String;", "auctionId", "Lcom/ironsource/mediationsdk/demandOnly/a;", "h", "()Lcom/ironsource/mediationsdk/demandOnly/a;", "c", "Lcom/ironsource/j5;", "e", "()Lcom/ironsource/j5;", "genericNotifications", "Lorg/json/JSONObject;", "d", "Lorg/json/JSONObject;", "f", "()Lorg/json/JSONObject;", "genericParams", "configurations", "Lcom/ironsource/z4;", "Lcom/ironsource/z4;", "()Lcom/ironsource/z4;", "auctionReportUrls", "Lcom/ironsource/k5;", "g", "Lcom/ironsource/k5;", "()Lcom/ironsource/k5;", j5.s, "<init>", "(Ljava/lang/String;Lcom/ironsource/mediationsdk/demandOnly/a;Lcom/ironsource/j5;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/ironsource/z4;Lcom/ironsource/k5;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class f5 {

    /* JADX INFO: renamed from: h, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final String auctionId;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final org.json.mediationsdk.demandOnly.a waterfall;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final j5 genericNotifications;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final JSONObject genericParams;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private final JSONObject configurations;

    /* JADX INFO: renamed from: f, reason: from kotlin metadata */
    private final z4 auctionReportUrls;

    /* JADX INFO: renamed from: g, reason: from kotlin metadata */
    private final k5 serverData;

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0017\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b%\u0010&J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\u0004\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0012\u0010\t\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0012\u0010\n\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\fH\u0002J\u001a\u0010\n\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\fH\u0002J\u0006\u0010\u0004\u001a\u00020\u0010R\u0017\u0010\u0013\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0011\u001a\u0004\b\n\u0010\u0012R\u0017\u0010\r\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\n\u0010\u0014\u001a\u0004\b\b\u0010\u0015R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0014R\u0014\u0010\u000b\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0017R\u0014\u0010\u001a\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001c\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u0011R\u0016\u0010\u001e\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u0011R\u0016\u0010!\u001a\u0004\u0018\u00010\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010$\u001a\u0004\u0018\u00010\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#¨\u0006'"}, d2 = {"Lcom/ironsource/f5$a;", "", "Lorg/json/JSONObject;", "auctionResponse", "a", "settingsJsonObject", "Lcom/ironsource/mediationsdk/demandOnly/a;", "Lcom/ironsource/j5;", "c", "d", "b", d.h, "", "instanceId", "Lcom/ironsource/z4;", "Lcom/ironsource/k5;", "Lcom/ironsource/f5;", "Lorg/json/JSONObject;", "()Lorg/json/JSONObject;", "auctionData", "Ljava/lang/String;", "()Ljava/lang/String;", "auctionId", "Lcom/ironsource/mediationsdk/demandOnly/a;", "e", "Lcom/ironsource/j5;", "genericNotifications", "f", "genericParams", "g", "configurations", "h", "Lcom/ironsource/z4;", "auctionReportUrls", "i", "Lcom/ironsource/k5;", j5.s, "<init>", "(Lorg/json/JSONObject;Ljava/lang/String;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class a {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata */
        private final JSONObject auctionData;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata */
        private final String instanceId;

        /* JADX INFO: renamed from: c, reason: from kotlin metadata */
        private final String auctionId;

        /* JADX INFO: renamed from: d, reason: from kotlin metadata */
        private final org.json.mediationsdk.demandOnly.a waterfall;

        /* JADX INFO: renamed from: e, reason: from kotlin metadata */
        private final j5 genericNotifications;

        /* JADX INFO: renamed from: f, reason: from kotlin metadata */
        private final JSONObject genericParams;

        /* JADX INFO: renamed from: g, reason: from kotlin metadata */
        private final JSONObject configurations;

        /* JADX INFO: renamed from: h, reason: from kotlin metadata */
        private final z4 auctionReportUrls;

        /* JADX INFO: renamed from: i, reason: from kotlin metadata */
        private final k5 serverData;

        public a(JSONObject auctionData, String instanceId) {
            Intrinsics.checkNotNullParameter(auctionData, "auctionData");
            Intrinsics.checkNotNullParameter(instanceId, "instanceId");
            this.auctionData = auctionData;
            this.instanceId = instanceId;
            JSONObject jSONObjectA = a(auctionData);
            this.auctionId = auctionData.optString("auctionId");
            org.json.mediationsdk.demandOnly.a aVarA = a(auctionData, jSONObjectA);
            this.waterfall = aVarA;
            this.genericNotifications = c(jSONObjectA);
            this.genericParams = d(jSONObjectA);
            this.configurations = b(jSONObjectA);
            this.auctionReportUrls = a(aVarA, instanceId);
            this.serverData = b(aVarA, instanceId);
        }

        private final org.json.mediationsdk.demandOnly.a a(JSONObject auctionResponse, JSONObject settingsJsonObject) {
            ArrayList arrayList = new ArrayList();
            JSONObject jSONObjectOptJSONObject = settingsJsonObject.optJSONObject(d.d);
            JSONArray jSONArrayOptJSONArray = auctionResponse.optJSONArray(d.h);
            if (jSONArrayOptJSONArray != null) {
                IntRange intRangeUntil = RangesKt.until(0, jSONArrayOptJSONArray.length());
                ArrayList arrayList2 = new ArrayList();
                Iterator<Integer> it = intRangeUntil.iterator();
                while (it.hasNext()) {
                    int iNextInt = ((IntIterator) it).nextInt();
                    j5 j5Var = new j5(jSONArrayOptJSONArray.getJSONObject(iNextInt), iNextInt, jSONObjectOptJSONObject);
                    if (!j5Var.m()) {
                        j5Var = null;
                    }
                    if (j5Var != null) {
                        arrayList2.add(j5Var);
                    }
                }
                arrayList.addAll(arrayList2);
            }
            return new org.json.mediationsdk.demandOnly.a.C0094a(arrayList);
        }

        private final z4 a(org.json.mediationsdk.demandOnly.a waterfall, String instanceId) {
            j5 j5VarA = waterfall.a(instanceId);
            if (j5VarA == null) {
                return null;
            }
            z4 z4Var = new z4();
            z4Var.a(j5VarA.b());
            z4Var.c(j5VarA.h());
            z4Var.b(j5VarA.g());
            return z4Var;
        }

        private final JSONObject a(JSONObject auctionResponse) {
            JSONObject jSONObjectOptJSONObject = auctionResponse.optJSONObject("settings");
            return jSONObjectOptJSONObject == null ? new JSONObject() : jSONObjectOptJSONObject;
        }

        private final k5 b(org.json.mediationsdk.demandOnly.a waterfall, String instanceId) {
            j5 j5VarA = waterfall.a(instanceId);
            if (j5VarA == null) {
                return null;
            }
            String strK = j5VarA.k();
            Intrinsics.checkNotNullExpressionValue(strK, "it.serverData");
            return new k5(strK);
        }

        private final JSONObject b(JSONObject settingsJsonObject) {
            return settingsJsonObject.optJSONObject("configurations");
        }

        private final j5 c(JSONObject settingsJsonObject) {
            return new j5(settingsJsonObject);
        }

        private final JSONObject d(JSONObject settingsJsonObject) {
            return settingsJsonObject.optJSONObject("genericParams");
        }

        public final f5 a() {
            return new f5(this.auctionId, this.waterfall, this.genericNotifications, this.genericParams, this.configurations, this.auctionReportUrls, this.serverData);
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final JSONObject getAuctionData() {
            return this.auctionData;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final String getInstanceId() {
            return this.instanceId;
        }
    }

    /* JADX INFO: renamed from: com.ironsource.f5$b, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0080\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\f\u0010\rJ.\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u0007\u0010\bJ,\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u0007\u0010\u000b\u0082\u0002\u000f\n\u0002\b!\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u000e"}, d2 = {"Lcom/ironsource/f5$b;", "", "Lcom/ironsource/f5;", "auctionResponse", "", "instanceId", "Lkotlin/Result;", "a", "(Lcom/ironsource/f5;Ljava/lang/String;)Ljava/lang/Object;", "Lorg/json/JSONObject;", "auctionData", "(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final Object a(f5 auctionResponse, String instanceId) {
            rf rfVar;
            Object objCreateFailure;
            String auctionId = auctionResponse.getAuctionId();
            if (auctionId == null || auctionId.length() == 0) {
                Result.Companion companion = Result.INSTANCE;
                rfVar = new rf(lb.a.i());
            } else if (auctionResponse.i()) {
                Result.Companion companion2 = Result.INSTANCE;
                rfVar = new rf(lb.a.f());
            } else {
                j5 j5VarA = auctionResponse.a(instanceId);
                if (j5VarA != null) {
                    String strK = j5VarA.k();
                    if (strK == null || strK.length() == 0) {
                        Result.Companion companion3 = Result.INSTANCE;
                        rfVar = new rf(lb.a.e());
                    } else {
                        Result.Companion companion4 = Result.INSTANCE;
                        objCreateFailure = auctionResponse;
                    }
                    return Result.m601constructorimpl(objCreateFailure);
                }
                Result.Companion companion5 = Result.INSTANCE;
                rfVar = new rf(lb.a.j());
            }
            objCreateFailure = ResultKt.createFailure(rfVar);
            return Result.m601constructorimpl(objCreateFailure);
        }

        public final Object a(JSONObject auctionData, String instanceId) {
            Intrinsics.checkNotNullParameter(auctionData, "auctionData");
            Intrinsics.checkNotNullParameter(instanceId, "instanceId");
            return a(new a(auctionData, instanceId).a(), instanceId);
        }
    }

    public f5(String str, org.json.mediationsdk.demandOnly.a waterfall, j5 genericNotifications, JSONObject jSONObject, JSONObject jSONObject2, z4 z4Var, k5 k5Var) {
        Intrinsics.checkNotNullParameter(waterfall, "waterfall");
        Intrinsics.checkNotNullParameter(genericNotifications, "genericNotifications");
        this.auctionId = str;
        this.waterfall = waterfall;
        this.genericNotifications = genericNotifications;
        this.genericParams = jSONObject;
        this.configurations = jSONObject2;
        this.auctionReportUrls = z4Var;
        this.serverData = k5Var;
    }

    private final j5 a(org.json.mediationsdk.demandOnly.a waterfall, String instanceId) {
        return waterfall.a(instanceId);
    }

    public final j5 a(String providerName) {
        Intrinsics.checkNotNullParameter(providerName, "providerName");
        return a(this.waterfall, providerName);
    }

    public final String a() {
        k5 k5Var = this.serverData;
        if (k5Var != null) {
            return k5Var.d();
        }
        return null;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getAuctionId() {
        return this.auctionId;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final z4 getAuctionReportUrls() {
        return this.auctionReportUrls;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final JSONObject getConfigurations() {
        return this.configurations;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final j5 getGenericNotifications() {
        return this.genericNotifications;
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final JSONObject getGenericParams() {
        return this.genericParams;
    }

    /* JADX INFO: renamed from: g, reason: from getter */
    public final k5 getServerData() {
        return this.serverData;
    }

    /* JADX INFO: renamed from: h, reason: from getter */
    public final org.json.mediationsdk.demandOnly.a getWaterfall() {
        return this.waterfall;
    }

    public final boolean i() {
        return this.waterfall.isEmpty();
    }
}
