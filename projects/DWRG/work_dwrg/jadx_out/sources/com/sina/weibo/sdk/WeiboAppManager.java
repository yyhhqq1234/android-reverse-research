package com.sina.weibo.sdk;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.netease.push.utils.PushConstants;
import com.sina.weibo.sdk.utils.LogUtil;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class WeiboAppManager {
    private static final String SDK_INT_FILE_NAME = "weibo_for_sdk.json";
    private static final String WEIBO_IDENTITY_ACTION = "com.sina.weibo.action.sdkidentity";
    private static WeiboAppManager sInstance;
    private Context mContext;
    private static final String TAG = WeiboAppManager.class.getName();
    private static final Uri WEIBO_NAME_URI = Uri.parse("content://com.sina.weibo.sdkProvider/query/package");

    /* loaded from: classes.dex */
    public static class WeiboInfo {
        private String mPackageName;
        private int mSupportApi;

        /* JADX INFO: Access modifiers changed from: private */
        public void setPackageName(String packageName) {
            this.mPackageName = packageName;
        }

        public String getPackageName() {
            return this.mPackageName;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSupportApi(int supportApi) {
            this.mSupportApi = supportApi;
        }

        public int getSupportApi() {
            return this.mSupportApi;
        }

        public boolean isLegal() {
            return !TextUtils.isEmpty(this.mPackageName) && this.mSupportApi > 0;
        }

        public String toString() {
            return "WeiboInfo: PackageName = " + this.mPackageName + ", supportApi = " + this.mSupportApi;
        }
    }

    private WeiboAppManager(Context context) {
        this.mContext = context.getApplicationContext();
    }

    public static synchronized WeiboAppManager getInstance(Context context) {
        WeiboAppManager weiboAppManager;
        synchronized (WeiboAppManager.class) {
            if (sInstance == null) {
                sInstance = new WeiboAppManager(context);
            }
            weiboAppManager = sInstance;
        }
        return weiboAppManager;
    }

    public synchronized WeiboInfo getWeiboInfo() {
        return queryWeiboInfoInternal(this.mContext);
    }

    private WeiboInfo queryWeiboInfoInternal(Context context) {
        WeiboInfo winfo1 = queryWeiboInfoByProvider(context);
        WeiboInfo winfo2 = queryWeiboInfoByAsset(context);
        boolean hasWinfo1 = winfo1 != null;
        boolean hasWinfo2 = winfo2 != null;
        if (hasWinfo1 && hasWinfo2) {
            return winfo1.getSupportApi() >= winfo2.getSupportApi() ? winfo1 : winfo2;
        }
        if (!hasWinfo1) {
            if (hasWinfo2) {
                return winfo2;
            }
            return null;
        }
        return winfo1;
    }

    private WeiboInfo queryWeiboInfoByProvider(Context context) {
        Cursor cursor;
        ContentResolver cr = context.getContentResolver();
        Cursor cursor2 = null;
        try {
            try {
                cursor = cr.query(WEIBO_NAME_URI, null, null, null, null);
            } catch (Exception e) {
                LogUtil.e(TAG, e.getMessage());
                if (0 != 0) {
                    cursor2.close();
                }
            }
            if (cursor == null) {
                if (cursor != null) {
                    cursor.close();
                }
                return null;
            }
            int supportApiIndex = cursor.getColumnIndex("support_api");
            int packageIndex = cursor.getColumnIndex(PushConstants.INTENT_PACKAGE_NAME);
            if (cursor.moveToFirst()) {
                int supportApiInt = -1;
                String supportApi = cursor.getString(supportApiIndex);
                try {
                    supportApiInt = Integer.parseInt(supportApi);
                } catch (NumberFormatException e2) {
                    e2.printStackTrace();
                }
                String packageName = cursor.getString(packageIndex);
                if (!TextUtils.isEmpty(packageName) && ApiUtils.validateWeiboSign(context, packageName)) {
                    WeiboInfo winfo = new WeiboInfo();
                    winfo.setPackageName(packageName);
                    winfo.setSupportApi(supportApiInt);
                    if (cursor == null) {
                        return winfo;
                    }
                    cursor.close();
                    return winfo;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            return null;
        } catch (Throwable th) {
            if (0 != 0) {
                cursor2.close();
            }
            throw th;
        }
    }

    private WeiboInfo queryWeiboInfoByAsset(Context context) {
        Intent intent = new Intent(WEIBO_IDENTITY_ACTION);
        intent.addCategory("android.intent.category.DEFAULT");
        List<ResolveInfo> list = context.getPackageManager().queryIntentServices(intent, 0);
        if (list == null || list.isEmpty()) {
            return null;
        }
        WeiboInfo weiboInfo = null;
        for (ResolveInfo ri : list) {
            if (ri.serviceInfo != null && ri.serviceInfo.applicationInfo != null && !TextUtils.isEmpty(ri.serviceInfo.applicationInfo.packageName)) {
                String packageName = ri.serviceInfo.applicationInfo.packageName;
                WeiboInfo tmpWeiboInfo = parseWeiboInfoByAsset(packageName);
                if (tmpWeiboInfo != null) {
                    if (weiboInfo == null) {
                        weiboInfo = tmpWeiboInfo;
                    } else if (weiboInfo.getSupportApi() < tmpWeiboInfo.getSupportApi()) {
                        weiboInfo = tmpWeiboInfo;
                    }
                }
            }
        }
        return weiboInfo;
    }

    public WeiboInfo parseWeiboInfoByAsset(String packageName) {
        if (TextUtils.isEmpty(packageName)) {
            return null;
        }
        InputStream is = null;
        try {
            try {
                try {
                    Context weiboContext = this.mContext.createPackageContext(packageName, 2);
                    byte[] buf = new byte[4096];
                    is = weiboContext.getAssets().open(SDK_INT_FILE_NAME);
                    StringBuilder sbContent = new StringBuilder();
                    while (true) {
                        int readNum = is.read(buf, 0, 4096);
                        if (readNum == -1) {
                            break;
                        }
                        sbContent.append(new String(buf, 0, readNum));
                    }
                    if (TextUtils.isEmpty(sbContent.toString()) || !ApiUtils.validateWeiboSign(this.mContext, packageName)) {
                        if (is != null) {
                            try {
                                is.close();
                            } catch (IOException e) {
                                LogUtil.e(TAG, e.getMessage());
                            }
                        }
                        return null;
                    }
                    JSONObject json = new JSONObject(sbContent.toString());
                    int supportApi = json.optInt("support_api", -1);
                    WeiboInfo winfo = new WeiboInfo();
                    winfo.setPackageName(packageName);
                    winfo.setSupportApi(supportApi);
                    if (is == null) {
                        return winfo;
                    }
                    try {
                        is.close();
                        return winfo;
                    } catch (IOException e2) {
                        LogUtil.e(TAG, e2.getMessage());
                        return winfo;
                    }
                } catch (Throwable th) {
                    if (is != null) {
                        try {
                            is.close();
                        } catch (IOException e3) {
                            LogUtil.e(TAG, e3.getMessage());
                        }
                    }
                    throw th;
                }
            } catch (JSONException e4) {
                LogUtil.e(TAG, e4.getMessage());
                if (is != null) {
                    try {
                        is.close();
                    } catch (IOException e5) {
                        LogUtil.e(TAG, e5.getMessage());
                    }
                }
                return null;
            } catch (Exception e6) {
                LogUtil.e(TAG, e6.getMessage());
                if (is != null) {
                    try {
                        is.close();
                    } catch (IOException e7) {
                        LogUtil.e(TAG, e7.getMessage());
                    }
                }
                return null;
            }
        } catch (PackageManager.NameNotFoundException e8) {
            LogUtil.e(TAG, e8.getMessage());
            if (is != null) {
                try {
                    is.close();
                } catch (IOException e9) {
                    LogUtil.e(TAG, e9.getMessage());
                }
            }
            return null;
        } catch (IOException e10) {
            LogUtil.e(TAG, e10.getMessage());
            if (is != null) {
                try {
                    is.close();
                } catch (IOException e11) {
                    LogUtil.e(TAG, e11.getMessage());
                }
            }
            return null;
        }
    }
}
