package org.json.mediationsdk;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import java.util.Date;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
import org.json.e7;
import org.json.environment.ContextProvider;
import org.json.environment.thread.IronSourceThreadManager;
import org.json.l9;
import org.json.li;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.utils.IronSourceConstants;
import org.json.ob;
import org.json.y7;

/* JADX INFO: loaded from: classes3.dex */
public class l {
    public static final String a = "BANNER";
    public static final String b = "LARGE";
    public static final String c = "RECTANGLE";
    public static final String d = "LEADERBOARD";
    public static final String e = "SMART";
    public static final String f = "CUSTOM";
    public static final String g = "MEDIUM_RECTANGLE";
    public static final String h = "bannerAdSize";
    public static final int i = 0;
    public static final int j = 1;
    public static final int k = 2;
    public static final int l = 3;
    public static final int m = 4;
    public static final int n = 5;
    public static final int o = 6;
    public static final int p = -1;
    public static final String q = "Adaptive=true";

    interface a {
        void a(Map<String, Object> map, List<String> list, StringBuilder sb);
    }

    interface b {
        void a();

        void a(String str);
    }

    public static int a(int i2) {
        int i3 = -1;
        for (AbstractAdapter abstractAdapter : c.b().a().values()) {
            try {
                int adaptiveHeight = abstractAdapter.getAdaptiveHeight(i2);
                if (adaptiveHeight > i3) {
                    i3 = adaptiveHeight;
                }
            } catch (Throwable th) {
                l9.d().a(th);
                IronLog.INTERNAL.error("exception while calling getAdaptiveHeight for adapter - " + abstractAdapter.getProviderName());
            }
        }
        return i3;
    }

    static long a(long j2, long j3) {
        return j3 - (new Date().getTime() - j2);
    }

    public static ISBannerSize a() {
        return new ISBannerSize("LEADERBOARD", 728, 90);
    }

    public static ISBannerSize a(String str, int i2, int i3) {
        return new ISBannerSize(str, i2, i3);
    }

    public static String a(ISBannerSize iSBannerSize) {
        return "Adaptive=true, size: " + iSBannerSize.containerParams.getWidth() + "x" + iSBannerSize.containerParams.getHeight() + "; fallback: " + iSBannerSize.getDescription() + ", size: " + iSBannerSize.getWidth() + "x" + iSBannerSize.getHeight() + ";";
    }

    private static void a(int i2, int i3) {
        try {
            JSONObject jSONObject = new JSONObject();
            if (i3 == -1) {
                jSONObject.put(IronSourceConstants.EVENTS_ERROR_CODE, 2);
                jSONObject.put("reason", "No networks found supporting adaptive banners");
            } else {
                jSONObject.put(IronSourceConstants.EVENTS_EXT1, "w:" + i2 + ",h:" + i3);
            }
            li.i().a(new ob(IronSourceConstants.BN_GET_MAXIMAL_ADAPTIVE_HEIGHT, jSONObject));
        } catch (Exception e2) {
            l9.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
        }
    }

    public static void a(IronSourceBannerLayout ironSourceBannerLayout) {
        if (ironSourceBannerLayout != null) {
            ironSourceBannerLayout.a();
        }
    }

