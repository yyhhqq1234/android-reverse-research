package org.json;

import android.text.TextUtils;
import com.unity3d.mediation.LevelPlay;
import java.util.HashMap;
import java.util.Map;
import org.json.environment.ContextProvider;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.IronSourceSegment;
import org.json.mediationsdk.adunit.adapter.internal.AdapterBaseInterface;
import org.json.mediationsdk.adunit.adapter.internal.AdapterSettingsInterface;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceLogger;
import org.json.mediationsdk.logger.IronSourceLoggerManager;
import org.json.mediationsdk.p;
import org.json.mediationsdk.utils.IronSourceConstants;
import org.json.mediationsdk.utils.IronSourceUtils;

/* JADX INFO: loaded from: classes3.dex */
public class os {
    private static final Map<IronSource.AD_UNIT, n1> a = new HashMap();

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;
        static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[LevelPlay.AdFormat.values().length];
            b = iArr;
            try {
                iArr[LevelPlay.AdFormat.REWARDED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[LevelPlay.AdFormat.INTERSTITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[LevelPlay.AdFormat.BANNER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                b[LevelPlay.AdFormat.NATIVE_AD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[IronSource.AD_UNIT.values().length];
            a = iArr2;
            try {
                iArr2[IronSource.AD_UNIT.REWARDED_VIDEO.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[IronSource.AD_UNIT.INTERSTITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[IronSource.AD_UNIT.NATIVE_AD.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[IronSource.AD_UNIT.BANNER.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public static class b {
        private final IronSource.AD_UNIT a;

        public b(IronSource.AD_UNIT ad_unit) {
            this.a = ad_unit;
        }

        private String b() {
            IronSource.AD_UNIT ad_unit = this.a;
            return ad_unit != null ? ad_unit.name() : "";
        }

        public String a() {
            return a(null);
        }

        public String a(String str) {
            return a(str, null);
        }

        public String a(String str, String str2) {
            String str3;
            StringBuilder sb = new StringBuilder();
            sb.append(b());
            if (TextUtils.isEmpty(str2)) {
                str3 = "";
            } else {
                str3 = " - " + str2;
            }
            sb.append(str3);
            String string = sb.toString();
            if (TextUtils.isEmpty(str)) {
                return string;
            }
            return string + " - " + str;
        }
    }

    public static IronSourceSegment a() {
        return p.m().t();
    }

    private static n1 a(t1 t1Var) {
        Map<IronSource.AD_UNIT, n1> map = a;
        if (map.containsKey(t1Var.getAdProperties().getCom.ironsource.mediationsdk.impressionData.ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT java.lang.String())) {
            return map.get(t1Var.getAdProperties().getCom.ironsource.mediationsdk.impressionData.ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT java.lang.String());
        }
        n1 n1Var = new n1();
        map.put(t1Var.getAdProperties().getCom.ironsource.mediationsdk.impressionData.ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT java.lang.String(), n1Var);
        return n1Var;
    }

    public static b a(IronSource.AD_UNIT ad_unit) {
        return new b(ad_unit);
    }

    public static p2 a(t1 t1Var, int i) {
        return a(t1Var).a(t1Var.getAdProperties().getAdUnitId(), t1Var.n(), i);
    }

    public static String a(LevelPlay.AdFormat adFormat) {
        int i = a.b[adFormat.ordinal()];
        if (i == 1) {
            return "rewarded";
        }
        if (i == 2) {
            return "interstitial";
        }
        if (i != 3) {
            return i != 4 ? "" : oq.i;
        }
        return oq.h;
    }

    public static void a(int i, JSONObject jSONObject) {
        vp.i().a(new ob(i, jj.a(IronSourceUtils.getMediationAdditionalData(false), jSONObject)));
    }

    public static void a(Exception exc) {
        IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.INTERNAL, "Exception", exc);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("reason", exc.getMessage());
        } catch (JSONException e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
        a(IronSourceConstants.TROUBLESHOOTING_LOAD_ARM_DATA_PARSE_ERROR, jSONObject);
    }

    public static void a(Throwable th) {
        IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.INTERNAL, "SafeRunnable", th);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("reason", th.getMessage());
        } catch (JSONException e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
        a(IronSourceConstants.TROUBLESHOOTING_SDK_INTERNAL_ERROR, jSONObject);
    }

    public static boolean a(AdapterBaseInterface adapterBaseInterface, IronSource.AD_UNIT ad_unit, String str) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose();
        if (ContextProvider.getInstance().getCurrentActiveActivity() != null || !(adapterBaseInterface instanceof AdapterSettingsInterface) || !((AdapterSettingsInterface) adapterBaseInterface).isUsingActivityBeforeImpression(ad_unit)) {
            return false;
        }
        ironLog.verbose(str + " - is using activity before impression and activity is null");
        return true;
    }

    public static int b(IronSource.AD_UNIT ad_unit) {
        p7.e eVar;
        int i = a.a[ad_unit.ordinal()];
        if (i == 1) {
            eVar = p7.e.REWARDED_VIDEO;
        } else if (i == 2) {
            eVar = p7.e.INTERSTITIAL;
        } else if (i != 3) {
            eVar = i != 4 ? p7.e.NOT_SUPPORTED : p7.e.BANNER;
        } else {
            eVar = p7.e.NATIVE_AD;
        }
        return eVar.a();
    }
}
