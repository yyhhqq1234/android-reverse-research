package com.netease.epay.sdk.psw.setpwd;

import android.text.TextUtils;
import com.netease.epay.sdk.base.util.DigestUtil;
import java.util.UUID;

/* compiled from: SetShortPwdCheckUtil.java */
/* loaded from: classes.dex */
public class b {
    private String a;
    private String b = UUID.randomUUID().toString();

    public void a(String str) {
        this.a = DigestUtil.getMD5(this.b + str);
    }

    public boolean b(String str) {
        String md5 = DigestUtil.getMD5(this.b + str);
        if (TextUtils.isEmpty(this.a)) {
            return false;
        }
        return this.a.equals(md5);
    }

    public void a() {
        this.a = null;
    }

    public boolean b() {
        return TextUtils.isEmpty(this.a);
    }
}
