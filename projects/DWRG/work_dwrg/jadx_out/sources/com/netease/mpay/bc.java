package com.netease.mpay;

import android.app.Activity;
import android.content.Context;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.URLUtil;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ScrollView;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.server.response.OrderInit;
import com.netease.mpay.view.ScrollableView;
import com.netease.mpay.widget.RIdentifier;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class bc {
    Activity a;
    String b;
    a c;
    b d;
    ArrayList e = null;
    private final float f;

    /* loaded from: classes.dex */
    public interface a {
        void a(OrderInit.PayChannel payChannel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b extends BaseAdapter {
        private Context a;
        private ArrayList b;
        private a c;
        private String d;
        private int e;

        b(Context context, ArrayList arrayList, a aVar, String str) {
            this.a = context;
            this.b = arrayList;
            this.c = aVar;
            this.d = str;
            this.e = context.getResources().getDimensionPixelSize(RIdentifier.d.g) * 2;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (this.b != null) {
                return this.b.size();
            }
            return 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            if (i < this.b.size()) {
                return (OrderInit.PayChannel) this.b.get(i);
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
                view = ((LayoutInflater) this.a.getSystemService("layout_inflater")).inflate(RIdentifier.g.i, viewGroup, false);
            }
            ImageView imageView = (ImageView) view.findViewById(RIdentifier.f.N);
            TextView textView = (TextView) view.findViewById(RIdentifier.f.O);
            View findViewById = view.findViewById(RIdentifier.f.M);
            TextView textView2 = (TextView) view.findViewById(RIdentifier.f.S);
            View findViewById2 = view.findViewById(RIdentifier.f.L);
            View findViewById3 = view.findViewById(RIdentifier.f.K);
            OrderInit.PayChannel payChannel = (OrderInit.PayChannel) this.b.get(i);
            bc.a(this.a, this.d, payChannel.d, this.e, payChannel.a, imageView, false);
            textView.setText(payChannel.b);
            if (TextUtils.isEmpty(payChannel.c)) {
                textView2.setVisibility(8);
            } else {
                textView2.setText(payChannel.c);
                textView2.setVisibility(0);
            }
            if (payChannel.e) {
                view.setOnClickListener(new bi(this, payChannel));
            } else {
                view.setOnClickListener(null);
            }
            view.setEnabled(payChannel.e);
            findViewById2.setVisibility(payChannel.e ? 0 : 8);
            findViewById3.setVisibility(payChannel.e ? 8 : 0);
            findViewById.setVisibility(payChannel.j ? 0 : 8);
            return view;
        }
    }

    public bc(Activity activity, String str, a aVar) {
        this.a = activity;
        this.b = str;
        this.c = aVar;
        activity.getWindowManager().getDefaultDisplay().getMetrics(new DisplayMetrics());
        this.f = r0.heightPixels / 8;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void a() {
        ((ScrollableView) this.a.findViewById(RIdentifier.f.R)).a(new bg(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        b();
        ArrayList arrayList = this.d.b;
        View findViewById = this.a.findViewById(RIdentifier.f.ao);
        View findViewById2 = this.a.findViewById(RIdentifier.f.ag);
        this.d.b = this.e;
        this.d.notifyDataSetChanged();
        findViewById.setVisibility(8);
        findViewById2.setVisibility(0);
        findViewById2.setOnClickListener(new be(this, arrayList));
        b(i);
    }

    public static void a(Context context, String str, String str2, int i, String str3, ImageView imageView, boolean z) {
        int i2 = RIdentifier.e.ac;
        char c = 65535;
        switch (str3.hashCode()) {
            case -1922900057:
                if (str3.equals("weixinpayqr")) {
                    c = 7;
                    break;
                }
                break;
            case -1858665652:
                if (str3.equals("bankcard")) {
                    c = 4;
                    break;
                }
                break;
            case -1414960566:
                if (str3.equals("alipay")) {
                    c = 1;
                    break;
                }
                break;
            case -877322389:
                if (str3.equals("tenpay")) {
                    c = '\t';
                    break;
                }
                break;
            case 3119651:
                if (str3.equals("epay")) {
                    c = 0;
                    break;
                }
                break;
            case 96321781:
                if (str3.equals("ecard")) {
                    c = 2;
                    break;
                }
                break;
            case 103709949:
                if (str3.equals("mcard")) {
                    c = 5;
                    break;
                }
                break;
            case 111499309:
                if (str3.equals("uppay")) {
                    c = 3;
                    break;
                }
                break;
            case 1727532523:
                if (str3.equals("alipayqr")) {
                    c = '\b';
                    break;
                }
                break;
            case 1825929990:
                if (str3.equals("weixinpay")) {
                    c = 6;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                i2 = RIdentifier.e.L;
                break;
            case 1:
                i2 = RIdentifier.e.H;
                break;
            case 2:
                i2 = z ? RIdentifier.e.K : RIdentifier.e.G;
                break;
            case 3:
                i2 = RIdentifier.e.O;
                break;
            case 4:
                i2 = RIdentifier.e.J;
                break;
            case 5:
                i2 = RIdentifier.e.M;
                break;
            case 6:
                i2 = RIdentifier.e.P;
                break;
            case 7:
                i2 = RIdentifier.e.Q;
                break;
            case '\b':
                i2 = RIdentifier.e.I;
                break;
            case '\t':
                i2 = RIdentifier.e.N;
                break;
        }
        if (URLUtil.isValidUrl(str2)) {
            new com.netease.mpay.c.a(context, str, i2, i, i).a(str2, imageView);
        } else {
            imageView.setImageResource(i2);
        }
    }

    private void b() {
        ((ScrollableView) this.a.findViewById(RIdentifier.f.R)).a();
    }

    private void b(int i) {
        ScrollView scrollView = (ScrollView) this.a.findViewById(RIdentifier.f.R);
        if (scrollView != null) {
            scrollView.post(new bh(this, scrollView, i));
        }
    }

    private void b(ArrayList arrayList) {
        int i;
        ArrayList arrayList2;
        this.e = d(arrayList);
        GridView gridView = (GridView) this.a.findViewById(RIdentifier.f.Q);
        if (this.e.size() == 0) {
            gridView.setVisibility(8);
            return;
        }
        if (this.a.getResources().getBoolean(RIdentifier.b.a)) {
            ArrayList arrayList3 = new ArrayList();
            for (int i2 = 0; i2 < this.e.size() && i2 < 4; i2++) {
                arrayList3.add(this.e.get(i2));
            }
            arrayList2 = arrayList3;
            i = 2;
        } else {
            i = 1;
            arrayList2 = this.e;
        }
        View findViewById = this.a.findViewById(RIdentifier.f.ao);
        View findViewById2 = this.a.findViewById(RIdentifier.f.ag);
        if (arrayList2.size() < this.e.size()) {
            findViewById2.setVisibility(8);
            findViewById.setVisibility(0);
            findViewById.setOnClickListener(new bd(this));
            a();
        } else {
            findViewById2.setVisibility(8);
            findViewById.setVisibility(8);
        }
        gridView.setNumColumns(i);
        this.d = new b(this.a.getApplicationContext(), arrayList2, this.c, this.b);
        gridView.setAdapter((ListAdapter) this.d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(ArrayList arrayList) {
        View findViewById = this.a.findViewById(RIdentifier.f.ao);
        View findViewById2 = this.a.findViewById(RIdentifier.f.ag);
        this.d.b = arrayList;
        this.d.notifyDataSetChanged();
        findViewById2.setVisibility(8);
        findViewById.setVisibility(0);
        findViewById.setOnClickListener(new bf(this));
        a();
    }

    @NonNull
    private ArrayList d(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            OrderInit.PayChannel payChannel = (OrderInit.PayChannel) it.next();
            if (payChannel.e || payChannel.k == 2) {
                arrayList2.add(payChannel);
            }
        }
        return arrayList2;
    }

    public void a(ArrayList arrayList) {
        ArrayList arrayList2;
        if (this.d == null || this.e == null) {
            b(arrayList);
            return;
        }
        this.e = d(arrayList);
        int count = this.d.getCount();
        if (count < this.e.size()) {
            arrayList2 = new ArrayList();
            for (int i = 0; i < count; i++) {
                arrayList2.add(this.e.get(i));
            }
        } else {
            arrayList2 = this.e;
        }
        this.d.b = arrayList2;
        this.d.notifyDataSetChanged();
    }
}
