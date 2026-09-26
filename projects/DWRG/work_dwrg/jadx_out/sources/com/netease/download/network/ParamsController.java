package com.netease.download.network;

import com.netease.download.Const;
import com.netease.download.util.LogUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;

/* loaded from: classes.dex */
public class ParamsController {
    private int threadnum = 5;
    private boolean logusefile = false;

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
