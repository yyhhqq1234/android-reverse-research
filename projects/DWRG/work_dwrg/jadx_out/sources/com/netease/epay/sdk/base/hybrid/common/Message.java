package com.netease.epay.sdk.base.hybrid.common;

import com.netease.epay.sdk.base.hybrid.common.BaseMsg;

/* loaded from: classes.dex */
public class Message<T extends BaseMsg> {
    public T msg;
    public String platformId;
    public String sign;
    public int v;
}
