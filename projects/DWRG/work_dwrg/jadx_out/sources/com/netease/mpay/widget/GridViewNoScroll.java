package com.netease.mpay.widget;

import android.content.Context;
import android.support.v4.widget.ExploreByTouchHelper;
import android.util.AttributeSet;
import android.view.View;
import android.widget.GridView;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
public class GridViewNoScroll extends GridView {
    public GridViewNoScroll(Context context) {
        super(context);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public GridViewNoScroll(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public GridViewNoScroll(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(536870911, ExploreByTouchHelper.INVALID_ID));
    }
}
