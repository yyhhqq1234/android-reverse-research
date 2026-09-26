package com.netease.epay.sdk.base.ui;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.netease.epay.sdk.base.R;

/* loaded from: classes.dex */
public class MockDialogFragmentLayout extends FrameLayout {
    public MockDialogFragmentLayout(Context context, View content) {
        super(context);
        setBackgroundColor(Color.parseColor("#80000000"));
        inflate(context, R.layout.epaysdk_fragment_base_mid_window, this);
        ((ViewGroup) findViewById(R.id.fl_content)).addView(content);
    }
}
