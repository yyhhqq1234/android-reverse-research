package com.netease.codescanner.widget;

import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;

/* loaded from: classes.dex */
public class a implements ResultPointCallback {
    private final ViewfinderView a;

    public a(ViewfinderView viewfinderView) {
        this.a = viewfinderView;
    }

    @Override // com.google.zxing.ResultPointCallback
    public void foundPossibleResultPoint(ResultPoint resultPoint) {
        this.a.addPossibleResultPoint(resultPoint);
    }
}
