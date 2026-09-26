package im.yixin.sdk.api;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.widget.Toast;
import im.yixin.sdk.api.SendAuthToYX;
import im.yixin.sdk.api.SendMessageToYX;
import im.yixin.sdk.api.ShowYXMessageFromYX;
import im.yixin.sdk.channel.YXMessageActivityChannel;
import im.yixin.sdk.channel.YXMessageChannel;
import im.yixin.sdk.channel.YXMessageProtocol;
import im.yixin.sdk.channel.YXMessageUtil;
import im.yixin.sdk.util.SDKFeedBackUtils;
import im.yixin.sdk.util.SDKLogger;
import im.yixin.sdk.util.YixinConstants;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class YXApiImplementation implements IYXAPI {
    private String appId;
    private Context applicationContext;
    private HandlerThread handlerThread = new HandlerThread("YXApiImplementation_HandlerThread");
    private Handler mHandler;

    /* JADX INFO: Access modifiers changed from: package-private */
    public YXApiImplementation(Context paramContext, String paramAppId) {
        this.applicationContext = paramContext.getApplicationContext();
        this.appId = paramAppId;
        this.handlerThread.start();
        this.mHandler = new Handler(this.handlerThread.getLooper());
    }

    private void toast(final CharSequence text, final int duration) {
        this.mHandler.post(new Runnable() { // from class: im.yixin.sdk.api.YXApiImplementation.1
            @Override // java.lang.Runnable
            public void run() {
                Toast.makeText(YXApiImplementation.this.applicationContext, text, duration).show();
            }
        });
    }

    @Override // im.yixin.sdk.api.IYXAPI
    public boolean isYXAppInstalled() {
        SDKLogger.i(YXApiImplementation.class, "isYXAppInstalled");
        return validateYixinAppSignature();
    }

    @Override // im.yixin.sdk.api.IYXAPI
    public boolean isSupportOauth() {
        PackageInfo packageInfo = getYixinAppPackageInfo();
        return validateYixinOauthAppVersion(packageInfo);
    }

    @Override // im.yixin.sdk.api.IYXAPI
    public boolean isSupportCollect() {
        PackageInfo packageInfo = getYixinAppPackageInfo();
        return validateYixinCollectAppVersion(packageInfo);
    }

    private boolean validateYixinCollectAppVersion(PackageInfo packageInfo) {
        SDKLogger.i(YXApiImplementation.class, "(packageInfo != null)=" + (packageInfo != null) + ",packageInfo.versionCode=" + packageInfo.versionCode);
        return packageInfo != null && packageInfo.versionCode > 183;
    }

    private void showYixinDownloadPage() {
        try {
            SDKLogger.i(YXApiImplementation.class, "showYixinDownloadPage:http://yixin.im/");
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            Uri content_url = Uri.parse("http://yixin.im/");
            intent.setData(content_url);
            intent.addFlags(268435456);
            this.applicationContext.startActivity(intent);
        } catch (Exception e) {
            SDKLogger.e(YXApiImplementation.class, "showYixinDownloadPage:http://yixin.im/ failed!", e);
            toast("您还未安装易信，请下载安装!", 0);
        }
    }

    private boolean validateYixinAppSignature() {
        SDKLogger.i(YXApiImplementation.class, "validateYixinSignature");
        try {
            PackageInfo packageInfo = getYixinAppPackageInfo();
            if (packageInfo == null) {
                return false;
            }
            return validateYixinAppSignature(packageInfo.signatures);
        } catch (Exception e) {
            SDKFeedBackUtils.getInstance().postErrorLog(YXApiImplementation.class, "error when validateYixinAppSignature", e);
            return false;
        }
    }

    private PackageInfo getYixinAppPackageInfo() {
        try {
            return this.applicationContext.getPackageManager().getPackageInfo(YixinConstants.YIXIN_APP_PACKAGE_NAME, 64);
        } catch (PackageManager.NameNotFoundException localNameNotFoundException) {
            SDKLogger.i(YXApiImplementation.class, "error when getYixinAppPackageInfo: " + localNameNotFoundException.getMessage());
            return null;
        }
    }

    private boolean validateYixinAppSignature(Signature[] signature) {
        if (signature == null) {
            return false;
        }
        for (Signature aSignature : signature) {
            String str = aSignature.toCharsString();
            if (str.equals(YixinConstants.YIXIN_SIGNATURE_STRING) || str.equals(YixinConstants.YIXIN_TEST_SIGNATURE_STRING) || str.equals(YixinConstants.SDKSERVER_TEST_SIGNATURE_STRING)) {
                return true;
            }
        }
        return false;
    }

    private boolean validateYixinAppVersion(PackageInfo packageInfo) {
        SDKLogger.i(YXApiImplementation.class, "(packageInfo != null)=" + (packageInfo != null) + ",packageInfo.versionCode=" + packageInfo.versionCode);
        return packageInfo != null && packageInfo.versionCode > 146;
    }

    private boolean validateYixinOauthAppVersion(PackageInfo packageInfo) {
        SDKLogger.i(YXApiImplementation.class, "(packageInfo != null)=" + (packageInfo != null) + ",packageInfo.versionCode=" + packageInfo.versionCode);
        return packageInfo != null && packageInfo.versionCode > 178;
    }

    @Override // im.yixin.sdk.api.IYXAPI
    public boolean registerApp() {
        SDKLogger.i(YXApiImplementation.class, "registerApp");
        if (!validateYixinAppSignature() || YXMessageUtil.isBlank(this.appId)) {
            SDKLogger.i(YXApiImplementation.class, "registerApp: validateYixinSignature - false or isBlank(this.appId)!");
            return false;
        }
        YXMessageChannel.sendData2Yixin(this.applicationContext, YixinConstants.YIXIN_APP_PACKAGE_NAME, YixinConstants.INTENT_ACTION_REGISTER, "yixin://registerapp?appid=" + this.appId);
        return true;
    }

    @Override // im.yixin.sdk.api.IYXAPI
    public void unRegisterApp() {
        SDKLogger.i(YXApiImplementation.class, "unregisterApp");
        if (!validateYixinAppSignature() || YXMessageUtil.isBlank(this.appId)) {
            SDKLogger.i(YXApiImplementation.class, "unregisterApp: validateYixinSignature - false or isBlank(this.appId)!");
        } else {
            YXMessageChannel.sendData2Yixin(this.applicationContext, YixinConstants.YIXIN_APP_PACKAGE_NAME, YixinConstants.INTENT_ACTION_UNREGISTER, "yixin://unregisterapp?appid=" + this.appId);
            this.handlerThread.quit();
        }
    }

    @Override // im.yixin.sdk.api.IYXAPI
    public boolean sendRequest(BaseReq paramBaseReq) {
        boolean sendData2Yixin;
        ExceptionInfo exceptionInfo = new ExceptionInfo(paramBaseReq, YXApiImplementation.class);
        try {
            PackageInfo packageInfo = getYixinAppPackageInfo();
            if (packageInfo == null) {
                toast("您还未安装易信，请下载安装!", 0);
                showYixinDownloadPage();
                sendData2Yixin = false;
            } else if (!validateYixinAppSignature(packageInfo.signatures)) {
                toast("易信校验失败，请使用易信官方版本!", 0);
                showYixinDownloadPage();
                sendData2Yixin = false;
            } else if (paramBaseReq == null) {
                SDKFeedBackUtils.getInstance().postErrorLog(exceptionInfo, "sendReq error parameter paramBaseReq is null.");
                sendData2Yixin = false;
            } else if (!validateYixinAppVersion(packageInfo)) {
                SDKFeedBackUtils.getInstance().postErrorLog(YXApiImplementation.class, "validateYixinAppVersion false, 您的易信版本过低，请先升级!", null);
                toast("您的易信版本过低，请先升级!", 0);
                showYixinDownloadPage();
                sendData2Yixin = false;
            } else if ((paramBaseReq instanceof SendAuthToYX.Req) && !validateYixinOauthAppVersion(packageInfo)) {
                toast("您的易信版本过低，请先升级!", 0);
                showYixinDownloadPage();
                sendData2Yixin = false;
            } else {
                if (paramBaseReq instanceof SendMessageToYX.Req) {
                    SendMessageToYX.Req baseReq = (SendMessageToYX.Req) paramBaseReq;
                    if (baseReq.scene == 2 && !validateYixinCollectAppVersion(packageInfo)) {
                        toast("您的易信版本过低，请先升级!", 0);
                        showYixinDownloadPage();
                        sendData2Yixin = false;
                    }
                }
                SDKLogger.i(YXApiImplementation.class, "sendReq: transaction=" + paramBaseReq.transaction);
                if (!paramBaseReq.checkArgs(exceptionInfo)) {
                    SDKFeedBackUtils.getInstance().postErrorLog(exceptionInfo, "sendReq: transaction=" + paramBaseReq.transaction + ", checkArgs fail.");
                    sendData2Yixin = false;
                } else {
                    Bundle localBundle = new Bundle();
                    paramBaseReq.toBundle(localBundle);
                    sendData2Yixin = YXMessageActivityChannel.sendData2Yixin(this.applicationContext, YixinConstants.YIXIN_APP_PACKAGE_NAME, YixinConstants.INTENT_ACTION_SHARE_CONTENT, "yixin://sendreq?appid=" + this.appId, localBundle);
                }
            }
            return sendData2Yixin;
        } catch (Throwable e) {
            exceptionInfo.throwable = e;
            SDKFeedBackUtils.getInstance().postErrorLog(exceptionInfo, "sendReq: transaction=" + (paramBaseReq == null ? "null" : paramBaseReq.transaction) + " error");
            return false;
        }
    }

    @Override // im.yixin.sdk.api.IYXAPI
    public boolean handleIntent(Intent paramIntent, IYXAPICallbackEventHandler paramIYXAPIEventHandler) {
        YXMessageProtocol protocol = YXMessageProtocol.parseProtocol(paramIntent);
        if (protocol == null || !protocol.isValid()) {
            SDKLogger.e(YXApiImplementation.class, "handleIntent failed because !protocol.isValid()");
            return false;
        }
        if ("onReq".equalsIgnoreCase(protocol.getCommand())) {
            int cmdType = paramIntent.getIntExtra(YixinConstants.INTENT_EXTRA_KEY_REQ_CMD_TYPE, 0);
            switch (cmdType) {
                case 1:
                    SendMessageToYX.Req req = new SendMessageToYX.Req(paramIntent.getExtras());
                    paramIYXAPIEventHandler.onReq(req);
                    return true;
                case 2:
                    SendAuthToYX.Req req2 = new SendAuthToYX.Req(paramIntent.getExtras());
                    paramIYXAPIEventHandler.onReq(req2);
                    return true;
                case 3:
                    ShowYXMessageFromYX.Req req1 = new ShowYXMessageFromYX.Req(paramIntent.getExtras());
                    paramIYXAPIEventHandler.onReq(req1);
                    return true;
                default:
                    SDKLogger.i(YXApiImplementation.class, "handleIntent onReq do nothing, CMD_TYPE=" + cmdType);
                    return true;
            }
        }
        if ("onResp".equalsIgnoreCase(protocol.getCommand())) {
            int cmdType2 = paramIntent.getIntExtra(YixinConstants.INTENT_EXTRA_KEY_REQ_CMD_TYPE, 0);
            switch (cmdType2) {
                case 1:
                    SendMessageToYX.Resp resp = new SendMessageToYX.Resp(paramIntent.getExtras());
                    paramIYXAPIEventHandler.onResp(resp);
                    return true;
                case 2:
                    SendAuthToYX.Resp resp1 = new SendAuthToYX.Resp(paramIntent.getExtras());
                    paramIYXAPIEventHandler.onResp(resp1);
                    return true;
                case 3:
                    ShowYXMessageFromYX.Resp resp2 = new ShowYXMessageFromYX.Resp(paramIntent.getExtras());
                    paramIYXAPIEventHandler.onResp(resp2);
                    return true;
                default:
                    SDKLogger.i(YXApiImplementation.class, "handleIntent onResp do nothing, CMD_TYPE=" + cmdType2);
                    return true;
            }
        }
        SDKFeedBackUtils.getInstance().postErrorLog(YXApiImplementation.class, "handleIntent error command passed from Yixin " + protocol.getCommand(), null);
        return false;
    }

    @Override // im.yixin.sdk.api.IYXAPI
    public String getAppId() {
        return this.appId;
    }

    @Override // im.yixin.sdk.api.IYXAPI
    public Context getApplicationContext() {
        return this.applicationContext;
    }
}
