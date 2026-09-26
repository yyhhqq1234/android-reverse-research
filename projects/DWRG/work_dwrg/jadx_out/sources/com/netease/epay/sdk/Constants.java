package com.netease.epay.sdk;

import com.netease.epay.sdk.base.ui.OnlyMessageFragment;

/* loaded from: classes.dex */
public class Constants {
    public static final OnlyMessageFragment.IOnlyMessageCallback EXIT_CALLBACK = new OnlyMessageFragment.IOnlyMessageCallback() { // from class: com.netease.epay.sdk.Constants.1
        @Override // com.netease.epay.sdk.base.ui.OnlyMessageFragment.IOnlyMessageCallback
        public void callback(String code, String msg) {
            ExitUtil.failCallback(code, msg);
        }
    };
    public static final String SHARED_ST_LIC_FILE_MD5 = "epaysdk_st_lic_file_mdwu";
    public static final String SHARED_WALLET_NEED_RED_PAPER = "epaysdk_wallet_need_redpaper_inter";
    public static final String WALLET_REFRESH = "wallet_refresh";
}
