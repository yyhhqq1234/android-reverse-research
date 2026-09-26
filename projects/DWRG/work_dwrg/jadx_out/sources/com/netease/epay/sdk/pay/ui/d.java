package com.netease.epay.sdk.pay.ui;

import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.FrameLayout;
import com.netease.epay.sdk.base.model.RedPaper;
import com.netease.epay.sdk.base.util.UiUtil;
import com.netease.epay.sdk.pay.R;
import com.netease.epay.sdk.pay.model.DiscountGroupItem;
import java.util.ArrayList;

/* compiled from: DiscountExpandableAdapter.java */
/* loaded from: classes.dex */
public class d extends BaseExpandableListAdapter {
    int a;
    private ExpandableListView b;
    private ArrayList<DiscountGroupItem> c = DiscountGroupItem.getGroupList();

    public d(ExpandableListView expandableListView) {
        this.a = -1;
        this.b = expandableListView;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.c.size()) {
                if (!this.c.get(i2).isMark) {
                    i = i2 + 1;
                } else {
                    this.a = i2;
                    return;
                }
            } else {
                return;
            }
        }
    }

    @Override // android.widget.ExpandableListAdapter
    public int getGroupCount() {
        return this.c.size();
    }

    @Override // android.widget.ExpandableListAdapter
    public int getChildrenCount(int groupPosition) {
        if (this.c.get(groupPosition).hasChild) {
            return com.netease.epay.sdk.pay.c.b.hongbaoInfo.hongbaos.size();
        }
        return 0;
    }

    @Override // android.widget.ExpandableListAdapter
    public Object getGroup(int groupPosition) {
        return null;
    }

    @Override // android.widget.ExpandableListAdapter
    public Object getChild(int groupPosition, int childPosition) {
        return null;
    }

    @Override // android.widget.ExpandableListAdapter
    public long getGroupId(int groupPosition) {
        return groupPosition;
    }

    @Override // android.widget.ExpandableListAdapter
    public long getChildId(int groupPosition, int childPosition) {
        return childPosition;
    }

    @Override // android.widget.ExpandableListAdapter
    public boolean hasStableIds() {
        return true;
    }

    @Override // android.widget.ExpandableListAdapter
    public View getGroupView(final int groupPosition, final boolean isExpanded, View convertView, ViewGroup parent) {
        f fVar;
        if (convertView == null) {
            convertView = LayoutInflater.from(parent.getContext()).inflate(R.layout.epaysdk_view_discount_parent, (ViewGroup) null, false);
            f fVar2 = new f(convertView);
            convertView.setTag(fVar2);
            fVar = fVar2;
        } else {
            fVar = (f) convertView.getTag();
        }
        DiscountGroupItem discountGroupItem = this.c.get(groupPosition);
        fVar.i.setBackgroundResource(discountGroupItem.isUseable ? R.drawable.epaysdk_icon_redpaper : R.drawable.epaysdk_icon_redpaper_disable);
        if (fVar.i.getLayoutParams() instanceof FrameLayout.LayoutParams) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) fVar.i.getLayoutParams();
            layoutParams.topMargin = groupPosition == 0 ? 0 : UiUtil.dp2px(parent.getContext(), 5);
            fVar.i.setLayoutParams(layoutParams);
        }
        fVar.i.setOnClickListener(new View.OnClickListener() { // from class: com.netease.epay.sdk.pay.ui.d.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                d.this.a(groupPosition);
            }
        });
        fVar.g.setBackgroundColor(discountGroupItem.isUseable ? -798769 : -3355444);
        fVar.a.setText(discountGroupItem.name);
        fVar.a.setAlpha(discountGroupItem.isUseable ? 1.0f : 0.8f);
        fVar.c.setVisibility(TextUtils.isEmpty(discountGroupItem.tag) ? 8 : 0);
        fVar.c.setText(discountGroupItem.tag);
        fVar.b.setVisibility(discountGroupItem.isNeedExpand ? 0 : 8);
        fVar.b.setText(isExpanded ? parent.getContext().getResources().getString(R.string.epaysdk_collapse) : parent.getContext().getResources().getString(R.string.epaysdk_expand));
        fVar.b.setOnClickListener(new View.OnClickListener() { // from class: com.netease.epay.sdk.pay.ui.d.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (d.this.b != null) {
                    if (isExpanded) {
                        d.this.b.collapseGroup(groupPosition);
                    } else {
                        d.this.b.expandGroup(groupPosition);
                    }
                }
            }
        });
        fVar.h.setBackgroundResource(discountGroupItem.isMark ? R.drawable.epaysdk_icon_choose : R.drawable.epaysdk_icon_not_choose);
        SpannableString spannableString = new SpannableString(discountGroupItem.amount);
        if (discountGroupItem.amount.startsWith("￥")) {
            spannableString.setSpan(new AbsoluteSizeSpan(10, true), 0, 1, 18);
            spannableString.setSpan(new AbsoluteSizeSpan(15, true), 1, discountGroupItem.amount.length(), 18);
        } else {
            spannableString.setSpan(new AbsoluteSizeSpan(15, true), 1, discountGroupItem.amount.length(), 18);
        }
        fVar.e.setText(spannableString);
        fVar.d.setAlpha(discountGroupItem.isUseable ? 1.0f : 0.8f);
        fVar.d.setText(discountGroupItem.msg);
        if (TextUtils.isEmpty(discountGroupItem.deadline)) {
            fVar.f.setVisibility(8);
        } else {
            fVar.f.setVisibility(0);
            fVar.f.setAlpha(discountGroupItem.isUseable ? 1.0f : 0.8f);
            fVar.f.setText(discountGroupItem.deadline);
        }
        return convertView;
    }

    @Override // android.widget.ExpandableListAdapter
    public View getChildView(int groupPosition, int childPosition, boolean isLastChild, View convertView, ViewGroup parent) {
        a aVar;
        if (convertView == null) {
            convertView = LayoutInflater.from(parent.getContext()).inflate(R.layout.epaysdk_item_redpaper, (ViewGroup) null);
            a aVar2 = new a(convertView);
            convertView.setTag(aVar2);
            aVar = aVar2;
        } else {
            aVar = (a) convertView.getTag();
        }
        RedPaper redPaper = com.netease.epay.sdk.pay.c.b.hongbaoInfo.hongbaos.get(childPosition);
        boolean z = redPaper.isMark;
        convertView.setBackgroundColor(z ? -772 : -789517);
        if (childPosition != 0 && !z) {
            if (com.netease.epay.sdk.pay.c.b.hongbaoInfo.hongbaos.get(childPosition - 1).isMark) {
                aVar.d.setVisibility(0);
                aVar.d.setBackgroundColor(-3355444);
            } else {
                aVar.d.setVisibility(8);
            }
        } else {
            aVar.d.setVisibility(8);
        }
        aVar.f.setVisibility(isLastChild ? 0 : 8);
        aVar.f.setBackgroundColor(z ? -798769 : -3355444);
        aVar.e.setBackgroundColor(z ? -798769 : -3355444);
        aVar.g.setBackgroundColor(z ? -798769 : -3355444);
        aVar.h.setBackgroundColor(z ? -798769 : -3355444);
        SpannableString spannableString = new SpannableString("￥" + redPaper.hongbaoAmount);
        spannableString.setSpan(new AbsoluteSizeSpan(10, true), 0, 1, 18);
        spannableString.setSpan(new AbsoluteSizeSpan(15, true), 1, spannableString.length(), 18);
        aVar.a.setText(spannableString);
        aVar.a.setAlpha(z ? 1.0f : 0.8f);
        aVar.b.setText(redPaper.deadline);
        aVar.b.setAlpha(z ? 1.0f : 0.8f);
        aVar.c.setText(redPaper.msg);
        aVar.c.setAlpha(z ? 1.0f : 0.8f);
        return convertView;
    }

    @Override // android.widget.ExpandableListAdapter
    public boolean isChildSelectable(int groupPosition, int childPosition) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        if (this.c.get(i).isUseable) {
            this.a = i;
            int i2 = 0;
            while (i2 < getGroupCount()) {
                this.c.get(i2).isMark = i2 == i;
                i2++;
            }
        }
        notifyDataSetChanged();
    }
}
