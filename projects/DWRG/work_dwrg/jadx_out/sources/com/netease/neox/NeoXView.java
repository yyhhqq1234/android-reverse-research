package com.netease.neox;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.view.View;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.LinearLayout;

@SuppressLint({"InlinedApi"})
/* loaded from: classes.dex */
public class NeoXView extends View {
    private static final int AUTO_HIDE_DELAY_MILLIS = 3000;
    static final int IME_FLAG_NO_FULLSCREEN = 33554432;
    private static final int KITKAT_UI_OPTION = 3846;
    private static final int OTHER_UI_OPTION = 1285;
    Handler mHideHandler;
    Runnable mHideRunnable;

    public NeoXView(Context context) {
        super(context);
        this.mHideHandler = new Handler();
        this.mHideRunnable = new Runnable() { // from class: com.netease.neox.NeoXView.2
            @Override // java.lang.Runnable
            public void run() {
                if (Build.VERSION.SDK_INT >= 14) {
                    if (Build.VERSION.SDK_INT >= 19) {
                        NeoXView.this.setSystemUiVisibility(NeoXView.KITKAT_UI_OPTION);
                    } else {
                        NeoXView.this.setSystemUiVisibility(NeoXView.OTHER_UI_OPTION);
                    }
                }
            }
        };
        LinearLayout.LayoutParams p = new LinearLayout.LayoutParams(-1, -2);
        setLayoutParams(p);
        setFocusable(true);
        if (Build.VERSION.SDK_INT >= 14) {
            if (Build.VERSION.SDK_INT >= 19) {
                setSystemUiVisibility(KITKAT_UI_OPTION);
            } else {
                setSystemUiVisibility(OTHER_UI_OPTION);
            }
            setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.netease.neox.NeoXView.1
                @Override // android.view.View.OnSystemUiVisibilityChangeListener
                public void onSystemUiVisibilityChange(int visibility) {
                    NeoXView.this.delayedHide(3000);
                }
            });
        }
    }

    public void delayedHide(int delayMillis) {
        this.mHideHandler.removeCallbacks(this.mHideRunnable);
        this.mHideHandler.postDelayed(this.mHideRunnable, delayMillis);
    }

    @Override // android.view.View
    public InputConnection onCreateInputConnection(EditorInfo outAttrs) {
        outAttrs.imeOptions = 301989888;
        return new BaseInputConnection(this, false);
    }

    @Override // android.view.View
    public boolean onCheckIsTextEditor() {
        return true;
    }
}
