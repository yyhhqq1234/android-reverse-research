package org.json;

import android.content.Context;
import android.text.TextUtils;
import java.util.Calendar;
import java.util.TimeZone;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.model.BasePlacement;
import org.json.mediationsdk.utils.IronSourceConstants;
import org.json.mediationsdk.utils.IronSourceUtils;

/* JADX INFO: loaded from: classes3.dex */
public class ko implements cf, cf.a {
    private static final String a = "CappingManager.IS_DELIVERY_ENABLED";
    private static final String b = "CappingManager.IS_CAPPING_ENABLED";
    private static final String c = "CappingManager.IS_PACING_ENABLED";
    private static final String d = "CappingManager.MAX_NUMBER_OF_SHOWS";
    private static final String e = "CappingManager.CAPPING_TYPE";
    private static final String f = "CappingManager.SECONDS_BETWEEN_SHOWS";
    private static final String g = "CappingManager.CURRENT_NUMBER_OF_SHOWS";
    private static final String h = "CappingManager.CAPPING_TIME_THRESHOLD";
    private static final String i = "CappingManager.TIME_OF_THE_PREVIOUS_SHOW";

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[lo.values().length];
            a = iArr;
            try {
                iArr[lo.PER_DAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[lo.PER_HOUR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public enum b {
        CAPPED_PER_DELIVERY,
        CAPPED_PER_COUNT,
        CAPPED_PER_PACE,
        NOT_CAPPED
    }

    private long a(lo loVar) {
        Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
        int i2 = a.a[loVar.ordinal()];
        if (i2 == 1) {
            calendar.set(14, 0);
            calendar.set(13, 0);
            calendar.set(12, 0);
            calendar.set(11, 0);
            calendar.add(6, 1);
        } else if (i2 == 2) {
            calendar.set(14, 0);
            calendar.set(13, 0);
            calendar.set(12, 0);
            calendar.add(11, 1);
        }
        return calendar.getTimeInMillis();
    }

    private String a(IronSource.AD_UNIT ad_unit) {
        if (ad_unit == IronSource.AD_UNIT.REWARDED_VIDEO) {
            return IronSourceConstants.REWARDED_VIDEO_AD_UNIT;
        }
        if (ad_unit == IronSource.AD_UNIT.INTERSTITIAL) {
            return "Interstitial";
        }
        if (ad_unit == IronSource.AD_UNIT.BANNER) {
            return "Banner";
        }
        return ad_unit == IronSource.AD_UNIT.NATIVE_AD ? IronSourceConstants.NATIVE_AD_UNIT : ad_unit.toString();
    }

    private String a(String str, String str2, String str3) {
        return str + "_" + str2 + "_" + str3;
    }

    private void a(Context context, String str, String str2) {
        lo loVar;
        int i2 = 0;
        if (IronSourceUtils.getBooleanFromSharedPrefs(context, a(str, c, str2), false)) {
            IronSourceUtils.saveLongToSharedPrefs(context, a(str, i, str2), System.currentTimeMillis());
        }
        if (IronSourceUtils.getBooleanFromSharedPrefs(context, a(str, b, str2), false)) {
            String strA = a(str, g, str2);
            int intFromSharedPrefs = IronSourceUtils.getIntFromSharedPrefs(context, strA, 0);
            if (intFromSharedPrefs == 0) {
                String stringFromSharedPrefs = IronSourceUtils.getStringFromSharedPrefs(context, a(str, e, str2), lo.PER_DAY.toString());
                lo[] loVarArrValues = lo.values();
                int length = loVarArrValues.length;
                while (true) {
                    if (i2 >= length) {
                        loVar = null;
                        break;
                    }
                    loVar = loVarArrValues[i2];
                    if (loVar.a.equals(stringFromSharedPrefs)) {
                        break;
                    } else {
                        i2++;
                    }
                }
                IronSourceUtils.saveLongToSharedPrefs(context, a(str, h, str2), a(loVar));
            }
            IronSourceUtils.saveIntToSharedPrefs(context, strA, intFromSharedPrefs + 1);
        }
    }

    private void a(Context context, String str, String str2, ho hoVar) {
        boolean zE = hoVar.e();
        IronSourceUtils.saveBooleanToSharedPrefs(context, a(str, a, str2), zE);
        if (zE) {
            boolean zD = hoVar.d();
            IronSourceUtils.saveBooleanToSharedPrefs(context, a(str, b, str2), zD);
            if (zD) {
                IronSourceUtils.saveIntToSharedPrefs(context, a(str, d, str2), hoVar.b());
                IronSourceUtils.saveStringToSharedPrefs(context, a(str, e, str2), hoVar.a().toString());
            }
            boolean zF = hoVar.f();
            IronSourceUtils.saveBooleanToSharedPrefs(context, a(str, c, str2), zF);
            if (zF) {
                IronSourceUtils.saveIntToSharedPrefs(context, a(str, f, str2), hoVar.c());
            }
        }
    }

    private b b(Context context, String str, String str2) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (!IronSourceUtils.getBooleanFromSharedPrefs(context, a(str, a, str2), true)) {
            return b.CAPPED_PER_DELIVERY;
        }
        if (IronSourceUtils.getBooleanFromSharedPrefs(context, a(str, c, str2), false)) {
            if (jCurrentTimeMillis - IronSourceUtils.getLongFromSharedPrefs(context, a(str, i, str2), 0L) < IronSourceUtils.getIntFromSharedPrefs(context, a(str, f, str2), 0) * 1000) {
                return b.CAPPED_PER_PACE;
            }
        }
        if (IronSourceUtils.getBooleanFromSharedPrefs(context, a(str, b, str2), false)) {
            int intFromSharedPrefs = IronSourceUtils.getIntFromSharedPrefs(context, a(str, d, str2), 0);
            String strA = a(str, g, str2);
            int intFromSharedPrefs2 = IronSourceUtils.getIntFromSharedPrefs(context, strA, 0);
            String strA2 = a(str, h, str2);
            if (jCurrentTimeMillis >= IronSourceUtils.getLongFromSharedPrefs(context, strA2, 0L)) {
                IronSourceUtils.saveIntToSharedPrefs(context, strA, 0);
                IronSourceUtils.saveLongToSharedPrefs(context, strA2, 0L);
            } else if (intFromSharedPrefs2 >= intFromSharedPrefs) {
                return b.CAPPED_PER_COUNT;
            }
        }
        return b.NOT_CAPPED;
    }

    @Override // org.json.cf
    public synchronized b a(Context context, BasePlacement basePlacement, IronSource.AD_UNIT ad_unit) {
        try {
            if (context == null) {
                return b.NOT_CAPPED;
            }
            if (basePlacement == null) {
                return b.NOT_CAPPED;
            }
            String strA = a(ad_unit);
            if (basePlacement.getCom.ironsource.oo.d java.lang.String() == null) {
                return b.NOT_CAPPED;
            }
            if (basePlacement.getPlacementAvailabilitySettings() == null) {
                return b.NOT_CAPPED;
            }
            return b(context, strA, basePlacement.getCom.ironsource.oo.d java.lang.String());
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.ironsource.cf.a
    public synchronized void a(Context context, String str, IronSource.AD_UNIT ad_unit) {
        if (context == null) {
            return;
        }
        if (str == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a(context, a(ad_unit), str);
    }

    @Override // org.json.cf
    public synchronized boolean b(Context context, BasePlacement basePlacement, IronSource.AD_UNIT ad_unit) {
        return a(context, basePlacement, ad_unit) != b.NOT_CAPPED;
    }

    @Override // com.ironsource.cf.a
    public synchronized void c(Context context, BasePlacement basePlacement, IronSource.AD_UNIT ad_unit) {
        if (context == null || basePlacement == null) {
            return;
        }
        ho placementAvailabilitySettings = basePlacement.getPlacementAvailabilitySettings();
        if (placementAvailabilitySettings == null) {
            return;
        }
        a(context, a(ad_unit), basePlacement.getCom.ironsource.oo.d java.lang.String(), placementAvailabilitySettings);
    }
}
