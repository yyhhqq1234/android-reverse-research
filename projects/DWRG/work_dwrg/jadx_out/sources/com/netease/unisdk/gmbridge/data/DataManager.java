package com.netease.unisdk.gmbridge.data;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import com.netease.push.utils.PushConstants;
import com.netease.unisdk.gmbridge.UnisdkNtGmBridge;
import com.netease.unisdk.gmbridge.floatwindow.BtnInfo;
import com.netease.unisdk.gmbridge.floatwindow.FloatWindowManager;
import com.netease.unisdk.gmbridge.log.NgLog;
import com.netease.unisdk.gmbridge.utils.FileUtil;
import com.netease.unisdk.gmbridge.utils.ResIdReader;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class DataManager {
    private static final String GM_FILE_PREFIX = "unisdk_gm_";
    private static final String PREFERENCES_KEY_GM_RED_IDS = "gm_red_ids_";
    private static final String PREFERENCES_KEY_GM_TIME = "gm_time_";
    private static final String PREFERENCES_NAME = "uni_gm_bridge";
    private static final String TAG = "gm_bridge DataManager";
    private UnisdkNtGmBridge.IAsynTokenRequest mAsynTokenRequest;
    private List<BtnInfo> mBtnInfos;
    private Context mContext;
    private IDataCallback mDataCallback;
    private String mGmData;
    private SharedPreferences mPreferences;
    private String mRedMenuIds;
    private String mRefer;
    private String mRoleId;
    private UnisdkNtGmBridge.ITokenRequest mTokenRequest;

    /* loaded from: classes.dex */
    public interface IDataCallback {
        void setBtnInfos(List<BtnInfo> list);

        void setRefer(String str);
    }

    public DataManager(Context context, String roleId) {
        this.mContext = context;
        this.mRoleId = roleId;
        this.mPreferences = context.getSharedPreferences(PREFERENCES_NAME, 0);
        this.mRedMenuIds = this.mPreferences.getString(PREFERENCES_KEY_GM_RED_IDS + this.mRoleId, "");
    }

    public void setRoleId(String roleId) {
        if (TextUtils.isEmpty(this.mRoleId)) {
            this.mRoleId = roleId;
            return;
        }
        if (!this.mRoleId.equals(roleId)) {
            this.mRoleId = roleId;
            this.mRefer = null;
            if (this.mBtnInfos != null) {
                this.mBtnInfos.clear();
                this.mBtnInfos = null;
            }
            this.mGmData = null;
            this.mRedMenuIds = this.mPreferences.getString(PREFERENCES_KEY_GM_RED_IDS + this.mRoleId, "");
        }
    }

    public void setTokenRequest(UnisdkNtGmBridge.ITokenRequest tokenRequest) {
        this.mTokenRequest = tokenRequest;
    }

    public void setAsynTokenRequest(UnisdkNtGmBridge.IAsynTokenRequest asynTokenRequest) {
        this.mAsynTokenRequest = asynTokenRequest;
    }

    private boolean cacheOvertime() {
        long time = this.mPreferences.getLong(PREFERENCES_KEY_GM_TIME + this.mRoleId, 0L);
        if (time == 0) {
            return true;
        }
        long nowTime = System.currentTimeMillis() / 1000;
        return nowTime > time;
    }

    public void addRedIds(String id) {
        NgLog.i(TAG, "addRedIds : " + id);
        if (!TextUtils.isEmpty(id) && !this.mRedMenuIds.contains(id)) {
            if (TextUtils.isEmpty(this.mRedMenuIds)) {
                this.mRedMenuIds = id;
            } else {
                this.mRedMenuIds += "," + id;
            }
            saveRedIds();
        }
    }

    private void saveRedIds() {
        SharedPreferences.Editor editor = this.mPreferences.edit();
        editor.putString(PREFERENCES_KEY_GM_RED_IDS + this.mRoleId, this.mRedMenuIds);
        if (Build.VERSION.SDK_INT >= 9) {
            editor.apply();
        } else {
            editor.commit();
        }
    }

    public String[] getRedIds() {
        if (TextUtils.isEmpty(this.mRedMenuIds) || ",".equals(this.mRedMenuIds)) {
            return null;
        }
        if (this.mRedMenuIds.contains(",")) {
            return this.mRedMenuIds.split(",");
        }
        return new String[]{this.mRedMenuIds};
    }

    public boolean isRedMenu(String id) {
        if (TextUtils.isEmpty(this.mRedMenuIds) || TextUtils.isEmpty(id)) {
            return false;
        }
        return this.mRedMenuIds.contains(id);
    }

    public void removeRedId(String deleteId) {
        if (this.mRedMenuIds.contains(deleteId)) {
            if (deleteId.equals(this.mRedMenuIds)) {
                this.mRedMenuIds = "";
            } else {
                String[] ids = this.mRedMenuIds.split(",");
                this.mRedMenuIds = null;
                for (String id : ids) {
                    if (!id.equals(deleteId)) {
                        if (this.mRedMenuIds == null) {
                            this.mRedMenuIds = id;
                        } else {
                            this.mRedMenuIds += "," + id;
                        }
                    }
                }
            }
            saveRedIds();
        }
    }

    public void getRefer(IDataCallback callback) {
        if (cacheOvertime()) {
            String path = getCachePath();
            NgLog.i(TAG, "cacheOvertime,delete " + path);
            FileUtil.deleteFile(path);
            this.mGmData = null;
            this.mRefer = null;
        }
        if (TextUtils.isEmpty(this.mRefer)) {
            this.mDataCallback = callback;
            loadData(false);
        } else {
            callback.setRefer(this.mRefer);
        }
    }

    public void getBtnInfos(IDataCallback callback) {
        if (cacheOvertime()) {
            String path = getCachePath();
            NgLog.i(TAG, "cacheOvertime,delete " + path);
            FileUtil.deleteFile(path);
            this.mGmData = null;
            if (this.mBtnInfos != null) {
                this.mBtnInfos.clear();
                this.mBtnInfos = null;
            }
        }
        if (this.mBtnInfos == null || this.mBtnInfos.size() == 0) {
            this.mDataCallback = callback;
            loadData(true);
        } else {
            callback.setBtnInfos(this.mBtnInfos);
        }
    }

    private void loadData(boolean needParseMenu) {
        if (this.mGmData == null) {
            this.mGmData = readCache();
        }
        NgLog.i(TAG, "cache data : " + this.mGmData);
        if (TextUtils.isEmpty(this.mGmData)) {
            requestData(needParseMenu);
            return;
        }
        try {
            JSONObject jsonData = new JSONObject(this.mGmData);
            parseData(jsonData, needParseMenu);
        } catch (JSONException e) {
            NgLog.e(TAG, "GmData JSON error : " + e.getMessage());
            this.mGmData = null;
            requestData(needParseMenu);
        }
    }

    private void requestData(final boolean needParseMenu) {
        NgLog.i(TAG, "request data from server");
        if (this.mTokenRequest != null) {
            this.mGmData = this.mTokenRequest.getToken();
            NgLog.i(TAG, "server data : " + this.mGmData);
            saveData();
            parseData(needParseMenu);
            return;
        }
        if (this.mAsynTokenRequest != null) {
            this.mAsynTokenRequest.getToken(new UnisdkNtGmBridge.ITokenSetter() { // from class: com.netease.unisdk.gmbridge.data.DataManager.1
                @Override // com.netease.unisdk.gmbridge.UnisdkNtGmBridge.ITokenSetter
                public void setToken(String token) {
                    DataManager.this.mGmData = token;
                    NgLog.i(DataManager.TAG, "server data : " + DataManager.this.mGmData);
                    DataManager.this.saveData();
                    DataManager.this.parseData(needParseMenu);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveData() {
        if (!TextUtils.isEmpty(this.mGmData)) {
            try {
                JSONObject jsonData = new JSONObject(this.mGmData);
                long time = jsonData.optLong("expireTime");
                SharedPreferences.Editor editor = this.mPreferences.edit();
                editor.putLong(PREFERENCES_KEY_GM_TIME + this.mRoleId, time);
                editor.commit();
                NgLog.i(TAG, "save expireTime : " + time);
                if (FileUtil.writeFile(getCachePath(), this.mGmData, false)) {
                    NgLog.i(TAG, "save cache data success");
                }
            } catch (Exception e) {
                NgLog.e(TAG, "saveData error : " + e.getMessage());
            }
        }
    }

    private String readCache() {
        String path = getCachePath();
        NgLog.i(TAG, "read cache : " + path);
        File textFile = new File(path);
        if (textFile.exists()) {
            return FileUtil.readFile(path, "UTF-8");
        }
        return null;
    }

    private String getCachePath() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.mContext.getFilesDir().getAbsolutePath()).append(File.separator);
        sb.append(GM_FILE_PREFIX).append(this.mRoleId);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void parseData(boolean needParseMenu) {
        try {
            JSONObject jsonData = new JSONObject(this.mGmData);
            parseData(jsonData, needParseMenu);
        } catch (JSONException e) {
            NgLog.e(TAG, "GmData JSON error : " + e.getMessage());
        }
    }

    private void parseData(JSONObject jsonObject, boolean needParseMenu) {
        try {
            if (needParseMenu) {
                JSONArray menuArray = jsonObject.optJSONArray("menu");
                parseMenu(menuArray);
            } else {
                this.mRefer = jsonObject.optString("refer");
                this.mDataCallback.setRefer(this.mRefer);
            }
        } catch (Exception e) {
            NgLog.e(TAG, "parseData error : " + e.getMessage());
        }
    }

    private void parseMenu(JSONArray menuArray) {
        int len = menuArray.length();
        if (len > 0) {
            this.mBtnInfos = new ArrayList(len);
            for (int i = 0; i < len; i++) {
                JSONObject menuItem = menuArray.optJSONObject(i);
                BtnInfo btnInfo = new BtnInfo();
                btnInfo.id = menuItem.optString(ResIdReader.RES_TYPE_ID);
                btnInfo.name = menuItem.optString("name");
                btnInfo.url = menuItem.optString("url");
                FloatWindowManager.getBtnIcon(this.mContext, btnInfo, menuItem.optString(PushConstants.MESSAGE_ICON));
                this.mBtnInfos.add(btnInfo);
            }
            this.mDataCallback.setBtnInfos(this.mBtnInfos);
        }
    }

    public void clearBtnInfos() {
        if (this.mBtnInfos != null) {
            this.mBtnInfos.clear();
            this.mBtnInfos = null;
        }
    }

    public void clear() {
        clearBtnInfos();
        this.mRoleId = null;
        this.mRefer = null;
    }
}
