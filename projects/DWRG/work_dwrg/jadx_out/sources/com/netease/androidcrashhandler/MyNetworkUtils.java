package com.netease.androidcrashhandler;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.netease.androidcrashhandler.MyPostEntity;
import com.netease.androidcrashhandler.util.LogUtils;
import com.netease.download.Const;
import im.yixin.sdk.http.multipart.FilePart;
import im.yixin.sdk.http.multipart.StringPart;
import java.io.File;
import java.io.IOException;
import java.lang.Thread;
import java.util.HashSet;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

/* loaded from: classes.dex */
public class MyNetworkUtils {
    private static String TAG = "MyNetworkUtils";
    private MyPostEntity defaultPostEntity;
    private final ConcurrentLinkedQueue<MyPostEntity> postEntityQueue;
    MyPostThread postThread;
    private HashSet<String> postedEntities;
    private long sleepTime;
    private long waitingTime;

    private MyNetworkUtils() {
        this.defaultPostEntity = null;
        this.postedEntities = null;
        this.waitingTime = 3000L;
        this.sleepTime = 1000L;
        this.postThread = null;
        this.postEntityQueue = new ConcurrentLinkedQueue<>();
        this.defaultPostEntity = new MyPostEntity();
        this.postedEntities = new HashSet<>();
    }

