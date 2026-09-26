package com.netease.download.reporter;

import com.netease.download.Const;
import com.netease.download.util.LogUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;

/* loaded from: classes.dex */
public class ReporetCore {
    private static final String TAG = "ReporetCore";
    private boolean mOpen = true;
    private static ReporetCore sReporetCore = null;
    private static String name = "";

    private ReporetCore() {
    }

    public static ReporetCore getInstance() {
        if (sReporetCore == null) {
            sReporetCore = new ReporetCore();
        }
        return sReporetCore;
    }

    public void setOpen(boolean open) {
        this.mOpen = open;
    }

    public void init() {
        LogUtil.i(TAG, "日志上传模块---ReporetCore 初始化");
        startStorageLoop();
        setOpen(true);
    }

    public void close(long delaytime) {
        LogUtil.i(TAG, "日志上传模块---持久化结束，发起结束命令");
        finish(delaytime);
    }

    public void test() {
        LogUtil.i(TAG, "日志上传模块---ReporetCore 模拟调用");
        new Thread(new Runnable() { // from class: com.netease.download.reporter.ReporetCore.1
            @Override // java.lang.Runnable
            public void run() {
                int aa = 1;
                while (true) {
                    try {
                        Thread.sleep(1000L);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                    ReporetCore.name = "aaa=" + aa;
                    aa++;
                }
            }
        }).start();
        new Thread(new Runnable() { // from class: com.netease.download.reporter.ReporetCore.2
            @Override // java.lang.Runnable
            public void run() {
                int aa = 1;
                while (true) {
                    try {
                        Thread.sleep(1000L);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                    ReporetCore.name = "bbb=" + aa;
                    aa++;
                }
            }
        }).start();
        new Thread(new Runnable() { // from class: com.netease.download.reporter.ReporetCore.3
            @Override // java.lang.Runnable
            public void run() {
                int aa = 1;
                while (true) {
                    try {
                        Thread.sleep(1000L);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                    ReporetCore.name = "ccc=" + aa;
                    aa++;
                }
            }
        }).start();
    }

    public void finish(final long delaytime) {
        Thread thread = new Thread(new Runnable() { // from class: com.netease.download.reporter.ReporetCore.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Thread.sleep(delaytime);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                LogUtil.i(ReporetCore.TAG, "日志上传模块---持久化结束，发起结束命令");
                ReportFile.getInstances().cleanAndAdd(Const.LOG_TYPE_STATE_FINISH);
            }
        });
        thread.start();
    }

    public void startStorageLoop() {
        new Thread(new Runnable() { // from class: com.netease.download.reporter.ReporetCore.5
            @Override // java.lang.Runnable
            public void run() {
                LogUtil.i(ReporetCore.TAG, "ReporetCore [startStorageLoop] mOpen=" + ReporetCore.this.mOpen);
                while (ReporetCore.this.mOpen) {
                    ReportFile.getInstances().add(ReportInfo.getInstance().toString());
                    try {
                        Thread.sleep(2000L);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        }).start();
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
