package com.sina.weibo.sdk.cmd;

import android.content.Context;
import android.content.SharedPreferences;
import com.netease.environment.config.SdkConstants;
import com.sina.weibo.sdk.constant.WBConstants;
import com.sina.weibo.sdk.exception.WeiboException;
import com.sina.weibo.sdk.net.NetUtils;
import com.sina.weibo.sdk.net.WeiboParameters;
import com.sina.weibo.sdk.utils.AesEncrypt;
import com.sina.weibo.sdk.utils.LogUtil;
import com.sina.weibo.sdk.utils.Utility;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public class WbAppActivator {
    private static final String TAG = WbAppActivator.class.getName();
    private static WbAppActivator mInstance;
    private String mAppkey;
    private Context mContext;
    private AppInstallCmdExecutor mInstallExecutor;
    private AppInvokeCmdExecutor mInvokeExecutor;
    private volatile ReentrantLock mLock = new ReentrantLock(true);

    private WbAppActivator(Context ctx, String appkey) {
        this.mContext = ctx.getApplicationContext();
        this.mInvokeExecutor = new AppInvokeCmdExecutor(this.mContext);
        this.mInstallExecutor = new AppInstallCmdExecutor(this.mContext);
        this.mAppkey = appkey;
    }

    public static synchronized WbAppActivator getInstance(Context ctx, String appkey) {
        WbAppActivator wbAppActivator;
        synchronized (WbAppActivator.class) {
            if (mInstance == null) {
                mInstance = new WbAppActivator(ctx, appkey);
            }
            wbAppActivator = mInstance;
        }
        return wbAppActivator;
    }

    public void activateApp() {
        final SharedPreferences sdkSp = FrequencyHelper.getWeiboSdkSp(this.mContext);
        long frequency = FrequencyHelper.getFrequency(this.mContext, sdkSp);
        long lastTime = FrequencyHelper.getLastTime(this.mContext, sdkSp);
        long period = System.currentTimeMillis() - lastTime;
        if (period < frequency) {
            LogUtil.v(TAG, String.format("it's only %d ms from last time get cmd", Long.valueOf(period)));
        } else {
            new Thread(new Runnable() { // from class: com.sina.weibo.sdk.cmd.WbAppActivator.1
                @Override // java.lang.Runnable
                public void run() {
                    LogUtil.v(WbAppActivator.TAG, "mLock.isLocked()--->" + WbAppActivator.this.mLock.isLocked());
                    if (WbAppActivator.this.mLock.tryLock()) {
                        CmdInfo cmds = null;
                        try {
                            try {
                                String result = WbAppActivator.requestCmdInfo(WbAppActivator.this.mContext, WbAppActivator.this.mAppkey);
                                if (result != null) {
                                    String decryptStr = AesEncrypt.Decrypt(result);
                                    CmdInfo cmds2 = new CmdInfo(decryptStr);
                                    try {
                                        WbAppActivator.this.handleInstallCmd(cmds2.getInstallCmds());
                                        WbAppActivator.this.handleInvokeCmd(cmds2.getInvokeCmds());
                                        cmds = cmds2;
                                    } catch (WeiboException e) {
                                        e = e;
                                        cmds = cmds2;
                                        LogUtil.e(WbAppActivator.TAG, e.getMessage());
                                        WbAppActivator.this.mLock.unlock();
                                        if (cmds != null) {
                                            FrequencyHelper.saveFrequency(WbAppActivator.this.mContext, sdkSp, cmds.getFrequency());
                                            FrequencyHelper.saveLastTime(WbAppActivator.this.mContext, sdkSp, System.currentTimeMillis());
                                        }
                                        LogUtil.v(WbAppActivator.TAG, "after unlock \n mLock.isLocked()--->" + WbAppActivator.this.mLock.isLocked());
                                        return;
                                    } catch (Throwable th) {
                                        th = th;
                                        cmds = cmds2;
                                        WbAppActivator.this.mLock.unlock();
                                        if (cmds != null) {
                                            FrequencyHelper.saveFrequency(WbAppActivator.this.mContext, sdkSp, cmds.getFrequency());
                                            FrequencyHelper.saveLastTime(WbAppActivator.this.mContext, sdkSp, System.currentTimeMillis());
                                        }
                                        LogUtil.v(WbAppActivator.TAG, "after unlock \n mLock.isLocked()--->" + WbAppActivator.this.mLock.isLocked());
                                        throw th;
                                    }
                                }
                                WbAppActivator.this.mLock.unlock();
                                if (cmds != null) {
                                    FrequencyHelper.saveFrequency(WbAppActivator.this.mContext, sdkSp, cmds.getFrequency());
                                    FrequencyHelper.saveLastTime(WbAppActivator.this.mContext, sdkSp, System.currentTimeMillis());
                                }
                                LogUtil.v(WbAppActivator.TAG, "after unlock \n mLock.isLocked()--->" + WbAppActivator.this.mLock.isLocked());
                            } catch (WeiboException e2) {
                                e = e2;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    }
                }
            }).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String requestCmdInfo(Context ctx, String appkey) {
        String pkgName = ctx.getPackageName();
        String keyHash = Utility.getSign(ctx, pkgName);
        WeiboParameters params = new WeiboParameters(appkey);
        params.put("appkey", appkey);
        params.put("packagename", pkgName);
        params.put("key_hash", keyHash);
        params.put("version", WBConstants.WEIBO_SDK_VERSION_CODE);
        return NetUtils.internalHttpRequest(ctx, "http://api.weibo.cn/2/client/common_config", "GET", params);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleInstallCmd(List<AppInstallCmd> installCmds) {
        if (installCmds != null) {
            this.mInstallExecutor.start();
            for (AppInstallCmd installCmd : installCmds) {
                this.mInstallExecutor.doExecutor(installCmd);
            }
            this.mInstallExecutor.stop();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleInvokeCmd(List<AppInvokeCmd> invokeCmds) {
        if (invokeCmds != null) {
            for (AppInvokeCmd invokeCmd : invokeCmds) {
                this.mInvokeExecutor.doExecutor(invokeCmd);
            }
        }
    }

    /* loaded from: classes.dex */
    private static class FrequencyHelper {
        private static final int DEFAULT_FREQUENCY = 3600000;
        private static final String KEY_FREQUENCY = "frequency_get_cmd";
        private static final String KEY_LAST_TIME_GET_CMD = "last_time_get_cmd";
        private static final String WEIBO_SDK_PREFERENCES_NAME = "com_sina_weibo_sdk";

        private FrequencyHelper() {
        }

        public static SharedPreferences getWeiboSdkSp(Context ctx) {
            SharedPreferences pref = ctx.getSharedPreferences(WEIBO_SDK_PREFERENCES_NAME, 0);
            return pref;
        }

        public static long getFrequency(Context ctx, SharedPreferences sp) {
            return sp != null ? sp.getLong(KEY_FREQUENCY, SdkConstants.AN_HOUR) : SdkConstants.AN_HOUR;
        }

        public static void saveFrequency(Context ctx, SharedPreferences sp, long frequency) {
            if (sp != null && frequency > 0) {
                SharedPreferences.Editor editor = sp.edit();
                editor.putLong(KEY_FREQUENCY, frequency);
                editor.commit();
            }
        }

        public static long getLastTime(Context ctx, SharedPreferences sp) {
            if (sp != null) {
                return sp.getLong(KEY_LAST_TIME_GET_CMD, 0L);
            }
            return 0L;
        }

        public static void saveLastTime(Context ctx, SharedPreferences sp, long lastTime) {
            if (sp != null) {
                SharedPreferences.Editor editor = sp.edit();
                editor.putLong(KEY_LAST_TIME_GET_CMD, lastTime);
                editor.commit();
            }
        }
    }
}
