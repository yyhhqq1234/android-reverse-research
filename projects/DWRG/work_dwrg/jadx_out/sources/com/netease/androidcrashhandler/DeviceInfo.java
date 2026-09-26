package com.netease.androidcrashhandler;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.provider.Settings;
import android.support.v4.os.EnvironmentCompat;
import android.telephony.TelephonyManager;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.WindowManager;
import com.netease.androidcrashhandler.util.LogUtils;
import com.netease.download.Const;
import im.yixin.sdk.util.SDKNetworkUtil;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import javax.microedition.khronos.opengles.GL10;

/* loaded from: classes.dex */
public class DeviceInfo {
    private static String TAG = "DeviceInfo";
    private Context ctx;
    private Map<String, String> info;
    EGL10 mEGL;
    EGLConfig mEGLConfig;
    EGLConfig[] mEGLConfigs;
    EGLContext mEGLContext;
    EGLDisplay mEGLDisplay;
    EGLSurface mEGLSurface;
    GL10 mGL;

    private DeviceInfo() {
        this.info = null;
        this.ctx = null;
    }

    /* synthetic */ DeviceInfo(DeviceInfo deviceInfo) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class DeviceInfoHolder {
        public static DeviceInfo INSTANCE = new DeviceInfo(null);

        private DeviceInfoHolder() {
        }
    }

    public static DeviceInfo getInstance() {
        return DeviceInfoHolder.INSTANCE;
    }

    public Map<String, String> getDeviceInfo() {
        getTime();
        getDeviceCrashInfo();
        return this.info;
    }

    public Map<String, String> getInfo() {
        if (this.info == null) {
            this.info = new HashMap();
        }
        return this.info;
    }

