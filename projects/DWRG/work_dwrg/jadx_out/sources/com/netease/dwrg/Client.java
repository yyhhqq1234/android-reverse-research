package com.netease.dwrg;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.AlertDialog;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.bluetooth.BluetoothAdapter;
import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import android.graphics.Rect;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.FileObserver;
import android.os.Handler;
import android.os.Looper;
import android.os.StatFs;
import android.os.StrictMode;
import android.os.Vibrator;
import android.provider.MediaStore;
import android.provider.Settings;
import android.support.v4.os.EnvironmentCompat;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import com.alipay.android.phone.mrpc.core.RpcException;
import com.netease.androidcrashhandler.AndroidCrashHandler;
import com.netease.androidcrashhandler.DeviceInfo;
import com.netease.androidcrashhandler.MyCrashCallBack;
import com.netease.androidcrashhandler.MyNetworkUtils;
import com.netease.androidcrashhandler.MyPostEntity;
import com.netease.download.Const;
import com.netease.dwrg.CameraPreviewCapture;
import com.netease.environment.EnvManager;
import com.netease.neox.NativeInterface;
import com.netease.neox.NeoXClient;
import com.netease.neox.NeoXView;
import com.netease.neox.PluginApp;
import com.netease.neox.PluginManager;
import com.netease.neox.PluginNeoXView;
import com.netease.ntunisdk.base.SdkMgr;
import com.netease.push.utils.PushConstants;
import com.netease.pushclient.PushManager;
import com.netease.unisdk.gmbridge.UnisdkNtGmBridge;
import com.netease.unisdk.gmbridge.utils.ResIdReader;
import im.yixin.sdk.http.multipart.StringPart;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.net.InetAddress;
import java.net.InterfaceAddress;
import java.net.NetworkInterface;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class Client extends NeoXClient {
    static final int MBB_ABORT = 5;
    static final int MBB_CANCEL = 1;
    static final int MBB_IGNORE = 6;
    static final int MBB_NO = 3;
    static final int MBB_OK = 0;
    static final int MBB_RETRY = 4;
    static final int MBB_YES = 2;
    static final int MBT_ABORTRETRYIGNORE = 2;
    static final int MBT_OK = 0;
    static final int MBT_OKCANCEL = 1;
    static final int MBT_RETRYCANCEL = 5;
    static final int MBT_YESNO = 4;
    static final int MBT_YESNOCANCEL = 3;
    private int m_current_network_type;
    private SharedPreferences m_neox_config;
    private SharedPreferences m_neox_notif;
    private static long m_cancel_all_time = 0;
    private static final String[] MEDIA_PROJECTIONS = {"_data", "datetaken"};
    private static final String[] KEYWORDS = {"screenshot", "screen_shot", "screen-shot", "screen shot", "screencapture", "screen_capture", "screen-capture", "screen capture", "screencap", "screen_cap", "screen-cap", "screen cap"};
    private String m_udid = null;
    private NeoXView m_view = null;
    private String m_neox_root = null;
    private int m_root_view_height = 0;
    private int m_root_view_width = 0;
    private RingerModeReceiver m_ringermode_receiver = null;
    private AudioVolumeContentObserver m_audiovolume_observer = null;
    private HeadsetModeReceiver m_headset_receiver = null;
    private FileObserver m_screen_shot_ob = null;
    private MediaContentObserver mInternalObserver = null;
    private MediaContentObserver mExternalObserver = null;
    private final Handler mUiHandler = new Handler(Looper.getMainLooper());
    private boolean m_is_vkb_shown = false;
    private InputView m_input_view = null;
    Handler m_profile_info_timerHandler = null;
    Runnable m_profile_info_timerRunnable = null;
    boolean m_profile_have_runnable = false;
    NeoXLocationManager neoxLocationMgr = null;
    private NeoXWebView m_web_view = null;
    private CameraPreviewCapture m_camera_preview_capture = null;
    private String m_dump_game = "h55";
    private String m_dump_appkey = "24f58845a1e33e666296bcca8d4d78fa";
    private String m_dump_game_version = EnvironmentCompat.MEDIA_UNKNOWN;
    private String m_dump_basicinfo = null;
    private String m_dump_userdesc = null;
    private MovieView m_movie_view = null;
    private ClipboardManager m_clipboard = null;
    private String m_gmbridge_uid = null;
    private UnisdkNtGmBridge.ITokenSetter m_gmbridge_tokenSetter = null;
    private final List<String> sHasCallbackPaths = new ArrayList();
    ImagePicker m_image_picker = null;
    private Channel m_channel = null;
    boolean m_is_push_manager_init = false;

    public boolean isDeviceRooted() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.neox.NeoXClient
    public void initPlugins(PluginManager pluginMgr) {
        super.initPlugins(pluginMgr);
        pluginMgr.register(new PluginApp());
    }

    private int getStringId(String name) {
        int id = getResources().getIdentifier(name, ResIdReader.RES_TYPE_STRING, getPackageName());
        return id;
    }

    private int getDrawableId(String name) {
        int id = getResources().getIdentifier(name, ResIdReader.RES_TYPE_DRAWABLE, getPackageName());
        return id;
    }

    public String getDistroId() {
        try {
            BufferedReader reader = new BufferedReader(new InputStreamReader(getAssets().open("com.netease.apk_distro/config.json")));
            StringBuilder content = new StringBuilder();
            while (true) {
                String line = reader.readLine();
                if (line != null) {
                    content.append(line);
                } else {
                    JSONObject jsonContent = new JSONObject(content.toString());
                    String distroId = jsonContent.getString("distro_id");
                    return distroId;
                }
            }
        } catch (IOException e) {
            return "";
        } catch (JSONException e2) {
            return "";
        }
    }

    public String getDeviceModel() {
        return Build.MODEL;
    }

    /* JADX WARN: Unreachable blocks removed: 34, instructions: 66 */
    public boolean isRunningOnEmulator() {
        return false;
    }

    @Override // com.netease.neox.NeoXClient, android.app.NativeActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        NativeInterface.Dummy();
        super.onCreate(savedInstanceState);
        this.m_view = ((PluginNeoXView) getPlugin("NeoXView")).getView();
        this.m_neox_config = getSharedPreferences("neox_config", 0);
        this.m_neox_notif = getSharedPreferences("neox_notif", 0);
        this.m_neox_root = this.m_neox_config.getString("NeoXRoot", null);
        if (this.m_neox_root == null) {
            this.m_neox_root = getResources().getString(getStringId("neox_root"));
        }
        AndroidCrashHandler ach = AndroidCrashHandler.getInstance();
        MyNetworkUtils networkutils = ach.getNetworkUtils();
        MyPostEntity defaultEntity = networkutils.getDefaultPostEntity();
        defaultEntity.setParam("project", this.m_dump_game);
        defaultEntity.setParam("appkey", this.m_dump_appkey);
        ach.setCallBack(new MyCrashCallBack() { // from class: com.netease.dwrg.Client.1
            @Override // com.netease.androidcrashhandler.MyCrashCallBack
            public void crashCallBack() {
                File log = new File(Client.this.m_neox_root + "/log.txt");
                if (log.exists()) {
                    String crashID = AndroidCrashHandler.getInstance().getCrashIdentity();
                    File destFile = new File(this.getFilesDir() + "/" + crashID + ".other");
                    try {
                        if (!destFile.exists()) {
                            destFile.createNewFile();
                        }
                        InputStream in = new FileInputStream(log);
                        OutputStream out = new FileOutputStream(destFile);
                        byte[] buf = new byte[1024];
                        while (true) {
                            int len = in.read(buf);
                            if (len > 0) {
                                out.write(buf, 0, len);
                            } else {
                                in.close();
                                out.close();
                                MyPostEntity ent = AndroidCrashHandler.getInstance().getNetworkUtils().getDefaultPostEntity();
                                ent.setFile(log, crashID + ".other", StringPart.DEFAULT_CONTENT_TYPE);
                                return;
                            }
                        }
                    } catch (Exception e) {
                    }
                }
            }
        });
        ach.startCrashHandle(this);
        ach.setResVersion(this.m_dump_game_version);
        getWindow().addFlags(128);
        this.m_input_view = new InputView(this);
        this.m_channel = getChannel();
        this.m_channel.initialize();
        hideVirtualKeyboard();
        this.m_audiovolume_observer = new AudioVolumeContentObserver(this, new Handler());
        this.m_ringermode_receiver = new RingerModeReceiver();
        this.m_headset_receiver = new HeadsetModeReceiver();
        this.mInternalObserver = new MediaContentObserver(this, MediaStore.Images.Media.INTERNAL_CONTENT_URI, this.mUiHandler);
        this.mExternalObserver = new MediaContentObserver(this, MediaStore.Images.Media.EXTERNAL_CONTENT_URI, this.mUiHandler);
        getContentResolver().registerContentObserver(MediaStore.Images.Media.INTERNAL_CONTENT_URI, false, this.mInternalObserver);
        getContentResolver().registerContentObserver(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, false, this.mExternalObserver);
        final View activityRootView = getWindow().getDecorView().getRootView();
        this.m_root_view_height = activityRootView.getRootView().getHeight();
        this.m_root_view_width = activityRootView.getRootView().getWidth();
        activityRootView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.netease.dwrg.Client.2
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                Rect r = new Rect();
                activityRootView.getWindowVisibleDisplayFrame(r);
                int height = activityRootView.getRootView().getHeight();
                int width = activityRootView.getRootView().getWidth();
                if (Client.this.m_root_view_width != width || Client.this.m_root_view_height != height) {
                    Client.this.m_root_view_width = width;
                    Client.this.m_root_view_height = height;
                    NativeInterface.NativeOnWindowSizeChanged();
                    return;
                }
                if (r.left == 0 && r.top == 0) {
                    int heightDiff = height - (r.bottom - r.top);
                    if (heightDiff <= 100) {
                        if (Client.this.m_is_vkb_shown) {
                            if (Client.this.m_input_view != null && Client.this.m_input_view.isBorderless()) {
                                Client.this.m_input_view.inputFinish(false);
                            }
                            NativeInterface.NativeOnVirtualKeyboardHidden();
                        }
                        Client.this.m_is_vkb_shown = false;
                        if (Client.this.m_view != null) {
                            Client.this.m_view.delayedHide(RpcException.ErrorCode.SERVER_SESSIONSTATUS);
                            return;
                        }
                        return;
                    }
                    NativeInterface.NativeOnVirtualKeyboardShown(heightDiff);
                    Client.this.m_is_vkb_shown = true;
                }
            }
        });
        TelephonyManager tm = (TelephonyManager) getSystemService("phone");
        this.m_current_network_type = getNetworkType();
        PhoneStateListener callStateListener = new PhoneStateListener() { // from class: com.netease.dwrg.Client.3
            @Override // android.telephony.PhoneStateListener
            public void onDataConnectionStateChanged(int state, int networkType) {
                if (state != 2) {
                    networkType = -1;
                }
                if (networkType != Client.this.m_current_network_type) {
                    NativeInterface.NativeOnNetworkChanged(Client.this.m_current_network_type, networkType);
                }
                Client.this.m_current_network_type = networkType;
            }

            @Override // android.telephony.PhoneStateListener
            public void onCallStateChanged(int state, String incomingNumber) {
                if (1 == state) {
                    Log.i("NeoX", "RINGING, number: " + incomingNumber);
                    Client.this.moveTaskToBack(true);
                }
            }
        };
        tm.listen(callStateListener, 64);
        tm.listen(callStateListener, 32);
        this.m_profile_info_timerHandler = new Handler();
        this.m_profile_info_timerRunnable = new Runnable() { // from class: com.netease.dwrg.Client.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Process process = Runtime.getRuntime().exec("top -m 3 -n 1 -s cpu");
                    BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
                    String line = reader.readLine().trim();
                    while (line != null && !line.contains("CPU%")) {
                        line = reader.readLine().trim();
                    }
                    String[] infoArray = line.split("\\s+");
                    int cpuIndex = -1;
                    int memIndex = -1;
                    for (int i = 0; i < infoArray.length; i++) {
                        if (infoArray[i].contains("CPU%")) {
                            cpuIndex = i;
                        } else if (infoArray[i].contains("RSS")) {
                            memIndex = i;
                        }
                        if (cpuIndex != -1 && memIndex != -1) {
                            break;
                        }
                    }
                    for (String line2 = reader.readLine().trim(); line2 != null; line2 = reader.readLine().trim()) {
                        if (line2.contains("com.netease.dwrg")) {
                            String[] infoArray2 = line2.split("\\s+");
                            String cpuUsage = "None";
                            String memUsage = "None";
                            if (cpuIndex != -1) {
                                cpuUsage = infoArray2[cpuIndex];
                            }
                            if (memIndex != -1) {
                                memUsage = infoArray2[memIndex];
                            }
                            NativeInterface.NativeUpdateProfileInfo(cpuUsage, memUsage);
                        }
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                Client.this.m_profile_info_timerHandler.postDelayed(this, 5000L);
            }
        };
        if (Build.VERSION.SDK_INT >= 11) {
            this.m_clipboard = (ClipboardManager) getSystemService("clipboard");
        }
    }

    @Override // com.netease.neox.NeoXClient, android.app.NativeActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        if (this.m_camera_preview_capture != null) {
            this.m_camera_preview_capture.onPause();
        }
        UnisdkNtGmBridge.ntOnPause();
        SdkMgr.getInst().handleOnPause();
        if (this.m_channel != null) {
            this.m_channel.on_pause();
        }
    }

    @Override // com.netease.neox.NeoXClient, android.app.NativeActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.m_camera_preview_capture != null) {
            this.m_camera_preview_capture.onResume();
        }
        UnisdkNtGmBridge.ntOnResume();
        if (this.m_channel != null) {
            this.m_channel.on_resume();
        }
    }

    @Override // com.netease.neox.NeoXClient, android.app.Activity
    public void onRestart() {
        super.onRestart();
        if (this.m_channel != null) {
            this.m_channel.on_restart();
        }
    }

    @Override // com.netease.neox.NeoXClient, android.app.NativeActivity, android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
    }

    @Override // android.app.NativeActivity, android.app.Activity
    protected void onDestroy() {
        UnisdkNtGmBridge.ntDestroy();
        if (this.m_channel != null) {
            this.m_channel.on_destroy();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent event) {
        boolean result = super.dispatchKeyEvent(event);
        int c = event.getKeyCode();
        if (event.getAction() == 2 && event.getKeyCode() == 0) {
            String chars = event.getCharacters();
            Log.d("NeoXDevice", "sendKeyEvent - ACTION_MULTIPLE - " + chars);
            if (chars != null) {
                for (int i = 0; i < chars.length(); i++) {
                    c = chars.charAt(i);
                    NativeInterface.NativeOnChar(c);
                }
            }
        }
        if (c == 24) {
            setVolumeControlStream(3);
            AudioManager am = (AudioManager) getSystemService("audio");
            int volume = am.getStreamVolume(3);
            if (volume == 0) {
                am.adjustStreamVolume(3, 1, 0);
            }
        }
        return result;
    }

    public void envManager_initSDK(String game_id, String key, String url) {
        EnvManager.initSDK(this, game_id, key, url);
    }

    public void envManager_enableLog(boolean enable) {
        EnvManager.enableLog(enable);
    }

    public String envManager_reviewWords(String level, String channel, String content) {
        return EnvManager.reviewWords(level, channel, content);
    }

    public String envManager_reviewNickname(String nickname) {
        return EnvManager.reviewNickname(nickname);
    }

    public String getClientPackageName() {
        return getClass().getPackage().getName();
    }

    public boolean getNeoXConfig(String option, boolean defvalue) {
        return this.m_neox_config.getBoolean(option, defvalue);
    }

    public String[] getNeoXConfigs() {
        ArrayList<String> configs = new ArrayList<>();
        Map<String, ?> entries = this.m_neox_config.getAll();
        for (Map.Entry<String, ?> entry : entries.entrySet()) {
            if (entry.getValue() instanceof Boolean) {
                configs.add(entry.getKey());
                configs.add(entry.getValue().toString());
            }
        }
        String[] result = (String[]) configs.toArray(new String[configs.size()]);
        return result;
    }

    public boolean NeedRemoveShaderCache() {
        boolean needRemoveShaderCache = this.m_neox_config.getBoolean("need_remove_shader_cache", false);
        return needRemoveShaderCache;
    }

    public Point getRealSize() {
        Point p = new Point();
        p.x = this.m_neox_config.getInt("RealWidth", 0);
        p.y = this.m_neox_config.getInt("RealHeight", 0);
        if (p.x == 0 || p.y == 0) {
            Display display = getWindowManager().getDefaultDisplay();
            if (Build.VERSION.SDK_INT >= 19) {
                display.getRealSize(p);
            } else {
                DisplayMetrics dm = new DisplayMetrics();
                display.getMetrics(dm);
                p.x = dm.widthPixels;
                p.y = dm.heightPixels;
            }
            SharedPreferences.Editor editor = this.m_neox_config.edit();
            editor.putInt("RealWidth", p.x).putInt("RealHeight", p.y).commit();
        }
        return p;
    }

    public void enableAudioVolumeListener(boolean b) {
        if (!b) {
            Log.i("NeoX", "[kk]Unregister audio volume listener......");
            if (this.m_ringermode_receiver != null) {
                unregisterReceiver(this.m_ringermode_receiver);
            }
            if (this.m_headset_receiver != null) {
                unregisterReceiver(this.m_headset_receiver);
            }
            if (this.m_audiovolume_observer != null) {
                getContentResolver().unregisterContentObserver(this.m_audiovolume_observer);
                return;
            }
            return;
        }
        IntentFilter filter = new IntentFilter("android.media.RINGER_MODE_CHANGED");
        registerReceiver(this.m_ringermode_receiver, filter);
        IntentFilter filter1 = new IntentFilter("android.intent.action.HEADSET_PLUG");
        registerReceiver(this.m_headset_receiver, filter1);
        AudioManager am = (AudioManager) getSystemService("audio");
        if (am != null) {
            int volume = am.getStreamVolume(3);
            if (volume == 0) {
                NativeInterface.NativeOnVolumeSilent(1);
            }
            NativeInterface.NativeOnRingerMode(am.getRingerMode());
            this.m_audiovolume_observer.m_pre_volume = volume;
            boolean headset_on = am.isWiredHeadsetOn() || isBlueToothHeadsetConnected();
            if (headset_on) {
                NativeInterface.NativeOnHeadset(1);
            }
        }
        getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this.m_audiovolume_observer);
        Log.i("NeoX", "[kk]Register Audio Volume Listener Done!!");
    }

    public void showVirtualKeyboard() {
        InputMethodManager imm = (InputMethodManager) getSystemService("input_method");
        if (imm == null) {
            Log.i("NeoX", "ShowVirtualKeyboard: Input Method Service not found");
            return;
        }
        Log.i("NeoXDeviceVKB", "Force show Virtual Keyboard");
        imm.restartInput(this.m_view);
        imm.toggleSoftInputFromWindow(this.m_view.getWindowToken(), 2, 2);
    }

    public void hideVirtualKeyboard() {
        InputMethodManager imm = (InputMethodManager) getSystemService("input_method");
        if (imm == null) {
            Log.i("NeoX", "HideVirtualKeyboard: Input Method Service not found");
        } else {
            imm.hideSoftInputFromWindow(this.m_view.getWindowToken(), 0);
        }
    }

    public boolean isBlueToothHeadsetConnected() {
        boolean retval = false;
        try {
            retval = BluetoothAdapter.getDefaultAdapter().getProfileConnectionState(1) != 0;
            Log.i("NeoX", "isBlueToothHeadsetConnected " + BluetoothAdapter.getDefaultAdapter().getProfileConnectionState(1));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return retval;
    }

    public void setLandscape(boolean is_land) {
        Configuration config = getResources().getConfiguration();
        if (is_land) {
            config.orientation = 2;
            setRequestedOrientation(6);
        } else {
            config.orientation = 1;
            setRequestedOrientation(1);
        }
    }

    public String getUDID() {
        if (this.m_udid == null) {
            TelephonyManager tm = (TelephonyManager) getSystemService("phone");
            this.m_udid = tm.getDeviceId();
            if (this.m_udid == null) {
                ContentResolver cr = getContentResolver();
                this.m_udid = Settings.Secure.getString(cr, "android_id");
                if (this.m_udid == null) {
                    try {
                        InetAddress ip = InetAddress.getLocalHost();
                        NetworkInterface network = NetworkInterface.getByInetAddress(ip);
                        byte[] mac = network.getHardwareAddress();
                        StringBuilder sb = new StringBuilder();
                        int i = 0;
                        while (i < mac.length) {
                            Object[] objArr = new Object[2];
                            objArr[0] = Byte.valueOf(mac[i]);
                            objArr[1] = i < mac.length + (-1) ? "-" : "";
                            sb.append(String.format("%02X%s", objArr));
                            i++;
                        }
                        this.m_udid = sb.toString();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        }
        return this.m_udid;
    }

    public String[] getRunningProcess() {
        ArrayList<String> processes = new ArrayList<>();
        ActivityManager am = (ActivityManager) getSystemService("activity");
        for (ActivityManager.RunningAppProcessInfo processInfo : am.getRunningAppProcesses()) {
            processes.add(processInfo.processName);
        }
        String[] result = (String[]) processes.toArray(new String[processes.size()]);
        return result;
    }

    public String getIpInfo() {
        try {
            ArrayList<String> matchList = new ArrayList<>();
            matchList.add("wlan0");
            matchList.add("en0");
            matchList.add("eth0");
            if (getNetworkType() != 1) {
                Log.i("NeoX", "get ip: none wifi ip");
                matchList.add("rmnet0");
                matchList.add("ppp0");
            }
            Enumeration<NetworkInterface> networkEn = NetworkInterface.getNetworkInterfaces();
            while (networkEn.hasMoreElements()) {
                NetworkInterface intf = networkEn.nextElement();
                if (!intf.isLoopback()) {
                    String netName = intf.getName();
                    boolean nameMatched = false;
                    Iterator<String> it = matchList.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        String tmp = it.next();
                        if (netName.indexOf(tmp) != -1) {
                            nameMatched = true;
                            break;
                        }
                    }
                    if (nameMatched) {
                        List<InterfaceAddress> intfAddrList = intf.getInterfaceAddresses();
                        for (int i = 0; i < intfAddrList.size(); i++) {
                            InterfaceAddress intfAddr = intfAddrList.get(i);
                            InetAddress inetAddr = intfAddr.getAddress();
                            if (!inetAddr.isLoopbackAddress() && inetAddr.getAddress().length == 4) {
                                String ipAddr = inetAddr.getHostAddress();
                                short prefixLength = intfAddr.getNetworkPrefixLength();
                                Log.i("NeoX", "netName: ip is " + ipAddr + " netmask is " + calcNetmaskByPrefixLength(prefixLength));
                                return ipAddr + "@" + calcNetmaskByPrefixLength(prefixLength);
                            }
                        }
                    } else {
                        continue;
                    }
                }
            }
            Log.i("NeoX", "no ip address found");
            return "";
        } catch (Exception e) {
            Log.i("NeoX", "encounter error when find ip");
            return "";
        }
    }

    private String calcNetmaskByPrefixLength(short len) {
        if (len < 0 || len > 32) {
            return "255.255.255.255";
        }
        int mask = (-1) << (32 - len);
        int[] maskParts = new int[4];
        for (int i = 0; i < 4; i++) {
            maskParts[i] = (mask >> (24 - (i * 8))) & 255;
        }
        String result = "" + maskParts[0];
        for (int i2 = 1; i2 < 4; i2++) {
            result = result + PushConstants.KEY_SEPARATOR + maskParts[i2];
        }
        return result;
    }

    public String getIMSI() {
        TelephonyManager tm = (TelephonyManager) getSystemService("phone");
        return tm.getSubscriberId();
    }

    public String getValue(String pack_name, String name) {
        if (name.equals("neox_root") && pack_name.equals(ResIdReader.RES_TYPE_STRING)) {
            return this.m_neox_root;
        }
        int resourceId = getResources().getIdentifier(name, pack_name, getPackageName());
        if (resourceId == 0) {
            return null;
        }
        return getString(resourceId);
    }

    public boolean showInputView(String text, int input_type, boolean is_hint, int x, int y, int w, int h, float size, int color) {
        this.m_input_view.setFilterPattern(input_type);
        if (is_hint) {
            this.m_input_view.setText("");
            this.m_input_view.setHint(text);
        } else {
            this.m_input_view.setHint("");
            this.m_input_view.setText(text);
        }
        if (w == 0 || h == 0) {
            this.m_input_view.setLocation(0, 0, 0, 0);
            this.m_input_view.setBorderless(false);
            this.m_input_view.setFontSize(this.m_input_view.getDefaultFontSize());
            this.m_input_view.setFontColor(this.m_input_view.getDefaultFontColor());
        } else {
            this.m_input_view.setLocation(x, y, w, h);
            this.m_input_view.setBorderless(true);
            this.m_input_view.setFontSize(size);
            this.m_input_view.setFontColor(color);
        }
        this.m_input_view.show(true);
        return true;
    }

    public void setInputViewLocation(int x, int y, int w, int h) {
        if (w == 0 || h == 0) {
            this.m_input_view.setLocation(0, 0, 0, 0);
            this.m_input_view.setBorderless(false);
            this.m_input_view.setFontSize(this.m_input_view.getDefaultFontSize());
            this.m_input_view.setFontColor(this.m_input_view.getDefaultFontColor());
            return;
        }
        this.m_input_view.setLocation(x, y, w, h);
        this.m_input_view.setBorderless(true);
    }

    public void showWelcomeView() {
        startActivity(new Intent(this, (Class<?>) WelcomeView.class));
    }

    boolean pickImage(int pick_mode, int picked_img_save_mode, String picked_img_name, int picked_img_max_width, int picked_img_max_height, int crop_mode, int crop_aspect_width, int crop_aspect_height, int cropped_img_save_mode, String cropped_img_name, int cropped_img_max_width, int cropped_img_max_height) {
        if (this.m_image_picker == null) {
            this.m_image_picker = new ImagePicker(this);
            if (!this.m_image_picker.init()) {
                return false;
            }
        }
        return this.m_image_picker.execute(pick_mode, picked_img_save_mode, picked_img_name, picked_img_max_width, picked_img_max_height, crop_mode, crop_aspect_width, crop_aspect_height, cropped_img_save_mode, cropped_img_name, cropped_img_max_width, cropped_img_max_height);
    }

    Channel getChannel() {
        if (this.m_channel == null) {
            this.m_channel = new Channel(this);
        }
        return this.m_channel;
    }

    @Override // com.netease.neox.NeoXClient, android.app.Activity
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (this.m_image_picker != null) {
            this.m_image_picker.onActivityResult(requestCode, resultCode, data);
        }
        UnisdkNtGmBridge.ntOnActivityResult(requestCode, resultCode, data);
        if (this.m_channel != null) {
            this.m_channel.on_activityResult(requestCode, resultCode, data);
        }
    }

    @Override // com.netease.neox.NeoXClient, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (this.m_channel != null) {
            this.m_channel.on_newIntent(intent);
        }
    }

    @Override // android.app.NativeActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        if (this.m_channel != null) {
            this.m_channel.on_start();
        }
    }

    @Override // com.netease.neox.NeoXClient, android.app.NativeActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        if (this.m_channel != null) {
            this.m_channel.on_stop();
        }
    }

    @Override // com.netease.neox.NeoXClient, android.app.NativeActivity, android.app.Activity
    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        if (this.m_channel != null) {
            this.m_channel.on_saveInstanceState(outState);
        }
    }

    @Override // android.app.Activity
    @SuppressLint({"Override"})
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        PushManager.onRequestPermissionsResult(requestCode, permissions, grantResults);
    }

    public void clearChannel() {
    }

    void openWebView(final String str_url) {
        runOnUiThread(new Runnable() { // from class: com.netease.dwrg.Client.5
            @Override // java.lang.Runnable
            public void run() {
                if (Client.this.m_web_view == null) {
                    Client.this.m_web_view = new NeoXWebView(Client.this);
                }
                Client.this.m_web_view.show();
                Client.this.m_web_view.loadUrl(str_url);
            }
        });
    }

    void removeWebView() {
        if (this.m_web_view != null) {
            runOnUiThread(new Runnable() { // from class: com.netease.dwrg.Client.6
                @Override // java.lang.Runnable
                public void run() {
                    Client.this.m_web_view.hide();
                }
            });
        }
    }

    void startVibrate(long duration) {
        Log.d("NeoXDevice", "startVibrate in neox1 " + duration);
        Vibrator vibrator = (Vibrator) getSystemService("vibrator");
        if (vibrator != null && duration >= 0 && duration <= 1000) {
            Log.d("NeoXDevice", "real vibrate");
            vibrator.vibrate(duration);
        }
    }

    void stopVibrate() {
        Vibrator vibrator = (Vibrator) getSystemService("vibrator");
        if (vibrator != null) {
            vibrator.cancel();
        }
    }

    boolean openURL(String str_url) {
        if (str_url == null) {
            return false;
        }
        Uri uri = Uri.parse(str_url);
        Intent it = new Intent("android.intent.action.VIEW", uri);
        try {
            startActivity(it);
            return true;
        } catch (ActivityNotFoundException e) {
            return false;
        }
    }

    void openGMWebView(final String uid) {
        Log.d("GMBridge", "[openGMWebView] " + uid);
        if (this.m_gmbridge_uid == null || this.m_gmbridge_uid != uid) {
            Log.d("GMBridge", "[openGMWebView] uid:" + uid + " m_gmbridge_uid:" + this.m_gmbridge_uid);
            if (this.m_gmbridge_uid != uid) {
                UnisdkNtGmBridge.ntDestroy();
            }
            UnisdkNtGmBridge.setShowFloatWindowWhenInit(false);
            UnisdkNtGmBridge.ntInit(this, uid, new UnisdkNtGmBridge.IAsynTokenRequest() { // from class: com.netease.dwrg.Client.7
                @Override // com.netease.unisdk.gmbridge.UnisdkNtGmBridge.IAsynTokenRequest
                public void getToken(UnisdkNtGmBridge.ITokenSetter tokenSetter) {
                    Log.d("GMBridge", "[openGMWebView] IAsynTokenRequest.getToken by uid:" + uid);
                    Client.this.m_gmbridge_tokenSetter = tokenSetter;
                    Client.this.m_gmbridge_uid = uid;
                    NativeInterface.NativeOnGMBridgeTokenOverdue();
                }
            });
        }
        UnisdkNtGmBridge.ntOpenGMPage();
    }

    void showGMFloatButton(final String uid, String message) {
        UnisdkNtGmBridge.setShowFloatWindowWhenInit(true);
        UnisdkNtGmBridge.ntInit(this, uid, new UnisdkNtGmBridge.IAsynTokenRequest() { // from class: com.netease.dwrg.Client.8
            @Override // com.netease.unisdk.gmbridge.UnisdkNtGmBridge.IAsynTokenRequest
            public void getToken(UnisdkNtGmBridge.ITokenSetter tokenSetter) {
                Log.d("GMBridge", "[showGMFloatButton] IAsynTokenRequest.getToken by uid:" + uid);
                Client.this.m_gmbridge_tokenSetter = tokenSetter;
                Client.this.m_gmbridge_uid = uid;
                NativeInterface.NativeOnGMBridgeTokenOverdue();
            }
        });
        if (message != null && message.length() != 0) {
            UnisdkNtGmBridge.ntReceiveMessage(message);
        }
    }

    void setGMBridgeToken(String token) {
        Log.d("GMBridge", "[setGMBridgeToken] " + token);
        this.m_gmbridge_tokenSetter.setToken(token);
    }

    boolean openSMS(String text) {
        Uri uri = Uri.parse("smsto:10086");
        Intent it = new Intent("android.intent.action.SENDTO", uri);
        if (text != null) {
            it.putExtra("sms_body", text);
        }
        try {
            startActivity(it);
            return true;
        } catch (ActivityNotFoundException e) {
            return false;
        }
    }

    int getNetworkType() {
        ConnectivityManager connectMgr = (ConnectivityManager) getSystemService("connectivity");
        NetworkInfo info = connectMgr.getActiveNetworkInfo();
        if (info != null) {
            if (info.getType() == 1) {
                return info.getType();
            }
            return info.getType();
        }
        return -1;
    }

    boolean playVideo(String videoPath, int videoMode, int scaleMode, int controlMode, int left, int top, int height, int width) {
        String video_path;
        boolean in_asset;
        SharedPreferences neox_config = getSharedPreferences("neox_config", 0);
        String neoxPath = neox_config.getString("NeoXRoot", null);
        String documentPath = neoxPath + "/Documents/";
        Log.e("yuxin: ", documentPath + videoPath);
        Log.e("yuxin videoMode: ", "" + videoMode);
        Log.e("yuxin left: ", "" + left);
        Log.e("yuxin top: ", "" + top);
        Log.e("yuxin width: ", "" + width);
        Log.e("yuxin height: ", "" + height);
        if (new File(documentPath, videoPath).exists()) {
            video_path = documentPath + "/" + videoPath;
            in_asset = false;
        } else if (new File(neoxPath, videoPath).exists()) {
            video_path = neoxPath + "/" + videoPath;
            in_asset = false;
        } else if (new File(videoPath).exists()) {
            video_path = videoPath;
            in_asset = false;
        } else {
            try {
                InputStream stream = getAssets().open(videoPath);
                stream.close();
                video_path = videoPath;
                in_asset = true;
            } catch (Exception e) {
                Log.i("NeoX", "video path not exists: " + videoPath);
                return false;
            }
        }
        this.m_movie_view = new MovieView(this);
        this.m_movie_view.initialize();
        this.m_movie_view.playVideo(video_path, videoMode, controlMode, scaleMode, left, top, width, height, in_asset);
        return true;
    }

    void pauseVideo() {
        if (this.m_movie_view != null) {
            this.m_movie_view.pauseVideo();
        }
    }

    void resumeVideo() {
        if (this.m_movie_view != null) {
            this.m_movie_view.resumeVideo();
        }
    }

    void stopVideo(boolean need_callback) {
        if (this.m_movie_view != null) {
            this.m_movie_view.stopVideo(need_callback);
            this.m_movie_view = null;
        }
    }

    boolean isTablet() {
        return (getResources().getConfiguration().screenLayout & 15) >= 3;
    }

    void requestPushService() {
        if (!this.m_is_push_manager_init) {
            PushManager.init(this, new PushManager.PushManagerCallback() { // from class: com.netease.dwrg.Client.9
                @Override // com.netease.pushclient.PushManager.PushManagerCallback
                public void onInitSuccess() {
                    PushManager.startService();
                }

                @Override // com.netease.pushclient.PushManager.PushManagerCallback
                public void onInitFailed(String reason) {
                    Log.e("NeoX", "PushManager Init Failed: " + reason);
                    Client.this.m_is_push_manager_init = false;
                }
            });
            this.m_is_push_manager_init = true;
        }
    }

    void stopPushService() {
        PushManager.stopService();
        this.m_is_push_manager_init = false;
    }

    int scheduleNotice(int delay_seconds, int badge_number, String text, String sound_name) {
        Notification notif = new Notification();
        notif.icon = getDrawableId("notification");
        notif.tickerText = text;
        notif.number = badge_number;
        notif.defaults = 1;
        notif.when += delay_seconds * 1000;
        notif.flags |= 16;
        Intent intent = new Intent(this, (Class<?>) Client.class);
        int notice_id = this.m_neox_notif.getInt("NoticeIDCount", 0);
        String pending_ids_string = this.m_neox_notif.getString("PendingIDs", "");
        this.m_neox_notif.edit().putInt("NoticeIDCount", notice_id + 1).putString("PendingIDs", pending_ids_string + Integer.toString(notice_id) + ",").commit();
        intent.addFlags(805306368);
        PendingIntent contentIntent = PendingIntent.getActivity(this, notice_id, intent, 268435456);
        notif.setLatestEventInfo(this, getString(getStringId("app_name")), text, contentIntent);
        if (delay_seconds < 0) {
            delay_seconds = 0;
        }
        Intent intent1 = new Intent(this, (Class<?>) AlarmReceiver.class);
        intent1.setAction("ScheduleNotice");
        intent1.putExtra(ResIdReader.RES_TYPE_ID, notice_id);
        intent1.putExtra("now", System.currentTimeMillis());
        intent1.putExtra("notice", notif);
        PendingIntent sender = PendingIntent.getBroadcast(this, notice_id, intent1, 268435456);
        AlarmManager am = (AlarmManager) getSystemService("alarm");
        am.set(0, System.currentTimeMillis() + (delay_seconds * 1000), sender);
        return notice_id;
    }

    void cancelAllNotifications() {
        NotificationManager nm = (NotificationManager) getSystemService("notification");
        nm.cancelAll();
        m_cancel_all_time = System.currentTimeMillis();
        String pending_ids_string = this.m_neox_notif.getString("PendingIDs", "");
        this.m_neox_notif.edit().putString("PendingIDs", "");
        String[] pending_id_strings = pending_ids_string.split(",");
        for (String str : pending_id_strings) {
            try {
                int pending_id = Integer.parseInt(str);
                Intent intent1 = new Intent(this, (Class<?>) AlarmReceiver.class);
                intent1.setAction("ScheduleNotice");
                PendingIntent sender = PendingIntent.getBroadcast(this, pending_id, intent1, 536870912);
                if (sender != null) {
                    AlarmManager am = (AlarmManager) getSystemService("alarm");
                    am.cancel(sender);
                }
            } catch (NumberFormatException e) {
            }
        }
    }

    public static long getCancelAllTime() {
        return m_cancel_all_time;
    }

    boolean cancelNotice(int id) {
        NotificationManager nm = (NotificationManager) getSystemService("notification");
        nm.cancel(id);
        String notice_string = Integer.toString(id);
        String pending_ids_string = this.m_neox_notif.getString("PendingIDs", "");
        String[] pending_id_strings = pending_ids_string.split(",");
        String pending_ids_string2 = "";
        for (int i = 0; i < pending_id_strings.length; i++) {
            if (!notice_string.equals(pending_id_strings[i]) && pending_id_strings[i].length() > 0) {
                pending_ids_string2 = pending_ids_string2 + pending_id_strings[i] + ",";
            }
        }
        this.m_neox_notif.edit().putString("PendingIDs", pending_ids_string2).commit();
        Intent intent1 = new Intent(this, (Class<?>) AlarmReceiver.class);
        intent1.setAction("ScheduleNotice");
        PendingIntent sender = PendingIntent.getBroadcast(this, id, intent1, 536870912);
        if (sender == null) {
            return false;
        }
        AlarmManager am = (AlarmManager) getSystemService("alarm");
        am.cancel(sender);
        return true;
    }

    String getPushToken() {
        if (this.m_is_push_manager_init) {
            return PushManager.getDevId();
        }
        return null;
    }

    void setClipboardText(String text) {
        if (Build.VERSION.SDK_INT >= 11) {
            this.m_clipboard.setPrimaryClip(ClipData.newPlainText("com.netease.dwrg", text));
        }
    }

    String getClipboardText() {
        ClipData clip;
        ClipData.Item item;
        if (Build.VERSION.SDK_INT < 11 || (clip = this.m_clipboard.getPrimaryClip()) == null || (item = clip.getItemAt(0)) == null) {
            return null;
        }
        return item.coerceToText(this).toString();
    }

    public boolean startCameraPreviewCapture(int previewWidth, int previewHeight) {
        Log.i("NeoX", "startCameraPreviewCapture !!!!!!!!!!!!!!!!!!!!!!!!!");
        if (this.m_camera_preview_capture == null) {
            this.m_camera_preview_capture = new CameraPreviewCapture(new CameraPreviewCapture.PreviewCallback() { // from class: com.netease.dwrg.Client.10
                @Override // com.netease.dwrg.CameraPreviewCapture.PreviewCallback
                public void onPreviewFrame(byte[] bytes, int previewWidth2, int previewHeight2) {
                    NativeInterface.NativeOnCameraPreviewCapture(bytes, previewWidth2, previewHeight2);
                }
            });
            this.m_camera_preview_capture.start(previewWidth, previewHeight);
            return true;
        }
        return true;
    }

    public void stopCameraPreviewCapture() {
        Log.i("NeoX", "stopCameraPreviewCapture !!!!!!!!!!!!!!!!!!!!!!!!!");
        if (this.m_camera_preview_capture != null) {
            this.m_camera_preview_capture.stop();
            this.m_camera_preview_capture = null;
        }
    }

    public void setDumpGame(String game) {
        this.m_dump_game = game;
        AndroidCrashHandler ach = AndroidCrashHandler.getInstance();
        MyNetworkUtils networkutils = ach.getNetworkUtils();
        MyPostEntity defaultEntity = networkutils.getDefaultPostEntity();
        defaultEntity.setParam("project", this.m_dump_game);
    }

    public void setDumpBasicInfo(String info) {
        this.m_dump_basicinfo = info;
        AndroidCrashHandler ach = AndroidCrashHandler.getInstance();
        MyNetworkUtils networkutils = ach.getNetworkUtils();
        MyPostEntity defaultEntity = networkutils.getDefaultPostEntity();
        String[] results = info.split(",");
        for (String result : results) {
            String[] item = result.trim().split(Const.RESP_CONTENT_SPIT2);
            if (item.length == 2) {
                defaultEntity.setParam(item[0].trim(), item[1].trim());
            }
        }
    }

    public void setDumpUserDesc(String desc) {
        this.m_dump_userdesc = desc;
        AndroidCrashHandler ach = AndroidCrashHandler.getInstance();
        MyNetworkUtils networkutils = ach.getNetworkUtils();
        MyPostEntity defaultEntity = networkutils.getDefaultPostEntity();
        String[] results = desc.split(",");
        for (String result : results) {
            String[] item = result.trim().split(Const.RESP_CONTENT_SPIT2);
            if (item.length == 2) {
                defaultEntity.setParam(item[0].trim(), item[1].trim());
            }
        }
    }

    public void setDumpInfo(String k, String v) {
        AndroidCrashHandler ach = AndroidCrashHandler.getInstance();
        MyNetworkUtils networkutils = ach.getNetworkUtils();
        MyPostEntity defaultEntity = networkutils.getDefaultPostEntity();
        defaultEntity.setParam(k, v);
    }

    public void postScriptError(String identify, String content) {
        AndroidCrashHandler ach = AndroidCrashHandler.getInstance();
        MyNetworkUtils networkUtils = ach.getNetworkUtils();
        MyPostEntity entity = new MyPostEntity(networkUtils.getDefaultPostEntity());
        entity.setParam("identify", identify);
        entity.setFile(content, identify + ".script", StringPart.DEFAULT_CONTENT_TYPE);
        networkUtils.postScriptError(entity);
    }

    public void postHunterMessage(String title, String msg) {
        AndroidCrashHandler ach = AndroidCrashHandler.getInstance();
        MyNetworkUtils networkUtils = ach.getNetworkUtils();
        MyPostEntity entity = new MyPostEntity(networkUtils.getDefaultPostEntity());
        entity.setParam("identify", title);
        entity.setParam("error_type", "OTHER");
        entity.setFile(msg, title + ".other", StringPart.DEFAULT_CONTENT_TYPE);
        networkUtils.post(entity);
    }

    public void postUserInfo(String uid, String user_name, String server_name, String urs) {
        AndroidCrashHandler ach = AndroidCrashHandler.getInstance();
        MyNetworkUtils networkUtils = ach.getNetworkUtils();
        if (urs != null) {
            networkUtils.postUserInfo(uid, urs, user_name, server_name);
        } else {
            networkUtils.postUserInfo(uid, user_name, server_name);
        }
    }

    public String getHunterDeviceInfo(String name) {
        String result = "";
        Map infos = DeviceInfo.getInstance().getDeviceInfo();
        for (Object key : infos.keySet()) {
            if (((String) key).equals(name)) {
                Object value = infos.get(key);
                result = (String) value;
            }
        }
        return result;
    }

    public void setDumpGameVersion(String version) {
        this.m_dump_game_version = version;
        AndroidCrashHandler ach = AndroidCrashHandler.getInstance();
        ach.setResVersion(this.m_dump_game_version);
    }

    public void EnableProfile(boolean enalbeProfile) {
        if (!enalbeProfile) {
            if (this.m_profile_info_timerHandler != null && this.m_profile_have_runnable) {
                this.m_profile_info_timerHandler.removeCallbacks(this.m_profile_info_timerRunnable);
                this.m_profile_have_runnable = false;
                return;
            }
            return;
        }
        if (this.m_profile_info_timerHandler != null && !this.m_profile_have_runnable) {
            this.m_profile_info_timerHandler.postDelayed(this.m_profile_info_timerRunnable, 1000L);
            this.m_profile_have_runnable = true;
        }
    }

    public void MarkTrepnProfilerState(int state_value, String state_desc) {
        Intent stateUpdate = new Intent("com.quicinc.Trepn.UpdateAppState");
        stateUpdate.putExtra("com.quicinc.Trepn.UpdateAppState.Value", state_value);
        stateUpdate.putExtra("com.quicinc.Trepn.UpdateAppState.Value.Desc", state_desc);
        sendBroadcast(stateUpdate);
    }

    public boolean showDumpView(String dump_path, String cache_log) {
        return true;
    }

    public boolean isApplicationBroughtToBackground() {
        ActivityManager am = (ActivityManager) getSystemService("activity");
        List<ActivityManager.RunningTaskInfo> tasks = am.getRunningTasks(1);
        if (!tasks.isEmpty()) {
            ComponentName topActivity = tasks.get(0).topActivity;
            if (!topActivity.getPackageName().equals(getPackageName())) {
                return true;
            }
        }
        return false;
    }

    public void SaveResolutionToSharedPreferences(int resW, int resH) {
        SharedPreferences.Editor editor = this.m_neox_config.edit();
        editor.putInt("RealWidth", resW).putInt("RealHeight", resH).commit();
    }

    public int getRotation() {
        int ro = getWindowManager().getDefaultDisplay().getRotation();
        switch (ro) {
            case 0:
            default:
                return 0;
            case 1:
                return 90;
            case 2:
                return 180;
            case 3:
                return 270;
        }
    }

    public void restart() {
        Intent i = getBaseContext().getPackageManager().getLaunchIntentForPackage(getBaseContext().getPackageName());
        i.addFlags(67108864);
        startActivity(i);
    }

    public boolean startUpdatingLocation() {
        if (this.neoxLocationMgr == null) {
            this.neoxLocationMgr = new NeoXLocationManager();
        }
        return this.neoxLocationMgr.startUpdatingLocation(this);
    }

    public void stopUpdatingLocation() {
        if (this.neoxLocationMgr != null) {
            this.neoxLocationMgr.stopUpdatingLocation(this);
        }
    }

    public void openLocationSetting() {
        if (this.neoxLocationMgr != null) {
            this.neoxLocationMgr = new NeoXLocationManager();
        }
        this.neoxLocationMgr.openLocationSetting(this);
    }

    public void setKeepScreenOn(final boolean flag) {
        runOnUiThread(new Runnable() { // from class: com.netease.dwrg.Client.11
            @Override // java.lang.Runnable
            public void run() {
                if (flag) {
                    clint.getWindow().addFlags(128);
                } else {
                    clint.getWindow().clearFlags(128);
                }
            }
        });
    }

    void showMessageBox(String text, String title, int type, String okText, String cancelText) {
        final AlertDialog.Builder builder = new AlertDialog.Builder(this).setTitle(title).setMessage(text).setIcon(getDrawableId("ic_launcher")).setCancelable(false);
        switch (type) {
            case 0:
                builder.setPositiveButton(okText, new DialogInterface.OnClickListener() { // from class: com.netease.dwrg.Client.12
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                        NativeInterface.NativeOnMessageBoxButton(0);
                    }
                });
                break;
            case 1:
                builder.setPositiveButton(okText, new DialogInterface.OnClickListener() { // from class: com.netease.dwrg.Client.14
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                        NativeInterface.NativeOnMessageBoxButton(0);
                    }
                }).setNegativeButton(cancelText, new DialogInterface.OnClickListener() { // from class: com.netease.dwrg.Client.13
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                        NativeInterface.NativeOnMessageBoxButton(1);
                    }
                });
                break;
            case 2:
                builder.setPositiveButton(getStringId("neox_abort"), new DialogInterface.OnClickListener() { // from class: com.netease.dwrg.Client.17
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                        NativeInterface.NativeOnMessageBoxButton(5);
                    }
                }).setNeutralButton(getStringId("neox_retry"), new DialogInterface.OnClickListener() { // from class: com.netease.dwrg.Client.16
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                        NativeInterface.NativeOnMessageBoxButton(4);
                    }
                }).setNegativeButton(getStringId("neox_ignore"), new DialogInterface.OnClickListener() { // from class: com.netease.dwrg.Client.15
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                        NativeInterface.NativeOnMessageBoxButton(6);
                    }
                });
                break;
            case 3:
                builder.setPositiveButton(getStringId("neox_yes"), new DialogInterface.OnClickListener() { // from class: com.netease.dwrg.Client.20
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                        NativeInterface.NativeOnMessageBoxButton(2);
                    }
                }).setNeutralButton(getStringId("neox_no"), new DialogInterface.OnClickListener() { // from class: com.netease.dwrg.Client.19
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                        NativeInterface.NativeOnMessageBoxButton(3);
                    }
                }).setNegativeButton(cancelText, new DialogInterface.OnClickListener() { // from class: com.netease.dwrg.Client.18
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                        NativeInterface.NativeOnMessageBoxButton(1);
                    }
                });
                break;
            case 4:
                builder.setPositiveButton(getStringId("neox_yes"), new DialogInterface.OnClickListener() { // from class: com.netease.dwrg.Client.22
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                        NativeInterface.NativeOnMessageBoxButton(2);
                    }
                }).setNegativeButton(getStringId("neox_no"), new DialogInterface.OnClickListener() { // from class: com.netease.dwrg.Client.21
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                        NativeInterface.NativeOnMessageBoxButton(3);
                    }
                });
                break;
            case 5:
                builder.setPositiveButton(getStringId("neox_retry"), new DialogInterface.OnClickListener() { // from class: com.netease.dwrg.Client.24
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                        NativeInterface.NativeOnMessageBoxButton(4);
                    }
                }).setNegativeButton(cancelText, new DialogInterface.OnClickListener() { // from class: com.netease.dwrg.Client.23
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                        NativeInterface.NativeOnMessageBoxButton(1);
                    }
                });
                break;
            default:
                builder.setPositiveButton(okText, new DialogInterface.OnClickListener() { // from class: com.netease.dwrg.Client.25
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                        NativeInterface.NativeOnMessageBoxButton(0);
                    }
                });
                break;
        }
        runOnUiThread(new Runnable() { // from class: com.netease.dwrg.Client.26
            @Override // java.lang.Runnable
            public void run() {
                builder.create().show();
            }
        });
    }

    private String readFile(String file, char endChar) {
        FileInputStream is;
        int len;
        byte[] mBuffer = new byte[4096];
        StrictMode.ThreadPolicy savedPolicy = StrictMode.allowThreadDiskReads();
        FileInputStream is2 = null;
        try {
            is = new FileInputStream(file);
        } catch (FileNotFoundException e) {
        } catch (IOException e2) {
        } catch (Throwable th) {
            th = th;
        }
        try {
            len = is.read(mBuffer);
            is.close();
        } catch (FileNotFoundException e3) {
            is2 = is;
            if (is2 != null) {
                try {
                    is2.close();
                } catch (IOException e4) {
                }
            }
            StrictMode.setThreadPolicy(savedPolicy);
            return null;
        } catch (IOException e5) {
            is2 = is;
            if (is2 != null) {
                try {
                    is2.close();
                } catch (IOException e6) {
                }
            }
            StrictMode.setThreadPolicy(savedPolicy);
            return null;
        } catch (Throwable th2) {
            th = th2;
            is2 = is;
            if (is2 != null) {
                try {
                    is2.close();
                } catch (IOException e7) {
                }
            }
            StrictMode.setThreadPolicy(savedPolicy);
            throw th;
        }
        if (len <= 0) {
            if (is != null) {
                try {
                    is.close();
                } catch (IOException e8) {
                }
            }
            StrictMode.setThreadPolicy(savedPolicy);
            return null;
        }
        int i = 0;
        while (i < len && mBuffer[i] != endChar) {
            i++;
        }
        String str = new String(mBuffer, 0, i);
        if (is != null) {
            try {
                is.close();
            } catch (IOException e9) {
            }
        }
        StrictMode.setThreadPolicy(savedPolicy);
        return str;
    }

    String getGovernorInfo() {
        String scaling_governor = readFile("/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor", '\n');
        String scaling_max_freq = readFile("/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq", '\n');
        String scaling_cur_freq = readFile("/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq", '\n');
        String cpuinfo_max_freq = readFile("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq", '\n');
        String cpuinfo_cur_freq = readFile("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_cur_freq", '\n');
        List<String> list = Arrays.asList(scaling_governor, scaling_max_freq, scaling_cur_freq, cpuinfo_max_freq, cpuinfo_cur_freq);
        return list.toString();
    }

    int getTotalMemory() {
        if (Build.VERSION.SDK_INT < 16) {
            return 0;
        }
        ActivityManager actManager = (ActivityManager) getSystemService("activity");
        ActivityManager.MemoryInfo memInfo = new ActivityManager.MemoryInfo();
        actManager.getMemoryInfo(memInfo);
        long totalMemory = (memInfo.totalMem / 1024) / 1024;
        return (int) totalMemory;
    }

    boolean getBatteryCharging() {
        Intent batteryIntent = registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        int status = batteryIntent.getIntExtra("status", -1);
        return status == 2 || status == 5;
    }

    float getBatteryLevel() {
        Intent batteryIntent = registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        int level = batteryIntent.getIntExtra("level", -1);
        int scale = batteryIntent.getIntExtra("scale", -1);
        if (level == -1 || scale == -1) {
            return 50.0f;
        }
        return (level / scale) * 100.0f;
    }

    void setBrightness(final float b) {
        runOnUiThread(new Runnable() { // from class: com.netease.dwrg.Client.27
            @Override // java.lang.Runnable
            public void run() {
                Log.i("setBrightness", String.format("%f", Float.valueOf(b)));
                if (b > 0.0f) {
                    Settings.System.putInt(Client.this.getContentResolver(), "screen_brightness_mode", 0);
                    Settings.System.putInt(Client.this.getContentResolver(), "screen_brightness", (int) (b * 255.0f));
                } else {
                    Settings.System.putInt(Client.this.getContentResolver(), "screen_brightness_mode", 1);
                }
            }
        });
    }

    float getBrightness() {
        FutureTask<Float> futureResult = new FutureTask<>(new Callable<Float>() { // from class: com.netease.dwrg.Client.28
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Float call() throws Exception {
                if (Settings.System.getInt(Client.this.getContentResolver(), "screen_brightness_mode") == 1) {
                    Settings.System.putInt(Client.this.getContentResolver(), "screen_brightness_mode", 0);
                }
                int screen_brightness = Settings.System.getInt(Client.this.getContentResolver(), "screen_brightness", 255);
                Log.i("screen_brightness", String.format("%d", Integer.valueOf(screen_brightness)));
                Float retValue = Float.valueOf(screen_brightness / 255.0f);
                return retValue;
            }
        });
        runOnUiThread(futureResult);
        Float returnValue = Float.valueOf(0.5f);
        try {
            returnValue = futureResult.get(2000L, TimeUnit.MILLISECONDS);
            if (returnValue == null) {
                returnValue = Float.valueOf(0.5f);
            }
        } catch (Exception wrappedException) {
            Throwable cause = wrappedException.getCause();
            Log.e("Error", "Call has thrown an exception", cause);
        }
        Log.i("getBrightness", String.format("%f", returnValue));
        return returnValue.floatValue();
    }

    int getMaliGPUCoreCount() {
        int result = -1;
        try {
            RandomAccessFile localRandomAccessFile = new RandomAccessFile("/sys/class/misc/mali0/device/core_mask", "r");
            String str2 = "";
            do {
                String str1 = localRandomAccessFile.readLine();
                if (str1 == null) {
                    break;
                }
                str2 = str1.trim().toUpperCase(Locale.ENGLISH);
            } while (!str2.startsWith("AVAILABLE CORE MASK : "));
            String str3 = str2.substring(22).trim();
            if (!str3.startsWith("0X")) {
                return -1;
            }
            result = (int) (Math.log(Integer.parseInt(str3.substring(2), 16) + 1) / Math.log(2.0d));
            return result;
        } catch (Exception e) {
            return result;
        }
    }

    void setVirtualKeyboardType(int vkt) {
        this.m_input_view.setType(vkt);
    }

    boolean startRecording(String filename) {
        GameVoiceUtils.context = this;
        GameVoiceUtils.prepareRecord(filename);
        GameVoiceUtils.startRecord();
        return true;
    }

    void stopRecording() {
        GameVoiceUtils.stopRecord();
    }

    boolean isRecording() {
        return GameVoiceUtils.isRecording();
    }

    public String getInternalDataPath() {
        return getApplicationContext().getApplicationInfo().dataDir;
    }

    void playVoice(String name, float volume) {
        GameVoiceUtils.context = this;
        GameVoiceUtils.preparePlay(name);
        GameVoiceUtils.setPlayVolume(volume);
        GameVoiceUtils.startPlay();
    }

    void stopVoice() {
        GameVoiceUtils.stopPlay();
    }

    boolean checkRecordingPermission() {
        try {
            String filename = this.m_neox_root + "/Documents/test.amr";
            startRecording(filename);
            int r = GameVoiceUtils.mRecorder.getMaxAmplitude();
            stopRecording();
            return r > 0;
        } catch (Exception e) {
            return false;
        }
    }

    float getAvailableInternalMemorySize() {
        File path = Environment.getDataDirectory();
        StatFs stat = new StatFs(path.getPath());
        long blockSize = stat.getBlockSize();
        long availableBlocks = stat.getAvailableBlocks();
        return (((1.0f * ((float) availableBlocks)) * ((float) blockSize)) / 1024.0f) / 1024.0f;
    }

    long getTotalInternalMemorySize() {
        File path = Environment.getDataDirectory();
        StatFs stat = new StatFs(path.getPath());
        long blockSize = stat.getBlockSize();
        long totalBlocks = stat.getBlockCount();
        return totalBlocks * blockSize;
    }

    long getTotalMemorySize(Context context) {
        try {
            FileReader fr = new FileReader("/proc/meminfo");
            BufferedReader br = new BufferedReader(fr, 2048);
            String memoryLine = br.readLine();
            String subMemoryLine = memoryLine.substring(memoryLine.indexOf("MemTotal:"));
            br.close();
            return Integer.parseInt(subMemoryLine.replaceAll("\\D+", "")) * 1024;
        } catch (IOException e) {
            e.printStackTrace();
            return 0L;
        }
    }

    public void handleMediaContentChange(Uri contentUri) {
        Cursor cursor = null;
        try {
            try {
                cursor = getContentResolver().query(contentUri, MEDIA_PROJECTIONS, null, null, "date_added desc limit 1");
                if (cursor == null) {
                    if (cursor != null && !cursor.isClosed()) {
                        cursor.close();
                    }
                } else if (cursor.moveToFirst()) {
                    int dataIndex = cursor.getColumnIndex("_data");
                    int dateTakenIndex = cursor.getColumnIndex("datetaken");
                    String data = cursor.getString(dataIndex);
                    long dateTaken = cursor.getLong(dateTakenIndex);
                    handleMediaRowData(data, dateTaken);
                    if (cursor != null && !cursor.isClosed()) {
                        cursor.close();
                    }
                } else if (cursor != null && !cursor.isClosed()) {
                    cursor.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
                if (0 != 0 && !cursor.isClosed()) {
                    cursor.close();
                }
            }
        } catch (Throwable th) {
            if (cursor != null && !cursor.isClosed()) {
                cursor.close();
            }
            throw th;
        }
    }

    private void handleMediaRowData(String data, long dataTaken) {
        if (checkScreenShot(data, dataTaken)) {
            Log.d("ScreenShot", "on screen shot");
            if (!checkScreenShotCb(data)) {
                NativeInterface.NativeOnScreenShot();
            }
        }
    }

    private boolean checkScreenShot(String data, long dateTaken) {
        if (System.currentTimeMillis() - dateTaken > 10000 || TextUtils.isEmpty(data)) {
            return false;
        }
        String data2 = data.toLowerCase();
        for (String keyWork : KEYWORDS) {
            if (data2.contains(keyWork)) {
                return true;
            }
        }
        return false;
    }

    private boolean checkScreenShotCb(String imagePath) {
        if (this.sHasCallbackPaths.contains(imagePath)) {
            return true;
        }
        if (this.sHasCallbackPaths.size() >= 20) {
            for (int i = 0; i < 5; i++) {
                this.sHasCallbackPaths.remove(0);
            }
        }
        this.sHasCallbackPaths.add(imagePath);
        return false;
    }

    public final int getImageWidth(String img_filepath) {
        BitmapFactory.Options opt = new BitmapFactory.Options();
        opt.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(img_filepath, opt);
        return opt.outWidth;
    }

    public final int getImageHeight(String img_filepath) {
        BitmapFactory.Options opt = new BitmapFactory.Options();
        opt.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(img_filepath, opt);
        return opt.outHeight;
    }

    public final boolean scaleImage(String src_img_filepath, int dst_img_width, int dst_img_height, String dst_img_filepath) {
        Bitmap bitmap;
        if (src_img_filepath == null || dst_img_width <= 0 || dst_img_height <= 0) {
            return false;
        }
        BitmapFactory.Options opt = new BitmapFactory.Options();
        opt.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(src_img_filepath, opt);
        int img_width = opt.outWidth;
        int img_height = opt.outHeight;
        if (img_width <= 0 || img_height <= 0) {
            return false;
        }
        int sample_size_width = img_width / dst_img_width;
        int sample_size_height = img_height / dst_img_height;
        int sample_size = Math.max(1, Math.min(sample_size_width, sample_size_height));
        BitmapFactory.Options opt2 = new BitmapFactory.Options();
        opt2.inSampleSize = sample_size;
        Bitmap bitmap2 = BitmapFactory.decodeFile(src_img_filepath, opt2);
        if (bitmap2 == null || (bitmap = Bitmap.createScaledBitmap(bitmap2, dst_img_width, dst_img_height, true)) == null) {
            return false;
        }
        return saveImage(bitmap, dst_img_filepath);
    }

    public final boolean cropImage(String src_img_filepath, int x, int y, int width, int height, String dst_img_filepath) {
        Bitmap bitmap;
        Bitmap bitmap2;
        if (src_img_filepath == null || x < 0 || y < 0 || width <= 0 || height <= 0) {
            return false;
        }
        BitmapFactory.Options opt = new BitmapFactory.Options();
        opt.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(src_img_filepath, opt);
        int img_width = opt.outWidth;
        int img_height = opt.outHeight;
        if (img_width <= 0 || img_height <= 0 || x + width > img_width || y + height > img_height || (bitmap = BitmapFactory.decodeFile(src_img_filepath)) == null || (bitmap2 = Bitmap.createBitmap(bitmap, x, y, width, height)) == null) {
            return false;
        }
        return saveImage(bitmap2, dst_img_filepath);
    }

    private boolean saveImage(Bitmap bitmap, String dst_img_filepath) {
        Bitmap.CompressFormat compress_format;
        if (bitmap == null || dst_img_filepath == null) {
            return false;
        }
        if (dst_img_filepath.endsWith(".png")) {
            compress_format = Bitmap.CompressFormat.PNG;
        } else if (dst_img_filepath.endsWith(".jpg")) {
            compress_format = Bitmap.CompressFormat.JPEG;
        } else {
            if (!dst_img_filepath.endsWith(".webp")) {
                return false;
            }
            compress_format = Bitmap.CompressFormat.WEBP;
        }
        File dst_file = new File(dst_img_filepath);
        try {
            FileOutputStream outStream = new FileOutputStream(dst_file);
            if (!bitmap.compress(compress_format, 100, outStream)) {
                return false;
            }
            try {
                outStream.close();
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }
}
