package org.json.mediationsdk.integration;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.Log;
import com.applovin.sdk.AppLovinMediationProvider;
import org.json.environment.StringUtils;
import org.json.l9;
import org.json.mediationsdk.IntegrationData;
import org.json.mediationsdk.p;
import org.json.mediationsdk.utils.IronSourceUtils;

/* JADX INFO: loaded from: classes3.dex */
public class IntegrationHelper {
    private static final String a = "IntegrationHelper";
    private static final String b = "4.1";
    private static final String c = "4.3";

    class a extends Thread {
        final /* synthetic */ Context a;

        a(Context context) {
            this.a = context;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                Log.w(IntegrationHelper.a, "--------------- Google Play Services --------------");
                if (this.a.getPackageManager().getApplicationInfo(this.a.getPackageName(), 128).metaData.containsKey("com.google.android.gms.version")) {
                    Log.i(IntegrationHelper.a, "Google Play Services - VERIFIED");
                    String strB = p.m().b(this.a);
                    if (!TextUtils.isEmpty(strB)) {
                        Log.i(IntegrationHelper.a, "GAID is: " + strB + " (use this for test devices)");
                    }
                } else {
                    Log.e(IntegrationHelper.a, "Google Play Services - MISSING");
                }
            } catch (Exception e) {
                l9.d().a(e);
                Log.e(IntegrationHelper.a, "Google Play Services - MISSING");
            }
        }
    }

    private static IntegrationData a(Context context, String str) {
        String str2;
        try {
            IntegrationData integrationData = (IntegrationData) Class.forName(str).getMethod("getIntegrationData", Context.class).invoke(null, context);
            Log.i(a, "Adapter " + integrationData.version + " - VERIFIED");
            return integrationData;
        } catch (ClassNotFoundException e) {
            l9.d().a(e);
            str2 = "Adapter - MISSING";
            Log.e(a, str2);
            return null;
        } catch (Exception e2) {
            l9.d().a(e2);
            str2 = "Adapter version - NOT VERIFIED";
            Log.e(a, str2);
            return null;
        }
    }

    private static void a(Context context) {
        new a(context).start();
    }

    private static void a(String str) {
        try {
            Log.i(a, "SDK Version - " + ((String) Class.forName(str).getMethod("getAdapterSDKVersion", new Class[0]).invoke(null, new Object[0])));
        } catch (Exception e) {
            l9.d().a(e);
            Log.w("validateSDKVersion", "Unable to get SDK version");
        }
    }

    private static boolean a(IntegrationData integrationData) {
        if (integrationData.version.startsWith(b) || integrationData.version.startsWith(c)) {
            Log.i(a, "Adapter - VERIFIED");
            return true;
        }
        Log.e(a, integrationData.name + " adapter " + integrationData.version + " is incompatible with SDK version " + IronSourceUtils.getSDKVersion() + ", please update your adapter to version 4.1.*");
        return false;
    }

    private static void b(Context context) {
        Log.i(a, "*** Permissions ***");
        PackageManager packageManager = context.getPackageManager();
        if (packageManager.checkPermission("android.permission.INTERNET", context.getPackageName()) == 0) {
            Log.i(a, "android.permission.INTERNET - VERIFIED");
        } else {
            Log.e(a, "android.permission.INTERNET - MISSING");
        }
        if (packageManager.checkPermission("android.permission.ACCESS_NETWORK_STATE", context.getPackageName()) == 0) {
            Log.i(a, "android.permission.ACCESS_NETWORK_STATE - VERIFIED");
        } else {
            Log.e(a, "android.permission.ACCESS_NETWORK_STATE - MISSING");
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x003f  */
    private static boolean b(Context context, String str) {
        byte b2;
        String str2;
        try {
            String lowerCase = StringUtils.toLowerCase(str);
            int iHashCode = lowerCase.hashCode();
            if (iHashCode != -805296079) {
                if (iHashCode != 92668925) {
                    if (iHashCode == 497130182 && lowerCase.equals("facebook")) {
                        b2 = 0;
                    } else {
                        b2 = -1;
                    }
                } else if (lowerCase.equals(AppLovinMediationProvider.ADMOB)) {
                    b2 = 1;
                } else {
                    b2 = -1;
                }
            } else if (lowerCase.equals("vungle")) {
                b2 = 2;
            } else {
                b2 = -1;
            }
            if (b2 == 0) {
                str2 = "--------------- Meta --------------";
            } else if (b2 == 1) {
                str2 = "--------------- Google (AdMob and Ad Manager) --------------";
            } else if (b2 != 2) {
                str2 = "--------------- " + str + " --------------";
            } else {
                str2 = "--------------- Liftoff Monetization --------------";
            }
            Log.i(a, str2);
            String str3 = "com.ironsource.adapters." + StringUtils.toLowerCase(str) + "." + str + "Adapter";
            IntegrationData integrationDataA = a(context, str3);
            if (integrationDataA == null) {
                return false;
            }
            if (!str.equalsIgnoreCase("IronSource") && !a(integrationDataA)) {
                return false;
            }
            a(str3);
            return true;
        } catch (Exception e) {
            l9.d().a(e);
            Log.e(a, "isAdapterValid " + str, e);
            return false;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:28:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:9:0x006a  */
    public static void validateIntegration(Context context) {
        String str;
        Log.i(a, "Verifying Integration:");
        b(context);
        String[] strArr = {"AppLovin", "APS", "BidMachine", "Bigo", "Chartboost", "Fyber", "AdMob", "HyprMX", "InMobi", "IronSource", "Vungle", "Maio", "Facebook", "Mintegral", "MobileFuse", "Moloco", "MyTarget", "Ogury", "Pangle", "Smaato", "SuperAwesome", "UnityAds", "Verve", "Yandex"};
        for (int i = 0; i < 24; i++) {
            String str2 = strArr[i];
            if (!b(context, str2)) {
                String lowerCase = StringUtils.toLowerCase(str2);
                lowerCase.hashCode();
                lowerCase.hashCode();
                switch (lowerCase) {
                    case "vungle":
                        str = ">>>> Liftoff Monetization - NOT VERIFIED";
                        break;
                    case "admob":
                        str = ">>>> Google (AdMob and Ad Manager) - NOT VERIFIED";
                        break;
                    case "facebook":
                        str = ">>>> Meta - NOT VERIFIED";
                        break;
                    default:
                        Log.e(a, ">>>> " + str2 + " - NOT VERIFIED");
                        continue;
                        break;
                }
            } else {
                String lowerCase2 = StringUtils.toLowerCase(str2);
                lowerCase2.hashCode();
                lowerCase2.hashCode();
                switch (lowerCase2.hashCode()) {
                    case -805296079:
                        if (lowerCase2.equals("vungle")) {
                        }
                        break;
                    case 92668925:
                        if (lowerCase2.equals(AppLovinMediationProvider.ADMOB)) {
                        }
                        break;
                    case 497130182:
                        if (!lowerCase2.equals("facebook")) {
                        }
                        break;
                    default:
                        break;
                }
                /*  JADX ERROR: Method code generation error
                    java.lang.NullPointerException: Switch insn not found in header
                    	at java.base/java.util.Objects.requireNonNull(Objects.java:235)
                    	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:246)
                    	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:90)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                    	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                    	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                    	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:195)
                    	at jadx.core.dex.regions.loops.LoopRegion.generate(LoopRegion.java:173)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
                    	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
                    	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
                    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
                    	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
                    	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                    	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                    	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                    */
                /*
                    Method dump skipped, instruction units count: 298
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: org.json.mediationsdk.integration.IntegrationHelper.validateIntegration(android.content.Context):void");
            }
        }
