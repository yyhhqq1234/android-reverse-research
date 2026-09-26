package com.netease.pushservice;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import com.netease.environment.config.SdkConstants;
import com.netease.inner.pushclient.NativePushData;
import com.netease.inner.pushclient.PushClientReceiver;
import com.netease.ntunisdk.base.PatchPlaceholder;
import com.netease.push.proto.ProtoClientWrapper;
import com.netease.push.utils.AppInfo;
import com.netease.push.utils.Crypto;
import com.netease.push.utils.Notifier;
import com.netease.push.utils.NotifyMessage;
import com.netease.push.utils.PushConstants;
import com.netease.push.utils.PushSetting;
import com.netease.pushclient.PushManager;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public class PushServiceHelper {
    private static final String TAG = "NGPush_" + PushServiceHelper.class.getSimpleName();
    private static PushServiceHelper s_pushServiceHelper = new PushServiceHelper();
    private HashMap<String, AppInfo> m_packageAppInfoMap = new HashMap<>();
    private PushServiceInfo m_serviceInfo = new PushServiceInfo();
    private TaskSubmitter m_taskSubmitter = new TaskSubmitter();
    private Network m_network = null;
    private PushService m_pushService = null;
    private long m_recvTimeError = 60;

    private void patchPlaceholder() {
        Log.i(TAG, PatchPlaceholder.class.getSimpleName());
    }

    public static PushServiceHelper getInstance() {
        return s_pushServiceHelper;
    }

    public boolean init(PushService pushService) {
        Log.i(TAG, "init");
        Log.i(TAG, "pushService:" + pushService);
        if (pushService == null) {
            return false;
        }
        this.m_network = new Network();
        this.m_pushService = pushService;
        this.m_serviceInfo.mDevId = PushSetting.getDevId(this.m_pushService);
        String serviceType = PushSetting.getServiceType(this.m_pushService, this.m_pushService.getPackageName());
        String regid_gcm = PushSetting.getRegistrationID(this.m_pushService, PushConstants.GCM);
        String regid_miui = PushSetting.getRegistrationID(this.m_pushService, PushConstants.MIUI);
        String regid_huawei = PushSetting.getRegistrationID(this.m_pushService, PushConstants.HUAWEI);
        Log.e(TAG, "serviceType=" + serviceType);
        Log.e(TAG, "regid_niepush:" + this.m_serviceInfo.mDevId);
        Log.e(TAG, "regid_gcm:" + regid_gcm);
        Log.e(TAG, "regid_miui:" + regid_miui);
        Log.e(TAG, "regid_huawei:" + regid_huawei);
        String contextpkg = this.m_pushService.getPackageName();
        Log.d(TAG, "contextpkg:" + contextpkg);
        Log.d(TAG, "contextver:18");
        Set<String> packageSet = PushSetting.getPackages(this.m_pushService);
        Log.d(TAG, "packageSet:" + packageSet);
        if (packageSet != null) {
            List<PackageInfo> packageList = this.m_pushService.getPackageManager().getInstalledPackages(0);
            for (PackageInfo packageInfo : packageList) {
                String packageName = packageInfo.packageName;
                if (packageSet.contains(packageName)) {
                    Log.i(TAG, "read package:" + packageName);
                    AppInfo appInfo = PushSetting.getAppInfo(this.m_pushService, packageName);
                    Log.i(TAG, "appInfo.mbFirstStart:" + appInfo.mbFirstStart);
                    if (appInfo != null) {
                        this.m_packageAppInfoMap.put(packageName, appInfo);
                        Log.i(TAG, "put package:" + packageName);
                    }
                }
            }
            if (this.m_packageAppInfoMap.size() != packageSet.size()) {
                PushSetting.setPackages(this.m_pushService, this.m_packageAppInfoMap.keySet());
            }
        } else {
            this.m_packageAppInfoMap.put(contextpkg, new AppInfo(contextpkg));
            PushSetting.setPackages(this.m_pushService, this.m_packageAppInfoMap.keySet());
        }
        String runningpkg = PushSetting.getCurPkg(this.m_pushService);
        int runningver = PushSetting.getCurVerCode(this.m_pushService);
        Log.d(TAG, "runningpkg:" + runningpkg);
        Log.d(TAG, "runningver:" + runningver);
        if (!TextUtils.isEmpty(runningpkg) && !contextpkg.equals(runningpkg)) {
            Log.e(TAG, "incorrect service started");
            Log.e(TAG, "contextpkg:" + contextpkg);
            Log.e(TAG, "runningpkg:" + runningpkg);
            pushService.stop();
            return false;
        }
        for (AppInfo appInfo2 : this.m_packageAppInfoMap.values()) {
            Log.d(TAG, "appInfo.mPackageName:" + appInfo2.mPackageName);
            List<NativePushData> nativePushDatas = PushSetting.getAllOtherNativeNotifications(this.m_pushService, appInfo2.mPackageName);
            if (nativePushDatas != null) {
                for (NativePushData nativePushData : nativePushDatas) {
                    Log.d(TAG, "startAlarm pushName:" + nativePushData.getPushName());
                    nativePushData.startAlarm(this.m_pushService, appInfo2.mPackageName);
                }
            }
        }
        connect(false);
        return true;
    }

    public PushService getPushService() {
        return this.m_pushService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void register(String packageName) {
        Log.i(TAG, "register");
        Log.d(TAG, "packageName:" + packageName);
        Log.d(TAG, "m_serviceInfo.mDevId:" + this.m_serviceInfo.mDevId);
        if (!TextUtils.isEmpty(packageName)) {
            if (!this.m_packageAppInfoMap.containsKey(packageName)) {
                Log.d(TAG, "new AppInfo");
                AppInfo appInfo = new AppInfo(packageName);
                this.m_packageAppInfoMap.put(packageName, appInfo);
                PushSetting.setPackages(this.m_pushService, this.m_packageAppInfoMap.keySet());
                List<NativePushData> nativePushDatas = PushSetting.getAllOtherNativeNotifications(this.m_pushService, appInfo.mPackageName);
                if (nativePushDatas != null) {
                    for (NativePushData nativePushData : nativePushDatas) {
                        nativePushData.startAlarm(this.m_pushService, appInfo.mPackageName);
                    }
                    return;
                }
                return;
            }
            this.m_packageAppInfoMap.get(packageName);
        }
    }

    private void registerToServer(String service) {
        if (!TextUtils.isEmpty(this.m_serviceInfo.mDevId)) {
            ProtoClientWrapper.DevServiceInfo devServiceInfo = new ProtoClientWrapper.DevServiceInfo();
            devServiceInfo.id = this.m_serviceInfo.mDevId;
            devServiceInfo.service = service;
            devServiceInfo.time = 0L;
            Log.e(TAG, "sendData, REGISTER_TYPE");
            getNetwork().sendData((byte) 6, devServiceInfo, "");
        }
    }

    private void checkFirstStart(AppInfo appInfo) {
        Log.d(TAG, "checkFirstStart");
        Log.d(TAG, "appInfo.mbFirstStart:" + appInfo.mbFirstStart);
        Log.d(TAG, "appInfo.mPackageName:" + appInfo.mPackageName);
        Log.d(TAG, "appInfo.mLastReceiveTime:" + appInfo.mLastReceiveTime);
        if (!TextUtils.isEmpty(this.m_serviceInfo.mDevId)) {
            if (appInfo.mbFirstStart) {
                appInfo.mbFirstStart = false;
                PushSetting.setFirstStart(this.m_pushService, appInfo.mPackageName, false);
            }
            Intent intent = PushClientReceiver.createNewIDIntent();
            intent.putExtra(PushConstants.INTENT_DEVID_NAME, this.m_serviceInfo.mDevId);
            intent.setPackage(appInfo.mPackageName);
            Log.i(TAG, "broadcast createNewIDIntent");
            this.m_pushService.sendBroadcast(intent);
        }
    }

    private void updateToken(String token) {
        Log.e(TAG, "updateToken, get token from server:" + token);
        Log.d(TAG, "PushManager.getContext():" + PushManager.getContext());
        this.m_serviceInfo.mDevId = token;
        PushSetting.setDevId(this.m_pushService, this.m_serviceInfo.mDevId);
        if (PushManager.getContext() != null) {
            PushSetting.setDevId(PushManager.getContext(), this.m_serviceInfo.mDevId);
        }
        for (AppInfo appInfo : this.m_packageAppInfoMap.values()) {
            checkFirstStart(appInfo);
        }
        refreshToken();
        for (AppInfo appInfo2 : this.m_packageAppInfoMap.values()) {
            registerToServer(appInfo2.mPackageName);
        }
    }

    private void requireToken() {
        Log.i(TAG, "requireToken");
        String sModel = Build.MODEL;
        WindowManager wm = (WindowManager) this.m_pushService.getSystemService("window");
        Display display = wm.getDefaultDisplay();
        int width = display.getWidth();
        int height = display.getHeight();
        String sVersion = String.valueOf(Build.VERSION.RELEASE) + "_" + Build.VERSION.SDK;
        WifiManager wifiMgr = (WifiManager) this.m_pushService.getSystemService("wifi");
        WifiInfo info = wifiMgr == null ? null : wifiMgr.getConnectionInfo();
        String sMac = info == null ? "" : info.getMacAddress();
        if (sMac == null) {
            sMac = "";
        }
        ProtoClientWrapper.DevInfo devInfo = new ProtoClientWrapper.DevInfo();
        devInfo.model = sModel;
        devInfo.screen = String.format("%d*%d", Integer.valueOf(width), Integer.valueOf(height));
        devInfo.os = SdkConstants.SYSTEM;
        devInfo.osver = sVersion;
        devInfo.mac = sMac;
        devInfo.id = this.m_serviceInfo.createUUID(this.m_pushService);
        Log.e(TAG, "sendData, SET_NEW_ID_TYPE");
        Log.d(TAG, "model:" + devInfo.model);
        Log.d(TAG, "screen" + devInfo.screen);
        Log.d(TAG, "os:" + devInfo.os);
        Log.d(TAG, "osver:" + devInfo.osver);
        Log.d(TAG, "mac:" + devInfo.mac);
        Log.d(TAG, "id:" + devInfo.id);
        getNetwork().sendData((byte) 2, devInfo, "");
    }

    public void refreshToken() {
        String token = this.m_serviceInfo.mDevId;
        Log.i(TAG, "refreshToken");
        Log.d(TAG, "token:" + this.m_serviceInfo.mDevId);
        Log.d(TAG, "m_packageAppInfoMap.size():" + this.m_packageAppInfoMap.size());
        if (!TextUtils.isEmpty(token)) {
            ProtoClientWrapper.DevServiceInfos devServiceInfos = new ProtoClientWrapper.DevServiceInfos();
            devServiceInfos.id = token;
            devServiceInfos.ver = "18";
            devServiceInfos.key = Crypto.genAESKey();
            devServiceInfos.serviceInfos = new ProtoClientWrapper.ServiceInfo[this.m_packageAppInfoMap.size()];
            int count = 0;
            for (AppInfo appInfo : this.m_packageAppInfoMap.values()) {
                ProtoClientWrapper.ServiceInfo serviceInfo = new ProtoClientWrapper.ServiceInfo();
                serviceInfo.service = appInfo.mPackageName;
                serviceInfo.time = appInfo.mLastReceiveTime;
                devServiceInfos.serviceInfos[count] = serviceInfo;
                count++;
            }
            Log.e(TAG, "sendData, LOGIN_TYPE");
            getNetwork().sendData((byte) 4, devServiceInfos, devServiceInfos.key);
            return;
        }
        requireToken();
    }

    public void processCommand(PushService pushService, Intent intent) {
        Log.i(TAG, "processCommand");
        Log.d(TAG, "pushService:" + pushService);
        Log.d(TAG, "intent:" + intent);
        if (intent != null) {
            String method = intent.getStringExtra("method");
            final String packageName = intent.getStringExtra(PushConstants.INTENT_PACKAGE_NAME);
            Log.d(TAG, "method:" + method);
            Log.d(TAG, "packageName:" + packageName);
            Boolean needNiepush = Boolean.valueOf(PushSetting.getCurNeedNiepush(this.m_pushService));
            Log.d(TAG, "needNiepush=" + needNiepush);
            if (PushConstants.SERVICE_METHOD_RESTART.equals(method)) {
                if (!TextUtils.isEmpty(packageName)) {
                    pushService.restart(packageName);
                    return;
                }
                return;
            }
            if (PushConstants.SERVICE_METHOD_STOP.equals(method)) {
                pushService.stop();
                return;
            }
            if (PushConstants.SERVICE_METHOD_SETSOUND.equals(method)) {
                boolean flag = intent.getBooleanExtra(PushConstants.INTENT_FLAG_NAME, false);
                enableSound(packageName, flag);
                return;
            }
            if (PushConstants.SERVICE_METHOD_SETVIBRATE.equals(method)) {
                boolean flag2 = intent.getBooleanExtra(PushConstants.INTENT_FLAG_NAME, false);
                enableVibrate(packageName, flag2);
                return;
            }
            if (PushConstants.SERVICE_METHOD_REPEATPROTECT.equals(method)) {
                boolean flag3 = intent.getBooleanExtra(PushConstants.INTENT_FLAG_NAME, false);
                enableRepeatProtect(packageName, flag3);
                return;
            }
            if ("register".equals(method)) {
                if (needNiepush.booleanValue()) {
                    this.m_taskSubmitter.submit(new Runnable() { // from class: com.netease.pushservice.PushServiceHelper.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Log.i(PushServiceHelper.TAG, "SERVICE_METHOD_REGISTER");
                            PushServiceHelper.this.register(packageName);
                        }
                    });
                }
            } else {
                if (PushConstants.SERVICE_METHOD_REMOVEAPP.equals(method)) {
                    this.m_taskSubmitter.submit(new Runnable() { // from class: com.netease.pushservice.PushServiceHelper.2
                        @Override // java.lang.Runnable
                        public void run() {
                            PushServiceHelper.this.removeApp(packageName);
                        }
                    });
                    return;
                }
                if (PushConstants.SERVICE_METHOD_NETWORKCONNECT.equals(method)) {
                    if (needNiepush.booleanValue()) {
                        connect(false);
                    }
                } else {
                    if (PushConstants.SERVICE_METHOD_NETWORKDISCONNECT.equals(method)) {
                        if (needNiepush.booleanValue()) {
                            disconnect();
                            return;
                        }
                        return;
                    }
                    Log.d(TAG, "not handled method:" + method);
                }
            }
        }
    }

    private void enableSound(String packageName, boolean flag) {
        Log.d(TAG, "enableSound");
        Log.d(TAG, "packageName:" + packageName);
        Log.d(TAG, "flag:" + flag);
        Log.d(TAG, "pid:" + Process.myPid());
        AppInfo appInfo = this.m_packageAppInfoMap.get(packageName);
        if (appInfo != null && appInfo.mbEnableSound != flag) {
            appInfo.mbEnableSound = flag;
        }
    }

    private void enableVibrate(String packageName, boolean flag) {
        Log.d(TAG, "enableVibrate");
        Log.d(TAG, "packageName:" + packageName);
        Log.d(TAG, "flag:" + flag);
        Log.d(TAG, "pid:" + Process.myPid());
        AppInfo appInfo = this.m_packageAppInfoMap.get(packageName);
        if (appInfo != null && appInfo.mbEnableVibrate != flag) {
            appInfo.mbEnableVibrate = flag;
        }
    }

    private void enableRepeatProtect(String packageName, boolean flag) {
        Log.d(TAG, "repeatprotect");
        Log.d(TAG, "packageName:" + packageName);
        Log.d(TAG, "flag:" + flag);
        Log.d(TAG, "pid:" + Process.myPid());
        AppInfo appInfo = this.m_packageAppInfoMap.get(packageName);
        if (appInfo != null && appInfo.mbRepeatProtect != flag) {
            appInfo.mbRepeatProtect = flag;
        }
    }

    public void removeApp(String packageName) {
        Log.i(TAG, "removeApp");
        Log.d(TAG, "packageName:" + packageName);
        Log.d(TAG, "pid:" + Process.myPid());
        AppInfo appInfo = this.m_packageAppInfoMap.get(packageName);
        if (appInfo != null) {
            ProtoClientWrapper.DevServiceInfo devServiceInfo = new ProtoClientWrapper.DevServiceInfo();
            devServiceInfo.id = this.m_serviceInfo.mDevId;
            devServiceInfo.service = appInfo.mPackageName;
            devServiceInfo.time = appInfo.mLastReceiveTime;
            Log.e(TAG, "sendData, UNREGISTER_TYPE");
            getNetwork().sendData((byte) 7, devServiceInfo, "");
            this.m_packageAppInfoMap.remove(packageName);
            PushSetting.setPackages(this.m_pushService, this.m_packageAppInfoMap.keySet());
            return;
        }
        Log.d(TAG, "appinfo is null");
    }

    public void notifyMessage(String packageName, NotifyMessage notify) {
        AppInfo appInfo;
        Log.i(TAG, "notifyMessage");
        Log.d(TAG, "packageName:" + packageName);
        Log.d(TAG, "notify:" + notify);
        if (!TextUtils.isEmpty(packageName) && notify != null && (appInfo = this.m_packageAppInfoMap.get(packageName)) != null) {
            Notifier notifier = new Notifier(this.m_pushService);
            notifier.notify(notify, appInfo);
        }
    }

    public void onReceive(ProtoClientWrapper.Packet packet) {
        Log.i(TAG, "onReceive");
        Log.d(TAG, "packet:" + packet);
        Log.e(TAG, "got cmd:" + ProtoClientWrapper.getTypeName(packet.type));
        if (50 == packet.type) {
            Log.e(TAG, "PUSH_TYPE from server");
            try {
                handlePush(packet);
                return;
            } catch (Exception e) {
                Log.d(TAG, "handlePush exception");
                e.printStackTrace();
                return;
            }
        }
        if (52 == packet.type) {
            Log.e(TAG, "NEW_ID_TYPE from server");
            try {
                ProtoClientWrapper.NewIdInfo newIdInfo = ProtoClientWrapper.NewIdInfo.UnmarshalNewIdInfo(packet.data);
                updateToken(newIdInfo.id);
                return;
            } catch (Exception e2) {
                Log.d(TAG, "updateToken exception");
                e2.printStackTrace();
                return;
            }
        }
        if (51 == packet.type) {
            Log.e(TAG, "RESET_TYPE from server");
            this.m_serviceInfo.resetUUID();
            refreshToken();
            return;
        }
        Log.e(TAG, "error cmd");
    }

    public void handlePush(ProtoClientWrapper.Packet packet) {
        Log.i(TAG, "handlePush");
        HashMap<String, Long> gotTimeMap = new HashMap<>();
        try {
            ProtoClientWrapper.MessageInfo messageInfo = ProtoClientWrapper.MessageInfo.unmarshalMessageInfo(packet.data);
            if (!this.m_serviceInfo.mDevId.equals(messageInfo.id)) {
                Log.d(TAG, "deviceID mismatch:");
                Log.d(TAG, "got deviceID:" + messageInfo.id);
                Log.d(TAG, " my deviceID:" + this.m_serviceInfo.mDevId);
                return;
            }
            for (ProtoClientWrapper.Message message : messageInfo.messages) {
                Log.i(TAG, "got a message");
                Log.d(TAG, "packagename:" + message.service);
                Log.d(TAG, "title:" + message.title);
                Log.d(TAG, "content:" + message.content);
                Log.d(TAG, "ext:" + message.ext);
                Log.d(TAG, "time:" + message.time);
                String packagename = message.service;
                if (TextUtils.isEmpty(packagename)) {
                    Log.e(TAG, "packagename is empty");
                } else {
                    AppInfo appInfo = this.m_packageAppInfoMap.get(packagename);
                    if (appInfo == null) {
                        Log.e(TAG, "not registered packagename:" + packagename);
                    } else if (message.time <= appInfo.mLastReceiveTime - this.m_recvTimeError) {
                        Log.e(TAG, "message is out of date:");
                        Log.e(TAG, "appInfo.mLastReceiveTime:" + appInfo.mLastReceiveTime);
                        Log.e(TAG, "message.time:" + message.time);
                    } else if (!TextUtils.isEmpty(message.packagename) && !message.packagename.equals(appInfo.mPackageName)) {
                        Log.e(TAG, "packagename mismatch:");
                        Log.e(TAG, "message.packagename:" + message.packagename);
                        Log.e(TAG, "appInfo.mPackageName:" + appInfo.mPackageName);
                    } else if (appInfo.filterMessage(message)) {
                        Log.d(TAG, "message is filtered");
                    } else {
                        if (gotTimeMap.containsKey(packagename)) {
                            Long lastTime = gotTimeMap.get(packagename);
                            if (message.time > lastTime.longValue()) {
                                gotTimeMap.put(packagename, Long.valueOf(message.time));
                            }
                        } else {
                            gotTimeMap.put(packagename, Long.valueOf(message.time));
                        }
                        NotifyMessage notifyMessage = new NotifyMessage(message.content, message.title, message.ext);
                        try {
                            String sMessage = notifyMessage.writeToJsonString();
                            Intent intent = PushClientReceiver.createMessageIntent();
                            intent.putExtra("message", sMessage);
                            intent.putExtra(PushConstants.INTENT_LASTTIME_NAME, message.time);
                            intent.setPackage(packagename);
                            Log.d(TAG, "handlePush, sendBroadcast");
                            this.m_pushService.sendBroadcast(intent);
                        } catch (Exception e) {
                            Log.e(TAG, "writeToJsonString exception");
                            e.printStackTrace();
                            return;
                        }
                    }
                }
            }
            if (gotTimeMap.size() > 0) {
                ProtoClientWrapper.DevServiceInfos devServiceInfos = new ProtoClientWrapper.DevServiceInfos();
                devServiceInfos.id = this.m_serviceInfo.mDevId;
                devServiceInfos.ver = "18";
                devServiceInfos.serviceInfos = new ProtoClientWrapper.ServiceInfo[gotTimeMap.size()];
                int count = 0;
                for (Map.Entry<String, Long> entry : gotTimeMap.entrySet()) {
                    ProtoClientWrapper.ServiceInfo serviceInfo = new ProtoClientWrapper.ServiceInfo();
                    serviceInfo.service = entry.getKey();
                    serviceInfo.time = entry.getValue().longValue();
                    Log.d(TAG, "service:" + serviceInfo.service);
                    Log.d(TAG, "latest push time:" + serviceInfo.time);
                    devServiceInfos.serviceInfos[count] = serviceInfo;
                    count++;
                    AppInfo appInfo2 = this.m_packageAppInfoMap.get(serviceInfo.service);
                    if (appInfo2 != null) {
                        appInfo2.mLastReceiveTime = serviceInfo.time;
                    }
                }
                Log.e(TAG, "sendData, GOT_TIME_TYPE");
                getNetwork().sendData((byte) 5, devServiceInfos, "");
            }
        } catch (Exception e2) {
            Log.e(TAG, "unmarshalMessageInfo exception");
            e2.printStackTrace();
        }
    }

    public void stop() {
        Log.i(TAG, "stop");
        this.m_taskSubmitter.shutdown();
        getNetwork().stop();
    }

    /* loaded from: classes.dex */
    public class TaskSubmitter {
        final ExecutorService m_executorService = Executors.newSingleThreadExecutor();

        public TaskSubmitter() {
        }

        public Future submit(Runnable task) {
            if (this.m_executorService.isTerminated() || this.m_executorService.isShutdown() || task == null) {
                return null;
            }
            Future result = this.m_executorService.submit(task);
            return result;
        }

        public void shutdown() {
            this.m_executorService.shutdown();
        }
    }

    public TaskSubmitter getTaskSubmitter() {
        return this.m_taskSubmitter;
    }

    public Network getNetwork() {
        return this.m_network;
    }

    public void connect(boolean bSync) {
        Log.i(TAG, "connect, bSync:" + bSync);
        Log.d(TAG, "connect, this=" + this);
        Log.d(TAG, "connect, m_network=" + this.m_network);
        Boolean needNiepush = Boolean.valueOf(PushSetting.getCurNeedNiepush(this.m_pushService));
        Log.d(TAG, "needNiepush=" + needNiepush);
        if (needNiepush.booleanValue()) {
            if (bSync) {
                getNetwork().setEnable(true);
                getNetwork().connectAuto(this.m_pushService);
            } else {
                this.m_taskSubmitter.submit(new Runnable() { // from class: com.netease.pushservice.PushServiceHelper.3
                    @Override // java.lang.Runnable
                    public void run() {
                        PushServiceHelper.this.getNetwork().setEnable(true);
                        PushServiceHelper.this.getNetwork().connectAuto(PushServiceHelper.this.m_pushService);
                    }
                });
            }
        }
    }

    public void disconnect() {
        Log.i(TAG, "disconnect...");
        this.m_taskSubmitter.submit(new Runnable() { // from class: com.netease.pushservice.PushServiceHelper.4
            @Override // java.lang.Runnable
            public void run() {
                Log.d(PushServiceHelper.TAG, "disconnect+++");
                PushServiceHelper.this.getNetwork().disconnect();
                Log.d(PushServiceHelper.TAG, "disconnect---");
            }
        });
    }

    public PushServiceInfo getNotificationServiceInfo() {
        return this.m_serviceInfo;
    }

    public static Intent createServiceIntent() {
        Intent intent = new Intent(PushConstants.SERVICE_ACTION2);
        intent.addFlags(32);
        return intent;
    }

    public static Intent createMethodIntent() {
        Intent intent = createActiveMethodIntent();
        intent.addFlags(32);
        return intent;
    }

    public static Intent createActiveMethodIntent() {
        Intent intent = new Intent(PushConstants.SERVICE_ACTION_METHOD);
        intent.putExtra(PushConstants.METHOD_VER_NAME, 1);
        return intent;
    }

    public static void startPushService(Context context, Intent intent) {
        Log.i(TAG, "startPushService");
        intent.setClass(context, PushService.class);
        intent.addFlags(32);
        context.startService(intent);
    }

    public static void startActivePushService(Context context, Intent intent) {
        intent.setClass(context, PushService.class);
        context.startService(intent);
    }
}
