package com.netease.unisdk.gmbridge.floatwindow;

import android.content.Context;
import android.text.TextUtils;
import com.netease.unisdk.gmbridge.UnisdkNtGmBridge;
import com.netease.unisdk.gmbridge.data.DataManager;
import com.netease.unisdk.gmbridge.log.NgLog;
import com.netease.unisdk.gmbridge.utils.BitmapUtil;
import com.netease.unisdk.gmbridge.utils.ResIdReader;
import com.netease.unisdk.gmbridge.view.FloatWindow;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

/* loaded from: classes.dex */
public class FloatWindowManager {
    public static int ICON_HEIGHT = 0;
    public static int ICON_WIDTH = 0;
    private static final String TAG = "gm_bridge FloatWindowManager";
    private static FloatWindow sFloatWindow;
    private static int sGravity;
    public static String sIconDirName = "gm_icon";
    private static boolean sFloatBtnVisible = true;

    public static void initGmFloatWindow(Context context, int gravity) {
        sGravity = gravity;
        if (sFloatWindow == null) {
            sFloatWindow = new FloatWindow(context, gravity);
        }
        if (sFloatBtnVisible) {
            sFloatWindow.show();
        }
    }

    public static void setFloatBtnVisible(boolean v) {
        sFloatBtnVisible = v;
        if (sFloatWindow != null) {
            if (v) {
                if (!sFloatWindow.isShowing()) {
                    sFloatWindow.show();
                }
            } else if (sFloatWindow.isShowing()) {
                sFloatWindow.hide();
            }
        }
    }

    public static void showRed(Context context, String[] redMenuIds) {
        if (sFloatWindow == null) {
            if (sGravity == 0) {
                sGravity = 83;
            }
            initGmFloatWindow(context, sGravity);
        }
        sFloatWindow.showRed(redMenuIds);
    }

    public static void removeRedMenuIds(String id) {
        DataManager dataManager = UnisdkNtGmBridge.sDataManager;
        if (dataManager != null) {
            dataManager.removeRedId(id);
            String[] ids = dataManager.getRedIds();
            if (ids == null) {
                sFloatWindow.hideRed();
            }
        }
    }

    public static boolean isRedMenu(String id) {
        DataManager dataManager = UnisdkNtGmBridge.sDataManager;
        return dataManager != null && dataManager.isRedMenu(id);
    }

    public static void onResume() {
        NgLog.i(TAG, "onResume");
        if (sFloatWindow != null && sFloatBtnVisible) {
            sFloatWindow.show();
        }
    }

    public static void onPause() {
        NgLog.i(TAG, "onPause");
        if (sFloatWindow != null) {
            sFloatWindow.hide();
        }
    }

    public static void destroyFloatWindow() {
        if (sFloatWindow != null) {
            sFloatWindow.destroy();
            sFloatWindow = null;
            if (UnisdkNtGmBridge.sDataManager != null) {
                UnisdkNtGmBridge.sDataManager.clearBtnInfos();
            }
        }
    }

    public static void hideExpandLayout() {
        if (sFloatWindow != null) {
            sFloatWindow.hideExpandLayout();
        }
    }

    public static void loadBtnInfos(final Context context, final DataManager.IDataCallback callback) {
        UnisdkNtGmBridge.sDataManager.getBtnInfos(new DataManager.IDataCallback() { // from class: com.netease.unisdk.gmbridge.floatwindow.FloatWindowManager.1
            @Override // com.netease.unisdk.gmbridge.data.DataManager.IDataCallback
            public void setBtnInfos(List<BtnInfo> btnInfos) {
                if (btnInfos != null && !FloatWindowManager.hasCloseBtn(btnInfos)) {
                    btnInfos.add(FloatWindowManager.createCloseBtnInfo(context));
                } else {
                    btnInfos = new ArrayList<>(1);
                    btnInfos.add(FloatWindowManager.createCloseBtnInfo(context));
                }
                callback.setBtnInfos(btnInfos);
            }

            @Override // com.netease.unisdk.gmbridge.data.DataManager.IDataCallback
            public void setRefer(String refer) {
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean hasCloseBtn(List<BtnInfo> btnInfos) {
        for (BtnInfo btnInfo : btnInfos) {
            if ("close".equals(btnInfo.url)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static BtnInfo createCloseBtnInfo(Context context) {
        BtnInfo closeBtnInfo = new BtnInfo();
        closeBtnInfo.url = "close";
        closeBtnInfo.name = context.getResources().getString(ResIdReader.getStringId(context, "uni_gm_f_close"));
        closeBtnInfo.iconBmp = BitmapUtil.decodeResource(context, "uni_gm_f_close");
        ICON_WIDTH = closeBtnInfo.iconBmp.getWidth();
        ICON_HEIGHT = closeBtnInfo.iconBmp.getHeight();
        return closeBtnInfo;
    }

    public static void getBtnIcon(Context context, BtnInfo btnInfo, String iconUrl) {
        if (!TextUtils.isEmpty(iconUrl)) {
            NgLog.i(TAG, "iconUrl = " + iconUrl);
            if (iconUrl.startsWith(BtnInfo.ICON_PREFIX)) {
                btnInfo.iconBmp = BitmapUtil.decodeResource(context, iconUrl);
                return;
            }
            File dir = new File(context.getFilesDir(), sIconDirName);
            if (!dir.exists()) {
                dir.mkdirs();
            }
            String name = iconUrl.substring(iconUrl.lastIndexOf(File.separator) + 1);
            File iconFile = new File(dir, name);
            if (iconFile.exists()) {
                btnInfo.iconBmp = BitmapUtil.decodeFile(iconFile.getAbsolutePath(), ICON_WIDTH, ICON_HEIGHT);
                return;
            }
            if (downloadIcon(iconUrl, iconFile)) {
                NgLog.i(TAG, "downloadIcon iconUrl success");
                btnInfo.iconBmp = BitmapUtil.decodeFile(iconFile.getAbsolutePath(), ICON_WIDTH, ICON_HEIGHT);
            } else if (iconFile.exists()) {
                iconFile.delete();
            }
        }
    }

    private static boolean downloadIcon(String iconUrl, File file) {
        try {
            Request request = new Request.Builder().url(iconUrl).build();
            OkHttpClient client = new OkHttpClient();
            Response response = client.newCall(request).execute();
            InputStream in = response.body().byteStream();
            OutputStream out = new FileOutputStream(file);
            byte[] buf = new byte[1024];
            while (true) {
                int len = in.read(buf);
                if (len > 0) {
                    out.write(buf, 0, len);
                } else {
                    out.close();
                    in.close();
                    return true;
                }
            }
        } catch (Exception e) {
            NgLog.e(TAG, "downloadIcon error : " + e.getMessage());
            return false;
        }
    }
}
