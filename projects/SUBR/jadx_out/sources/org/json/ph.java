package org.json;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.utils.IronSourceUtils;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0016\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/ironsource/ph;", "", "<init>", "()V", "a", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public class ph {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: com.ironsource.ph$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¨\u0006\u000e"}, d2 = {"Lcom/ironsource/ph$a;", "", "Landroid/content/Context;", "context", "Lorg/json/JSONObject;", "a", "Lcom/ironsource/gr;", "c", "Lcom/ironsource/a8;", "d", "", "b", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final JSONObject a(Context context) {
            try {
                return new JSONObject(IronSourceUtils.getLastResponse(context));
            } catch (JSONException unused) {
                return new JSONObject();
            }
        }

        @JvmStatic
        public final boolean b(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            a8 a8VarD = d(context);
            if (a8VarD.d().length() > 0) {
                if (a8VarD.e().length() > 0) {
                    return true;
                }
            }
            return false;
        }

        /* JADX WARN: Code duplicated, block: B:13:0x002a  */
        @JvmStatic
        public final gr c(Context context) {
            boolean z;
            Intrinsics.checkNotNullParameter(context, "context");
            a8 a8VarD = d(context);
            if (a8VarD.d().length() > 0) {
                z = a8VarD.e().length() > 0;
            }
            if (!z) {
                a8VarD = null;
            }
            if (a8VarD == null) {
                return null;
            }
            gr grVar = new gr(context, a8VarD.d(), a8VarD.f(), a8VarD.e());
            grVar.a(gr.a.CACHE);
            return grVar;
        }

        @JvmStatic
        public final a8 d(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            JSONObject jSONObjectA = a(context);
            String cachedAppKey = jSONObjectA.optString("appKey");
            String cachedUserId = jSONObjectA.optString("userId");
            String cachedSettings = jSONObjectA.optString(gr.n);
            Intrinsics.checkNotNullExpressionValue(cachedAppKey, "cachedAppKey");
            Intrinsics.checkNotNullExpressionValue(cachedUserId, "cachedUserId");
            Intrinsics.checkNotNullExpressionValue(cachedSettings, "cachedSettings");
            return new a8(cachedAppKey, cachedUserId, cachedSettings);
        }
    }

    @JvmStatic
    public static final boolean a(Context context) {
        return INSTANCE.b(context);
    }

    @JvmStatic
    public static final gr b(Context context) {
        return INSTANCE.c(context);
    }

    @JvmStatic
    public static final a8 c(Context context) {
        return INSTANCE.d(context);
    }
}
