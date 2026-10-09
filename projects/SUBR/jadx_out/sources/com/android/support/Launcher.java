package com.android.support;

import adrt.ADRTLogCatReader;
import android.app.ActivityManager;
import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;

/* JADX INFO: loaded from: classes4.dex */
public class Launcher extends Service {
    Menu menu;

    @Override // android.app.Service
    public void onCreate() {
        ADRTLogCatReader.onContext(this, "com.aide.ui.goxome");
        super.onCreate();
        this.menu = new Menu(this);
        this.menu.SetWindowManagerWindowService();
        this.menu.ShowMenu();
        Handler handler = new Handler();
        handler.post(new Runnable(this, handler) { // from class: com.android.support.Launcher.100000000
            private final Launcher this$0;
            private final Handler val$handler;

            {
                this.this$0 = this;
                this.val$handler = handler;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.this$0.Thread();
                this.val$handler.postDelayed(this, 1000);
            }
        });
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return (IBinder) null;
    }

    private boolean isNotInGame() {
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
        ActivityManager.getMyMemoryState(runningAppProcessInfo);
        return runningAppProcessInfo.importance != 100;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Thread() {
        if (!isNotInGame()) {
            this.menu.setVisibility(0);
        } else {
            this.menu.setVisibility(0);
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.menu.onDestroy();
    }

    @Override // android.app.Service
    public void onTaskRemoved(Intent intent) {
        super.onTaskRemoved(intent);
        try {
            Thread.sleep(100);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        stopSelf();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        return 2;
    }
}
