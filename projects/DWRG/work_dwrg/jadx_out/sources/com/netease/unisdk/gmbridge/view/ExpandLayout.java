package com.netease.unisdk.gmbridge.view;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.widget.LinearLayout;
import com.netease.unisdk.gmbridge.floatwindow.BtnInfo;
import com.netease.unisdk.gmbridge.utils.ResIdReader;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public class ExpandLayout extends LinearLayout {
    private HashMap<String, ExpandItemView> mItemViews;
    private int mLineColor;
    private int mLineHeight;
    private int mLineMargin;
    private int mLineWidth;

    public ExpandLayout(Context context, List<BtnInfo> btnInfos) {
        super(context);
        setBackgroundResource(ResIdReader.getDrawableId(context, "uni_gm_f_expand_bg"));
        setOrientation(0);
        this.mLineWidth = getResources().getDimensionPixelSize(ResIdReader.getDimenId(getContext(), "uni_gm_f_expand_item_line_width"));
        this.mLineHeight = getResources().getDimensionPixelSize(ResIdReader.getDimenId(getContext(), "uni_gm_f_expand_item_line_height"));
        this.mLineMargin = getResources().getDimensionPixelSize(ResIdReader.getDimenId(getContext(), "uni_gm_f_expand_item_margin"));
        this.mLineColor = Color.parseColor("#33ffffff");
        initViews(btnInfos);
    }

    private void initViews(List<BtnInfo> btnInfos) {
        int size = btnInfos.size();
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(-2, -2);
        params.gravity = 16;
        this.mItemViews = new HashMap<>(size);
        for (int i = 0; i < size; i++) {
            BtnInfo btnInfo = btnInfos.get(i);
            ExpandItemView itemView = new ExpandItemView(getContext(), btnInfo);
            this.mItemViews.put(btnInfo.id, itemView);
            addView(itemView, params);
            if (i != size - 1) {
                addLine();
            }
        }
    }

    private void addLine() {
        View line = new View(getContext());
        line.setBackgroundColor(this.mLineColor);
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(this.mLineWidth, this.mLineHeight);
        params.leftMargin = this.mLineMargin;
        params.rightMargin = this.mLineMargin;
        params.gravity = 16;
        addView(line, params);
    }

    public void showRed(String[] menuIds) {
        if (this.mItemViews != null && menuIds != null && menuIds.length != 0) {
            for (String menuId : menuIds) {
                ExpandItemView itemView = this.mItemViews.get(menuId);
                if (itemView != null) {
                    this.mItemViews.get(menuId).showRed();
                }
            }
        }
    }
}
