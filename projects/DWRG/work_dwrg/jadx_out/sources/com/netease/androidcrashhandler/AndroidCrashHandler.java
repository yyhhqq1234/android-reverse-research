package com.netease.androidcrashhandler;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.support.v4.os.EnvironmentCompat;
import android.text.TextUtils;
import com.netease.androidcrashhandler.util.LogUtils;
import com.netease.environment.config.SdkConstants;
import im.yixin.sdk.http.multipart.FilePart;
import im.yixin.sdk.http.multipart.StringPart;
import java.io.File;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AndroidCrashHandler implements Thread.UncaughtExceptionHandler {
    private static AndroidCrashHandler INSTANCE = null;
    public static final String VERSION = "1.2.6(1)";
    private static boolean isLoadLibrarySuccess;
    private DeviceInfo DIInfo;
    private String EngineVersion;
    private String ResVersion;
    private String crashID;
    private Thread.UncaughtExceptionHandler defaultHandler;
    private MyFileUtils fileUtils;
    private Context mContext;
    MyConfigCallBack myConfigCallBack;
    private MyNetworkUtils networkUtils;
    public static long sResumeTime = 0;
    private static MyCrashCallBack callBack = null;

    native void NCCrashHandler(String str);

    native void NCSetCfgInfo(String str, String str2);

    static {
        isLoadLibrarySuccess = true;
        try {
            System.loadLibrary("com_netease_androidcrashhandler_AndroidCrashHandler");
        } catch (Throwable th) {
            isLoadLibrarySuccess = false;
            LogUtils.i("trace", "load AndroidCrashHandler so Exception");
        }
    }

    public Context getContext() {
        return this.mContext;
    }

    private AndroidCrashHandler() {
        this.fileUtils = null;
        this.networkUtils = null;
        this.DIInfo = null;
        this.crashID = "default";
        this.EngineVersion = EnvironmentCompat.MEDIA_UNKNOWN;
        this.ResVersion = EnvironmentCompat.MEDIA_UNKNOWN;
        this.myConfigCallBack = new MyConfigCallBack() { // from class: com.netease.androidcrashhandler.AndroidCrashHandler.1
            List<String> fileNames = new ArrayList();

            @Override // com.netease.androidcrashhandler.MyConfigCallBack
            public void configCallBack() {
                LogUtils.i("trace", "--------------------");
                LogUtils.i("trace", "game set config info");
                AndroidCrashHandler.this.setCfgInfoToJni();
            }

            @Override // com.netease.androidcrashhandler.MyConfigCallBack
            public void setFileCallBack(String name) {
                this.fileNames.add(name);
            }
        };
        this.fileUtils = MyFileUtils.getInstance();
        this.networkUtils = MyNetworkUtils.getInstance();
        this.DIInfo = DeviceInfo.getInstance();
        this.networkUtils.getDefaultPostEntity().setConfigCallBack(this.myConfigCallBack);
    }

    /* synthetic */ AndroidCrashHandler(AndroidCrashHandler androidCrashHandler) {
        this();
    }

    public void setCallBack(MyCrashCallBack callBack2) {
        callBack = callBack2;
    }

    public String getCrashIdentity() {
        return this.crashID;
    }

    public void setEngineVersion(String version) {
        this.EngineVersion = version;
    }

    public void setResVersion(String version) {
        this.ResVersion = version;
    }

    public String getEngineVersion() {
        return this.EngineVersion;
    }

    public String getResVersion() {
        return this.ResVersion;
    }

    public String getVersion() {
        return String.valueOf(this.EngineVersion) + "(" + this.ResVersion + ")";
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class AndroidCrashHandlerHolder {
        public static AndroidCrashHandler INSTANCE = new AndroidCrashHandler(null);

        private AndroidCrashHandlerHolder() {
        }
    }

    public static AndroidCrashHandler getInstance() {
        return AndroidCrashHandlerHolder.INSTANCE;
    }

    public MyNetworkUtils getNetworkUtils() {
        return this.networkUtils;
    }

    public MyFileUtils getFileUtils() {
        return this.fileUtils;
    }

    public void startCrashHandle(Context ctx) {
        startCrashHandle(ctx, false);
    }

    public void startCrashHandle(Context ctx, boolean proguard) {
        LogUtils.i("trace", "=======================================================");
        LogUtils.i("trace", "[startCrashHandle]");
        this.mContext = ctx;
        this.fileUtils.setCtx(this.mContext);
        this.DIInfo.setCtx(this.mContext);
        this.DIInfo.collectDeviceInfo();
        if (Build.VERSION.SDK_INT >= 14) {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = new Application.ActivityLifecycleCallbacks() { // from class: com.netease.androidcrashhandler.AndroidCrashHandler.2
                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStarted(Activity activity) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityResumed(Activity activity) {
                    AndroidCrashHandler.sResumeTime = System.currentTimeMillis();
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityPaused(Activity activity) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStopped(Activity activity) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityDestroyed(Activity activity) {
                }
            };
            if (this.mContext instanceof Activity) {
                LogUtils.i("trace", "Activity context");
                ((Activity) this.mContext).getApplication().registerActivityLifecycleCallbacks(activityLifecycleCallbacks);
            } else if (this.mContext instanceof Application) {
                LogUtils.i("trace", "Application context");
                ((Application) this.mContext).registerActivityLifecycleCallbacks(activityLifecycleCallbacks);
            }
        }
        sResumeTime = System.currentTimeMillis();
        if (this.EngineVersion.compareTo(EnvironmentCompat.MEDIA_UNKNOWN) == 0) {
            try {
                this.EngineVersion = this.mContext.getPackageManager().getPackageInfo(this.mContext.getPackageName(), 1).versionName;
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
            }
        }
        if (proguard) {
            this.DIInfo.getInfo().put("proguard", "true");
        } else {
            this.DIInfo.getInfo().put("proguard", "false");
        }
        this.networkUtils.getDefaultPostEntity().setParam("os_type", "Android");
        LogUtils.i("trace", "------------------------------------------");
        LogUtils.i("trace", "[startCrashHandle] DefaultPostEntity content：");
        LogUtils.i("trace", "[startCrashHandle] DefaultPostEntity Files:" + this.networkUtils.getDefaultPostEntity().getFiles().toString());
        LogUtils.i("trace", "[startCrashHandle] DefaultPostEntity Params:" + this.networkUtils.getDefaultPostEntity().getParams().toString());
        LogUtils.i("trace", "[startCrashHandle] DefaultPostEntity BasicInfo:" + this.networkUtils.getDefaultPostEntity().getBasicInfo().toString());
        LogUtils.i("trace", "------------------------------------------");
        if (!uploadCrashReport()) {
            uploadDmpFile();
        }
        uploadANRReport();
        this.defaultHandler = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(this);
        if (isLoadLibrarySuccess) {
            NCCrashHandler(ctx.getFilesDir().getPath());
        } else {
            LogUtils.i("trace", " No NCCrashHandler: isLoadLibrarySuccess = " + isLoadLibrarySuccess);
        }
        LogUtils.i("CrashHunter", "regist dmp crash callback");
    }

    private void uploadANRReport() {
        File[] files;
        File[] files2;
        LogUtils.i("trace", "-----------------------------------------------");
        LogUtils.i("trace", "[uploadANRReport]");
        String bundleID = this.mContext.getPackageName();
        LogUtils.i("trace", "[uploadANRReport] bundleID=" + bundleID);
        String realPath = null;
        File file = new File("/data/anr");
        if (file.exists()) {
            LogUtils.i("trace", "file exist");
        } else {
            LogUtils.i("trace", "file not exist");
        }
        if (file.isDirectory()) {
            LogUtils.i("trace", "is directory");
        } else {
            LogUtils.i("trace", "is not directory");
        }
        if (file.exists() && file.isDirectory() && (files2 = MyFileUtils.orderByDate("/data/anr")) != null && files2.length > 0) {
            for (File file2 : files2) {
                LogUtils.i("trace", "file path=" + file2.getAbsolutePath() + ", file lastModified=" + file2.lastModified());
            }
            int i = 0;
            while (true) {
                if (i >= files2.length) {
                    break;
                }
                LogUtils.i("trace", "the " + i + "th file path=" + files2[i].getAbsolutePath());
                String filePath = files2[i].getAbsolutePath();
                LogUtils.i("trace", "filePath=" + filePath);
                if (!filePath.contains(bundleID)) {
                    i++;
                } else {
                    realPath = filePath;
                    break;
                }
            }
        }
        LogUtils.i("trace", "realPath=" + realPath);
        if (TextUtils.isEmpty(realPath)) {
            realPath = "/data/anr/traces.txt";
        }
        LogUtils.i("trace", "system anr file, realPath=" + realPath);
        if (!TextUtils.isEmpty(realPath)) {
            File realPathFile = new File(realPath);
            long anrTime = MyFileUtils.getInfo(this.mContext, "anr_time");
            boolean hasReport = false;
            if (realPathFile.exists()) {
                long realPathFileTime = realPathFile.lastModified();
                LogUtils.i("trace", "realPathFileTime=" + realPathFileTime + ", anrTime=" + anrTime);
                if (realPathFileTime > anrTime || 0 == realPathFileTime) {
                    hasReport = true;
                    MyFileUtils.setInfo(this.mContext, "anr_time", realPathFileTime);
                }
            }
            LogUtils.i("trace", "hasReport=" + hasReport + ", anrTime=" + MyFileUtils.getInfo(this.mContext, "anr_time"));
            ArrayList<String> ANRContent = this.fileUtils.getANRContent(bundleID, realPath);
            if (ANRContent != null && hasReport) {
                LogUtils.i("trace", String.valueOf(realPath) + " has content");
                String name = ANRContent.get(1);
                String content = ANRContent.get(2);
                LogUtils.i("trace", SdkConstants.PRE_CONTENT + content);
                MyPostEntity entity = MyConfigController.getEntity(false);
                if (entity != null) {
                    Map<String, String> diInfo = this.DIInfo.getDeviceInfo();
                    diInfo.put("is_real_time", "false");
                    entity.setParam("error_type", "ANDROID_ANR", false);
                    entity.setParam("identify", name, false);
                    entity.setFile(content, String.valueOf(name) + ".anr", StringPart.DEFAULT_CONTENT_TYPE);
                    entity.setFile(this.fileUtils.info2str(diInfo), String.valueOf(name) + ".di", StringPart.DEFAULT_CONTENT_TYPE);
                    LogUtils.i("trace", "[uploadANRReport] uploadCrashReportSystem");
                    this.networkUtils.uploadCrashReportSystem(entity);
                } else {
                    LogUtils.i("trace", "entity is null");
                }
            } else {
                LogUtils.i("trace", String.valueOf(realPath) + " is empty");
            }
        }
        File anrFile = new File("/data/anr");
        if (anrFile.exists() && anrFile.isDirectory() && (files = anrFile.listFiles()) != null && files.length > 0) {
            for (int i2 = 0; i2 < files.length; i2++) {
                LogUtils.i("trace", String.valueOf(i2) + " file name=" + files[i2].getAbsolutePath());
                String absolutePath = files[i2].getAbsolutePath();
                if (absolutePath.contains(bundleID)) {
                    File pFile = new File(absolutePath);
                    if (pFile.exists()) {
                        boolean isSuccess = pFile.delete();
                        LogUtils.i("trace", "delete anr file, path=" + absolutePath + ", is delete success=" + isSuccess);
                    }
                }
            }
        }
        LogUtils.i("trace", "-----------------------------------------------");
    }

    private boolean uploadCrashReport() {
        LogUtils.i("trace", "--------------------------------------------------------------");
        LogUtils.i("trace", "[uploadCrashReport]");
        boolean result = false;
        MyPostEntity entity = MyConfigController.getEntity(true);
        if (entity != null) {
            result = true;
            LogUtils.i("trace", "[uploadCrashReport] uploadCrashReportSystem");
            this.networkUtils.uploadCrashReportSystem(entity);
        } else {
            LogUtils.i("trace", "entity is null");
        }
        LogUtils.i("trace", "--------------------------------------------------------------");
        return result;
    }

    private void uploadDmpFile() {
        LogUtils.i("trace", "[uploadDmpFile]");
        String[] DMPFileNames = this.fileUtils.getFilesBySuffix(".dmp");
        if (DMPFileNames != null && DMPFileNames.length > 0) {
            MyPostEntity entity = MyConfigController.getEntity(false);
            LogUtils.i("trace", "upload dmp file");
            for (String DMPFileName : DMPFileNames) {
                String name = DMPFileName.split("\\.")[0];
                LogUtils.i("trace", "DMPFileName:" + DMPFileName);
                Map<String, String> info = this.DIInfo.getDeviceInfo();
                LogUtils.i("trace", "DIInfo.getDeviceInfo:" + info.toString());
                info.put("is_real_time", "false");
                LogUtils.i("trace", "entity param=" + entity.getParams().toString());
                LogUtils.i("trace", "uploadDmpFile create di file---content:" + info);
                entity.setFile(this.fileUtils.info2str(info), String.valueOf(name) + ".di", StringPart.DEFAULT_CONTENT_TYPE);
                LogUtils.i("trace", "uploadDmpFile create dump file");
                File DMPFile = new File(this.mContext.getFilesDir(), DMPFileName);
                entity.setFile(DMPFile, DMPFileName, FilePart.DEFAULT_CONTENT_TYPE);
                entity.setParam("identify", name, false);
                entity.setParam("error_type", "ANDROID_NATIVE_ERROR", false);
                LogUtils.i("trace", "MyPostEntity after files size:" + entity.getFiles().size() + " entity files content :" + entity.getFiles().toString());
                LogUtils.i("trace", "[uploadDmpFile] uploadCrashReportSystem");
                this.networkUtils.uploadCrashReportSystem(entity);
            }
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable ex) {
        LogUtils.i("trace", "uncaughtException");
        LogUtils.i("crashing", "uncaughtException");
        if (!handleJEException(ex) && this.defaultHandler != null) {
            this.defaultHandler.uncaughtException(thread, ex);
        } else {
            Process.killProcess(Process.myPid());
            System.exit(10);
        }
    }

    private boolean handleJEException(Throwable ex) {
        LogUtils.i("trace", "handleJEException-----start");
        if (ex == null) {
            return true;
        }
        LogUtils.i("crashing", "handle Java Exception");
        Map<String, String> diInfo = this.DIInfo.getDeviceInfo();
        LogUtils.i("trace", "diInfo size:" + diInfo.size());
        Map<String, String> exInfo = getExceptionInfo(ex);
        LogUtils.i("trace", "exInfo size:" + exInfo.size());
        String name = exInfo.get("je_md5");
        this.crashID = name;
        LogUtils.i("trace", "create aci file");
        this.networkUtils.getDefaultPostEntity().setFile(this.fileUtils.info2str(exInfo), String.valueOf(name) + ".aci", StringPart.DEFAULT_CONTENT_TYPE);
        LogUtils.i("trace", "create di file");
        this.networkUtils.getDefaultPostEntity().setFile(this.fileUtils.info2str(diInfo), String.valueOf(name) + ".di", StringPart.DEFAULT_CONTENT_TYPE);
        LogUtils.i("trace", "set identify：" + name);
        this.networkUtils.getDefaultPostEntity().setParam("identify", name, false);
        this.networkUtils.getDefaultPostEntity().setParam("error_type", "ANDROID_JAVA_EXCEPTION", false);
        if (!this.networkUtils.getDefaultPostEntity().getParams().containsKey("client_v")) {
            LogUtils.i("trace", "set Version：" + getInstance().getVersion());
            this.networkUtils.getDefaultPostEntity().setParam("client_v", getInstance().getVersion(), false);
        }
        this.networkUtils.getDefaultPostEntity().setParam("crash_time", String.valueOf((System.currentTimeMillis() - sResumeTime) / 1000), false);
        if (callBack != null) {
            LogUtils.i("trace", "callBack.crashCallBack()");
            callBack.crashCallBack();
            LogUtils.i("trace", "------------------------------------------------------------");
            LogUtils.i("trace", "handleJEException crashCallBack");
            LogUtils.i("trace", "handleJEException crashCallBack entity Files:" + this.networkUtils.getDefaultPostEntity().getFiles().toString());
            LogUtils.i("trace", "handleJEException crashCallBack entity Params:" + this.networkUtils.getDefaultPostEntity().getParams().toString());
            LogUtils.i("trace", "handleJEException crashCallBack entity BasicInfo:" + this.networkUtils.getDefaultPostEntity().getBasicInfo().toString());
            LogUtils.i("trace", "------------------------------------------------------------");
        }
        boolean response = this.networkUtils.saveParams(this.networkUtils.getDefaultPostEntity(), name, ".javacfg");
        LogUtils.i("trace", "create cfg files---response：" + response);
        LogUtils.i("trace", "handleJEException-----end");
        return response;
    }

    public Map<String, String> getExceptionInfo(Throwable ex) {
        LogUtils.i("trace", "getExceptionInfo");
        Map<String, String> info = new HashMap<>();
        Writer writer = new StringWriter();
        PrintWriter printWriter = new PrintWriter(writer);
        ex.printStackTrace(printWriter);
        for (Throwable cause = ex.getCause(); cause != null; cause = cause.getCause()) {
            cause.printStackTrace(printWriter);
        }
        String result = writer.toString();
        LogUtils.i("trace", "java 崩溃信息=" + result);
        printWriter.close();
        info.put("stack_trace", result);
        info.put("je_md5", this.fileUtils.str2MD5(result));
        return info;
    }

    public static void handCallBack() {
        LogUtils.e("trace", "回调到crashHunter回调接口");
        callBack.crashCallBack();
    }

    public void handleNCCrash(String DMPFilePath) {
        LogUtils.i("trace", "=======================================================");
        LogUtils.i("trace", "[handleNCCrash]------jni to java");
        LogUtils.i("trace", "[handleNCCrash]------start");
        LogUtils.i("trace", "[handleNCCrash] DMPFilePath: " + DMPFilePath);
        String[] DMPFilePaths = DMPFilePath.split(MyFileUtils.SEPARATOR);
        String DMPFileName = DMPFilePaths[DMPFilePaths.length - 1];
        String name = DMPFileName.split("\\.")[0];
        this.crashID = name;
        Map<String, String> info = this.DIInfo.getDeviceInfo();
        info.put("is_real_time", "true");
        this.networkUtils.getDefaultPostEntity().setFile(this.fileUtils.info2str(info), String.valueOf(name) + ".di", StringPart.DEFAULT_CONTENT_TYPE);
        LogUtils.i("trace", "-------------------------------------------------");
        LogUtils.i("trace", "[handleNCCrash] create di file ");
        LogUtils.i("trace", "[handleNCCrash] di file content: " + info.toString());
        LogUtils.i("trace", "[handleNCCrash] DefaultPostEntity() files list ：" + this.networkUtils.getDefaultPostEntity().getFiles().toString());
        LogUtils.i("trace", "-------------------------------------------------");
        File DMPFile = new File(this.mContext.getFilesDir(), DMPFileName);
        this.networkUtils.getDefaultPostEntity().setFile(DMPFile, DMPFileName, FilePart.DEFAULT_CONTENT_TYPE);
        LogUtils.i("trace", "-------------------------------------------------");
        LogUtils.i("trace", "[handleNCCrash] create dmp file ");
        LogUtils.i("trace", "[handleNCCrash] DefaultPostEntity() files list ：" + this.networkUtils.getDefaultPostEntity().getFiles().toString());
        LogUtils.i("trace", "-------------------------------------------------");
        this.networkUtils.getDefaultPostEntity().setParam("identify", name, false);
        this.networkUtils.getDefaultPostEntity().setParam("error_type", "ANDROID_NATIVE_ERROR", false);
        if (!this.networkUtils.getDefaultPostEntity().getParams().containsKey("client_v")) {
            LogUtils.i("trace", "[handleNCCrash] set version： " + getInstance().getVersion());
            this.networkUtils.getDefaultPostEntity().setParam("client_v", getInstance().getVersion(), false);
        }
        this.networkUtils.getDefaultPostEntity().setParam("crash_time", String.valueOf((System.currentTimeMillis() - sResumeTime) / 1000), false);
        if (callBack != null) {
            LogUtils.i("trace", "------------------------------------------------------------");
            LogUtils.i("trace", "[handleNCCrash] call game crashCallBack");
            callBack.crashCallBack();
            LogUtils.i("trace", "[handleNCCrash] crashCallBack entity Params:" + this.networkUtils.getDefaultPostEntity().getParams().toString());
            LogUtils.i("trace", "[handleNCCrash] crashCallBack entity Files:" + this.networkUtils.getDefaultPostEntity().getFiles().toString());
            LogUtils.i("trace", "[handleNCCrash] crashCallBack entity BasicInfo:" + this.networkUtils.getDefaultPostEntity().getBasicInfo().toString());
            LogUtils.i("trace", "------------------------------------------------------------");
        }
        LogUtils.i("trace", "-------------------------------------------------");
        LogUtils.i("trace", "[handleNCCrash] create cfg file ");
        LogUtils.i("trace", "[handleNCCrash] cfg file content： Under this");
        LogUtils.i("trace", "[handleNCCrash] DefaultPostEntity() files list ：" + this.networkUtils.getDefaultPostEntity().getFiles().toString());
        LogUtils.i("trace", "-------------------------------------------------");
        this.networkUtils.saveParams(this.networkUtils.getDefaultPostEntity(), name, ".javacfg");
        LogUtils.i("trace", "--------------------------------------------------------------------------------");
        LogUtils.i("trace", "--------------------------------------------------------------------------------");
        LogUtils.i("trace", "[handleNCCrash] Storage DefaultPostEntity content");
        LogUtils.i("trace", "[handleNCCrash] params: " + this.networkUtils.getDefaultPostEntity().getParams().toString());
        LogUtils.i("trace", "[handleNCCrash] desc: " + this.networkUtils.getDefaultPostEntity().getUserDesc().toString());
        LogUtils.i("trace", "[handleNCCrash] basic info: " + this.networkUtils.getDefaultPostEntity().getBasicInfo().toString());
        LogUtils.i("trace", "[handleNCCrash] files: " + this.networkUtils.getDefaultPostEntity().getFiles().toString());
        LogUtils.i("trace", "[handleNCCrash]------end");
        LogUtils.i("trace", "--------------------------------------------------------------------------------");
        Process.killProcess(Process.myPid());
        System.exit(10);
    }

    public void setCfgInfoToJni() {
        if (isLoadLibrarySuccess) {
            if (this.mContext != null) {
                LogUtils.i("trace", "[setCfgInfoToJni] create_file");
                NCSetCfgInfo("CREATE_FILE", String.valueOf(this.mContext.getFilesDir().getAbsolutePath()) + "/cfgInfo.jnicfg");
            } else {
                LogUtils.i("trace", "mContext == null");
            }
            AndroidCrashHandler ach = getInstance();
            MyNetworkUtils networkUtils = ach.getNetworkUtils();
            MyPostEntity defaultEntity = networkUtils.getDefaultPostEntity();
            LogUtils.i("trace", "[setCfgInfoToJni] config_content:" + defaultEntity.getParams().toString());
            HashMap<String, String> paramMap = (HashMap) defaultEntity.getParams();
            JSONObject json = new JSONObject();
            if (paramMap != null && paramMap.size() > 0) {
                for (String key : paramMap.keySet()) {
                    try {
                        json.put(key, paramMap.get(key));
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            }
            NCSetCfgInfo("CONFIG_CONTENT", json.toString());
            return;
        }
        LogUtils.i("trace", "No setCfgInfoToJni: isLoadLibrarySuccess = " + isLoadLibrarySuccess);
    }
}
