package com.netease.mpay.sharer;

import android.app.Activity;
import android.content.Context;
import android.util.SparseArray;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
public class d {
    private static SparseArray c = new SparseArray();
    Activity a;
    SparseArray b;

    public d(Activity activity) {
        this.a = activity;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static int a(ShareContent shareContent) {
        if (shareContent == null) {
            return -1;
        }
        int hashCode = shareContent.hashCode();
        c.put(hashCode, shareContent);
        return hashCode;
    }

    public static ShareContent a(int i) {
        ShareContent shareContent = (ShareContent) c.get(i);
        c.remove(i);
        return shareContent;
    }

    public static boolean a(Context context) {
        return m.a(context) || l.b(context) || k.a(context) || a.c(context);
    }

    public boolean a(ShareContent shareContent, int i) {
        if (shareContent == null) {
            return false;
        }
        if (this.b == null) {
            this.b = new SparseArray();
        }
        e eVar = (e) this.b.get(i);
        try {
            if (eVar == null) {
                switch (i) {
                    case 100:
                        eVar = new k(this.a);
                        break;
                    case 101:
                    case 102:
                        eVar = new l(this.a);
                        break;
                    case 103:
                    case ShareChannel.SHARE_TYPE_YIXIN_TIMELINE /* 104 */:
                        eVar = new m(this.a);
                        break;
                    case ShareChannel.SHARE_TYPE_QQ /* 105 */:
                    case ShareChannel.SHARE_TYPE_QZONE /* 106 */:
                        eVar = new a(this.a);
                        break;
                    default:
                        return false;
                }
            }
            return eVar.a(shareContent, i);
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }
}
