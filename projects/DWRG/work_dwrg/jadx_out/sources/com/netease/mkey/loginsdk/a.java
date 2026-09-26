package com.netease.mkey.loginsdk;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.mkey.a;
import com.netease.mkey.b;

/* compiled from: LoginHelper.java */
/* loaded from: classes.dex */
public class a {
    private static Handler a;
    private static Context b;
    private static com.netease.mkey.a c;
    private static b d;
    private static ServiceConnection e;

    private static boolean a(String str, PackageManager packageManager) {
        try {
            packageManager.getPackageInfo(str, 1);
            return true;
        } catch (PackageManager.NameNotFoundException e2) {
            return false;
        }
    }

    private static int b(String str, PackageManager packageManager) {
        try {
            return packageManager.getPackageInfo(str, 0).versionCode;
        } catch (PackageManager.NameNotFoundException e2) {
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(String str, String str2, String str3, String str4) {
        StringBuilder sb = new StringBuilder("mkey://login?");
        sb.append("urs=").append(str).append(com.alipay.sdk.sys.a.b).append("pid=").append(str2).append(com.alipay.sdk.sys.a.b).append("uuid=").append(str3).append(com.alipay.sdk.sys.a.b).append("sign=").append(str4);
        return sb.toString();
    }

    public static void a(Context context, final String str, final String str2, final String str3, final String str4, final LoginCallback loginCallback) {
        if (!a(BaseConstants.GENERAL_MKEY_PKG_NAME, context.getPackageManager())) {
            loginCallback.onError(5, "没有安装将军令");
            return;
        }
        if (b(BaseConstants.GENERAL_MKEY_PKG_NAME, context.getPackageManager()) < 40) {
            loginCallback.onError(6, "将军令版本太低,请先升级");
            return;
        }
        a = new Handler() { // from class: com.netease.mkey.loginsdk.a.1
            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                if (msg.what == 0) {
                    int i = msg.getData().getInt("code");
                    String string = msg.getData().getString("info");
                    if (i == 0) {
                        LoginCallback.this.onSuccess();
                    } else if (i == 8) {
                        LoginCallback.this.onCancel();
                    } else {
                        LoginCallback.this.onError(i, string);
                    }
                }
            }
        };
        b = context.getApplicationContext();
        e = new ServiceConnection() { // from class: com.netease.mkey.loginsdk.a.2
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName className, IBinder service) {
                com.netease.mkey.a unused = a.c = a.AbstractBinderC0029a.a(service);
                try {
                    a.c.a(a.b(str, str2, str3, str4), a.d);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                } catch (SecurityException e3) {
                    e3.printStackTrace();
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName className) {
            }
        };
        d = new b.a() { // from class: com.netease.mkey.loginsdk.a.3
            @Override // com.netease.mkey.b
            public void a(int i, String str5) {
                Message obtain = Message.obtain(a.a, 0);
                Bundle bundle = new Bundle();
                bundle.putInt("code", i);
                bundle.putString("info", str5);
                obtain.setData(bundle);
                obtain.sendToTarget();
                a.b.unbindService(a.e);
                ServiceConnection unused = a.e = null;
                com.netease.mkey.a unused2 = a.c = null;
                Context unused3 = a.b = null;
                b unused4 = a.d = null;
            }

            @Override // com.netease.mkey.b
            public String a() {
                return str2;
            }
        };
        try {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName(BaseConstants.GENERAL_MKEY_PKG_NAME, "com.netease.mkey.service.LoginAuthService"));
            if (b.bindService(intent, e, 1)) {
                Log.v("mkey_login_sdk", "bind succeed");
            } else {
                Log.v("mkey_login_sdk", "bind failed");
                loginCallback.onError(4, "调用将军令服务失败,请检查权限设置");
            }
        } catch (SecurityException e2) {
            loginCallback.onError(4, "调用将军令服务失败,请检查权限设置");
        }
    }
}
