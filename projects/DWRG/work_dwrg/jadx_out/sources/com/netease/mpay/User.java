package com.netease.mpay;

import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
public class User {
    public static final int MOBILE_BIND_BLANK = 1;
    public static final int MOBILE_BIND_MULTIPLE = 3;
    public static final int MOBILE_BIND_SINGLE = 2;
    public static final int MOBILE_BIND_UNKNOWN = 0;
    public String avatarUrl;
    public String devId;
    public int mobileBindStatus;
    public String nickname;
    public String originGuestUid;
    public boolean realnameSet;
    public String token;
    public int type;
    public String uid;

    public User(com.netease.mpay.b.ao aoVar) {
        this(aoVar.c, aoVar.d, aoVar.e, aoVar.f, aoVar.g, aoVar.i, aoVar.j, aoVar.k, aoVar.l);
    }

    public User(String str, com.netease.mpay.e.b.o oVar) {
        this(str, oVar.c, oVar.d, oVar.f, oVar.e, oVar.h, oVar.i, oVar.j, oVar.k);
    }

    public User(String str, com.netease.mpay.server.response.m mVar) {
        this(str, mVar.b, mVar.a, mVar.c, mVar.d, mVar.e, mVar.f, mVar.g, mVar.h);
    }

    private User(String str, String str2, String str3, int i, String str4, String str5, String str6, boolean z, int i2) {
        this.devId = str;
        this.uid = str2;
        this.token = str3;
        this.type = i;
        this.originGuestUid = str4;
        this.nickname = str5;
        this.avatarUrl = str6;
        this.realnameSet = z;
        this.mobileBindStatus = i2;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }
}
