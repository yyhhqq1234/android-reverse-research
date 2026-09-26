package com.netease.neox;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes.dex */
public class PluginManager {
    TreeMap<String, IPlugin> m_plugins = new TreeMap<>();

    public IPlugin getPlugin(String name) {
        IPlugin iPlugin;
        synchronized (this) {
            iPlugin = this.m_plugins.get(name);
        }
        return iPlugin;
    }

    public void register(IPlugin plugin) {
        synchronized (this) {
            this.m_plugins.put(plugin.getName(), plugin);
        }
    }

    public void onCreate(Activity context, Bundle savedInstanceState) {
        synchronized (this) {
            for (Map.Entry<String, IPlugin> entry : this.m_plugins.entrySet()) {
                entry.getValue().onCreate(context, savedInstanceState);
            }
        }
    }

    public void onPause(Activity context) {
        synchronized (this) {
            for (Map.Entry<String, IPlugin> entry : this.m_plugins.entrySet()) {
                entry.getValue().onPause(context);
            }
        }
    }

    public void onStop(Activity context) {
        synchronized (this) {
            for (Map.Entry<String, IPlugin> entry : this.m_plugins.entrySet()) {
                entry.getValue().onStop(context);
            }
        }
    }

    public void onResume(Activity context) {
        synchronized (this) {
            for (Map.Entry<String, IPlugin> entry : this.m_plugins.entrySet()) {
                entry.getValue().onResume(context);
            }
        }
    }

    public void onRestart(Activity context) {
        synchronized (this) {
            for (Map.Entry<String, IPlugin> entry : this.m_plugins.entrySet()) {
                entry.getValue().onRestart(context);
            }
        }
    }

    public void onActivityResult(Activity context, int requestCode, int resultCode, Intent data) {
        synchronized (this) {
            for (Map.Entry<String, IPlugin> entry : this.m_plugins.entrySet()) {
                entry.getValue().onActivityResult(context, requestCode, resultCode, data);
            }
        }
    }

    public void onWindowFocusChanged(Activity context, boolean hasFocus) {
        synchronized (this) {
            for (Map.Entry<String, IPlugin> entry : this.m_plugins.entrySet()) {
                entry.getValue().onWindowFocusChanged(context, hasFocus);
            }
        }
    }

    public void onConfigurationChanged(Activity context, Configuration config) {
        synchronized (this) {
            for (Map.Entry<String, IPlugin> entry : this.m_plugins.entrySet()) {
                entry.getValue().onConfigurationChanged(context, config);
            }
        }
    }

    public void onNewIntent(Activity context, Intent intent) {
        synchronized (this) {
            for (Map.Entry<String, IPlugin> entry : this.m_plugins.entrySet()) {
                entry.getValue().onNewIntent(context, intent);
            }
        }
    }

    public void onSaveInstanceState(Activity context, Bundle outState) {
        synchronized (this) {
            for (Map.Entry<String, IPlugin> entry : this.m_plugins.entrySet()) {
                entry.getValue().onSaveInstanceState(context, outState);
            }
        }
    }

    public void onBackPressed(Activity context) {
        synchronized (this) {
            for (Map.Entry<String, IPlugin> entry : this.m_plugins.entrySet()) {
                entry.getValue().onBackPressed(context);
            }
        }
    }
}
