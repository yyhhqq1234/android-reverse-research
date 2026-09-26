package com.netease.epay.sdk;

import com.netease.download.Const;
import com.netease.epay.sdk.base.core.CoreData;
import com.netease.epay.sdk.base.event.EpayEvent;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.util.EventBusUtil;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.core.QvhuaHelper;

/* loaded from: classes.dex */
public class ExitUtil {
    public static void successCallback() {
        successCallback(null);
    }

    public static void successCallback(String quickPayId) {
        EpayEvent epayEvent = new EpayEvent();
        epayEvent.biztype = CoreData.bizType;
        epayEvent.isSucc = true;
        epayEvent.quickPayId = quickPayId;
        clearAll(epayEvent);
    }

    public static void failCallback(String retCode, String retMessage) {
        EpayEvent epayEvent = new EpayEvent();
        epayEvent.biztype = CoreData.bizType;
        epayEvent.isSucc = false;
        epayEvent.code = retCode;
        epayEvent.desp = retMessage;
        clearAll(epayEvent);
    }

    public static void clearAll(EpayEvent event) {
        HttpClient.cancelAll();
        EventBusUtil.post(Const.LOG_TYPE_STATE_FINISH);
        if (CoreData.bizType != -2) {
            CoreData.bizType = -2;
            if (CoreData.isOnWalletMode) {
                EventBusUtil.post(Constants.WALLET_REFRESH);
                return;
            }
            ControllerRouter.clearAllControllers();
            LogicUtil.finishPay();
            if (QvhuaHelper.getInstance(null).haveCallBack() && !event.isSucc) {
                QvhuaHelper.getInstance(null).returnCallBackExit(event);
            } else {
                EventBusUtil.post(event);
            }
            EventBusUtil.clearData();
        }
    }
}
