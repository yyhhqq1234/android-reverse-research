package com.netease.mpay;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class o extends com.netease.mpay.a {
    private com.netease.mpay.b.b d;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum a {
        APPEAL_AUTO,
        APPEAL_MANUAL;

        a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    /* loaded from: classes.dex */
    private class b extends BaseAdapter {
        private ArrayList b;

        public b(ArrayList arrayList) {
            this.b = arrayList;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // android.widget.Adapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public c getItem(int i) {
            return (c) this.b.get(i);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (this.b == null) {
                return 0;
            }
            return this.b.size();
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = LayoutInflater.from(o.this.a).inflate(RIdentifier.g.d, viewGroup, false);
            }
            c item = getItem(i);
            TextView textView = (TextView) view.findViewById(RIdentifier.f.B);
            ImageView imageView = (ImageView) view.findViewById(RIdentifier.f.A);
            textView.setText(item.b);
            com.netease.mpay.widget.bf.a(imageView, com.netease.mpay.widget.bf.a(o.this.a.getResources(), item.a), true);
            imageView.setOnClickListener(item.c);
            return view;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class c {
        int a;
        int b;
        View.OnClickListener c;

        c(a aVar) {
            switch (aVar) {
                case APPEAL_MANUAL:
                    this.a = RIdentifier.e.l;
                    this.b = RIdentifier.h.c;
                    this.c = new t(this, o.this);
                    break;
                default:
                    this.a = RIdentifier.e.k;
                    this.b = RIdentifier.h.b;
                    this.c = new v(this, o.this);
                    break;
            }
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(com.netease.mpay.server.a.ax axVar) {
            try {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(Uri.parse(new com.netease.mpay.server.d(o.this.a, o.this.d.a(), o.this.d.b()).b(axVar).a));
                o.this.a.startActivity(intent);
            } catch (ActivityNotFoundException e) {
                new com.netease.mpay.widget.s(o.this.a).a(o.this.a.getString(RIdentifier.h.bU));
            }
        }
    }

    public o(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.d = new com.netease.mpay.b.b(intent);
        return this.d;
    }

    @Override // com.netease.mpay.a
    public void b(Bundle bundle) {
        super.b(bundle);
        this.a.setContentView(RIdentifier.g.a);
        this.a.findViewById(RIdentifier.f.ar).setOnClickListener(new p(this));
        this.a.findViewById(RIdentifier.f.at).setOnClickListener(new q(this));
        GridView gridView = (GridView) this.a.findViewById(RIdentifier.f.C);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new c(a.APPEAL_AUTO));
        arrayList.add(new c(a.APPEAL_MANUAL));
        gridView.setAdapter((ListAdapter) new b(arrayList));
        gridView.setNumColumns(2);
    }
}
