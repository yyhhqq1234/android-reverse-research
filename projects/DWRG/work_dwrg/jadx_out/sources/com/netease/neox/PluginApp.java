package com.netease.neox;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;

/* loaded from: classes.dex */
public class PluginApp implements IPlugin {
    public static final int LANDSCAPE = 0;
    public static final int PORTRAIT = 1;
    private Activity m_context = null;
    private int m_current_orient = 2;

    public static native void NativeOnOrientationChanged(int i);

    @Override // com.netease.neox.IPlugin
    public String getName() {
        return "app";
    }

    @Override // com.netease.neox.IPlugin
    public void onCreate(Activity context, Bundle savedInstanceState) {
        this.m_context = context;
        this.m_current_orient = context.getResources().getConfiguration().orientation;
    }

    @Override // com.netease.neox.IPlugin
    public void onPause(Activity context) {
    }

    @Override // com.netease.neox.IPlugin
    public void onStop(Activity context) {
    }

    @Override // com.netease.neox.IPlugin
    public void onResume(Activity context) {
    }

    @Override // com.netease.neox.IPlugin
    public void onRestart(Activity context) {
    }

    @Override // com.netease.neox.IPlugin
    public void onActivityResult(Activity context, int requestCode, int resultCode, Intent data) {
    }

    @Override // com.netease.neox.IPlugin
    public void onWindowFocusChanged(Activity context, boolean hasFocus) {
    }

    @Override // com.netease.neox.IPlugin
    public void onConfigurationChanged(Activity context, Configuration config) {
        if (config.orientation != this.m_current_orient) {
            int orient = config.orientation != 1 ? 0 : 1;
            NativeOnOrientationChanged(orient);
        }
        this.m_current_orient = config.orientation;
    }

    @Override // com.netease.neox.IPlugin
    public void onNewIntent(Activity context, Intent intent) {
    }

    @Override // com.netease.neox.IPlugin
    public void onSaveInstanceState(Activity context, Bundle outState) {
    }

    @Override // com.netease.neox.IPlugin
    public void onBackPressed(Activity context) {
    }

    public int getCurrentOrientation() {
        int orient = this.m_context.getResources().getConfiguration().orientation;
        return orient == 1 ? 1 : 0;
    }

    public boolean requestOrientation(final int orient) {
        if (orient == getCurrentOrientation()) {
            return true;
        }
        if (orient != 0 && orient != 1) {
            return false;
        }
        this.m_context.runOnUiThread(new Runnable() { // from class: com.netease.neox.PluginApp.1
            @Override // java.lang.Runnable
            public void run() {
                if (orient == 1) {
                    PluginApp.this.m_context.setRequestedOrientation(7);
                } else {
                    PluginApp.this.m_context.setRequestedOrientation(6);
                }
            }
        });
        return true;
    }
}
