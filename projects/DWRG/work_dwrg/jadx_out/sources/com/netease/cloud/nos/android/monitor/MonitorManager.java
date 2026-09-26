package com.netease.cloud.nos.android.monitor;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.netease.cloud.nos.android.core.WanAccelerator;
import com.netease.cloud.nos.android.monitor.ISendStat;
import com.netease.cloud.nos.android.service.MonitorService;
import com.netease.cloud.nos.android.utils.LogUtil;

/* loaded from: classes.dex */
public class MonitorManager {
    private Context ctx;
    private StatisticItem item;
    private static final String LOGTAG = LogUtil.makeLogTag(MonitorManager.class);
    private static boolean monitorConfigInit = false;
    private static boolean running = false;
    private static int refCount = 0;
    private static ISendStat iSendStat = null;
    private static ServiceConnection conn = new ServiceConnection() { // from class: com.netease.cloud.nos.android.monitor.MonitorManager.2
        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName name) {
            MonitorManager.iSendStat = null;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName name, IBinder service) {
            MonitorManager.iSendStat = ISendStat.Stub.asInterface(service);
            LogUtil.d(MonitorManager.LOGTAG, "Stat onServiceConnected, iSendStat=" + MonitorManager.iSendStat);
        }
    };
    private ISendStat instSendStat = null;
    private ServiceConnection instConn = new ServiceConnection() { // from class: com.netease.cloud.nos.android.monitor.MonitorManager.1
        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName name) {
            MonitorManager.this.instSendStat = null;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName name, IBinder service) {
            MonitorManager.this.instSendStat = ISendStat.Stub.asInterface(service);
            LogUtil.d(MonitorManager.LOGTAG, "Stat onServiceConnected, instSendStat=" + MonitorManager.this.instSendStat);
            MonitorManager.this.instSendConfig();
            MonitorManager.this.instSendStatItem();
            MonitorManager.this.instEndService();
        }
    };

    public MonitorManager(Context ctx, StatisticItem item) {
        this.ctx = null;
        this.item = null;
        this.ctx = ctx;
        this.item = item;
    }

    public void instSendConfig() {
        if (this.instSendStat == null) {
            LogUtil.w(LOGTAG, "instSendStat is null, not bind to MonitorService");
            return;
        }
        if (!monitorConfigInit) {
            try {
                MonitorConfig config = new MonitorConfig(WanAccelerator.getConf().getMonitorHost(), WanAccelerator.getConf().getConnectionTimeout(), WanAccelerator.getConf().getSoTimeout(), WanAccelerator.getConf().getMonitorInterval());
                this.instSendStat.sendConfig(config);
                LogUtil.d(LOGTAG, "send config to MonitorService");
            } catch (Exception e) {
                LogUtil.e(LOGTAG, "send MonitorConfig exception: " + e.getMessage() + "instSendStat=" + this.instSendStat);
                e.printStackTrace();
            }
        }
    }

    public void instSendStatItem() {
        if (this.instSendStat == null) {
            LogUtil.w(LOGTAG, "instSendStat is null, not bind to MonitorService");
            return;
        }
        try {
            monitorConfigInit = this.instSendStat.sendStat(this.item);
            LogUtil.d(LOGTAG, "send statistic to MonitorService, get configInit " + monitorConfigInit);
        } catch (Exception e) {
            LogUtil.e(LOGTAG, "send Statistic data exception: " + e.getMessage() + "instSendStat=" + this.instSendStat);
            e.printStackTrace();
        }
    }

    public void instStartService() {
        if (this.instSendStat == null) {
            Intent service = new Intent(this.ctx, (Class<?>) MonitorService.class);
            this.ctx.bindService(service, this.instConn, 1);
            LogUtil.d(LOGTAG, "bind MonitorService, instSendStat=" + this.instSendStat);
        }
    }

    public void instEndService() {
        this.ctx.unbindService(this.instConn);
        LogUtil.d(LOGTAG, "unbind MonitorService success");
    }

    public static void sendStatItem(Context ctx, StatisticItem item) {
        if (iSendStat == null) {
            LogUtil.d(LOGTAG, "iSendStat is null, bind to MonitorService");
            runService(ctx);
            new MonitorManager(ctx, item).instStartService();
        } else {
            try {
                iSendStat.sendStat(item);
            } catch (Exception e) {
                LogUtil.e(LOGTAG, "send Statistic data exception: " + e.getMessage() + "iSendStat=" + iSendStat);
                e.printStackTrace();
            }
        }
    }

    public static synchronized void startService(Context ctx) {
        synchronized (MonitorManager.class) {
            int i = refCount;
            refCount = i + 1;
            if (i > 0) {
                LogUtil.d(LOGTAG, "MonitorService has binded: refCount=" + refCount);
            } else if (iSendStat == null) {
                Context context = ctx.getApplicationContext();
                Intent service = new Intent(context, (Class<?>) MonitorService.class);
                context.bindService(service, conn, 1);
                LogUtil.d(LOGTAG, "bind MonitorService, iSendStat=" + iSendStat);
            }
        }
    }

    public static synchronized void endService(Context ctx) {
        synchronized (MonitorManager.class) {
            if (refCount != 0) {
                int i = refCount;
                refCount = i - 1;
                if (i <= 1) {
                    ctx.getApplicationContext().unbindService(conn);
                    LogUtil.d(LOGTAG, "unbind MonitorService success");
                }
            }
            LogUtil.d(LOGTAG, "MonitorService has binded to else or unbinded: refCount=" + refCount);
        }
    }

    private static synchronized void runService(Context ctx) {
        synchronized (MonitorManager.class) {
            if (!running) {
                running = true;
                LogUtil.d(LOGTAG, "init MonitorService");
                ctx.startService(new Intent(ctx, (Class<?>) MonitorService.class));
            }
        }
    }
}
