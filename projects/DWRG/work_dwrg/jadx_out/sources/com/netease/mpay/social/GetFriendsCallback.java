package com.netease.mpay.social;

/* loaded from: classes.dex */
public interface GetFriendsCallback {
    public static final int ERROR_DISABLED = 0;
    public static final int ERROR_DUPLICATED_QUERY = 4;
    public static final int ERROR_NETWORK = 2;
    public static final int ERROR_UNKNOWN = 100;
    public static final int ERROR_USER_INVALID = 3;
    public static final int ERROR_WEIBO = 1;

    void onFailed(int i);

    void onSuccessed(Friend[] friendArr);
}