    public String getDeviceInfoStr(Context ctx) {
        Map<String, String> allInfo = getDeviceInfo();
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : allInfo.entrySet()) {
            sb.append(entry.getKey());
            sb.append("=");
            sb.append(entry.getValue());
            sb.append(MyFileUtils.CRLF);
        }
        return allInfo.toString();
    }

    public void addDeviceInfo(Context ctx, String key, String value) {
        getDeviceInfo().put(key, value);
    }

    public void collectDeviceInfo() {
        if (this.info == null) {
            this.info = new HashMap();
            getBundleVersion();
            getDeviceMD5();
            getDeviceBasicInfo();
            getGPUInfo();
            getUdid();
        }
    }

    public void getUdid() {
        String udid = Settings.Secure.getString(this.ctx.getContentResolver(), "android_id");
        LogUtils.i("wuln", "udid=" + udid);
        this.info.put("udid", udid);
    }

    private void getTime() {
        long timeMillis = System.currentTimeMillis();
        String timestamp = String.valueOf(timeMillis);
        this.info.put("timestamp", String.valueOf(timestamp));
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date curDate = new Date(timeMillis);
        String time = formatter.format(curDate);
        this.info.put(Const.KEY_TIME, time);
    }

    private void getGPUInfo() {
        int[] version = new int[2];
        int[] attribList = {12375, 100, 12374, 100, 12344};
        try {
            this.mEGL = (EGL10) EGLContext.getEGL();
            this.mEGLDisplay = this.mEGL.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
            this.mEGL.eglInitialize(this.mEGLDisplay, version);
            this.mEGLConfig = chooseConfig();
            this.mEGLContext = this.mEGL.eglCreateContext(this.mEGLDisplay, this.mEGLConfig, EGL10.EGL_NO_CONTEXT, null);
            this.mEGLSurface = this.mEGL.eglCreatePbufferSurface(this.mEGLDisplay, this.mEGLConfig, attribList);
            this.mEGL.eglMakeCurrent(this.mEGLDisplay, this.mEGLSurface, this.mEGLSurface, this.mEGLContext);
            this.mGL = (GL10) this.mEGLContext.getGL();
            this.info.put("GL_RENDERER", this.mGL.glGetString(7937));
            this.info.put("GL_VENDOR", this.mGL.glGetString(7936));
            this.info.put("GL_VERSION", this.mGL.glGetString(7938));
            this.info.put("GPU", this.mGL.glGetString(7937));
        } catch (Exception e) {
            this.info.put("GL_RENDERER", "unknow");
            this.info.put("GL_VENDOR", "unknow");
            this.info.put("GL_VERSION", "unknow");
            this.info.put("GPU", "unknow");
        }
    }

    private EGLConfig chooseConfig() {
        int[] attribList = {12325, 0, 12326, 0, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12344};
        int[] numConfig = new int[1];
        this.mEGL.eglChooseConfig(this.mEGLDisplay, attribList, null, 0, numConfig);
        int configSize = numConfig[0];
        LogUtils.i("trace", "chooseConfig configSize:" + configSize);
        this.mEGLConfigs = new EGLConfig[configSize];
        this.mEGL.eglChooseConfig(this.mEGLDisplay, attribList, this.mEGLConfigs, configSize, numConfig);
        LogUtils.i("trace", "chooseConfig mEGLConfigs size :" + this.mEGLConfigs.length);
        return this.mEGLConfigs[0];
    }

    private void getBundleVersion() {
        String bundleID = this.ctx.getPackageName();
        if (bundleID == null) {
            bundleID = EnvironmentCompat.MEDIA_UNKNOWN;
        }
        String version = null;
        try {
            PackageManager pm = this.ctx.getPackageManager();
            PackageInfo pi = pm.getPackageInfo(this.ctx.getPackageName(), 1);
            if (pi != null) {
                version = pi.versionName == null ? EnvironmentCompat.MEDIA_UNKNOWN : pi.versionName;
            }
        } catch (PackageManager.NameNotFoundException e) {
            version = EnvironmentCompat.MEDIA_UNKNOWN;
        }
        String bundle_version = String.valueOf(bundleID) + "_" + version;
        this.info.put("bundle_version", bundle_version);
    }

    private void getDeviceMD5() {
        try {
            TelephonyManager tm = (TelephonyManager) this.ctx.getSystemService("phone");
            String deviceID = "";
            try {
                deviceID = tm.getDeviceId();
            } catch (Exception e) {
                Log.e(TAG, new StringBuilder().append(e).toString());
            }
            String simSerialNumber = tm.getSimSerialNumber();
            String serialNumber = Build.SERIAL;
            String ANDROID_ID = Settings.Secure.getString(this.ctx.getContentResolver(), "android_id");
            StringBuilder sb = new StringBuilder();
            sb.append(deviceID != null ? deviceID : "null");
            sb.append(simSerialNumber != null ? deviceID : "null");
            sb.append(serialNumber != null ? deviceID : "null");
            if (ANDROID_ID == null) {
                deviceID = "null";
            }
            sb.append(deviceID);
            String result = sb.toString();
            String md5 = AndroidCrashHandler.getInstance().getFileUtils().str2MD5(result);
            this.info.put("d_md5", md5);
        } catch (Exception e2) {
            this.info.put("d_md5", EnvironmentCompat.MEDIA_UNKNOWN);
        }
    }

    public List<String> getCpuInfo() {
        List<String> cpuInfo = new ArrayList<>();
        try {
            FileReader fr = new FileReader("/proc/cpuinfo");
            BufferedReader localBufferedReader = new BufferedReader(fr, 8192);
            while (true) {
                String lineTxt = localBufferedReader.readLine();
                if (lineTxt == null) {
                    break;
                }
                cpuInfo.add(lineTxt);
            }
            localBufferedReader.close();
        } catch (IOException e) {
        }
        return cpuInfo;
    }

    private boolean getDeviceBasicInfo() {
        this.info.put("model", Build.MODEL);
        this.info.put("brand", Build.BRAND);
        this.info.put("mfr", Build.MANUFACTURER);
        this.info.put("board", Build.BOARD);
        this.info.put("CPU_ABI", Build.CPU_ABI);
        this.info.put("CPU_ABI2", Build.CPU_ABI2);
        ActivityManager activityManager = (ActivityManager) this.ctx.getSystemService("activity");
        ActivityManager.MemoryInfo menInfo = new ActivityManager.MemoryInfo();
        activityManager.getMemoryInfo(menInfo);
        this.info.put("total_mem", Formatter.formatFileSize(this.ctx, getTotalMemory()));
        StatFs statFs = new StatFs(Environment.getDataDirectory().getAbsolutePath());
        long blockSize = statFs.getBlockSize();
        String totalSize = Formatter.formatFileSize(this.ctx, statFs.getBlockCount() * blockSize);
        this.info.put("in_size", totalSize);
        String state = Environment.getExternalStorageState();
        if ("mounted".equals(state)) {
            StatFs estatFs = new StatFs(Environment.getExternalStorageDirectory().getAbsolutePath());
            long eBlockSize = estatFs.getBlockSize();
            String eTotalSize = Formatter.formatFileSize(this.ctx, estatFs.getBlockCount() * eBlockSize);
            this.info.put("ex_size", eTotalSize);
            this.info.put("with_sd_card", "true");
        } else {
            this.info.put("with_sd_card", "false");
        }
        boolean rooted = isRooted();
        this.info.put("is_rooted", String.valueOf(rooted));
        ArrayList<String> cpuInfo = (ArrayList) getCpuInfo();
        Iterator<String> it = cpuInfo.iterator();
        while (it.hasNext()) {
            String string = it.next();
            if (string.contains("Hardware")) {
                String[] infos = string.split(Const.RESP_CONTENT_SPIT2);
                if (infos.length >= 2) {
                    this.info.put("Hardware", infos[1]);
                }
            }
        }
        if (cpuInfo.size() > 0) {
            String[] processors = cpuInfo.get(0).split(Const.RESP_CONTENT_SPIT2);
            if (processors.length > 0) {
                this.info.put("CPU", processors[1]);
            }
        }
        DisplayMetrics metric = new DisplayMetrics();
        WindowManager wm = (WindowManager) this.ctx.getSystemService("window");
        wm.getDefaultDisplay().getMetrics(metric);
        int width = metric.widthPixels;
        int height = metric.heightPixels;
        this.info.put("screen_width", String.valueOf(width));
        this.info.put("screen_height", String.valueOf(height));
        return true;
    }

    private long getTotalMemory() {
        long initial_memory = 0;
        try {
            FileReader localFileReader = new FileReader("/proc/meminfo");
            BufferedReader localBufferedReader = new BufferedReader(localFileReader, 8192);
            String str = localBufferedReader.readLine();
            String[] arrayOfString = str.split("\\s+");
            initial_memory = Integer.valueOf(arrayOfString[1]).longValue() * 1024;
            localBufferedReader.close();
            return initial_memory;
        } catch (IOException e) {
            LogUtils.e(TAG, new StringBuilder().append(e).toString());
            return initial_memory;
        }
    }

    private boolean isRooted() {
        try {
            if (!new File("/system/bin/su").exists()) {
                if (!new File("/system/xbin/su").exists()) {
                    return false;
                }
            }
            return true;
        } catch (Exception e) {
            LogUtils.e(TAG, new StringBuilder().append(e).toString());
            return false;
        }
    }

    private boolean getDeviceCrashInfo() {
        try {
            this.info.put("rls_version", Build.VERSION.RELEASE);
            this.info.put("sdk_version", String.valueOf(Build.VERSION.SDK_INT));
            ActivityManager activityManager = (ActivityManager) this.ctx.getSystemService("activity");
            ActivityManager.MemoryInfo memInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memInfo);
            this.info.put("avl_mem", Formatter.formatFileSize(this.ctx, memInfo.availMem));
            this.info.put("threshold_mem", Formatter.formatFileSize(this.ctx, memInfo.threshold));
            this.info.put("is_low_mem", String.valueOf(memInfo.lowMemory));
            if (Environment.getDataDirectory() != null) {
                StatFs statFs = new StatFs(Environment.getDataDirectory().getAbsolutePath());
                long blockSize = statFs.getBlockSize();
                String availableSize = Formatter.formatFileSize(this.ctx, statFs.getAvailableBlocks() * blockSize);
                this.info.put("in_avl_size", availableSize);
            }
            String state = Environment.getExternalStorageState();
            if ("mounted".equals(state) && Environment.getExternalStorageDirectory() != null) {
                StatFs estatFs = new StatFs(Environment.getExternalStorageDirectory().getAbsolutePath());
                long eBlockSize = estatFs.getBlockSize();
                String eAvailableSize = Formatter.formatFileSize(this.ctx, estatFs.getAvailableBlocks() * eBlockSize);
                this.info.put("ex_avl_size", eAvailableSize);
            }
            Configuration mConfiguration = this.ctx.getResources().getConfiguration();
            String orientation = "unknow";
            int ori = mConfiguration.orientation;
            if (ori == 2) {
                orientation = "LANDSCAPE";
            } else if (ori == 1) {
                orientation = "PORTRAIT";
            }
            this.info.put("ori", orientation);
            Intent batteryInfoIntent = this.ctx.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            int status = batteryInfoIntent.getIntExtra("status", 0);
            int health = batteryInfoIntent.getIntExtra("health", 1);
            boolean present = batteryInfoIntent.getBooleanExtra("present", false);
            batteryInfoIntent.getIntExtra("plugged", 0);
            double temperature = batteryInfoIntent.getIntExtra("temperature", 0) / 10.0d;
            String[] BATTERY_HEALTH = {"NULL", "UNKNOWN", "GOOD", "OVERHEAT", "DEAD", "OVER_VOLTAGE", "UNSPECIFIED_FAILURE", "COLD"};
            String[] BATTERY_STATUS = {"NULL", "UNKNOWN", "CHARGING", "DISCHARGING", "NOT_CHARGING", "FULL"};
            String[] strArr = {"NULL", "AC CHARGER", "USB PORT", "NULL", "WIRELESS"};
            if (status < BATTERY_STATUS.length && status >= 0) {
                this.info.put("Battery_State", BATTERY_STATUS[status]);
            }
            if (health < BATTERY_HEALTH.length && health >= 0) {
                this.info.put("Battery_Health", BATTERY_HEALTH[health]);
            }
            this.info.put("Is_Battery_Present", String.valueOf(present));
            this.info.put("Battery_Temperature", String.valueOf(temperature));
            ConnectivityManager connMgr = (ConnectivityManager) this.ctx.getSystemService("connectivity");
            NetworkInfo networkInfo = connMgr.getActiveNetworkInfo();
            if (networkInfo != null) {
                NetworkInfo.DetailedState netState = networkInfo.getDetailedState();
                networkInfo.getTypeName();
                this.info.put("net_state", String.valueOf(netState));
                if (networkInfo.getType() == 1) {
                    this.info.put("net_type", SDKNetworkUtil.NETWORK_TYPE_WIFI);
                    return true;
                }
                if (networkInfo.getType() == 0) {
                    this.info.put("net_type", "radio");
                    this.info.put("net_pto", networkInfo.getSubtypeName());
                    return true;
                }
                this.info.put("net_type", "Unknown");
                return true;
            }
            this.info.put("net_state", "Not_Available");
            this.info.put("net_type", "Disconnected");
            return true;
        } catch (Exception e) {
            return true;
        }
    }

    public Context getCtx() {
        return this.ctx;
    }

    public void setCtx(Context ctx) {
        this.ctx = ctx;
    }
}
