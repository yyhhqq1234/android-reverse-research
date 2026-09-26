package com.netease.neox;

import android.app.NativeActivity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;

/* loaded from: classes.dex */
public abstract class NeoXClient extends NativeActivity {
    private PluginManager m_plugin_mgr = new PluginManager();

    /* JADX INFO: Access modifiers changed from: protected */
    public void initPlugins(PluginManager pluginMgr) {
        pluginMgr.register(new PluginNeoXView());
    }

    @Override // android.app.NativeActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initPlugins(this.m_plugin_mgr);
        this.m_plugin_mgr.onCreate(this, savedInstanceState);
    }

    @Override // android.app.NativeActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.m_plugin_mgr.onPause(this);
    }

    @Override // android.app.NativeActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        this.m_plugin_mgr.onStop(this);
    }

    @Override // android.app.NativeActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.m_plugin_mgr.onResume(this);
    }

    @Override // android.app.Activity
    public void onRestart() {
        super.onRestart();
        this.m_plugin_mgr.onRestart(this);
    }

    @Override // android.app.Activity
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        this.m_plugin_mgr.onActivityResult(this, requestCode, resultCode, data);
    }

    @Override // android.app.NativeActivity, android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        this.m_plugin_mgr.onWindowFocusChanged(this, hasFocus);
    }

    @Override // android.app.NativeActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration config) {
        super.onConfigurationChanged(config);
        this.m_plugin_mgr.onConfigurationChanged(this, config);
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.m_plugin_mgr.onNewIntent(this, intent);
    }

    @Override // android.app.NativeActivity, android.app.Activity
    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        this.m_plugin_mgr.onSaveInstanceState(this, outState);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        this.m_plugin_mgr.onBackPressed(this);
    }

    public IPlugin getPlugin(String name) {
        return this.m_plugin_mgr.getPlugin(name);
    }

    public void registerPlugin(IPlugin plugin) {
        this.m_plugin_mgr.register(plugin);
    }

    public String getExternalDataPath() {
        return getApplicationContext().getExternalFilesDir(null).getPath();
    }
}
