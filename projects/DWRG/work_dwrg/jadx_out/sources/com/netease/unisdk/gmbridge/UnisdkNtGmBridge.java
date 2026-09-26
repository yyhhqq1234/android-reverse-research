package com.netease.unisdk.gmbridge;

import android.app.Activity;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import com.netease.unisdk.gmbridge.data.DataManager;
import com.netease.unisdk.gmbridge.floatwindow.BtnInfo;
import com.netease.unisdk.gmbridge.floatwindow.FloatWindowManager;
import com.netease.unisdk.gmbridge.log.NgLog;
import com.netease.unisdk.gmbridge.task.TaskExecutor;
import com.netease.unisdk.gmbridge.view.WebViewDialog;
import com.netease.unisdk.gmbridge.voice.VoiceManager;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class UnisdkNtGmBridge {
    public static final int REQUEST_CODE_PICK_FROM_ALBUM = 323;
    public static final int REQUEST_CODE_PICK_FROM_CAMERA = 324;
    private static final String TAG = "gm_bridge";
    private static final String VERSION = "4.6.0";
    public static final int WINDOW_GRAVITY_LB = 83;
    public static final int WINDOW_GRAVITY_LT = 51;
    public static final int WINDOW_GRAVITY_RB = 85;
    public static final int WINDOW_GRAVITY_RT = 53;
    public static Activity sActivity;
    public static DataManager sDataManager;
    public static IPageCloseListener sPageCloseListener;
    public static String sRefer;
    public static WebViewDialog sWebViewDialog;

    /* loaded from: classes.dex */
    public interface IAsynTokenRequest {
        void getToken(ITokenSetter iTokenSetter);
    }

    /* loaded from: classes.dex */
    public interface IPageCloseListener {
        void onClosed();
    }

    /* loaded from: classes.dex */
    public interface ITokenRequest {
        String getToken();
    }

    /* loaded from: classes.dex */
    public interface ITokenSetter {
        void setToken(String str);
    }

    @Deprecated
    public static void setShowFloatWindowWhenInit(boolean show) {
        ntSetFloatBtnVisible(show);
    }

    public static void ntSetFloatBtnVisible(boolean v) {
        FloatWindowManager.setFloatBtnVisible(v);
    }

    public static void ntSetRoleId(String roleId) {
        if (sDataManager != null) {
            sDataManager.setRoleId(roleId);
        }
    }

    public static void ntInit(final Activity activity, String roleId, final int windowGravity, ITokenRequest tokenRequest) {
        NgLog.checkIsDebug(activity);
        NgLog.i(TAG, "ntInit");
        TaskExecutor.init(2, 5, 0);
        sActivity = activity;
        sDataManager = new DataManager(activity, roleId);
        sDataManager.setTokenRequest(tokenRequest);
        TaskExecutor.runTaskOnUiThread(new Runnable() { // from class: com.netease.unisdk.gmbridge.UnisdkNtGmBridge.1
            @Override // java.lang.Runnable
            public void run() {
                FloatWindowManager.initGmFloatWindow(activity, windowGravity);
            }
        });
    }

    public static void ntInit(final Activity activity, String roleId, final int windowGravity, IAsynTokenRequest asynTokenRequest) {
        NgLog.checkIsDebug(activity);
        NgLog.i(TAG, "ntInit");
        TaskExecutor.init(2, 5, 0);
        sActivity = activity;
        sDataManager = new DataManager(activity, roleId);
        sDataManager.setAsynTokenRequest(asynTokenRequest);
        TaskExecutor.runTaskOnUiThread(new Runnable() { // from class: com.netease.unisdk.gmbridge.UnisdkNtGmBridge.2
            @Override // java.lang.Runnable
            public void run() {
                FloatWindowManager.initGmFloatWindow(activity, windowGravity);
            }
        });
    }

    public static void ntInit(Activity activity, String uid, ITokenRequest tokenRequest) {
        ntInit(activity, uid, 83, tokenRequest);
    }

    public static void ntInit(Activity activity, String uid, IAsynTokenRequest asynTokenRequest) {
        ntInit(activity, uid, 83, asynTokenRequest);
    }

    public static void ntsetPageCloseListener(IPageCloseListener pageCloseListener) {
        sPageCloseListener = pageCloseListener;
    }

    public static void ntOpenGMPage() {
        if (sDataManager != null) {
            TaskExecutor.executeTask(new Runnable() { // from class: com.netease.unisdk.gmbridge.UnisdkNtGmBridge.3
                @Override // java.lang.Runnable
                public void run() {
                    UnisdkNtGmBridge.sDataManager.getRefer(new DataManager.IDataCallback() { // from class: com.netease.unisdk.gmbridge.UnisdkNtGmBridge.3.1
                        @Override // com.netease.unisdk.gmbridge.data.DataManager.IDataCallback
                        public void setBtnInfos(List<BtnInfo> btnInfos) {
                        }

                        @Override // com.netease.unisdk.gmbridge.data.DataManager.IDataCallback
                        public void setRefer(String refer) {
                            NgLog.i(UnisdkNtGmBridge.TAG, "refer : " + refer);
                            UnisdkNtGmBridge.ntOpenGMPage(refer);
                        }
                    });
                }
            });
        }
    }

    public static void ntOpenGMPage(final String refer) {
        if (sActivity != null) {
            TaskExecutor.runTaskOnUiThread(new Runnable() { // from class: com.netease.unisdk.gmbridge.UnisdkNtGmBridge.4
                @Override // java.lang.Runnable
                public void run() {
                    if (UnisdkNtGmBridge.sWebViewDialog != null) {
                        UnisdkNtGmBridge.sWebViewDialog.destroy();
                        UnisdkNtGmBridge.sWebViewDialog = null;
                    }
                    UnisdkNtGmBridge.sWebViewDialog = new WebViewDialog(UnisdkNtGmBridge.sActivity);
                    UnisdkNtGmBridge.sWebViewDialog.show(refer);
                    UnisdkNtGmBridge.sRefer = refer;
                }
            });
        }
    }

    public static void ntReceiveMessage(String msg) {
        if (sDataManager != null && sActivity != null && !TextUtils.isEmpty(msg)) {
            try {
                JSONObject jsonObject = new JSONObject(msg);
                JSONArray jsonArray = jsonObject.optJSONArray("msgs");
                if (jsonArray != null) {
                    int len = jsonArray.length();
                    for (int i = 0; i < len; i++) {
                        JSONObject object = jsonArray.optJSONObject(i);
                        if (object != null) {
                            sDataManager.addRedIds(object.optString("menu_id"));
                        }
                    }
                } else {
                    sDataManager.addRedIds(jsonObject.optString("menu_id"));
                }
                TaskExecutor.runTaskOnUiThread(new Runnable() { // from class: com.netease.unisdk.gmbridge.UnisdkNtGmBridge.5
                    @Override // java.lang.Runnable
                    public void run() {
                        FloatWindowManager.showRed(UnisdkNtGmBridge.sActivity, UnisdkNtGmBridge.sDataManager.getRedIds());
                    }
                });
            } catch (Exception e) {
                NgLog.e(TAG, "ntReceiveMessage error : " + e.getMessage());
            }
        }
    }

    public static void ntSetGMPageBackground(Drawable bgDrawable) {
        Settings.bgDrawable = bgDrawable;
    }

    public static void ntSetGMPageBackground(int bgColor) {
        Settings.bgColor = bgColor;
    }

    public static void ntSetGMPageSize(float widthPercent, float heightPercent) {
        Settings.widthPercent = widthPercent;
        Settings.heightPercent = heightPercent;
    }

    public static void ntOnResume() {
        if (sActivity != null) {
            NgLog.i(TAG, "ntOnResume :" + sRefer);
            if (!TextUtils.isEmpty(sRefer)) {
                if (sWebViewDialog == null) {
                    ntOpenGMPage(sRefer);
                    return;
                } else {
                    if (!sWebViewDialog.isShowing()) {
                        sWebViewDialog.show();
                        return;
                    }
                    return;
                }
            }
            FloatWindowManager.onResume();
        }
    }

    public static void ntOnPause() {
        if (sActivity != null) {
            NgLog.i(TAG, "ntOnPause");
            if (sWebViewDialog != null) {
                VoiceManager.getInstance(sWebViewDialog.getContext()).stopPlayback();
                sWebViewDialog.jsCallback("", "cancel_record");
            }
            FloatWindowManager.onPause();
        }
    }

    public static void ntDestroy() {
        NgLog.i(TAG, "ntDestroy");
        if (sActivity != null) {
            sActivity.runOnUiThread(new Runnable() { // from class: com.netease.unisdk.gmbridge.UnisdkNtGmBridge.6
                @Override // java.lang.Runnable
                public void run() {
                    if (UnisdkNtGmBridge.sWebViewDialog != null) {
                        UnisdkNtGmBridge.sWebViewDialog.destroy();
                        UnisdkNtGmBridge.sWebViewDialog = null;
                    }
                    if (UnisdkNtGmBridge.sDataManager != null) {
                        UnisdkNtGmBridge.sDataManager.clear();
                        UnisdkNtGmBridge.sDataManager = null;
                    }
                    Settings.reset();
                    TaskExecutor.shutdown();
                    FloatWindowManager.destroyFloatWindow();
                }
            });
            sActivity = null;
        }
    }

    public static void ntOnActivityResult(int requestCode, int resultCode, Intent data) {
        NgLog.i(TAG, "ntOnActivityResult requestCode = %d,resultCode = %d", Integer.valueOf(requestCode), Integer.valueOf(resultCode));
        if (sWebViewDialog != null) {
            if (323 == requestCode) {
                if (data == null) {
                    sWebViewDialog.onPickResult(null);
                    return;
                } else {
                    sWebViewDialog.onPickResult(data.getData());
                    return;
                }
            }
            if (324 == requestCode) {
                sWebViewDialog.onCaptureResult();
            }
        }
    }

    public static String getVersion() {
        return VERSION;
    }

    /* loaded from: classes.dex */
    public static class Settings {
        public static int bgColor;
        public static Drawable bgDrawable;
        public static float heightPercent;
        public static float widthPercent;

        public static void reset() {
            bgDrawable = null;
            bgColor = 0;
            widthPercent = 0.0f;
            heightPercent = 0.0f;
        }
    }
}
