package com.netease.epay.sdk.base.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.netease.epay.sdk.base.ui.BaseHolder;
import java.util.List;

/* loaded from: classes.dex */
public abstract class BaseSDKAdapter<T, Holder extends BaseHolder> extends BaseAdapter {
    public Context context;
    private List<T> datas;
    LayoutInflater layoutInflater;

    public abstract void bindData(Holder holder, T t);

    public abstract int getLayoutRes();

    public abstract Holder newHolder(View view);

    public BaseSDKAdapter(Context ctx) {
        this.layoutInflater = LayoutInflater.from(ctx);
        this.context = ctx;
    }

    public void setDatas(List<T> datas) {
        this.datas = datas;
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.datas != null) {
            return this.datas.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        if (this.datas != null) {
            return this.datas.get(position);
        }
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        BaseHolder baseHolder;
        T t;
        if (convertView == null) {
            convertView = this.layoutInflater.inflate(getLayoutRes(), (ViewGroup) null);
            baseHolder = newHolder(convertView);
            convertView.setTag(baseHolder);
        } else {
            baseHolder = (BaseHolder) convertView.getTag();
        }
        if (this.datas.size() > getRealDataPosition(position) && (t = this.datas.get(getRealDataPosition(position))) != null) {
            bindData(baseHolder, t);
        }
        return convertView;
    }

    public int getRealDataPosition(int listPosition) {
        return listPosition;
    }
}
