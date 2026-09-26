package com.netease.download.listener;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.alipay.android.phone.mrpc.core.RpcException;
import com.netease.download.Const;
import com.netease.download.util.LogUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;
import io.netty.handler.codec.http.HttpHeaders;
import java.text.DecimalFormat;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class DownloadListenerCore {
    private static final String TAG = "DownloadListenerCore";
    private static DownloadListener mListener;
    private static DownloadListenerCore sDownloadListenCore = null;
    private static DownloadListenerHandler mDownloadListenerHandler = null;
    public static volatile long mTotalSize = 0;
    public static volatile long mAllSize = 0;
    private static BlockingQueue<Long> mQueue = new ArrayBlockingQueue(RpcException.ErrorCode.SERVER_SESSIONSTATUS);

    private DownloadListenerCore() {
    }

    public static DownloadListenerCore getInstances() {
        if (sDownloadListenCore == null) {
            sDownloadListenCore = new DownloadListenerCore();
            getDownloadListenerHandler();
        }
        return sDownloadListenCore;
    }

    public void init(DownloadListener listener) {
        LogUtil.i(TAG, "初始化回调监听器");
        mListener = listener;
    }

    public DownloadListener getDownloadListener() {
        return mListener;
    }

    public static DownloadListenerHandler getDownloadListenerHandler() {
        if (mDownloadListenerHandler == null) {
            mDownloadListenerHandler = new DownloadListenerHandler(Looper.getMainLooper(), null);
        }
        return mDownloadListenerHandler;
    }

    public synchronized long getTotalSize() {
        return mTotalSize;
    }

    public synchronized void sendAllSize(long size) {
        mAllSize += size;
    }

    public synchronized long getAllSize() {
        return mAllSize;
    }

    public void clear() {
        mTotalSize = 0L;
        mAllSize = 0L;
        mQueue.clear();
    }

    /* loaded from: classes.dex */
    public static class DownloadListenerHandler extends Handler {
        private static final String TAG = "InnerDownloadHandler";
        JSONObject data;

        /* synthetic */ DownloadListenerHandler(Looper looper, DownloadListenerHandler downloadListenerHandler) {
            this(looper);
        }

        private DownloadListenerHandler(Looper looper) {
            super(looper);
            this.data = new JSONObject();
        }

        public synchronized void sendProgressMsg(long size, long bytes, String fileName, String filePath) {
            DownloadListenerCore.mTotalSize += bytes;
            try {
                this.data.put(Const.KEY_SIZE, size);
                this.data.put(HttpHeaders.Values.BYTES, DownloadListenerCore.mTotalSize);
                this.data.put("filename", fileName);
                this.data.put("filepath", filePath);
                DecimalFormat df = new DecimalFormat("0.000");
                String result = "0";
                if (0 != size) {
                    double x = DownloadListenerCore.mTotalSize / size;
                    result = df.format(x);
                }
                this.data.put("progress", result);
            } catch (Exception e) {
            }
            sendMessage(obtainMessage(2, this.data));
        }

        public void start() {
            new Thread(new Runnable() { // from class: com.netease.download.listener.DownloadListenerCore.DownloadListenerHandler.1
                @Override // java.lang.Runnable
                public void run() {
                    long allSize = 0;
                    JSONObject data = new JSONObject();
                    while (true) {
                        try {
                            long size = ((Long) DownloadListenerCore.mQueue.take()).longValue();
                            if (size != -100) {
                                allSize += size;
                                try {
                                    data.put(HttpHeaders.Values.BYTES, allSize);
                                    data.put("filename", "");
                                    data.put(Const.KEY_MD5, "");
                                } catch (Exception e) {
                                }
                                DownloadListenerCore.mDownloadListenerHandler.sendMessage(DownloadListenerHandler.this.obtainMessage(2, data));
                            } else {
                                return;
                            }
                        } catch (InterruptedException e2) {
                            e2.printStackTrace();
                            return;
                        }
                    }
                }
            }).start();
        }

        public void finish() {
            Thread thread = new Thread(new Runnable() { // from class: com.netease.download.listener.DownloadListenerCore.DownloadListenerHandler.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Thread.sleep(10000L);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                    LogUtil.i(DownloadListenerHandler.TAG, "下载进度过程，发起结束命令");
                    if (!DownloadListenerCore.mQueue.isEmpty()) {
                        DownloadListenerCore.mQueue.add(-100L);
                    }
                }
            });
            thread.start();
        }

        public void sendFinishMsg(int pFinishCode, long pSize, long pBytes, String pUrlSuffix, String filePath, String sessionId) {
            JSONObject jsonObject = new JSONObject();
            try {
                jsonObject.put("code", pFinishCode);
                jsonObject.put("finished", true);
                jsonObject.put(Const.KEY_SIZE, pSize);
                jsonObject.put(HttpHeaders.Values.BYTES, DownloadListenerCore.mTotalSize);
                jsonObject.put("filename", pUrlSuffix);
                jsonObject.put("filepath", filePath);
                if (pFinishCode != 0) {
                    jsonObject.put("error", getErrorMessage(pFinishCode));
                }
                jsonObject.put("sessionid", sessionId);
            } catch (JSONException e) {
                e.printStackTrace();
            }
            sendMessage(obtainMessage(4, jsonObject));
        }

        public synchronized void sendHasDownloadMag(long size, String fileName, String md5, int part) {
            DownloadListenerCore.mTotalSize += size;
        }

        @Override // android.os.Handler
        public void handleMessage(Message pMsg) {
            if (DownloadListenerCore.mListener != null && pMsg != null) {
                switch (pMsg.what) {
                    case 2:
                        DownloadListenerCore.mListener.onProgress((JSONObject) pMsg.obj);
                        return;
                    case 3:
                    default:
                        LogUtil.w(TAG, "not exist this type of msg!");
                        return;
                    case 4:
                    case 5:
                        DownloadListenerCore.mListener.onFinish((JSONObject) pMsg.obj);
                        return;
                }
            }
        }

        public String getErrorMessage(int code) {
            switch (code) {
                case 0:
                    return "下载成功";
                case 1:
                    return "连接错误";
                case 2:
                    return "大小验证失败";
                case 3:
                    return "MD5验证失败";
                case 4:
                    return "写入文件失败";
                case 5:
                    return "设备空间不足";
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                default:
                    return "未知错误";
                case 11:
                    return "未知错误";
                case 12:
                    return "下载被取消";
                case 13:
                    return "读取内容超时";
                case 14:
                    return "无效的传入参数";
                case 15:
                    return "无效的域名，无法解析";
                case 16:
                    return "配置文件下载错误";
            }
        }
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
