package com.netease.mpay.skin;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.bk;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class e implements LayoutInflater.Factory {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface a {
        View a();
    }

    /* loaded from: classes.dex */
    class b implements a {
        private String b;
        private Context c;
        private AttributeSet d;
        private View e;

        public b(String str, Context context, AttributeSet attributeSet) {
            this.b = str;
            this.c = context;
            this.d = attributeSet;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // com.netease.mpay.skin.e.a
        public View a() {
            this.e = e.this.a(this.b, this.c, this.d);
            return this.e;
        }

        public View b() {
            return this.e;
        }
    }

    public e() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View a(String str, Context context, AttributeSet attributeSet) {
        try {
            if (-1 != str.indexOf(46)) {
                return LayoutInflater.from(context).createView(str, null, attributeSet);
            }
            View createView = "View".equals(str) ? LayoutInflater.from(context).createView(str, "android.view.", attributeSet) : null;
            if (createView == null) {
                createView = LayoutInflater.from(context).createView(str, "android.widget.", attributeSet);
            }
            return createView == null ? LayoutInflater.from(context).createView(str, "android.webkit.", attributeSet) : createView;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void a(LayoutInflater layoutInflater, e eVar) {
        if (layoutInflater.getFactory() == null) {
            layoutInflater.setFactory(eVar);
        }
    }

    private boolean a(Context context, AttributeSet attributeSet, b bVar) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < attributeSet.getAttributeCount(); i++) {
            String attributeName = attributeSet.getAttributeName(i);
            String attributeValue = attributeSet.getAttributeValue(i);
            if (com.netease.mpay.skin.a.a(attributeName) && attributeValue.startsWith("@")) {
                try {
                    int parseInt = Integer.parseInt(attributeValue.substring(1));
                    d a2 = com.netease.mpay.skin.a.a(attributeName, parseInt, context.getResources().getResourceEntryName(parseInt), context.getResources().getResourceTypeName(parseInt));
                    if (a2 != null) {
                        arrayList.add(a2);
                    }
                } catch (Resources.NotFoundException e) {
                } catch (NumberFormatException e2) {
                }
            }
        }
        if (!arrayList.isEmpty()) {
            f fVar = new f();
            fVar.a = arrayList;
            fVar.a(bVar);
        }
        return true;
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        if (!attributeSet.getAttributeBooleanValue("http://schemas.android.com/android/mpay/skin", "mpay_skin_enable", false) || bk.l.trim().equals(SkinManager.MPAY_SKIN_DEFAULT)) {
            return null;
        }
        b bVar = new b(str, context, attributeSet);
        if (a(context, attributeSet, bVar)) {
            return bVar.b();
        }
        return null;
    }
}
