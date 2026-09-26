package com.netease.mpay.widget;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import com.dodola.rocoo.Hack;
import java.util.List;

/* loaded from: classes.dex */
public class af {

    /* loaded from: classes.dex */
    public static class a extends BaseAdapter {
        private List a;
        private int b;
        private boolean c = true;
        private Context d;
        private LayoutInflater e;
        private InterfaceC0056a f;

        /* renamed from: com.netease.mpay.widget.af$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public interface InterfaceC0056a {
            void a(View view, Object obj, int i);
        }

        public a(Context context, List list, int i, InterfaceC0056a interfaceC0056a) {
            this.d = context;
            this.e = (LayoutInflater) context.getSystemService("layout_inflater");
            this.b = i;
            this.a = list;
            this.f = interfaceC0056a;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        private View a(int i, View view, ViewGroup viewGroup, int i2) {
            if (view == null) {
                view = this.e.inflate(i2, viewGroup, false);
            }
            this.f.a(view, getItem(i), i);
            return view;
        }

        public void a() {
            this.a.clear();
            if (this.c) {
                notifyDataSetChanged();
            }
        }

        public void a(List list) {
            this.a.addAll(list);
            if (this.c) {
                notifyDataSetChanged();
            }
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.a.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.a.get(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            return a(i, view, viewGroup, this.b);
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            this.c = true;
        }
    }

    /* loaded from: classes.dex */
    public static class b {
        private a a;
        private boolean b;

        /* loaded from: classes.dex */
        public interface a {
        }

        /* renamed from: com.netease.mpay.widget.af$b$b, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public interface InterfaceC0057b {
            void a(a aVar);

            boolean a(AdapterView adapterView, int i, int i2, int i3);
        }

        public b(Context context, AdapterView adapterView, List list, int i, a.InterfaceC0056a interfaceC0056a) {
            this(context, adapterView, list, i, interfaceC0056a, null);
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        public b(Context context, AdapterView adapterView, List list, int i, a.InterfaceC0056a interfaceC0056a, InterfaceC0057b interfaceC0057b) {
            this.b = false;
            this.a = new a(context, list, i, interfaceC0056a);
            adapterView.setAdapter(this.a);
            if (interfaceC0057b == null) {
                return;
            }
            this.b = false;
            if (!(adapterView instanceof AbsListView)) {
                throw new RuntimeException("auto-load-more feature only supports AdapterView descendent");
            }
            ((AbsListView) adapterView).setOnScrollListener(new ag(this, interfaceC0057b, adapterView));
        }

        public a a() {
            return this.a;
        }
    }
}