    /* synthetic */ MyNetworkUtils(MyNetworkUtils myNetworkUtils) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class MyNetworkUtilsHolder {
        public static final MyNetworkUtils INSTANCE = new MyNetworkUtils(null);

        private MyNetworkUtilsHolder() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MyNetworkUtils getInstance() {
        return MyNetworkUtilsHolder.INSTANCE;
    }

    public boolean isNetworkAvailable(Context ctx) {
        ConnectivityManager connMgr = (ConnectivityManager) ctx.getSystemService("connectivity");
        NetworkInfo networkInfo = connMgr.getActiveNetworkInfo();
        return networkInfo != null && networkInfo.isAvailable() && networkInfo.isConnected();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void uploadCrashReportSystem(MyPostEntity entity) {
        LogUtils.i("trace", "[uploadCrashReportSystem]");
        entity.setURL(this.defaultPostEntity.getURL());
        post(entity);
    }

    public void postUserInfo(String urs, String uid, String user_name, String server_name) {
        MyPostEntity entity = new MyPostEntity(this.defaultPostEntity);
        entity.getFiles().clear();
        entity.setParam("error_type", "USER_INFO", false);
        entity.setParam("urs", urs, false);
        entity.setParam("uid", uid, false);
        entity.setParam("urs", user_name, false);
        entity.setParam("server_name", server_name, false);
        this.postEntityQueue.offer(entity);
        if (this.postThread == null || this.postThread.getState() == Thread.State.TERMINATED) {
            this.postThread = new MyPostThread();
            this.postThread.start();
        }
    }

    public void postUserInfo(String uid, String user_name, String server_name) {
        MyPostEntity entity = new MyPostEntity(this.defaultPostEntity);
        entity.getFiles().clear();
        entity.setParam("error_type", "USER_INFO", false);
        entity.setParam("uid", uid, false);
        entity.setParam("urs", user_name, false);
        entity.setParam("server_name", server_name, false);
        this.postEntityQueue.offer(entity);
        if (this.postThread == null || this.postThread.getState() == Thread.State.TERMINATED) {
            this.postThread = new MyPostThread();
            this.postThread.start();
        }
    }

    public void post(MyPostEntity entity) {
        LogUtils.i("trace", "[post]");
        if (entity == null) {
            LogUtils.i("trace", "[post] entity null");
            return;
        }
        if (!entity.getParams().containsKey("is_zip") && !entity.getFiles().isEmpty() && AndroidCrashHandler.getInstance() != null && AndroidCrashHandler.getInstance().getContext() != null) {
            try {
                MyFileUtils.getInstance().zip((String[]) entity.getFiles().keySet().toArray(new String[entity.getFiles().size()]), String.valueOf(entity.getParams().get("identify")) + ".zip");
                for (Map.Entry<String, MyPostEntity.FileForm> entry : entity.getFiles().entrySet()) {
                    MyFileUtils.getInstance().deleteFile(AndroidCrashHandler.getInstance().getContext().getFilesDir().getAbsolutePath(), entry.getKey());
                    LogUtils.i("trace", "post deleteFile：" + entry.getKey());
                }
                entity.getFiles().clear();
                File ZIPFile = new File(AndroidCrashHandler.getInstance().getContext().getFilesDir(), String.valueOf(entity.getParams().get("identify")) + ".zip");
                entity.setParam(Const.KEY_MD5, MyFileUtils.getInstance().getFileMD5(ZIPFile), false);
                entity.setFile(ZIPFile, String.valueOf(entity.getParams().get("identify")) + ".zip", FilePart.DEFAULT_CONTENT_TYPE);
                entity.setParam("is_zip", "true", false);
                saveParams(entity, entity.getParams().get("identify"), ".javacfg");
                LogUtils.i("trace", "[post] saveParams params:" + entity.getParams().toString());
            } catch (IOException e) {
                e.printStackTrace();
                return;
            }
        }
        if (!entity.getParams().containsKey("client_v")) {
            entity.setParam("client_v", AndroidCrashHandler.getInstance().getVersion(), false);
            LogUtils.i("trace", "post set client_v:" + AndroidCrashHandler.getInstance().getVersion());
        }
        String errorType = entity.getParams().containsKey("error_type") ? entity.getParams().get("error_type") : null;
        if ("ANDROID_NATIVE_ERROR".equals(errorType) && entity.getParams().containsKey("identify")) {
            String name = entity.getParams().get("identify");
            entity.getParams().remove("identify");
            entity.setParam("name", name, false);
            LogUtils.i("trace", "post setParam name:" + name);
            LogUtils.i("trace", "entity.getParams():" + entity.getParams().toString());
        }
        if (entity.getCallBack() == null) {
            entity.setCallBack(new MyPostCallBack() { // from class: com.netease.androidcrashhandler.MyNetworkUtils.1
                @Override // com.netease.androidcrashhandler.MyPostCallBack
                public void postCallBack(boolean result, MyPostEntity entity2) {
                    String name2;
                    LogUtils.i("trace", "------------------------------------------------------------");
                    LogUtils.i("trace", "postCallBack");
                    LogUtils.i("trace", "postCallBack result:" + result);
                    LogUtils.i("trace", "postCallBack entity URL:" + entity2.getURL());
                    LogUtils.i("trace", "postCallBack entity Files:" + entity2.getFiles().toString());
                    LogUtils.i("trace", "postCallBack entity Params:" + entity2.getParams().toString());
                    LogUtils.i("trace", "postCallBack entity BasicInfo:" + entity2.getBasicInfo().toString());
                    if (entity2.getParams().containsKey("identify")) {
                        String name3 = entity2.getParams().get("identify");
                        name2 = name3;
                    } else {
                        String name4 = entity2.getParams().get("name");
                        name2 = name4;
                    }
                    if (result) {
                        if (AndroidCrashHandler.getInstance() != null && AndroidCrashHandler.getInstance().getContext() != null) {
                            for (Map.Entry<String, MyPostEntity.FileForm> entry2 : entity2.getFiles().entrySet()) {
                                MyFileUtils.getInstance().deleteFile(AndroidCrashHandler.getInstance().getContext().getFilesDir().getAbsolutePath(), entry2.getKey());
                                LogUtils.i("trace", "postCallBack deleteFile：" + entry2.getKey());
                            }
                            MyFileUtils.getInstance().deleteFile(AndroidCrashHandler.getInstance().getContext().getFilesDir().getAbsolutePath(), String.valueOf(name2) + ".javacfg");
                            LogUtils.i("trace", "postCallBack deleteFile：" + name2 + ".javacfg");
                            MyFileUtils.getInstance().deleteFile(AndroidCrashHandler.getInstance().getContext().getFilesDir().getAbsolutePath(), "/cfgInfo.jnicfg");
                            String errorType2 = entity2.getParams().containsKey("error_type") ? entity2.getParams().get("error_type") : null;
                            if ("ANDROID_ANR".equals(errorType2)) {
                                MyFileUtils.getInstance().setANRProcessTime(System.currentTimeMillis());
                                LogUtils.i("trace", "postCallBack create file：MyANRTime.txt");
                            }
                            MyNetworkUtils.this.postedEntities.add(name2);
                        }
                    } else {
                        MyNetworkUtils.this.saveParams(entity2, name2, ".javacfg");
                        LogUtils.i("trace", "postCallBack create file：" + name2 + ".javacfg");
                    }
                    entity2.getFiles().clear();
                    LogUtils.i("trace", "postCallBack files clear");
                    LogUtils.i("trace", "postCallBack entity Files：" + entity2.getFiles().toString());
                    LogUtils.i("trace", "------------------------------------------------------------");
                }
            });
        }
        this.postEntityQueue.offer(entity);
        if (this.postThread == null || this.postThread.getState() == Thread.State.TERMINATED) {
            this.postThread = new MyPostThread();
            this.postThread.start();
        }
    }

    private void filterPost(MyPostEntity entity) {
        LogUtils.i("trace", "postedEntities=" + this.postedEntities.toString() + ", entity.getParams()=" + entity.getParams().get("identify"));
        if (this.postedEntities.contains(entity.getParams().get("identify"))) {
            MyPostCallBack callBack = entity.getCallBack();
            if (callBack != null) {
                callBack.postCallBack(true, entity);
                return;
            }
            if (AndroidCrashHandler.getInstance() != null && AndroidCrashHandler.getInstance().getContext() != null) {
                for (Map.Entry<String, MyPostEntity.FileForm> entry : entity.getFiles().entrySet()) {
                    MyFileUtils.getInstance().deleteFile(AndroidCrashHandler.getInstance().getContext().getFilesDir().getAbsolutePath(), entry.getKey());
                }
                entity.getFiles().clear();
                return;
            }
            return;
        }
        post(entity);
    }

    public void postErrorWithDeviceInfo(MyPostEntity entity) {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            AndroidCrashHandler.getInstance();
            entity.setParam("crash_time", String.valueOf((currentTimeMillis - AndroidCrashHandler.sResumeTime) / 1000), false);
            Map<String, String> diInfo = DeviceInfo.getInstance().getDeviceInfo();
            String name = "defaultErrorFileName";
            if (entity.getParams().containsKey("identify")) {
                String name2 = entity.getParams().get("identify");
                name = name2;
            }
            entity.setFile(MyFileUtils.getInstance().info2str(diInfo), String.valueOf(name) + ".di", StringPart.DEFAULT_CONTENT_TYPE);
            filterPost(entity);
        } catch (Exception e) {
        }
    }

    public void postScriptError(MyPostEntity entity) {
        LogUtils.i("trace", "------------------------------------------------------------");
        LogUtils.i("trace", "[postScriptError]");
        try {
            entity.setParam("error_type", "SCRIPT_ERROR", false);
            long currentTimeMillis = System.currentTimeMillis();
            AndroidCrashHandler.getInstance();
            entity.setParam("crash_time", String.valueOf((currentTimeMillis - AndroidCrashHandler.sResumeTime) / 1000), false);
            Map<String, String> diInfo = DeviceInfo.getInstance().getDeviceInfo();
            String name = "defaultScpiptErrorFileName";
            if (entity.getParams().containsKey("identify")) {
                String name2 = entity.getParams().get("identify");
                name = name2;
            }
            entity.setFile(MyFileUtils.getInstance().info2str(diInfo), String.valueOf(name) + ".di", StringPart.DEFAULT_CONTENT_TYPE);
            LogUtils.i("trace", "------------------------------------------------------------");
            LogUtils.i("trace", "post Script Error");
            LogUtils.i("trace", "entity info:");
            LogUtils.i("trace", entity.getInfo());
            filterPost(entity);
        } catch (Exception e) {
        }
    }

    public void postException(Throwable ex) {
        try {
            MyPostEntity entity = new MyPostEntity(this.defaultPostEntity);
            Map<String, String> diInfo = DeviceInfo.getInstance().getDeviceInfo();
            Map<String, String> exInfo = AndroidCrashHandler.getInstance().getExceptionInfo(ex);
            String name = exInfo.get("je_md5");
            LogUtils.i("trace", "je_md5=" + name);
            entity.setFile(MyFileUtils.getInstance().info2str(exInfo), String.valueOf(name) + ".aci", StringPart.DEFAULT_CONTENT_TYPE);
            entity.setFile(MyFileUtils.getInstance().info2str(diInfo), String.valueOf(name) + ".di", StringPart.DEFAULT_CONTENT_TYPE);
            entity.setParam("identify", name, false);
            entity.setParam("error_type", "ANDROID_JAVA_EXCEPTION", false);
            filterPost(entity);
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Queue<MyPostEntity> getPostEntityQueue() {
        return this.postEntityQueue;
    }

    public long getWaitingTime() {
        return this.waitingTime;
    }

    public synchronized void setWaitingTime(long waitingTime) {
        this.waitingTime = waitingTime;
        if (this.postThread != null && this.postThread.getState() != Thread.State.TERMINATED) {
            this.postThread.resetClcok();
        }
    }

    public long getSleepTime() {
        return this.sleepTime;
    }

    public synchronized void setSleepTime(long sleepTime) {
        this.sleepTime = sleepTime;
        if (this.postThread != null && this.postThread.getState() != Thread.State.TERMINATED) {
            this.postThread.resetClcok();
        }
    }

    public MyPostEntity getDefaultPostEntity() {
        if (this.defaultPostEntity == null) {
            this.defaultPostEntity = new MyPostEntity();
        }
        return this.defaultPostEntity;
    }

    public void setDefaultPostEntity(MyPostEntity defaultPostEntity) {
        this.defaultPostEntity = defaultPostEntity;
    }

    public boolean saveParams(MyPostEntity entity, String name, String suffix) {
        if (AndroidCrashHandler.getInstance().getFileUtils() == null) {
            return false;
        }
        boolean result = AndroidCrashHandler.getInstance().getFileUtils().config2File(entity, name, suffix);
        return result;
    }
}
