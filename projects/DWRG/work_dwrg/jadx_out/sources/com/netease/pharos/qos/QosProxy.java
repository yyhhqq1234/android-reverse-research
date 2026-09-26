package com.netease.pharos.qos;

import com.netease.download.Const;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.PharosProxy;
import com.netease.pharos.linkcheck.RegionConfigInfo;
import com.netease.pharos.util.LogUtil;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class QosProxy {
    private static final String TAG = "QosProxy";
    private static QosProxy sQosProxy = null;
    private boolean mIsInit = false;
    private boolean mIsStart = false;
    private QosCore mQosCore = null;

    private QosProxy() {
    }

    public static QosProxy getInstance() {
        if (sQosProxy == null) {
            sQosProxy = new QosProxy();
        }
        return sQosProxy;
    }

    public void init() {
        if (!this.mIsInit) {
            LogUtil.i(TAG, "QosProxy [init] start");
            if (this.mQosCore == null) {
                this.mQosCore = new QosCore();
            }
            this.mQosCore.init(PharosProxy.getInstance().getmContext(), RegionConfigInfo.getInstance().getRapQos());
            this.mQosCore.parse();
            this.mIsInit = true;
            return;
        }
        LogUtil.i(TAG, "QosProxy [init] already init");
    }

    public void start_qosCore() {
        LogUtil.i(TAG, "QosProxy [start_qosCore] start");
        if (this.mQosCore != null) {
            LogUtil.i(TAG, "开始Qos模块");
            try {
                this.mQosCore.checkIsNeedToQos();
            } catch (JSONException e) {
                LogUtil.i(TAG, "QosProxy [start_qosCore] JSONException=" + e);
            }
        }
    }

    public JSONObject getQosResult() {
        if (this.mQosCore == null) {
            return null;
        }
        JSONObject result = this.mQosCore.getQosResult();
        return result;
    }

    public void clean() {
        LogUtil.i(TAG, "QosProxy [clean] start");
        if (this.mQosCore != null) {
            this.mQosCore.clean();
        }
        this.mIsInit = false;
        this.mIsStart = false;
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
