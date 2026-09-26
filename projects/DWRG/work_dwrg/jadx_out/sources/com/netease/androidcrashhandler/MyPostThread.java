package com.netease.androidcrashhandler;

import com.netease.androidcrashhandler.MyPostEntity;
import com.netease.androidcrashhandler.util.LogUtils;
import com.netease.download.Const;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
import java.util.Queue;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class MyPostThread extends Thread {
    private static final String BOUNDARY = "--------------------------THISISHUANGJIEFENG";
    private static final String CRLF = System.getProperty("line.separator");
    private static final String HTTP_CRLF = "\r\n";
    private static final String MULTIPART_FORMDATA = "multipart/form-data";
    private static final String TAG = "MyPostThread";
    private static final String TWO_HTTP_CRLF = "\r\n\r\n";
    private static final String TWO_HYPHES = "--";
    private long clock;
    private MyNetworkUtils networkUtils;
    private final Queue<MyPostEntity> queue;

    public MyPostThread() {
        this.networkUtils = null;
        this.clock = 3000L;
        this.networkUtils = MyNetworkUtils.getInstance();
        this.queue = this.networkUtils.getPostEntityQueue();
        this.clock = this.networkUtils.getWaitingTime();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        boolean running = true;
        while (running) {
            while (!this.queue.isEmpty()) {
                resetClcok();
                MyPostEntity entity = this.queue.poll();
                if (entity != null) {
                    LogUtils.i("URL.....", entity.getURL());
                    boolean result = post(entity);
                    if (entity.getParams() != null && entity.getParams().containsKey("project")) {
                        LogUtils.i("posting to.....", entity.getParams().get("project"));
                    }
                    LogUtils.i("posting result.....", String.valueOf(result));
                    MyPostCallBack callBack = entity.getCallBack();
                    if (callBack != null) {
                        callBack.postCallBack(result, entity);
                    }
                }
                LogUtils.i("complete one post, now left : ", String.valueOf(this.queue.size()));
            }
            if (getClock() > 0) {
                try {
                    try {
                        Thread.sleep(this.networkUtils.getSleepTime());
                        countDown();
                    } catch (Throwable th) {
                        countDown();
                        throw th;
                        break;
                    }
                } catch (InterruptedException e) {
                    LogUtils.e(TAG, new StringBuilder().append(e).toString());
                    e.printStackTrace();
                    running = false;
                }
            } else {
                running = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void resetClcok() {
        setClock(this.networkUtils.getWaitingTime());
    }

    private synchronized void countDown() {
        setClock(getClock() - this.networkUtils.getSleepTime());
    }

    public long getClock() {
        return this.clock;
    }

    public synchronized void setClock(long clock) {
        this.clock = clock;
    }

    boolean post(MyPostEntity entity) {
        DataOutputStream output;
        LogUtils.i("trace", "MyPostThread post");
        LogUtils.i("trace", "--------------------------------------------------------");
        LogUtils.i("trace", "post entity info：");
        LogUtils.i("trace", "URL：" + entity.getURL());
        LogUtils.i("trace", "Files：" + entity.getFiles().toString());
        LogUtils.i("trace", "Params：" + entity.getParams().toString());
        LogUtils.i("trace", "BasicInfo：" + entity.getBasicInfo().toString());
        LogUtils.i("trace", "--------------------------------------------------------");
        HttpURLConnection conn = null;
        DataOutputStream output2 = null;
        BufferedReader input = null;
        boolean result = false;
        try {
            try {
                try {
                    URL url = new URL(entity.getURL());
                    conn = (HttpURLConnection) url.openConnection();
                    conn.setConnectTimeout(10000);
                    conn.setReadTimeout(10000);
                    conn.setDoInput(true);
                    conn.setDoOutput(true);
                    conn.setUseCaches(false);
                    conn.setRequestMethod("POST");
                    conn.setRequestProperty(HttpHeaders.Names.CONNECTION, HttpHeaders.Values.KEEP_ALIVE);
                    conn.setRequestProperty(HttpHeaders.Names.CONTENT_TYPE, "multipart/form-data; boundary=--------------------------THISISHUANGJIEFENG");
                    conn.connect();
                    output = new DataOutputStream(conn.getOutputStream());
                } catch (IOException e) {
                    e = e;
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (handleParams(entity, output) && handleFiles(entity, output)) {
                LogUtils.i("trace", "params correct");
                output.writeBytes("----------------------------THISISHUANGJIEFENG--\r\n");
                output.flush();
                int code = conn.getResponseCode();
                LogUtils.i("statusCode", String.valueOf(code));
                LogUtils.i("trace", "post result code:" + String.valueOf(code));
                if (code == 200 || code == 400) {
                    result = true;
                }
            } else {
                LogUtils.i("trace", "params wrong");
                result = false;
            }
            if (output != null) {
                try {
                    output.close();
                } catch (IOException e3) {
                    e = e3;
                    LogUtils.i("trace", "IOException" + e);
                    e.printStackTrace();
                    return false;
                }
            }
            if (0 != 0) {
                input.close();
            }
            if (conn != null) {
                conn.disconnect();
                output2 = output;
            } else {
                output2 = output;
            }
        } catch (Exception e4) {
            e = e4;
            output2 = output;
            LogUtils.i("trace", "Exception" + e);
            if (output2 != null) {
                output2.close();
            }
            if (0 != 0) {
                input.close();
            }
            if (conn != null) {
                conn.disconnect();
            }
            return result;
        } catch (Throwable th2) {
            th = th2;
            output2 = output;
            if (output2 != null) {
                output2.close();
            }
            if (0 != 0) {
                input.close();
            }
            if (conn != null) {
                conn.disconnect();
            }
            throw th;
        }
        return result;
    }

    private boolean handleParams(MyPostEntity entity, DataOutputStream output) {
        StringBuilder paramsSB = new StringBuilder();
        Map<String, String> basicInfo = entity.getBasicInfo();
        if (basicInfo != null && !basicInfo.isEmpty()) {
            entity.setParam("basicinfo", basicInfo2PostStr(basicInfo), false);
        }
        Map<String, String> userDesc = entity.getUserDesc();
        if (userDesc != null && !userDesc.isEmpty()) {
            entity.setParam("userdesc", userDesc2PostStr(userDesc), false);
        }
        for (Map.Entry<String, String> entry : entity.getParams().entrySet()) {
            paramsSB.append(TWO_HYPHES);
            paramsSB.append(BOUNDARY);
            paramsSB.append(HTTP_CRLF);
            paramsSB.append("Content-Disposition: form-data; name=\"");
            paramsSB.append(entry.getKey());
            paramsSB.append("\"");
            paramsSB.append(TWO_HTTP_CRLF);
            paramsSB.append(entry.getValue());
            paramsSB.append(HTTP_CRLF);
            LogUtils.i("params", String.valueOf(entry.getKey()) + " = " + entry.getValue());
        }
        try {
            output.write(paramsSB.toString().getBytes("UTF-8"));
            output.flush();
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    private String basicInfo2PostStr(Map<String, String> basicInfo) {
        StringBuilder basicInfoSB = new StringBuilder();
        for (Map.Entry<String, String> entry : basicInfo.entrySet()) {
            basicInfoSB.append(entry.getKey());
            basicInfoSB.append(Const.RESP_CONTENT_SPIT2);
            basicInfoSB.append(entry.getValue());
            basicInfoSB.append(",");
        }
        LogUtils.i("basicinfo", basicInfoSB.toString());
        return basicInfoSB.toString();
    }

    private String userDesc2PostStr(Map<String, String> userDesc) {
        StringBuilder userDescSB = new StringBuilder();
        for (Map.Entry<String, String> entry : userDesc.entrySet()) {
            userDescSB.append(entry.getKey());
            userDescSB.append(" : ");
            userDescSB.append(entry.getValue());
            userDescSB.append(CRLF);
        }
        LogUtils.i("userdesc", userDescSB.toString());
        return userDescSB.toString();
    }

    private boolean handleFiles(MyPostEntity entity, DataOutputStream output) {
        StringBuilder filesSB = new StringBuilder();
        int count = 1;
        for (Map.Entry<String, MyPostEntity.FileForm> entry : entity.getFiles().entrySet()) {
            filesSB.append(TWO_HYPHES);
            filesSB.append(BOUNDARY);
            filesSB.append(HTTP_CRLF);
            filesSB.append("Content-Disposition: form-data; name=\"file");
            int count2 = count + 1;
            filesSB.append(count);
            filesSB.append("\"; filename=\"");
            filesSB.append(entry.getKey());
            filesSB.append("\"");
            filesSB.append(HTTP_CRLF);
            filesSB.append("Content-Type:");
            filesSB.append(entry.getValue().getUploadType());
            filesSB.append(TWO_HTTP_CRLF);
            DataInputStream in = null;
            try {
                output.writeBytes(filesSB.toString());
                filesSB.setLength(0);
                if (entry.getValue().isFile()) {
                    DataInputStream in2 = new DataInputStream(new FileInputStream(entry.getValue().getFile()));
                    try {
                        byte[] bufferOut = new byte[1024];
                        while (true) {
                            int bytes = in2.read(bufferOut);
                            if (bytes == -1) {
                                break;
                            }
                            output.write(bufferOut, 0, bytes);
                        }
                        in = in2;
                    } catch (Throwable th) {
                        th = th;
                        in = in2;
                        if (in != null) {
                            in.close();
                        }
                        throw th;
                    }
                } else {
                    output.write(entry.getValue().getContent().getBytes("UTF-8"));
                }
                output.writeBytes(HTTP_CRLF);
                output.flush();
                if (in != null) {
                    try {
                        in.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                        return false;
                    }
                }
                LogUtils.i("file", entry.getKey());
                count = count2;
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return true;
    }
}
