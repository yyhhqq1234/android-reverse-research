package com.netease.inner.pushclient.gcm;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.os.AsyncTask;
import android.support.v4.widget.ExploreByTouchHelper;
import android.text.TextUtils;
import android.util.Log;
import com.netease.inner.pushclient.PushClientReceiver;
import com.netease.inner.pushclient.PushManager;
import com.netease.ntunisdk.base.PatchPlaceholder;
import com.netease.push.utils.PushConstants;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class GCM {
    public static final String EXTRA_MESSAGE = "message";
    private static final int GCM_SUCCESS = 0;
    private static final int PLAY_SERVICES_RESOLUTION_REQUEST = 9000;
    private static final String PROPERTY_APP_VERSION = "appVersion";
    public static final String PROPERTY_REG_ID = "registration_id";
    private static final String TAG = "NGPush_" + GCM.class.getSimpleName();
    private static GCM s_inst = new GCM();
    private Context m_ctx;
    Object m_gcm;
    String m_regid;
    String m_senderID = "";

    private void patchPlaceholder() {
        Log.i(TAG, PatchPlaceholder.class.getSimpleName());
    }

    public static GCM getInst() {
        return s_inst;
    }

    public void init(Context ctx) {
        Log.i(TAG, "init");
        this.m_ctx = ctx;
        this.m_senderID = PushManager.getInstance().getSenderID(ctx, PushConstants.GCM);
        if (TextUtils.isEmpty(this.m_senderID)) {
            Log.e(TAG, "Sender ID is empty, call PushManager.setSenderID() first");
        } else if (checkPlayServices()) {
            registerInBackground();
        } else {
            Log.e(TAG, "No valid Google Play Services APK found.");
        }
    }

    private String getRegistrationID() {
        String regid = PushManager.getInstance().getRegistrationID(this.m_ctx, PushConstants.GCM);
        if (TextUtils.isEmpty(regid)) {
            Log.e(TAG, "regid is empty");
            return "";
        }
        SharedPreferences prefs = getGCMPreferences(this.m_ctx);
        int registeredVersion = prefs.getInt(PROPERTY_APP_VERSION, ExploreByTouchHelper.INVALID_ID);
        int currentVersion = getAppVersion(this.m_ctx);
        if (registeredVersion != currentVersion) {
            Log.e(TAG, "App version changed.");
            return "";
        }
        return regid;
    }

    private SharedPreferences getGCMPreferences(Context context) {
        return context.getSharedPreferences(GCM.class.getSimpleName(), 0);
    }

    private static int getAppVersion(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            return packageInfo.versionCode;
        } catch (Exception e) {
            throw new RuntimeException("Could not get package name: " + e);
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.netease.inner.pushclient.gcm.GCM$1] */
    private void registerInBackground() {
        Log.i(TAG, "registerInBackground");
        new AsyncTask<Void, Void, String>() { // from class: com.netease.inner.pushclient.gcm.GCM.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public String doInBackground(Void... params) {
                String msg = "";
                if (GCM.this.m_gcm == null) {
                    try {
                        Class<?> clazz = Class.forName("com.google.android.gms.gcm.GoogleCloudMessaging");
                        Method method = clazz.getMethod("getInstance", Context.class);
                        GCM.this.m_gcm = method.invoke(null, GCM.this.m_ctx);
                    } catch (Exception e) {
                        Log.e(GCM.TAG, "GoogleCloudMessaging.getInstance error:" + e);
                        e.printStackTrace();
                        return "";
                    }
                }
                try {
                    Method method2 = GCM.this.m_gcm.getClass().getMethod("register", String[].class);
                    Object regid = method2.invoke(GCM.this.m_gcm, new String[]{GCM.this.m_senderID});
                    GCM.this.m_regid = (String) regid;
                    msg = "Device registered, regid=" + GCM.this.m_regid;
                    Log.e(GCM.TAG, msg);
                    GCM.this.storeRegistrationID();
                    return msg;
                } catch (Exception e2) {
                    Log.e(GCM.TAG, "register error:" + e2);
                    e2.printStackTrace();
                    return msg;
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(String msg) {
                if (TextUtils.isEmpty(GCM.this.m_regid)) {
                    return;
                }
                GCM.this.broadcastRegid(GCM.this.m_regid);
            }
        }.execute(new Void[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void storeRegistrationID() {
        PushManager.getInstance().setRegistrationID(this.m_ctx, PushConstants.GCM, this.m_regid);
        int appVersion = getAppVersion(this.m_ctx);
        Log.i(TAG, "Saving regid on app version " + appVersion);
        SharedPreferences prefs = getGCMPreferences(this.m_ctx);
        SharedPreferences.Editor editor = prefs.edit();
        editor.putString(PROPERTY_REG_ID, this.m_regid);
        editor.putInt(PROPERTY_APP_VERSION, appVersion);
        editor.commit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void broadcastRegid(String regid) {
        Intent intent = PushClientReceiver.createNewIDIntent();
        intent.putExtra(PushConstants.INTENT_DEVID_NAME, regid);
        intent.setPackage(this.m_ctx.getPackageName());
        Log.d(TAG, "broadcastRegid:" + regid);
        this.m_ctx.sendBroadcast(intent);
    }

    private boolean checkPlayServices() {
        try {
            Class<?> clazz = Class.forName("com.google.android.gms.common.GooglePlayServicesUtil");
            Method method = clazz.getMethod("isGooglePlayServicesAvailable", Context.class);
            Object result = method.invoke(null, this.m_ctx);
            int resultCode = ((Integer) result).intValue();
            if (resultCode != 0) {
                Method method1 = clazz.getMethod("isUserRecoverableError", Integer.class);
                Object result1 = method1.invoke(null, Integer.valueOf(resultCode));
                Boolean bResult1 = (Boolean) result1;
                if (bResult1.booleanValue()) {
                    Method method2 = clazz.getMethod("getErrorDialog", Integer.class, Activity.class, Integer.class);
                    Object result2 = method2.invoke(null, Integer.valueOf(resultCode), (Activity) this.m_ctx, Integer.valueOf(PLAY_SERVICES_RESOLUTION_REQUEST));
                    Dialog dialog = (Dialog) result2;
                    dialog.show();
                } else {
                    Log.e(TAG, "This device is not supported.");
                }
                return false;
            }
        } catch (InvocationTargetException e) {
            Log.e(TAG, "InvocationTargetException error:" + e.getCause());
            e.printStackTrace();
            throw new RuntimeException(e.getCause());
        } catch (Exception e2) {
            Log.e(TAG, "checkPlayServices error:" + e2);
            e2.printStackTrace();
        }
        return true;
    }
}
