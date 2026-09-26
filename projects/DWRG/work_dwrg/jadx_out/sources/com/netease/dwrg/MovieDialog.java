package com.netease.dwrg;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;

/* loaded from: classes.dex */
public class MovieDialog extends Dialog {
    private static final int AUTO_HIDE_DELAY_MILLIS = 3000;

    @SuppressLint({"InlinedApi"})
    private static final int KITKAT_UI_OPTION = 3846;

    @SuppressLint({"InlinedApi"})
    private static final int OTHER_UI_OPTION = 1285;
    Handler mHideHandler;
    Runnable mHideRunnable;
    private MovieView m_movie_view;
    private View m_view;

    public MovieDialog(Context context, MovieView view) {
        super(context, android.R.style.Theme);
        this.mHideHandler = new Handler();
        this.m_view = null;
        this.m_movie_view = null;
        this.mHideRunnable = null;
        Log.e("yuxin", "init movie dialog");
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        Log.e("yuxin", "set cancel event");
        requestWindowFeature(1);
        Log.e("yuxin", "movie dialog init down");
        this.m_movie_view = view;
    }

    public void delayedHide(int delayMillis) {
        if (this.mHideRunnable != null) {
            this.mHideHandler.removeCallbacks(this.mHideRunnable);
            this.mHideHandler.postDelayed(this.mHideRunnable, delayMillis);
        }
    }

    @SuppressLint({"NewApi"})
    public void setView(View view) {
        this.m_view = view;
        if (Build.VERSION.SDK_INT >= 14) {
            if (Build.VERSION.SDK_INT >= 19) {
                this.m_view.setSystemUiVisibility(KITKAT_UI_OPTION);
            } else {
                this.m_view.setSystemUiVisibility(OTHER_UI_OPTION);
            }
            this.m_view.setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.netease.dwrg.MovieDialog.1
                @Override // android.view.View.OnSystemUiVisibilityChangeListener
                public void onSystemUiVisibilityChange(int visibility) {
                    MovieDialog.this.delayedHide(3000);
                }
            });
        }
        this.mHideRunnable = new Runnable() { // from class: com.netease.dwrg.MovieDialog.2
            @Override // java.lang.Runnable
            @SuppressLint({"NewApi"})
            public void run() {
                if (MovieDialog.this.m_view != null && Build.VERSION.SDK_INT >= 14) {
                    if (Build.VERSION.SDK_INT >= 19) {
                        MovieDialog.this.m_view.setSystemUiVisibility(MovieDialog.KITKAT_UI_OPTION);
                    } else {
                        MovieDialog.this.m_view.setSystemUiVisibility(MovieDialog.OTHER_UI_OPTION);
                    }
                }
            }
        };
        setContentView(view);
        Window window = getWindow();
        WindowManager.LayoutParams wl = window.getAttributes();
        wl.alpha = 1.0f;
        wl.dimAmount = 0.0f;
        wl.gravity = 51;
        wl.flags |= 32;
        wl.flags |= 2;
        wl.verticalMargin = 0.0f;
        wl.horizontalMargin = 0.0f;
        window.setAttributes(wl);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowFocusChanged(boolean hasFocus) {
        if (this.m_movie_view != null && !hasFocus) {
            this.m_movie_view.pauseVideo();
        }
        if (this.m_movie_view != null && hasFocus) {
            this.m_movie_view.resumeVideo();
        }
    }

    public void setBounds(int x, int y, int width, int height) {
        WindowManager.LayoutParams wl = getWindow().getAttributes();
        wl.x = x;
        wl.y = y;
        wl.width = width;
        wl.height = height;
        getWindow().setAttributes(wl);
    }
}
