package com.netease.download.reporter;

import android.content.Context;
import com.alipay.android.phone.mrpc.core.RpcException;
import com.netease.download.Const;
import com.netease.download.util.LogUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public class ReportFile {
    private static final String TAG = "ReportFile";
    private static ReportFile sReportFile = null;
    private ExecutorService mExs = Executors.newSingleThreadExecutor();
    private ArrayList<Future<Integer>> mAl = new ArrayList<>();
    private BlockingQueue<String> mQueue = new ArrayBlockingQueue(RpcException.ErrorCode.SERVER_SESSIONSTATUS);
    private File mFile = null;
    private BufferedWriter mOut = null;
    public FileCallBack mFileCallBack = null;
    private boolean mIsStart = false;

    /* loaded from: classes.dex */
    interface FileCallBack {
        void finish();
    }

    private ReportFile() {
    }

    public static ReportFile getInstances() {
        if (sReportFile == null) {
            sReportFile = new ReportFile();
        }
        return sReportFile;
    }

    public void init(Context context, FileCallBack fileCallBack) {
        if (this.mFile == null) {
            this.mFile = new File(String.valueOf(context.getExternalCacheDir().getAbsolutePath()) + "/report_info.txt");
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
        this.mIsStart = false;
        this.mFileCallBack = fileCallBack;
    }

    public void add(String info) {
        this.mQueue.add(info);
    }

    public void cleanAndAdd(String info) {
        this.mQueue.clear();
        this.mQueue.add(ReportInfo.getInstance().toString());
        this.mQueue.add(info);
    }

    public void start() {
        LogUtil.i(TAG, "ReportFile write2File Thread mIsStart=" + this.mIsStart);
        if (!this.mIsStart) {
            this.mIsStart = true;
            new Thread(new Runnable() { // from class: com.netease.download.reporter.ReportFile.1
                @Override // java.lang.Runnable
                public void run() {
                    LogUtil.i(ReportFile.TAG, "ReportFile write2File Thread start");
                    while (true) {
                        try {
                            try {
                                String info = (String) ReportFile.this.mQueue.take();
                                if (!info.equals(Const.LOG_TYPE_STATE_FINISH)) {
                                    try {
                                        ReportFile.this.mOut = new BufferedWriter(new FileWriter(ReportFile.this.mFile));
                                        ReportFile.this.mOut.write(info);
                                    } catch (FileNotFoundException e) {
                                        e.printStackTrace();
                                    } catch (IOException e2) {
                                        e2.printStackTrace();
                                    }
                                    ReportFile.this.mOut.close();
                                } else {
                                    LogUtil.i(ReportFile.TAG, "ReportFile write2File finish");
                                    ReportFile.this.mFileCallBack.finish();
                                    return;
                                }
                            } catch (InterruptedException e3) {
                                e3.printStackTrace();
                                return;
                            }
                        } catch (IOException e4) {
                            e4.printStackTrace();
                            return;
                        }
                    }
                }
            }).start();
        }
    }

    public String readFile(Context context) {
        String result = "";
        File mFile = new File(String.valueOf(context.getExternalCacheDir().getAbsolutePath()) + "/report_info.txt");
        if (!mFile.exists()) {
            try {
                LogUtil.i(TAG, "日志上传模块---文件不存在生成文件");
                mFile.createNewFile();
            } catch (IOException e) {
                LogUtil.i(TAG, "日志上传模块---文件不存在生成文件 IOException =" + e);
            }
        }
        LogUtil.i(TAG, "日志上传模块---文件路径=" + mFile.getAbsolutePath() + ", 文件大小=" + mFile.length());
        if (mFile.exists() && mFile.length() > 0) {
            LogUtil.i(TAG, "日志上传模块---文件存在，路径=" + mFile.getAbsolutePath() + ", 文件大小=" + mFile.length());
            Scanner inputStream = null;
            try {
                Scanner inputStream2 = new Scanner(new FileInputStream(mFile.getAbsoluteFile()));
                inputStream = inputStream2;
            } catch (FileNotFoundException e2) {
                LogUtil.w(TAG, "日志上传模块---FileNotFoundException = " + e2);
            }
            StringBuffer fileInfo = new StringBuffer();
            while (inputStream.hasNextLine()) {
                String line = inputStream.nextLine();
                fileInfo.append(line);
            }
            result = fileInfo.toString();
            inputStream.close();
        } else {
            LogUtil.i(TAG, "日志上传模块---文件不存在");
        }
        LogUtil.i(TAG, "日志上传模块---文件读取内容=" + result.toString());
        return result;
    }

    public void clean() {
        this.mIsStart = false;
    }

    public void deleteFile() {
        if (this.mFile != null && this.mFile.exists()) {
            LogUtil.i(TAG, "日志上传模块---删除日志文件");
            this.mFile.delete();
        }
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
