package com.netease.mobsecurity.interfacejni;

import android.content.Context;
import com.netease.mobsecurity.SecException;
import com.netease.mobsecurity.a.c;
import com.netease.mobsecurity.a.c.a;
import com.netease.mobsecurity.a.d;
import com.netease.mobsecurity.b;
import com.netease.mpay.sharer.ShareChannel;
import java.util.HashMap;

/* loaded from: classes.dex */
public class SecretTransfer {
    c a;
    a b;
    Context c;

    public SecretTransfer(Context context) {
        this.a = null;
        this.b = null;
        this.c = context;
        this.a = c.a(context);
        if (this.a != null) {
            this.b = this.a.c();
        }
    }

    public String getSignedHash(String str) throws SecException {
        String a;
        if (str == null) {
            throw new SecException(102);
        }
        try {
            if (this.b == null) {
                throw new SecException(b.e);
            }
            d dVar = new d();
            if (dVar == null) {
                throw new SecException(b.e);
            }
            HashMap hashMap = new HashMap();
            hashMap.put("input", str);
            dVar.b = hashMap;
            dVar.c = 10;
            synchronized (SecruityInfo.class) {
                a = this.b.a(dVar);
            }
            return a;
        } catch (Exception e) {
            throw new SecException(699);
        }
    }

    public String getSignedJson(String str) throws SecException {
        String a;
        if (str == null) {
            throw new SecException(102);
        }
        try {
            if (this.b == null) {
                throw new SecException(b.e);
            }
            d dVar = new d();
            if (dVar == null) {
                throw new SecException(b.e);
            }
            HashMap hashMap = new HashMap();
            hashMap.put("input", str);
            dVar.b = hashMap;
            dVar.c = 11;
            dVar.d = ShareChannel.SHARE_TYPE_YIXIN_TIMELINE;
            synchronized (SecruityInfo.class) {
                a = this.b.a(dVar);
            }
            return a;
        } catch (Exception e) {
            throw new SecException(699);
        }
    }
}
