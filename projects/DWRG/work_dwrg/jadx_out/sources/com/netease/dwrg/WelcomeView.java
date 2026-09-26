package com.netease.dwrg;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.widget.TextView;
import com.netease.neox.NativeInterface;
import com.netease.unisdk.gmbridge.utils.ResIdReader;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class WelcomeView extends Activity implements Runnable {
    static String STR_FILE_TRANSFERRED = null;
    static String STR_FILE_TOTRANSFER = null;
    private boolean m_is_rsync = false;
    private String m_option = null;
    private Timer m_timer = null;
    private TextView m_label_action = null;
    private TextView m_label_status = null;

    private int getLayoutId(String name) {
        int id = getResources().getIdentifier(name, ResIdReader.RES_TYPE_LAYOUT, getPackageName());
        return id;
    }

    private int getIdId(String name) {
        int id = getResources().getIdentifier(name, ResIdReader.RES_TYPE_ID, getPackageName());
        return id;
    }

    private int getStringId(String name) {
        int id = getResources().getIdentifier(name, ResIdReader.RES_TYPE_STRING, getPackageName());
        return id;
    }

    /* loaded from: classes.dex */
    class UpdateHandler extends Handler {
        public UpdateHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            WelcomeView.this.m_label_action.setText(NativeInterface.NativeGetTransferAction());
            int a = NativeInterface.NativeGetFileTransferred();
            int b = NativeInterface.NativeGetFileToTransfer();
            WelcomeView.this.m_label_status.setText(WelcomeView.STR_FILE_TRANSFERRED + ": " + String.valueOf(a) + " / " + WelcomeView.STR_FILE_TOTRANSFER + ": " + String.valueOf(b));
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle savedInstance) {
        super.onCreate(savedInstance);
        setContentView(getLayoutId("welcomeview"));
        this.m_label_action = (TextView) findViewById(getIdId("labelConnectServer"));
        this.m_label_status = (TextView) findViewById(getIdId("labelUpdateStatus"));
        STR_FILE_TRANSFERRED = getString(getStringId("neox_welcomeview_updated_file_num"));
        STR_FILE_TOTRANSFER = getString(getStringId("neox_welcomeview_total_update_file_num"));
    }

    @Override // android.app.Activity
    public void onBackPressed() {
    }

    public void onStartEngine(View view) {
        if (!this.m_is_rsync) {
            finish();
            NativeInterface.NativeNotifyWelcomeViewFinished();
        }
    }

    public void onRsyncAll(View view) {
        if (!this.m_is_rsync) {
            this.m_option = null;
            this.m_is_rsync = true;
            RestartTimer();
            Thread thread = new Thread(this);
            thread.start();
        }
    }

    public void onRsyncScript(View view) {
        if (!this.m_is_rsync) {
            this.m_option = "script";
            this.m_is_rsync = true;
            RestartTimer();
            Thread thread = new Thread(this);
            thread.start();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        NativeInterface.NativeRsync(this.m_option);
        if (this.m_timer != null) {
            this.m_timer.cancel();
        }
        Handler handler = new UpdateHandler(Looper.getMainLooper());
        handler.sendEmptyMessage(1);
        this.m_is_rsync = false;
    }

    private void RestartTimer() {
        if (this.m_timer != null) {
            this.m_timer.cancel();
        }
        this.m_timer = new Timer();
        this.m_timer.scheduleAtFixedRate(new TimerTask() { // from class: com.netease.dwrg.WelcomeView.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                Handler handler = new UpdateHandler(Looper.getMainLooper());
                handler.sendEmptyMessage(1);
            }
        }, 1L, 60L);
    }
}
