package com.netease.mpay.widget.pull2refresh;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.ProgressBar;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
public class Pull2RefreshList extends com.netease.mpay.widget.pull2refresh.a {
    private ProgressBar c;
    private ImageView d;
    private View e;
    private Animation f;
    private Animation g;
    private RotateAnimation h;
    private RotateAnimation i;

    /* loaded from: classes.dex */
    public interface a {
        int a(View view);
    }

    public Pull2RefreshList(Context context) {
        super(context);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public Pull2RefreshList(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.netease.mpay.widget.pull2refresh.a
    public void completeLoad() {
        if (this.g != null) {
            this.e.startAnimation(this.g);
        }
        this.e.setVisibility(8);
        super.completeLoad();
    }

    @Override // com.netease.mpay.widget.pull2refresh.a
    public void completeRefresh() {
        super.completeRefresh();
        this.c.setVisibility(8);
        this.d.clearAnimation();
        this.d.setVisibility(0);
    }

    @Deprecated
    public void init(View view, ListView listView) {
    }

    public void init(View view, ListView listView, ImageView imageView, ProgressBar progressBar, a aVar, View view2) {
        init(view, listView, imageView, progressBar, aVar, view2, null, null);
    }

    public void init(View view, ListView listView, ImageView imageView, ProgressBar progressBar, a aVar, View view2, Animation animation, Animation animation2) {
        super.init(view, listView, new e(this, aVar));
        this.e = view2;
        this.f = animation;
        this.g = animation2;
        this.h = new RotateAnimation(0.0f, -180.0f, 1, 0.5f, 1, 0.5f);
        this.h.setInterpolator(new LinearInterpolator());
        this.h.setDuration(250L);
        this.h.setFillAfter(true);
        this.i = new RotateAnimation(-180.0f, 0.0f, 1, 0.5f, 1, 0.5f);
        this.i.setInterpolator(new LinearInterpolator());
        this.i.setDuration(250L);
        this.i.setFillAfter(true);
        this.d = imageView;
        this.c = progressBar;
    }

    @Override // com.netease.mpay.widget.pull2refresh.a
    public void onHeaderComplete(View view) {
        super.onHeaderComplete(view);
        this.d.clearAnimation();
        this.d.startAnimation(this.h);
    }

    @Override // com.netease.mpay.widget.pull2refresh.a
    public void onHeaderInComplete(View view) {
        super.onHeaderInComplete(view);
        this.d.clearAnimation();
        this.d.startAnimation(this.i);
    }

    @Override // com.netease.mpay.widget.pull2refresh.a
    public void onLoad() {
        this.e.setVisibility(0);
        if (this.f != null) {
            this.e.startAnimation(this.f);
        }
        super.onLoad();
    }

    @Override // com.netease.mpay.widget.pull2refresh.a
    public void onRefresh(View view) {
        this.c.setVisibility(0);
        this.d.clearAnimation();
        this.d.setVisibility(8);
        super.onRefresh(view);
    }

    @Override // com.netease.mpay.widget.pull2refresh.a
    public void onStartPulling(View view) {
        super.onStartPulling(view);
        this.d.clearAnimation();
    }
}
