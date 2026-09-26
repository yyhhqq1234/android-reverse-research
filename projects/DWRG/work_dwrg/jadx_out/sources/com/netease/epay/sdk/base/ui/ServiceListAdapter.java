package com.netease.epay.sdk.base.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.netease.epay.sdk.base.R;
import com.netease.epay.sdk.base.model.SignAgreementInfo;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ServiceListAdapter extends BaseAdapter {
    private Context mContext;
    private ArrayList<SignAgreementInfo> mServiceList;

    public ServiceListAdapter(Context context, ArrayList<SignAgreementInfo> serviceList) {
        this.mContext = context;
        this.mServiceList = serviceList;
    }

    public void setDatas(ArrayList<SignAgreementInfo> serviceList) {
        this.mServiceList = serviceList;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.mServiceList != null) {
            return this.mServiceList.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        View inflate = LayoutInflater.from(this.mContext).inflate(R.layout.epaysdk_item_service, (ViewGroup) null);
        ((TextView) inflate.findViewById(R.id.tv_service_item)).setText(this.mServiceList.get(position).agreementTitle);
        return inflate;
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        return this.mServiceList.get(position);
    }
}
