package com.sina.weibo.sdk.cmd;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Pair;
import com.netease.ntsharesdk.Platform;
import com.sina.weibo.sdk.WeiboAppManager;
import com.sina.weibo.sdk.exception.WeiboException;
import com.sina.weibo.sdk.net.NetUtils;
import com.sina.weibo.sdk.net.WeiboParameters;
import com.sina.weibo.sdk.utils.LogUtil;
import com.sina.weibo.sdk.utils.MD5;
import com.sina.weibo.sdk.utils.NetworkHelper;
import com.sina.weibo.sdk.utils.ResourceManager;
import com.sina.weibo.sdk.utils.SDKNotification;
import java.io.File;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AppInstallCmdExecutor implements CmdExecutor<AppInstallCmd> {
    private static final int MESSAGE_DO_CMD = 1;
    private static final int MESSAGE_QUIT_LOOP = 2;
    private boolean isStarted = false;
    private Context mContext;
    private InstallHandler mHandler;
    private Looper mLooper;
    private HandlerThread thread;
    private static final String WB_APK_FILE_DIR = Environment.getExternalStorageDirectory() + "/Android/org_share_data/";
    private static final String TAG = AppInstallCmdExecutor.class.getName();

    public AppInstallCmdExecutor(Context ctx) {
        this.mContext = ctx.getApplicationContext();
    }

    /* loaded from: classes.dex */
    private static final class NOTIFICATION_CONSTANTS {
        private static final int NOTIFICATIONID = 1;
        private static final String WEIBO = "Weibo";
        private static final String WEIBO_ZH_CN = "微博";
        private static final String WEIBO_ZH_TW = "微博";

        private NOTIFICATION_CONSTANTS() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class InstallHandler extends Handler {
        public InstallHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int msgWhat = msg.what;
            switch (msgWhat) {
                case 1:
                    AppInstallCmdExecutor.this.handleCmd((AppInstallCmd) msg.obj);
                    return;
                case 2:
                    AppInstallCmdExecutor.this.mLooper.quit();
                    AppInstallCmdExecutor.this.isStarted = false;
                    return;
                default:
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCmd(AppInstallCmd cmd) {
        boolean needActivate = needActivate(this.mContext, cmd);
        if (needActivate) {
            String dir = WB_APK_FILE_DIR;
            String downloadUrl = cmd.getDownloadUrl();
            long versionCode = cmd.getAppVersion();
            Pair<Integer, File> pair = walkDir(this.mContext, dir, cmd);
            if (pair != null && pair.second != null && ((Integer) pair.first).intValue() >= versionCode) {
                showNotification(this.mContext, cmd, ((File) pair.second).getAbsolutePath());
                return;
            }
            if (!NetworkHelper.isWifiValid(this.mContext) || TextUtils.isEmpty(downloadUrl)) {
                return;
            }
            String filePath = "";
            try {
                try {
                    String redirectUrl = NetUtils.internalGetRedirectUri(this.mContext, downloadUrl, "GET", new WeiboParameters(""));
                    String fileName = generateSaveFileName(redirectUrl);
                    if (TextUtils.isEmpty(fileName) || !fileName.endsWith(".apk")) {
                        LogUtil.e(TAG, "redirectDownloadUrl is illeagle");
                        if (!TextUtils.isEmpty("")) {
                            showNotification(this.mContext, cmd, "");
                        }
                    } else {
                        filePath = NetUtils.internalDownloadFile(this.mContext, redirectUrl, dir, fileName);
                        if (!TextUtils.isEmpty(filePath)) {
                            showNotification(this.mContext, cmd, filePath);
                        }
                    }
                } catch (WeiboException e) {
                    e.printStackTrace();
                    if (TextUtils.isEmpty(filePath)) {
                        return;
                    }
                    showNotification(this.mContext, cmd, filePath);
                }
            } catch (Throwable th) {
                if (!TextUtils.isEmpty(filePath)) {
                    showNotification(this.mContext, cmd, filePath);
                }
                throw th;
            }
        }
    }

    private static boolean needActivate(Context ctx, AppInstallCmd cmd) {
        List<String> packages = cmd.getAppPackage();
        if (packages == null || packages.size() == 0 || TextUtils.isEmpty(cmd.getAppSign()) || TextUtils.isEmpty(cmd.getDownloadUrl()) || TextUtils.isEmpty(cmd.getNotificationText())) {
            return false;
        }
        if (packages.contains("com.sina.weibo")) {
            WeiboAppManager.WeiboInfo mWeiboInfo = WeiboAppManager.getInstance(ctx).getWeiboInfo();
            return mWeiboInfo == null || !mWeiboInfo.isLegal();
        }
        for (String packageName : packages) {
            boolean installed = checkApkInstalled(ctx, packageName);
            if (installed) {
                return false;
            }
        }
        return true;
    }

    private static boolean checkApkInstalled(Context ctx, String packageName) {
        if (TextUtils.isEmpty(packageName)) {
            return false;
        }
        try {
            PackageInfo info = ctx.getPackageManager().getPackageInfo(packageName, 1);
            return info != null;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    public void start() {
        if (!this.isStarted) {
            this.isStarted = true;
            this.thread = new HandlerThread("");
            this.thread.start();
            this.mLooper = this.thread.getLooper();
            this.mHandler = new InstallHandler(this.mLooper);
        }
    }

    public void stop() {
        if (this.thread == null || this.mHandler == null) {
            LogUtil.w(TAG, "no thread running. please call start method first!");
            return;
        }
        Message msg = this.mHandler.obtainMessage();
        msg.what = 2;
        this.mHandler.sendMessage(msg);
    }

    @Override // com.sina.weibo.sdk.cmd.CmdExecutor
    public boolean doExecutor(AppInstallCmd cmd) {
        if (this.thread == null || this.mHandler == null) {
            throw new RuntimeException("no thread running. please call start method first!");
        }
        if (cmd != null) {
            Message msg = this.mHandler.obtainMessage();
            msg.what = 1;
            msg.obj = cmd;
            this.mHandler.sendMessage(msg);
            return false;
        }
        return false;
    }

    private static Pair<Integer, File> walkDir(Context ctx, String dir, AppInstallCmd cmd) {
        File[] files;
        if (TextUtils.isEmpty(dir)) {
            return null;
        }
        File dirFile = new File(dir);
        if (!dirFile.exists() || !dirFile.isDirectory() || (files = dirFile.listFiles()) == null) {
            return null;
        }
        int newestVersion = 0;
        File weiboApkFile = null;
        for (File file : files) {
            String fileName = file.getName();
            if (file.isFile() && fileName.endsWith(".apk")) {
                PackageManager packageManager = ctx.getPackageManager();
                PackageInfo pkgInfo = packageManager.getPackageArchiveInfo(file.getAbsolutePath(), 64);
                boolean isSpecifiedApk = isSpecifiedApk(pkgInfo, cmd.getAppPackage(), cmd.getAppSign());
                if (isSpecifiedApk && pkgInfo.versionCode > newestVersion) {
                    newestVersion = pkgInfo.versionCode;
                    weiboApkFile = file;
                }
            }
        }
        return new Pair<>(Integer.valueOf(newestVersion), weiboApkFile);
    }

    private static boolean isSpecifiedApk(PackageInfo pkgInfo, List<String> packageNames, String appSign) {
        boolean packageChecked = false;
        Iterator<String> it = packageNames.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            String packageName = it.next();
            if (checkPackageName(pkgInfo, packageName)) {
                packageChecked = true;
                break;
            }
        }
        boolean signChecked = checkApkSign(pkgInfo, appSign);
        return packageChecked && signChecked;
    }

    private static boolean checkPackageName(PackageInfo pkgInfo, String packageName) {
        if (pkgInfo == null) {
            return false;
        }
        String pkgName = pkgInfo.packageName;
        return packageName.equals(pkgName);
    }

    private static boolean checkApkSign(PackageInfo pkgInfo, String appSign) {
        if (pkgInfo == null) {
            return false;
        }
        if (pkgInfo.signatures == null) {
            return Build.VERSION.SDK_INT < 11;
        }
        String md5Sign = "";
        for (int j = 0; j < pkgInfo.signatures.length; j++) {
            byte[] str = pkgInfo.signatures[j].toByteArray();
            if (str != null) {
                md5Sign = MD5.hexdigest(str);
            }
        }
        if (md5Sign != null) {
            return md5Sign.equals(appSign);
        }
        return false;
    }

    private static String generateSaveFileName(String downloadUrl) {
        int index = downloadUrl.lastIndexOf("/");
        if (index == -1) {
            return "";
        }
        String fileName = downloadUrl.substring(index + 1, downloadUrl.length());
        return fileName;
    }

    private static void showNotification(Context ctx, AppInstallCmd cmd, String apkPath) {
        SDKNotification.SDKNotificationBuilder.buildUpon().setNotificationContent(cmd.getNotificationText()).setNotificationPendingIntent(buildInstallApkIntent(ctx, apkPath)).setNotificationTitle(getNotificationTitle(ctx, cmd.getNotificationTitle())).setTickerText(cmd.getNotificationText()).build(ctx).show(1);
    }

    private static PendingIntent buildInstallApkIntent(Context ctx, String filePath) {
        if (!TextUtils.isEmpty(filePath)) {
            Intent intentInstall = new Intent("android.intent.action.VIEW");
            Uri localUri = Uri.fromFile(new File(filePath));
            intentInstall.setDataAndType(localUri, "application/vnd.android.package-archive");
            PendingIntent pendingIntent = PendingIntent.getActivity(ctx, 0, intentInstall, 16);
            return pendingIntent;
        }
        Intent intent = new Intent();
        PendingIntent pendingIntent2 = PendingIntent.getActivity(ctx, 0, intent, 16);
        return pendingIntent2;
    }

    private static String getNotificationTitle(Context ctx, String title) {
        if (TextUtils.isEmpty(title)) {
            return ResourceManager.getString(ctx, Platform.WEIBO, "微博", "微博");
        }
        return title;
    }
}
