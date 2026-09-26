package com.netease.download.task;

import com.netease.download.Const;
import com.netease.download.util.LogUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;

/* loaded from: classes.dex */
public class ParamController {
    private static ParamController sParamController = null;

    private ParamController() {
    }

    public static ParamController getInstances() {
        if (sParamController == null) {
            sParamController = new ParamController();
        }
        return sParamController;
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
