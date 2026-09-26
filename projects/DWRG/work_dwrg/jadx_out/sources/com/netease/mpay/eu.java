package com.netease.mpay;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.GridViewNoScroll;
import com.netease.mpay.widget.RIdentifier;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes.dex */
public class eu {
    private Dialog a;
    private b b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a extends BaseAdapter {
        private final ArrayList b = new ArrayList(Arrays.asList(10, 20, 30, 50, 100, 200, 300, 500));
        private Context c;
        private Resources d;
        private String e;
        private ArrayList f;

        public a(Context context, String str, ArrayList arrayList) {
            this.c = context;
            this.d = context.getResources();
            this.e = str;
            this.f = arrayList;
            if (this.f == null) {
                this.f = this.b;
            }
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.f.get(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View inflate = view == null ? ((LayoutInflater) this.c.getSystemService("layout_inflater")).inflate(RIdentifier.g.X, viewGroup, false) : view;
            TextView textView = (TextView) inflate;
            textView.setText(String.valueOf(this.f.get(i)) + this.c.getString(RIdentifier.h.cx));
            inflate.setOnClickListener(new ev(this, i));
            boolean z = this.e == null || com.netease.mpay.widget.bd.a(this.e, String.valueOf(this.f.get(i))) <= 0;
            inflate.setEnabled(z);
            textView.setTextColor(this.d.getColor(z ? RIdentifier.c.j : RIdentifier.c.i));
            inflate.setBackgroundResource(z ? RIdentifier.e.d : RIdentifier.e.c);
            return inflate;
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        void a(int i);
    }

    public eu(Activity activity, String str, b bVar) {
        this(activity, str, null, null, bVar);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public eu(Activity activity, String str, String str2, ArrayList arrayList, b bVar) {
        this.a = new Dialog(activity, RIdentifier.i.a);
        this.b = bVar;
        this.a.setContentView(RIdentifier.g.ag);
        this.a.setCancelable(true);
        this.a.setCanceledOnTouchOutside(true);
        ((TextView) this.a.findViewById(RIdentifier.f.cV)).setText(str);
        ((GridViewNoScroll) this.a.findViewById(RIdentifier.f.cU)).setAdapter((ListAdapter) new a(activity.getApplicationContext(), str2, arrayList));
    }

    public void a() {
        if (this.a != null) {
            this.a.show();
        }
    }

    public void b() {
        if (this.a != null) {
            this.a.dismiss();
        }
    }
}
