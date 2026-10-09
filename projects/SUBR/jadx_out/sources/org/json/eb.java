package org.json;

import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.metadata.a;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\u0010\t\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003H\u0016J\b\u0010\t\u001a\u00020\bH\u0016J\b\u0010\u0007\u001a\u00020\nH\u0016J\b\u0010\f\u001a\u00020\u000bH\u0016R\u0016\u0010\u0004\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\rR\u0014\u0010\u0010\u001a\u00020\u00038BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, d2 = {"Lcom/ironsource/eb;", "Lcom/ironsource/qe;", "Lcom/ironsource/qe$a;", "Lorg/json/JSONObject;", "config", "epConfig", "", "a", "", "c", "", "", "b", "Lorg/json/JSONObject;", "d", "()Lorg/json/JSONObject;", fb.a, "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class eb implements qe, qe.a {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private JSONObject config = new JSONObject();

    private final JSONObject d() {
        JSONObject jSONObjectOptJSONObject = this.config.optJSONObject(fb.a);
        return jSONObjectOptJSONObject == null ? new JSONObject() : jSONObjectOptJSONObject;
    }

    @Override // org.json.gb
    public int a() {
        String strOptString = d().optString(hb.b);
        Intrinsics.checkNotNullExpressionValue(strOptString, "traits.optString(ISN_CTRL_INIT_DELAY)");
        Integer intOrNull = StringsKt.toIntOrNull(strOptString);
        if (intOrNull != null) {
            return intOrNull.intValue();
        }
        return 0;
    }

    @Override // com.ironsource.qe.a
    public void a(JSONObject epConfig) {
        if (epConfig == null) {
            epConfig = this.config;
        }
        this.config = epConfig;
        IronLog.INTERNAL.verbose("setEpConfig: " + this.config);
    }

    @Override // org.json.gb
    public long b() {
        String strOptString = d().optString(hb.c);
        Intrinsics.checkNotNullExpressionValue(strOptString, "traits.optString(LPM_BN_…FRESH_ANIMATION_DURATION)");
        Long longOrNull = StringsKt.toLongOrNull(strOptString);
        if (longOrNull != null) {
            return longOrNull.longValue();
        }
        return 0L;
    }

    @Override // org.json.gb
    public boolean c() {
        String strOptString = d().optString(hb.a);
        Intrinsics.checkNotNullExpressionValue(strOptString, "traits.optString(IS_EP_CONFIG_ENABLED)");
        String lowerCase = strOptString.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        return Intrinsics.areEqual(lowerCase, a.g);
    }

    @Override // org.json.qe
    /* JADX INFO: renamed from: config, reason: from getter */
    public JSONObject getConfig() {
        return this.config;
    }
}
