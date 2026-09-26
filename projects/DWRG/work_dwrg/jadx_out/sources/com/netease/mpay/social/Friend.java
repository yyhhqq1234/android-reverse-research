package com.netease.mpay.social;

import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
public class Friend {
    public static final int RELATION_BILATERAL = 2;
    public static final int RELATION_FRIEND = 1;
    public static final int RELATION_SELF = 0;
    public String mAvatarUrl;
    public String mNickName;
    public int mRelationType;
    public String mUid;
    public int mUserType;

    public Friend() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Friend a(m mVar) {
        if (mVar == null) {
            return null;
        }
        Friend friend = new Friend();
        friend.mUid = mVar.c;
        friend.mUserType = 3;
        friend.mNickName = mVar.d;
        friend.mAvatarUrl = mVar.e;
        switch (mVar.b) {
            case 1:
                friend.mRelationType = 1;
                return friend;
            case 2:
                friend.mRelationType = 2;
                return friend;
            default:
                return friend;
        }
    }
}
