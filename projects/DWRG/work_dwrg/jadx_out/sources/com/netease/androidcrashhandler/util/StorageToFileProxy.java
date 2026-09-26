package com.netease.androidcrashhandler.util;

import android.content.Context;
import com.alipay.android.phone.mrpc.core.RpcException;
import com.netease.download.Const;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public class StorageToFileProxy {
    private static StorageToFileProxy sStorageToFileProxy = null;
    private ExecutorService mExs = Executors.newSingleThreadExecutor();
    private ArrayList<Future<Integer>> mAl = new ArrayList<>();
    private BlockingQueue<String> mQueue = new ArrayBlockingQueue(RpcException.ErrorCode.SERVER_SESSIONSTATUS);
    private File mFile = null;
    private BufferedWriter mOut = null;

    private StorageToFileProxy() {
    }

    public static StorageToFileProxy getInstances() {
        if (sStorageToFileProxy == null) {
            sStorageToFileProxy = new StorageToFileProxy();
        }
        return sStorageToFileProxy;
    }

    public void init(Context context) {
        this.mFile = new File(String.valueOf(context.getExternalCacheDir().getAbsolutePath()) + "/crashHunter_log.txt");
        if (this.mFile.exists()) {
            this.mFile.delete();
        }
        if (!this.mFile.getParentFile().exists()) {
            this.mFile.getParentFile().mkdirs();
        }
        if (!this.mFile.exists()) {
            try {
                this.mFile.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        try {
            this.mOut = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.mFile, true)));
        } catch (FileNotFoundException e2) {
            e2.printStackTrace();
        }
    }

    public void add(String info) {
        this.mQueue.add(info);
    }

    public void start() {
        new Thread(new Runnable() { // from class: com.netease.androidcrashhandler.util.StorageToFileProxy.1
            @Override // java.lang.Runnable
            public void run() {
                while (true) {
                    try {
                        try {
                            String info = (String) StorageToFileProxy.this.mQueue.take();
                            if (info.equals(Const.LOG_TYPE_STATE_FINISH)) {
                                StorageToFileProxy.this.mOut.close();
                                return;
                            } else {
                                try {
                                    StorageToFileProxy.this.mOut.write(info);
                                } catch (IOException e) {
                                    e.printStackTrace();
                                }
                            }
                        } catch (IOException e2) {
                            e2.printStackTrace();
                            return;
                        }
                    } catch (InterruptedException e3) {
                        e3.printStackTrace();
                        return;
                    }
                }
            }
        }).start();
    }

    public void finish() {
        Thread thread = new Thread(new Runnable() { // from class: com.netease.androidcrashhandler.util.StorageToFileProxy.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Thread.sleep(3000L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                StorageToFileProxy.this.mQueue.add(Const.LOG_TYPE_STATE_FINISH);
            }
        });
        thread.start();
    }
}
