package com.netease.download.downloadpart;

import android.util.Log;
import com.netease.download.Const;
import com.netease.download.util.LogUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;
import java.util.ArrayList;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public class TestProxy {
    private static final String TAG = "test";
    private static TestProxy sTestProxy = null;
    private ArrayList<Integer> list = new ArrayList<>();
    private int mIndexHasSubmit = 0;
    private int mIndexhasResult = 0;
    private int mStatus = 0;
    private int mExecutorServiceQueueSize = 5;
    private ExecutorService mExs = Executors.newFixedThreadPool(5);
    private ArrayList<Future<Integer>> mAl = new ArrayList<>();

    private TestProxy() {
    }

    public static TestProxy getInstance() {
        if (sTestProxy == null) {
            sTestProxy = new TestProxy();
        }
        return sTestProxy;
    }

    public void init(ArrayList<Integer> list) {
        this.list = list;
        for (int i = 0; i < 100; i++) {
            list.add(Integer.valueOf(i));
        }
    }

    public void start() {
        Log.i(TAG, "mStatus=" + this.mStatus);
        if (this.mStatus == 2) {
            Log.e(TAG, "线程池正在进行中");
            return;
        }
        this.mStatus = 2;
        if (10 < this.list.size()) {
            this.mExecutorServiceQueueSize = 10;
        } else {
            this.mExecutorServiceQueueSize = this.list.size();
        }
        this.mIndexHasSubmit = 0;
        while (this.mIndexHasSubmit < this.mExecutorServiceQueueSize) {
            test test1 = new test();
            test1.init(this.mIndexHasSubmit);
            this.mAl.add(this.mExs.submit(test1));
            this.mIndexHasSubmit++;
        }
        while (this.mIndexhasResult < this.list.size()) {
            Log.e(TAG, "第" + this.mIndexhasResult + "个");
            try {
                try {
                    try {
                        this.mAl.get(0).get().intValue();
                        this.mAl.remove(0);
                        Log.e(TAG, "al的大小=" + this.mAl.size());
                        this.mIndexhasResult++;
                        if (this.mIndexHasSubmit < this.list.size()) {
                            test test12 = new test();
                            test12.init(this.mIndexHasSubmit);
                            this.mAl.add(this.mExs.submit(test12));
                            this.mIndexHasSubmit++;
                        }
                    } catch (InterruptedException e) {
                        Log.w(TAG, "InterruptedException=" + e);
                        this.mIndexhasResult++;
                        if (this.mIndexHasSubmit < this.list.size()) {
                            test test13 = new test();
                            test13.init(this.mIndexHasSubmit);
                            this.mAl.add(this.mExs.submit(test13));
                            this.mIndexHasSubmit++;
                        }
                    }
                } catch (CancellationException e2) {
                    Log.w(TAG, "CancellationException=" + e2);
                    this.mIndexhasResult++;
                    if (this.mIndexHasSubmit < this.list.size()) {
                        test test14 = new test();
                        test14.init(this.mIndexHasSubmit);
                        this.mAl.add(this.mExs.submit(test14));
                        this.mIndexHasSubmit++;
                    }
                } catch (ExecutionException e3) {
                    Log.w(TAG, "ExecutionException=" + e3);
                    this.mIndexhasResult++;
                    if (this.mIndexHasSubmit < this.list.size()) {
                        test test15 = new test();
                        test15.init(this.mIndexHasSubmit);
                        this.mAl.add(this.mExs.submit(test15));
                        this.mIndexHasSubmit++;
                    }
                }
            } catch (Throwable th) {
                this.mIndexhasResult++;
                if (this.mIndexHasSubmit < this.list.size()) {
                    test test16 = new test();
                    test16.init(this.mIndexHasSubmit);
                    this.mAl.add(this.mExs.submit(test16));
                    this.mIndexHasSubmit++;
                }
                throw th;
            }
        }
    }

    public void stop() {
        if (this.mStatus == 6) {
            Log.i(TAG, "当前已处于停止状态");
        } else {
            Log.i(TAG, "触发停止状态");
            this.mStatus = 6;
        }
    }

    public void reset() {
        Log.i(TAG, "恢复默认状态");
        this.mIndexHasSubmit = 0;
        this.mIndexhasResult = 0;
        this.mStatus = 0;
    }

    public int getStatus() {
        return this.mStatus;
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
