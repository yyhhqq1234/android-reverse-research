package com.netease.epay.sdk.base.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.netease.epay.sdk.base.R;
import com.netease.epay.sdk.base.model.SupportBanks;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ChooseCardBankAdapter extends BaseAdapter {
    private ArrayList<SupportBanks> data = null;
    private int lastSelectBankPosition = -1;
    private LayoutInflater layoutInflater;

    public ChooseCardBankAdapter(Context context) {
        this.layoutInflater = LayoutInflater.from(context);
    }

    public void setData(ArrayList<SupportBanks> data) {
        if (data == null) {
            data = new ArrayList<>(5);
        }
        this.data = data;
        this.lastSelectBankPosition = -1;
    }

    public void selectBank(int position) {
        if (this.lastSelectBankPosition != position) {
            if (this.data.size() > position && position >= 0) {
                this.lastSelectBankPosition = position;
            }
            notifyDataSetChanged();
        }
    }

    public int getLastSelectBankPosition() {
        return this.lastSelectBankPosition;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.data == null) {
            return 0;
        }
        return this.data.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        if (this.data == null || this.data.size() <= i) {
            return null;
        }
        return this.data.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View view, ViewGroup viewGroup) {
        ViewHolder viewHolder;
        if (view == null) {
            view = this.layoutInflater.inflate(R.layout.epaysdk_item_choose_bank, (ViewGroup) null);
            viewHolder = new ViewHolder();
            viewHolder.tvBankInfo = (TextView) view.findViewById(R.id.tv_bank_name);
            viewHolder.ivChecked = (ImageView) view.findViewById(R.id.iv_item_cards_checked);
            view.setTag(viewHolder);
        } else {
            viewHolder = (ViewHolder) view.getTag();
        }
        viewHolder.tvBankInfo.setText(this.data.get(position).bankName);
        if (position == this.lastSelectBankPosition) {
            viewHolder.ivChecked.setVisibility(0);
        } else {
            viewHolder.ivChecked.setVisibility(8);
        }
        return view;
    }

    /* loaded from: classes.dex */
    class ViewHolder {
        public ImageView ivChecked;
        public TextView tvBankInfo;

        ViewHolder() {
        }
    }
}
