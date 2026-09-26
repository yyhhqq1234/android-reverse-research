package com.netease.neox;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;

/* loaded from: classes.dex */
public interface IPlugin {
    String getName();

    void onActivityResult(Activity activity, int i, int i2, Intent intent);

    void onBackPressed(Activity activity);

    void onConfigurationChanged(Activity activity, Configuration configuration);

    void onCreate(Activity activity, Bundle bundle);

    void onNewIntent(Activity activity, Intent intent);

    void onPause(Activity activity);

    void onRestart(Activity activity);

    void onResume(Activity activity);

    void onSaveInstanceState(Activity activity, Bundle bundle);

    void onStop(Activity activity);

    void onWindowFocusChanged(Activity activity, boolean z);
}
