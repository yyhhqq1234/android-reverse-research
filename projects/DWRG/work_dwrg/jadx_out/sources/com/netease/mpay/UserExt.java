package com.netease.mpay;

import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
public class UserExt extends User {
    public String displayName;

    public UserExt(com.netease.mpay.b.ao aoVar) {
        super(aoVar);
        this.displayName = aoVar.h;
    }

    public UserExt(String str, com.netease.mpay.server.response.m mVar) {
        super(str, mVar);
        this.displayName = mVar.i;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }
}
