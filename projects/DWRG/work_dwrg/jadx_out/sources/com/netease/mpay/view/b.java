package com.netease.mpay.view;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.URLUtil;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class b extends BaseAdapter {
    protected Context a;
    protected int b;
    protected ArrayList c;
    protected a d;
    private com.netease.mpay.c.a e;

    /* loaded from: classes.dex */
    public interface a {
        void a(boolean z, Object obj);
    }

    /* renamed from: com.netease.mpay.view.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0053b {
        String a;
        boolean b;
        String c;
        String d;
        int e;
        boolean f;
        String g;
        String h;

        public C0053b(String str, boolean z, String str2, String str3, int i, boolean z2, String str4, String str5) {
            this.a = str;
            this.b = z;
            this.c = str2;
            this.d = str3;
            this.e = i;
            this.f = z2;
            this.g = str4;
            this.h = str5;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    /* loaded from: classes.dex */
    public static class c {
        C0053b a;
        Object b;

        public c(C0053b c0053b, Object obj) {
            this.a = c0053b;
            this.b = obj;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    public b(Context context, String str, int i, ArrayList arrayList, a aVar) {
        this.a = context;
        this.b = i;
        this.c = arrayList;
        this.d = aVar;
        this.e = new com.netease.mpay.c.a(context, str, RIdentifier.e.ac);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private int a(int i) {
        return Build.VERSION.SDK_INT >= 23 ? this.a.getResources().getColor(i, null) : this.a.getResources().getColor(i);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.c != null) {
            return this.c.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        if (i < this.c.size()) {
            return (c) this.c.get(i);
        }
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = ((LayoutInflater) this.a.getSystemService("layout_inflater")).inflate(RIdentifier.g.aj, viewGroup, false);
        }
        ImageView imageView = (ImageView) view.findViewById(RIdentifier.f.N);
        TextView textView = (TextView) view.findViewById(RIdentifier.f.O);
        View findViewById = view.findViewById(RIdentifier.f.bY);
        TextView textView2 = (TextView) view.findViewById(RIdentifier.f.J);
        View findViewById2 = view.findViewById(RIdentifier.f.L);
        TextView textView3 = (TextView) view.findViewById(RIdentifier.f.K);
        c cVar = (c) this.c.get(i);
        String str = cVar.a.b ? cVar.a.c : cVar.a.d;
        if (URLUtil.isValidUrl(str)) {
            this.e.a(str, imageView);
        } else {
            imageView.setImageResource(cVar.a.e);
        }
        imageView.setVisibility(0);
        textView.setText(cVar.a.a);
        textView.setTextColor(a(cVar.a.b ? RIdentifier.c.o : RIdentifier.c.i));
        textView.setVisibility(0);
        boolean z = cVar.a.f && cVar.a.b;
        findViewById.setVisibility(z ? 0 : 8);
        if (cVar.a.b || TextUtils.isEmpty(cVar.a.h)) {
            textView3.setVisibility(8);
        } else {
            textView3.setText(cVar.a.h);
            textView3.setVisibility(0);
        }
        if (!TextUtils.isEmpty(cVar.a.g)) {
            textView2.setText(cVar.a.g);
            textView2.setVisibility(0);
        }
        view.setClickable(cVar.a.b);
        view.setEnabled(cVar.a.b);
        if (cVar.a.b) {
            view.setOnClickListener(new com.netease.mpay.view.c(this, cVar, findViewById, z));
        } else {
            view.setOnClickListener(null);
        }
        findViewById2.setVisibility(cVar.a.b ? 0 : 8);
        return view;
    }
}
