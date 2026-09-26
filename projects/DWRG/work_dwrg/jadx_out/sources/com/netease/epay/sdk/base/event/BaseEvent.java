package com.netease.epay.sdk.base.event;

import android.support.v4.app.FragmentActivity;
import com.netease.epay.sdk.base.network.NewBaseResponse;
import com.netease.epay.sdk.base.util.ErrorCode;

/* loaded from: classes.dex */
public class BaseEvent {
    public FragmentActivity activity;
    public String code;
    public boolean isSuccess;
    public String msg;

    public BaseEvent(String code, String msg) {
        this(code, msg, null);
    }

    public BaseEvent(String code, String msg, FragmentActivity activity) {
        this.code = code;
        this.msg = msg;
        this.isSuccess = "000000".equals(code);
        this.activity = activity;
    }

    public BaseEvent(ErrorCode.CUSTOM_CODE code) {
        this(code.getCode(), code.getMsg());
    }

    public BaseEvent(ErrorCode.CUSTOM_CODE code, FragmentActivity activity) {
        this(code.getCode(), code.getMsg(), activity);
    }

    public BaseEvent(NewBaseResponse response, FragmentActivity activity) {
        this(response.retcode, response.retdesc, activity);
    }
}
