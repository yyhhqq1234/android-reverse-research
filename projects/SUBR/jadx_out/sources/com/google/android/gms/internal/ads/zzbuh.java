package com.google.android.gms.internal.ads;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.wrappers.Wrappers;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Locale;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.md;
import org.json.y8;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
@ParametersAreNonnullByDefault
public final class zzbuh implements zzbuj {
    public static zzbuj zza;
    static zzbuj zzb;
    static zzbuj zzc;
    static Boolean zzd;
    private static final Object zze = new Object();
    private final Object zzf;
    private final Context zzg;
    private final WeakHashMap zzh;
    private final ExecutorService zzi;
    private final VersionInfoParcel zzj;
    private final PackageInfo zzk;
    private final String zzl;
    private final String zzm;
    private final AtomicBoolean zzn;
    private boolean zzo;

    /* JADX WARN: Code duplicated, block: B:15:0x0062  */
    protected zzbuh(Context context, VersionInfoParcel versionInfoParcel) {
        PackageInfo packageInfo;
        this.zzf = new Object();
        this.zzh = new WeakHashMap();
        zzfqv.zza();
        this.zzi = Executors.unconfigurableExecutorService(Executors.newCachedThreadPool());
        this.zzn = new AtomicBoolean();
        context = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zzg = context;
        this.zzj = versionInfoParcel;
        String string = null;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhG)).booleanValue()) {
            Handler handler = com.google.android.gms.ads.internal.util.client.zzf.zza;
            if (context == null || context.getApplicationInfo() == null) {
                packageInfo = null;
            } else {
                try {
                    packageInfo = Wrappers.packageManager(context).getPackageInfo(context.getApplicationInfo().packageName, 0);
                } catch (PackageManager.NameNotFoundException unused) {
                    packageInfo = null;
                }
            }
        } else {
            packageInfo = null;
        }
        this.zzk = packageInfo;
        this.zzl = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhE)).booleanValue() ? Locale.getDefault().getCountry() : "unknown";
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhE)).booleanValue()) {
            Context context2 = this.zzg;
            Handler handler2 = com.google.android.gms.ads.internal.util.client.zzf.zza;
            if (context2 != null) {
                try {
                    PackageInfo packageInfo2 = Wrappers.packageManager(context2).getPackageInfo("com.android.vending", 128);
                    if (packageInfo2 != null) {
                        string = Integer.toString(packageInfo2.versionCode);
                    }
                } catch (PackageManager.NameNotFoundException unused2) {
                }
            }
        } else {
            string = "unknown";
        }
        this.zzm = string;
    }

    public static zzbuj zza(Context context) {
        synchronized (zze) {
            if (zza == null) {
                if (zzl(context)) {
                    zza = new zzbuh(context, VersionInfoParcel.forPackage());
                } else {
                    zza = new zzbui();
                }
            }
        }
        return zza;
    }

    public static zzbuj zzb(Context context, VersionInfoParcel versionInfoParcel) {
        synchronized (zze) {
            if (zzc == null) {
                boolean z = false;
                if (((Boolean) zzbed.zzc.zze()).booleanValue()) {
                    if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhz)).booleanValue() || ((Boolean) zzbed.zza.zze()).booleanValue()) {
                        z = true;
                    }
                }
                if (zzl(context)) {
                    zzbuh zzbuhVar = new zzbuh(context, versionInfoParcel);
                    zzbuhVar.zzk();
                    zzbuhVar.zzj();
                    zzc = zzbuhVar;
                } else if (!z || context == null) {
                    zzc = new zzbui();
                } else {
                    zzbuh zzbuhVar2 = new zzbuh(context, versionInfoParcel, true);
                    zzbuhVar2.zzk();
                    zzbuhVar2.zzj();
                    zzc = zzbuhVar2;
                }
            }
        }
        return zzc;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0037 A[Catch: all -> 0x0042, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x0019, B:10:0x002b, B:11:0x0037, B:12:0x003e), top: B:18:0x0003 }] */
    public static zzbuj zzc(Context context) {
        synchronized (zze) {
            if (zzb == null) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhA)).booleanValue()) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhz)).booleanValue()) {
                        zzb = new zzbui();
                    } else {
                        zzb = new zzbuh(context, VersionInfoParcel.forPackage());
                    }
                } else {
                    zzb = new zzbui();
                }
            }
        }
        return zzb;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0033 A[Catch: all -> 0x003e, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x0019, B:10:0x002b, B:11:0x0033, B:12:0x003a), top: B:18:0x0003 }] */
    public static zzbuj zzd(Context context, VersionInfoParcel versionInfoParcel) {
        synchronized (zze) {
            if (zzb == null) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhA)).booleanValue()) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhz)).booleanValue()) {
                        zzb = new zzbui();
                    } else {
                        zzb = new zzbuh(context, versionInfoParcel);
                    }
                } else {
                    zzb = new zzbui();
                }
            }
        }
        return zzb;
    }

    public static String zze(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public static String zzf(Throwable th) {
        return zzfve.zzc(com.google.android.gms.ads.internal.util.client.zzf.zzg(zze(th)));
    }

    private final void zzj() {
        Thread.setDefaultUncaughtExceptionHandler(new zzbuf(this, Thread.getDefaultUncaughtExceptionHandler()));
    }

    private final void zzk() {
        Thread thread = Looper.getMainLooper().getThread();
        if (thread == null) {
            return;
        }
        synchronized (this.zzf) {
            this.zzh.put(thread, true);
        }
        thread.setUncaughtExceptionHandler(new zzbug(this, thread.getUncaughtExceptionHandler()));
    }

    private static boolean zzl(Context context) {
        if (context == null) {
            return false;
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzmE)).booleanValue()) {
            if (((Boolean) zzbeu.zze.zze()).booleanValue()) {
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhz)).booleanValue()) {
                    return true;
                }
            }
            return false;
        }
        synchronized (zze) {
            if (zzd == null) {
                zzd = Boolean.valueOf(com.google.android.gms.ads.internal.client.zzbc.zze().nextInt(100) < ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzmB)).intValue());
            }
        }
        if (zzd.booleanValue()) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhz)).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    protected final void zzg(Thread thread, Throwable th) {
        if (th != null) {
            boolean zZzo = false;
            boolean zEquals = false;
            for (Throwable cause = th; cause != null; cause = cause.getCause()) {
                for (StackTraceElement stackTraceElement : cause.getStackTrace()) {
                    zZzo |= com.google.android.gms.ads.internal.util.client.zzf.zzo(stackTraceElement.getClassName());
                    zEquals |= getClass().getName().equals(stackTraceElement.getClassName());
                }
            }
            if (!zZzo || zEquals) {
                return;
            }
            if (!this.zzo) {
                zzh(th, "");
            }
            if (this.zzn.getAndSet(true) || !((Boolean) zzbed.zzc.zze()).booleanValue()) {
                return;
            }
            zzbbv.zzc(this.zzg);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuj
    public final void zzh(Throwable th, String str) {
        if (this.zzo) {
            return;
        }
        zzi(th, str, 1.0f);
    }

    @Override // com.google.android.gms.internal.ads.zzbuj
    public final void zzi(Throwable th, String str, float f) {
        Throwable th2;
        String packageName;
        PackageInfo packageInfo;
        ActivityManager.MemoryInfo memoryInfoZzc;
        if (this.zzo) {
            return;
        }
        Handler handler = com.google.android.gms.ads.internal.util.client.zzf.zza;
        boolean zIsCallerInstantApp = false;
        if (((Boolean) zzbeu.zzf.zze()).booleanValue()) {
            th2 = th;
        } else {
            LinkedList linkedList = new LinkedList();
            for (Throwable cause = th; cause != null; cause = cause.getCause()) {
                linkedList.push(cause);
            }
            th2 = null;
            while (!linkedList.isEmpty()) {
                Throwable th3 = (Throwable) linkedList.pop();
                StackTraceElement[] stackTrace = th3.getStackTrace();
                boolean z = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcs)).booleanValue() && stackTrace != null && stackTrace.length == 0 && com.google.android.gms.ads.internal.util.client.zzf.zzo(th3.getClass().getName());
                ArrayList arrayList = new ArrayList();
                arrayList.add(new StackTraceElement(th3.getClass().getName(), "<filtered>", "<filtered>", 1));
                for (StackTraceElement stackTraceElement : stackTrace) {
                    if (com.google.android.gms.ads.internal.util.client.zzf.zzo(stackTraceElement.getClassName())) {
                        arrayList.add(stackTraceElement);
                        z = true;
                    } else {
                        String className = stackTraceElement.getClassName();
                        if (!TextUtils.isEmpty(className) && (className.startsWith("android.") || className.startsWith("java."))) {
                            arrayList.add(stackTraceElement);
                        } else {
                            arrayList.add(new StackTraceElement("<filtered>", "<filtered>", "<filtered>", 1));
                        }
                    }
                }
                if (z) {
                    th2 = th2 == null ? new Throwable(th3.getMessage()) : new Throwable(th3.getMessage(), th2);
                    th2.setStackTrace((StackTraceElement[]) arrayList.toArray(new StackTraceElement[0]));
                }
            }
        }
        if (th2 != null) {
            String name = th.getClass().getName();
            String strZze = zze(th);
            String strZzf = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zziI)).booleanValue() ? zzf(th) : "";
            double d = f;
            double dRandom = Math.random();
            int i = f > 0.0f ? (int) (1.0f / f) : 1;
            if (dRandom < d) {
                ArrayList<String> arrayList2 = new ArrayList();
                try {
                    zIsCallerInstantApp = Wrappers.packageManager(this.zzg).isCallerInstantApp();
                } catch (Throwable th4) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzh("Error fetching instant app info", th4);
                }
                try {
                    packageName = this.zzg.getPackageName();
                } catch (Throwable unused) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Cannot obtain package name, proceeding.");
                    packageName = "unknown";
                }
                Uri.Builder builderAppendQueryParameter = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("is_aia", Boolean.toString(zIsCallerInstantApp)).appendQueryParameter("id", "gmob-apps-report-exception").appendQueryParameter(md.y, Build.VERSION.RELEASE).appendQueryParameter("api", String.valueOf(Build.VERSION.SDK_INT));
                String str2 = Build.MANUFACTURER;
                String str3 = Build.MODEL;
                if (!str3.startsWith(str2)) {
                    str3 = str2 + " " + str3;
                }
                Uri.Builder builderAppendQueryParameter2 = builderAppendQueryParameter.appendQueryParameter(y8.h.G, str3).appendQueryParameter("js", this.zzj.afmaVersion).appendQueryParameter("appid", packageName).appendQueryParameter("exceptiontype", name).appendQueryParameter("stacktrace", strZze).appendQueryParameter("eids", TextUtils.join(",", com.google.android.gms.ads.internal.client.zzbe.zza().zza())).appendQueryParameter("exceptionkey", str).appendQueryParameter("cl", "697668803").appendQueryParameter("rc", "dev").appendQueryParameter("sampling_rate", Integer.toString(i)).appendQueryParameter("pb_tm", String.valueOf(zzbeu.zzc.zze())).appendQueryParameter("gmscv", String.valueOf(GoogleApiAvailabilityLight.getInstance().getApkVersion(this.zzg))).appendQueryParameter("lite", true != this.zzj.isLiteSdk ? "0" : "1");
                if (!TextUtils.isEmpty(strZzf)) {
                    builderAppendQueryParameter2.appendQueryParameter("hash", strZzf);
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhF)).booleanValue() && (memoryInfoZzc = com.google.android.gms.ads.internal.util.client.zzf.zzc(this.zzg)) != null) {
                    builderAppendQueryParameter2.appendQueryParameter("available_memory", Long.toString(memoryInfoZzc.availMem));
                    builderAppendQueryParameter2.appendQueryParameter("total_memory", Long.toString(memoryInfoZzc.totalMem));
                    builderAppendQueryParameter2.appendQueryParameter("is_low_memory", true == memoryInfoZzc.lowMemory ? "1" : "0");
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhE)).booleanValue()) {
                    if (!TextUtils.isEmpty(this.zzl)) {
                        builderAppendQueryParameter2.appendQueryParameter("countrycode", this.zzl);
                    }
                    if (!TextUtils.isEmpty(this.zzm)) {
                        builderAppendQueryParameter2.appendQueryParameter("psv", this.zzm);
                    }
                    Context context = this.zzg;
                    if (Build.VERSION.SDK_INT >= 26) {
                        packageInfo = WebView.getCurrentWebViewPackage();
                    } else if (context == null) {
                        packageInfo = null;
                    } else {
                        try {
                            packageInfo = Wrappers.packageManager(context).getPackageInfo("com.android.webview", 128);
                        } catch (PackageManager.NameNotFoundException unused2) {
                            packageInfo = null;
                        }
                    }
                    if (packageInfo != null) {
                        builderAppendQueryParameter2.appendQueryParameter("wvvc", Integer.toString(packageInfo.versionCode));
                        builderAppendQueryParameter2.appendQueryParameter("wvvn", packageInfo.versionName);
                        builderAppendQueryParameter2.appendQueryParameter("wvpn", packageInfo.packageName);
                    }
                }
                PackageInfo packageInfo2 = this.zzk;
                if (packageInfo2 != null) {
                    builderAppendQueryParameter2.appendQueryParameter("appvc", String.valueOf(packageInfo2.versionCode));
                    builderAppendQueryParameter2.appendQueryParameter("appvn", this.zzk.versionName);
                }
                arrayList2.add(builderAppendQueryParameter2.toString());
                for (final String str4 : arrayList2) {
                    final com.google.android.gms.ads.internal.util.client.zzu zzuVar = new com.google.android.gms.ads.internal.util.client.zzu(null);
                    this.zzi.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbue
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzuVar.zza(str4);
                        }
                    });
                }
            }
        }
    }

    protected zzbuh(Context context, VersionInfoParcel versionInfoParcel, boolean z) {
        this(context, versionInfoParcel);
        this.zzo = true;
    }
}
