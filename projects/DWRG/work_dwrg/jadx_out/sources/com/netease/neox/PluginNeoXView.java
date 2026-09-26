package com.netease.neox;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import android.view.ViewTreeObserver;
import com.alipay.android.phone.mrpc.core.RpcException;

/* loaded from: classes.dex */
public class PluginNeoXView implements IPlugin {
    private NeoXView m_view = null;

    @Override // com.netease.neox.IPlugin
    public String getName() {
        return "NeoXView";
    }

    public NeoXView getView() {
        return this.m_view;
    }

    @Override // com.netease.neox.IPlugin
    public void onCreate(Activity context, Bundle savedInstanceState) {
        this.m_view = new NeoXView(context);
        context.setContentView(this.m_view);
        View activityRootView = context.getWindow().getDecorView().getRootView();
        activityRootView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.netease.neox.PluginNeoXView.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                if (PluginNeoXView.this.m_view != null) {
                    PluginNeoXView.this.m_view.delayedHide(RpcException.ErrorCode.SERVER_SESSIONSTATUS);
                }
            }
        });
    }

    @Override // com.netease.neox.IPlugin
    public void onPause(Activity context) {
    }

    @Override // com.netease.neox.IPlugin
    public void onStop(Activity context) {
    }

    @Override // com.netease.neox.IPlugin
    public void onResume(Activity context) {
        if (this.m_view != null) {
            this.m_view.delayedHide(RpcException.ErrorCode.SERVER_SESSIONSTATUS);
        }
    }

    @Override // com.netease.neox.IPlugin
    public void onRestart(Activity context) {
    }

    @Override // com.netease.neox.IPlugin
    public void onActivityResult(Activity context, int requestCode, int resultCode, Intent data) {
    }

    @Override // com.netease.neox.IPlugin
    public void onWindowFocusChanged(Activity context, boolean hasFocus) {
        if (hasFocus && this.m_view != null) {
            this.m_view.delayedHide(RpcException.ErrorCode.SERVER_SESSIONSTATUS);
        }
    }

    @Override // com.netease.neox.IPlugin
    public void onConfigurationChanged(Activity context, Configuration config) {
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
}
