package com.netease.epay.sdk.base.view.gridpwd;

import com.netease.epay.sdk.base.util.DigestUtil;

/* loaded from: classes.dex */
public abstract class EpaySdkPasswordChangedListener implements OnPasswordChangedListener {
    @Override // com.netease.epay.sdk.base.view.gridpwd.OnPasswordChangedListener
    public String randomKey16Byte() {
        return DigestUtil.getAesKey();
    }
}
