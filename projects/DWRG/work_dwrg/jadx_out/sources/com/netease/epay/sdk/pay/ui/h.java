package com.netease.epay.sdk.pay.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.netease.epay.sdk.base.core.BaseData;
import com.netease.epay.sdk.base.model.IPayChooser;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.pay.model.BalanceInfo;
import java.util.ArrayList;

/* compiled from: PayChooserAdapter.java */
/* loaded from: classes.dex */
public class h extends BaseAdapter {
    private LayoutInflater a;
    private ArrayList<IPayChooser> b;
    private Context c;

    public h(Context context) {
        this.b = null;
        this.c = context;
        this.a = (LayoutInflater) context.getSystemService("layout_inflater");
        this.b = new ArrayList<>();
        if (BaseData.cardInfos != null) {
            this.b.addAll(BaseData.cardInfos);
        }
        if (com.netease.epay.sdk.pay.c.a != null) {
            if (BalanceInfo.isBalanceUsable()) {
                this.b.add(0, com.netease.epay.sdk.pay.c.a);
            } else {
                this.b.add(com.netease.epay.sdk.pay.c.a);
            }
        }
    }

    @Override // android.widget.Adapter
    public View getView(int position, View view, ViewGroup parent) {
        g gVar;
        if (view == null) {
            gVar = new g(this.c, null);
        } else {
            gVar = (g) view;
        }
        if (this.b.get(position) != null) {
            IPayChooser iPayChooser = this.b.get(position);
            gVar.setTitle(iPayChooser.getTitle());
            gVar.setEnabled(iPayChooser.isUsable());
            gVar.setImageResource(LogicUtil.getIcon(this.c, iPayChooser.getBankId()));
            gVar.setMessage(iPayChooser.getDesp());
        }
        return gVar;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.b.size();
    }

    @Override // android.widget.Adapter
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public IPayChooser getItem(int i) {
        return this.b.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }
}
