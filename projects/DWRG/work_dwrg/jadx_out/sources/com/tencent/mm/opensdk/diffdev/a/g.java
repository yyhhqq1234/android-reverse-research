package com.tencent.mm.opensdk.diffdev.a;

import com.netease.cloud.nos.android.constants.Code;

/* loaded from: classes.dex */
public enum g {
    UUID_EXPIRED(402),
    UUID_CANCELED(Code.INVALID_TOKEN),
    UUID_SCANED(404),
    UUID_CONFIRM(405),
    UUID_KEEP_CONNECT(408),
    UUID_ERROR(500);

    private int code;

    g(int i) {
        this.code = i;
    }

    public final int getCode() {
        return this.code;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "UUIDStatusCode:" + this.code;
    }
}