    private static void a(IronSourceBannerLayout ironSourceBannerLayout, View view, Context context, ISBannerSize iSBannerSize) {
        int iDpToPixels = AdapterUtils.dpToPixels(context, iSBannerSize.containerParams.getWidth());
        int iDpToPixels2 = AdapterUtils.dpToPixels(context, iSBannerSize.containerParams.getHeight());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iDpToPixels, iDpToPixels2);
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setLayoutParams(layoutParams);
        relativeLayout.setGravity(17);
        relativeLayout.addView(view, 0);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) ironSourceBannerLayout.getLayoutParams();
        if (layoutParams2 == null) {
            layoutParams2 = new FrameLayout.LayoutParams(iDpToPixels, iDpToPixels2);
        }
        layoutParams2.height = iDpToPixels2;
        layoutParams2.width = iDpToPixels;
        layoutParams2.gravity = 17;
        ironSourceBannerLayout.setLayoutParams(layoutParams2);
        IronLog.INTERNAL.verbose("containerParams height - " + iSBannerSize.containerParams.getHeight() + " width - " + iSBannerSize.containerParams.getWidth());
        ironSourceBannerLayout.addView(relativeLayout, 0, layoutParams2);
    }

    public static void a(IronSourceBannerLayout ironSourceBannerLayout, View view, FrameLayout.LayoutParams layoutParams) {
        a(ironSourceBannerLayout, view, layoutParams, (y7) null);
    }

    public static void a(final IronSourceBannerLayout ironSourceBannerLayout, final View view, final FrameLayout.LayoutParams layoutParams, final y7 y7Var) {
        if (ironSourceBannerLayout == null || view == null || layoutParams == null) {
            return;
        }
        final Context applicationContext = ContextProvider.getInstance().getApplicationContext();
        final ISBannerSize size = ironSourceBannerLayout.getSize();
        IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new Runnable() { // from class: com.ironsource.mediationsdk.l$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                l.a(ironSourceBannerLayout, view, size, applicationContext, layoutParams, y7Var);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(IronSourceBannerLayout ironSourceBannerLayout, View view, ISBannerSize iSBannerSize, Context context, FrameLayout.LayoutParams layoutParams, y7 y7Var) {
        try {
            ironSourceBannerLayout.removeAllViews();
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view);
            }
            if (iSBannerSize != null) {
                if (iSBannerSize.isAdaptive()) {
                    a(ironSourceBannerLayout, view, context, iSBannerSize);
                } else {
                    ironSourceBannerLayout.addView(view, 0, layoutParams);
                }
            }
            if (y7Var != null) {
                y7Var.a();
            }
        } catch (Exception e2) {
            l9.d().a(e2);
            IronLog.INTERNAL.error("Error while binding a banner - " + Log.getStackTraceString(e2));
        }
    }

    static void a(IronSourceBannerLayout ironSourceBannerLayout, e7 e7Var, b bVar) {
        String str;
        if (c(ironSourceBannerLayout)) {
            str = null;
        } else {
            Object[] objArr = new Object[1];
            objArr[0] = ironSourceBannerLayout == null ? "banner is null" : "banner is destroyed";
            str = String.format("can't load banner - %s", objArr);
        }
        if (e7Var == null || TextUtils.isEmpty(e7Var.getCom.ironsource.oo.d java.lang.String())) {
            Object[] objArr2 = new Object[1];
            objArr2[0] = e7Var == null ? "placement is null" : "placement name is empty";
            str = String.format("can't load banner - %s", objArr2);
        }
        if (TextUtils.isEmpty(str)) {
            bVar.a();
        } else {
            IronLog.INTERNAL.error(str);
            bVar.a(str);
        }
    }

    static void a(IronSourceBannerLayout ironSourceBannerLayout, b bVar) {
        if (ironSourceBannerLayout != null && !ironSourceBannerLayout.isDestroyed()) {
            bVar.a();
            return;
        }
        Object[] objArr = new Object[1];
        objArr[0] = ironSourceBannerLayout == null ? "banner is null" : "banner is destroyed";
        bVar.a(String.format("can't destroy banner - %s", objArr));
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0051  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ac A[Catch: Exception -> 0x00d6, TryCatch #0 {Exception -> 0x00d6, blocks: (B:4:0x0004, B:5:0x0011, B:35:0x0062, B:42:0x00a6, B:44:0x00ac, B:46:0x00b6, B:47:0x00d2, B:36:0x008b, B:41:0x00a3, B:37:0x0090, B:38:0x0095, B:39:0x009a, B:40:0x009f, B:7:0x0015, B:10:0x001f, B:13:0x0029, B:16:0x0033, B:19:0x003d, B:22:0x0047), top: B:52:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00b6 A[Catch: Exception -> 0x00d6, TryCatch #0 {Exception -> 0x00d6, blocks: (B:4:0x0004, B:5:0x0011, B:35:0x0062, B:42:0x00a6, B:44:0x00ac, B:46:0x00b6, B:47:0x00d2, B:36:0x008b, B:41:0x00a3, B:37:0x0090, B:38:0x0095, B:39:0x009a, B:40:0x009f, B:7:0x0015, B:10:0x001f, B:13:0x0029, B:16:0x0033, B:19:0x003d, B:22:0x0047), top: B:52:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:55:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Instruction removed from duplicated block: B:46:0x00b6, please report this as an issue */
    public static void a(Map<String, Object> map, ISBannerSize iSBannerSize) {
        byte b2;
        int i2;
        String strA;
        if (iSBannerSize != null) {
            try {
                String description = iSBannerSize.getDescription();
                switch (description.hashCode()) {
                    case -387072689:
                        if (!description.equals("RECTANGLE")) {
                            b2 = -1;
                        } else {
                            b2 = 2;
                        }
                        break;
                    case 72205083:
                        if (!description.equals("LARGE")) {
                            b2 = -1;
                        } else {
                            b2 = 1;
                        }
                        break;
                    case 79011241:
                        if (!description.equals("SMART")) {
                            b2 = -1;
                        } else {
                            b2 = 4;
                        }
                        break;
                    case 446888797:
                        if (!description.equals("LEADERBOARD")) {
                            b2 = -1;
                        } else {
                            b2 = 3;
                        }
                        break;
                    case 1951953708:
                        if (!description.equals("BANNER")) {
                            b2 = -1;
                        } else {
                            b2 = 0;
                        }
                        break;
                    case 1999208305:
                        if (!description.equals("CUSTOM")) {
                            b2 = -1;
                        } else {
                            b2 = 5;
                        }
                        break;
                    default:
                        b2 = -1;
                        break;
                }
                if (b2 == 0) {
                    i2 = 1;
                } else if (b2 == 1) {
                    i2 = 2;
                } else if (b2 == 2) {
                    i2 = 3;
                } else {
                    if (b2 != 3) {
                        if (b2 == 4) {
                            i2 = 5;
                        } else if (b2 == 5) {
                            map.put(h, 6);
                            map.put("custom_banner_size", iSBannerSize.getWidth() + "x" + iSBannerSize.getHeight());
                        }
                        if (iSBannerSize.isAdaptive()) {
                            strA = a(iSBannerSize);
                            if (map.containsKey(IronSourceConstants.EVENTS_EXT1)) {
                                strA = map.get(IronSourceConstants.EVENTS_EXT1) + " , " + a(iSBannerSize);
                            }
                            map.put(IronSourceConstants.EVENTS_EXT1, strA);
                        }
                    }
                    i2 = 4;
                }
                map.put(h, i2);
                if (iSBannerSize.isAdaptive()) {
                    strA = a(iSBannerSize);
                    if (map.containsKey(IronSourceConstants.EVENTS_EXT1)) {
                        strA = map.get(IronSourceConstants.EVENTS_EXT1) + " , " + a(iSBannerSize);
                    }
                    map.put(IronSourceConstants.EVENTS_EXT1, strA);
                }
            } catch (Exception e2) {
                l9.d().a(e2);
                IronLog.INTERNAL.error(Log.getStackTraceString(e2));
            }
        }
    }

    public static boolean a(ISContainerParams iSContainerParams, int i2, int i3) {
        if (iSContainerParams == null || iSContainerParams.getWidth() <= 0 || iSContainerParams.getHeight() <= 0) {
            IronLog.API.warning("Container size is invalid: Default banner size will be used.");
            return false;
        }
        if (iSContainerParams.getWidth() >= i2 && iSContainerParams.getHeight() >= i3) {
            return true;
        }
        IronLog.API.warning("Container size too small: Banner may not display correctly.");
        return true;
    }

    public static int b(int i2) {
        int iA;
        if (p.m().O()) {
            iA = a(i2);
        } else {
            IronLog.API.error("The mediation must be successfully initiated before calling this API");
            iA = -1;
        }
        a(i2, iA);
        IronLog.API.verbose("maximal height - " + iA + " for width - " + i2);
        return iA;
    }

    public static ISBannerSize b() {
        if (AdapterUtils.isLargeScreen(ContextProvider.getInstance().getApplicationContext())) {
            a("SMART", 728, 90);
        }
        return a("SMART", 320, 50);
    }

    public static void b(IronSourceBannerLayout ironSourceBannerLayout) {
        ISBannerSize size;
        if (ironSourceBannerLayout == null || (size = ironSourceBannerLayout.getSize()) == null || !size.isSmart()) {
            return;
        }
        ISBannerSize iSBannerSizeB = b();
        iSBannerSizeB.setContainerParams(size.containerParams);
        iSBannerSizeB.setAdaptive(size.isAdaptive());
        ironSourceBannerLayout.setBannerSize(iSBannerSizeB);
    }

    static boolean c(IronSourceBannerLayout ironSourceBannerLayout) {
        return (ironSourceBannerLayout == null || ironSourceBannerLayout.isDestroyed()) ? false : true;
    }
}
