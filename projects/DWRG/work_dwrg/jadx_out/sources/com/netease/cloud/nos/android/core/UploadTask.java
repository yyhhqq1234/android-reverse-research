package com.netease.cloud.nos.android.core;

import android.content.Context;
import android.os.AsyncTask;
import com.netease.cloud.nos.android.constants.Code;
import com.netease.cloud.nos.android.constants.Constants;
import com.netease.cloud.nos.android.exception.InvalidOffsetException;
import com.netease.cloud.nos.android.http.HttpResult;
import com.netease.cloud.nos.android.monitor.Monitor;
import com.netease.cloud.nos.android.monitor.StatisticItem;
import com.netease.cloud.nos.android.pipeline.PipelineHttpSession;
import com.netease.cloud.nos.android.utils.FileDigest;
import com.netease.cloud.nos.android.utils.LogUtil;
import com.netease.cloud.nos.android.utils.NetworkType;
import com.netease.cloud.nos.android.utils.Util;
import com.sina.weibo.sdk.constant.WBPageConstants;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class UploadTask extends AsyncTask<Object, Object, CallRet> {
    private static final String LOGTAG = LogUtil.makeLogTag(UploadTask.class);
    private String MD5;
    private String bucketName;
    private Callback callback;
    private Context context;
    private File file;
    private String fileName;
    private Object fileParam;
    protected volatile HttpGet get;
    private boolean isHttps;
    private WanNOSObject meta;
    private long offset;
    protected volatile HttpPost post;
    private String token;
    private String uploadContext;
    private volatile boolean upCancelled = false;
    protected volatile PipelineHttpSession uploader = null;
    private StatisticItem item = new StatisticItem();

    public UploadTask(Context context, String uploadToken, String bucketName, String fileName, File file, Object fileParam, String uploadContext, Callback callback, boolean isHttps, WanNOSObject meta) {
        this.MD5 = null;
        this.context = context;
        this.token = uploadToken;
        this.bucketName = bucketName;
        this.fileName = fileName;
        this.file = file;
        this.fileParam = fileParam;
        this.uploadContext = uploadContext;
        this.callback = callback;
        this.isHttps = isHttps;
        this.meta = meta;
        this.MD5 = meta.getContentMD5();
        if (this.MD5 == null && file.length() <= WanAccelerator.getConf().getMd5FileMaxSize()) {
            this.MD5 = FileDigest.getFileMD5(file);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.AsyncTask
    public CallRet doInBackground(Object... params) {
        try {
            NetworkType netType = NetworkType.getNetWorkType(this.context);
            this.item.setNetEnv(netType.getNetworkType());
            this.item.setClientIP(Util.getIPAddress());
            this.item.setBucketName(this.bucketName);
            HttpResult result = queryLBS(netType.getNetworkType());
            if (result != null && result.getStatusCode() != 200 && Util.getData(this.context, String.valueOf(this.bucketName) + Constants.UPLOAD_SERVER_KEY) == null) {
                return new CallRet(this.fileParam, this.uploadContext, result.getStatusCode(), Util.getResultString(result, "requestID"), Util.getResultString(result, "callbackRetMsg"), result.getMsg().toString(), null);
            }
            long start = System.currentTimeMillis();
            HttpResult postResult = doUpload(netType.getChunkSize());
            if (postResult == null) {
                postResult = new HttpResult(500, new JSONObject(), null);
            }
            long end = System.currentTimeMillis();
            float speed = (float) (((this.file.length() - this.offset) / 1024.0d) / ((end - start) / 1000.0d));
            LogUtil.w(LOGTAG, "upload result:" + postResult.getStatusCode() + ", speed:" + speed + "KB/S");
            this.item.setUploaderUseTime(end - start);
            this.item.setUploaderHttpCode(Util.getHttpCode(postResult));
            if (postResult.getStatusCode() != 200 && !this.upCancelled) {
                Util.setBooleanData(this.context, String.valueOf(this.bucketName) + Constants.LBS_STATUS, false);
            }
            return new CallRet(this.fileParam, this.uploadContext, postResult.getStatusCode(), Util.getResultString(postResult, "requestID"), Util.getResultString(postResult, "callbackRetMsg"), postResult.getMsg().toString(), null);
        } catch (Exception e) {
            LogUtil.e(LOGTAG, "upload exception", e);
            return new CallRet(this.fileParam, this.uploadContext, Code.HTTP_EXCEPTION, "", "", null, e);
        }
    }

    @Override // android.os.AsyncTask
    protected void onProgressUpdate(Object... values) {
        LogUtil.d(LOGTAG, "on process update");
        long current = ((Long) values[0]).longValue();
        long total = ((Long) values[1]).longValue();
        this.callback.onProcess(this.fileParam, current, total);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(CallRet ret) {
        LogUtil.d(LOGTAG, "on post executed");
        if (ret == null) {
            failureOperation(new CallRet(this.fileParam, this.uploadContext, Code.UNKNOWN_REASON, "", "", "result is null", null));
            return;
        }
        if (ret.getException() != null) {
            failureOperation(ret);
        } else if (ret.getHttpCode() == 200) {
            successOperation(ret);
        } else {
            failureOperation(ret);
        }
    }

    @Override // android.os.AsyncTask
    protected void onCancelled() {
        LogUtil.d(LOGTAG, "on cancelled");
        this.item.setUploaderSucc(2);
        this.item.setUploaderHttpCode(Code.UPLOADING_CANCEL);
        Monitor.add(this.context, this.item);
        this.callback.onCanceled(createCancelCallRet());
    }

    private HttpResult queryLBS(String netType) {
        String curNetType = Util.getData(this.context, String.valueOf(this.bucketName) + Constants.NET_TYPE);
        if (curNetType == null || !curNetType.equals(netType)) {
            LogUtil.d(LOGTAG, "network connection change for bucket " + this.bucketName);
            Util.setBooleanData(this.context, String.valueOf(this.bucketName) + Constants.LBS_STATUS, false);
            Util.setData(this.context, String.valueOf(this.bucketName) + Constants.NET_TYPE, netType);
        }
        if (Util.getBooleanData(this.context, String.valueOf(this.bucketName) + Constants.LBS_STATUS) && Util.getData(this.context, String.valueOf(this.bucketName) + Constants.UPLOAD_SERVER_KEY) != null && Util.getLongData(this.context, String.valueOf(this.bucketName) + Constants.LBS_TIME) + WanAccelerator.getConf().getRefreshInterval() > System.currentTimeMillis() && WanAccelerator.isOpened) {
            return null;
        }
        WanAccelerator.isOpened = true;
        LogUtil.d(LOGTAG, "get lbs address");
        long start = System.currentTimeMillis();
        HttpResult result = IOManager.getLBSAddress(this.context, this.bucketName, true);
        long end = System.currentTimeMillis();
        this.item.setLbsUseTime(end - start);
        if (result.getStatusCode() == 200) {
            JSONObject msg = result.getMsg();
            try {
                this.item.setLbsIP(msg.getString("lbs"));
                return result;
            } catch (Exception e) {
                e.printStackTrace();
                LogUtil.e(LOGTAG, "Failed to parse LBS result: " + e.getMessage());
                return result;
            }
        }
        this.item.setLbsSucc(1);
        this.item.setLbsHttpCode(Util.getHttpCode(result));
        return result;
    }

    private HttpResult doUpload(int chunkSize) {
        boolean isPipelineEnabled = WanAccelerator.getConf().getHttpClient() == null && WanAccelerator.getConf().isPipelineEnabled() && !PipelineHttpSession.isStop();
        boolean isFallback = false;
        LogUtil.d(LOGTAG, "file parameters: ContentMD5=" + this.meta.getContentMD5() + ", realMD5=" + this.MD5 + ", ContentType=" + this.meta.getContentType() + ", chunkSize=" + chunkSize);
        if (isPipelineEnabled && this.file.length() > chunkSize) {
            this.uploader = new PipelineHttpSession(this.token, this.bucketName, this.fileName, this.fileParam, this.file, this.uploadContext, this.isHttps, this.meta, this.MD5, this.callback, chunkSize, this);
            HttpResult postResult = pipeUpload(this.context);
            this.uploadContext = this.uploader.getUploadContext();
            this.item.setUploadType(1);
            if (this.upCancelled) {
                LogUtil.d(LOGTAG, "pipeline upload is cancelled, Don't fall back");
                return postResult;
            }
            int result = postResult.getStatusCode();
            if (result == 200 || result == 403 || result == 520 || result == 699 || result == 500 || result == 400) {
                LogUtil.d(LOGTAG, "pipeline upload result: " + result + ", Don't fall back");
                return postResult;
            }
            LogUtil.d(LOGTAG, "pipeline upload result: " + result + ", fall back to non pipeline");
            isFallback = true;
        }
        try {
            if (this.uploadContext != null && !this.uploadContext.equals("")) {
                HttpResult offsetResult = getBreakOffset(this.context, this.bucketName, this.fileName, this.uploadContext, this.token, this.isHttps);
                if (offsetResult.getStatusCode() == 404) {
                    this.uploadContext = null;
                } else {
                    if (offsetResult.getStatusCode() != 200) {
                        return offsetResult;
                    }
                    this.offset = offsetResult.getMsg().getInt(WBPageConstants.ParamKey.OFFSET);
                }
            }
            if ((this.offset >= this.file.length() && this.file.length() != 0) || this.offset < 0) {
                return new HttpResult(699, new JSONObject(), new InvalidOffsetException("offset is invalid in server side, with offset:" + this.offset + ", file length: " + this.file.length()));
            }
            HttpResult postResult2 = putFile(this.context, this.file, this.offset, chunkSize, this.bucketName, this.fileName, this.token, this.uploadContext, this.isHttps);
            if (isFallback && postResult2.getStatusCode() == 200) {
                PipelineHttpSession.stop();
            }
            this.item.setUploadType(isFallback ? 2 : 0);
            return postResult2;
        } catch (Exception e) {
            LogUtil.e(LOGTAG, "offset result exception", e);
            return new HttpResult(Code.HTTP_EXCEPTION, new JSONObject(), e);
        }
    }

    private HttpResult executeQueryTask(String url, Context ctx, Map<String, String> map) {
        HttpResult httpResult;
        HttpEntity httpEntity = null;
        try {
            try {
                this.get = Util.newGet(url);
                if (map != null) {
                    this.get = (HttpGet) Util.setHeader(this.get, map);
                }
                HttpResponse response = Util.getHttpClient(ctx).execute(this.get);
                if (response == null || response.getStatusLine() == null || (httpEntity = response.getEntity()) == null) {
                    httpResult = new HttpResult(Code.HTTP_NO_RESPONSE, new JSONObject(), null);
                    if (httpEntity != null) {
                        try {
                            httpEntity.consumeContent();
                        } catch (IOException e) {
                            LogUtil.e(LOGTAG, "Consume Content exception", e);
                        }
                    }
                    this.get = null;
                } else {
                    int statusCode = response.getStatusLine().getStatusCode();
                    String result = EntityUtils.toString(httpEntity);
                    JSONObject msg = new JSONObject(result);
                    if (statusCode == 200) {
                        LogUtil.d(LOGTAG, "http get response is correct, response: " + result);
                    } else {
                        LogUtil.d(LOGTAG, "http get response is failed.");
                    }
                    httpResult = new HttpResult(statusCode, msg, null);
                    if (httpEntity != null) {
                        try {
                            httpEntity.consumeContent();
                        } catch (IOException e2) {
                            LogUtil.e(LOGTAG, "Consume Content exception", e2);
                        }
                    }
                    this.get = null;
                }
            } catch (Exception e3) {
                LogUtil.e(LOGTAG, "http get task exception", e3);
                httpResult = new HttpResult(Code.HTTP_EXCEPTION, new JSONObject(), e3);
                if (0 != 0) {
                    try {
                        httpEntity.consumeContent();
                    } catch (IOException e4) {
                        LogUtil.e(LOGTAG, "Consume Content exception", e4);
                    }
                }
                this.get = null;
            }
            return httpResult;
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    httpEntity.consumeContent();
                } catch (IOException e5) {
                    LogUtil.e(LOGTAG, "Consume Content exception", e5);
                }
            }
            this.get = null;
            throw th;
        }
    }

    private HttpResult getBreakOffset(Context ctx, String bucketName, String fileName, String uploadContext, String token, boolean isHttps) {
        String[] uploadServers = Util.getUploadServer(ctx, bucketName, isHttps);
        LogUtil.d(LOGTAG, "upload servers: " + Arrays.toString(uploadServers));
        Map<String, String> map = new HashMap<>();
        map.put(Constants.HEADER_TOKEN, token);
        HttpResult result = null;
        try {
            for (String s : uploadServers) {
                String url = Util.buildQueryUrl(s, bucketName, fileName, uploadContext);
                LogUtil.d(LOGTAG, "break query upload server url: " + url);
                result = retryQuery(url, ctx, map);
                if (this.upCancelled) {
                    return result;
                }
                if (result.getStatusCode() == 200 || result.getStatusCode() == 404) {
                    return result;
                }
            }
        } catch (Exception ex) {
            LogUtil.e(LOGTAG, "get break offset exception", ex);
            if (result == null) {
                result = new HttpResult(Code.HTTP_EXCEPTION, new JSONObject(), null);
            }
        }
        return result;
    }

    private HttpResult retryQuery(String url, Context ctx, Map<String, String> map) throws JSONException {
        int retries = WanAccelerator.getConf().getQueryRetryCount();
        int count = 0;
        HttpResult result = null;
        do {
            int count2 = count;
            count = count2 + 1;
            if (count2 >= retries || this.upCancelled) {
                return result;
            }
            LogUtil.d(LOGTAG, "query offset with url: " + url + ", retry times: " + count);
            result = executeQueryTask(url, ctx, map);
            if (result.getStatusCode() == 200) {
                JSONObject msg = result.getMsg();
                LogUtil.d(LOGTAG, "get break offset result:" + msg.toString());
                return result;
            }
            this.item.setQueryRetryCount(this.item.getQueryRetryCount() + 1);
        } while (result.getStatusCode() != 404);
        LogUtil.d(LOGTAG, "upload file is expired in server side.");
        return result;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.RegionMaker.calcSwitchOut(RegionMaker.java:923)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:797)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:157)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:740)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:740)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeEndlessLoop(RegionMaker.java:411)
        	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:201)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:135)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:263)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:135)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    private com.netease.cloud.nos.android.http.HttpResult putFile(android.content.Context r30, java.io.File r31, long r32, int r34, java.lang.String r35, java.lang.String r36, java.lang.String r37, java.lang.String r38, boolean r39) {
        /*
            Method dump skipped, instructions count: 574
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.netease.cloud.nos.android.core.UploadTask.putFile(android.content.Context, java.io.File, long, int, java.lang.String, java.lang.String, java.lang.String, java.lang.String, boolean):com.netease.cloud.nos.android.http.HttpResult");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x0065. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00ff A[Catch: Exception -> 0x00e3, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x00e3, blocks: (B:5:0x0024, B:7:0x002a, B:9:0x0061, B:10:0x0065, B:15:0x006a, B:12:0x00ff, B:19:0x0080, B:21:0x00a8, B:23:0x00b0, B:25:0x00b8), top: B:4:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.netease.cloud.nos.android.http.HttpResult retryPutFile(java.lang.String r14, java.lang.String r15, android.content.Context r16, byte[] r17) {
        /*
            Method dump skipped, instructions count: 302
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.netease.cloud.nos.android.core.UploadTask.retryPutFile(java.lang.String, java.lang.String, android.content.Context, byte[]):com.netease.cloud.nos.android.http.HttpResult");
    }

    private HttpResult post(String url, byte[] chunkData) {
        HttpResult rs;
        LogUtil.d(LOGTAG, "http post task is executing");
        HttpEntity httpEntity = null;
        try {
            try {
                this.post = Util.newPost(url);
                this.post.addHeader(Constants.HEADER_TOKEN, this.token);
                if (this.MD5 != null && !this.MD5.equals("")) {
                    this.post.addHeader(HttpHeaders.Names.CONTENT_MD5, this.MD5);
                }
                if (this.meta != null) {
                    Util.addHeaders(this.post, this.meta);
                }
                this.post.setEntity(buildHttpEntity(chunkData));
                HttpResponse response = Util.getHttpClient(this.context).execute(this.post);
                LogUtil.d(LOGTAG, "http post task executing finished");
                if (response != null && response.getStatusLine() != null && (httpEntity = response.getEntity()) != null) {
                    int statusCode = response.getStatusLine().getStatusCode();
                    String result = EntityUtils.toString(httpEntity);
                    if (statusCode == 200) {
                        LogUtil.d(LOGTAG, "http post response is correct, response: " + result);
                    } else {
                        LogUtil.d(LOGTAG, "http post response is failed, status code: " + statusCode);
                    }
                    rs = new HttpResult(statusCode, new JSONObject(result), null);
                } else {
                    rs = new HttpResult(Code.HTTP_NO_RESPONSE, null, null);
                }
                if (httpEntity != null) {
                    try {
                        httpEntity.consumeContent();
                    } catch (IOException e) {
                        LogUtil.e(LOGTAG, "Consume Content exception", e);
                    }
                }
                this.post = null;
            } catch (Throwable th) {
                if (0 != 0) {
                    try {
                        httpEntity.consumeContent();
                    } catch (IOException e2) {
                        LogUtil.e(LOGTAG, "Consume Content exception", e2);
                    }
                }
                this.post = null;
                throw th;
            }
        } catch (Exception e3) {
            LogUtil.d(LOGTAG, "http post exception", e3);
            rs = new HttpResult(Code.HTTP_EXCEPTION, new JSONObject(), e3);
            if (0 != 0) {
                try {
                    httpEntity.consumeContent();
                } catch (IOException e4) {
                    LogUtil.e(LOGTAG, "Consume Content exception", e4);
                }
            }
            this.post = null;
        }
        return rs;
    }

    private HttpEntity buildHttpEntity(byte[] isa) throws IOException {
        ByteArrayEntity en = new ByteArrayEntity(isa);
        return en;
    }

    public void cancel() {
        LogUtil.d(LOGTAG, "uploading is canceling");
        if (this.uploader != null) {
            this.uploader.cancel();
        }
        this.upCancelled = true;
        abort();
        cancel(true);
        abort();
        cancel(true);
    }

    public boolean isUpCancelled() {
        return this.upCancelled;
    }

    private void abort() {
        if (this.get != null) {
            try {
                this.get.abort();
            } catch (Exception e) {
                LogUtil.d(LOGTAG, "get method abort exception", e);
            }
        }
        if (this.post != null) {
            try {
                this.post.abort();
            } catch (Exception e2) {
                LogUtil.d(LOGTAG, "post method abort exception", e2);
            }
        }
    }

    private CallRet createCancelCallRet() {
        return new CallRet(this.fileParam, this.uploadContext, Code.UPLOADING_CANCEL, "", "", "uploading is cancelled", null);
    }

    private void failureOperation(CallRet ret) {
        this.item.setUploaderSucc(1);
        Monitor.add(this.context, this.item);
        this.callback.onFailure(ret);
    }

    private void successOperation(CallRet ret) {
        this.item.setUploaderSucc(0);
        Monitor.add(this.context, this.item);
        this.callback.onSuccess(ret);
    }

    public void getUploadProgress(long offset, long length) {
        LogUtil.d(LOGTAG, "uploading Progress offset:" + offset + ", file length:" + length);
        publishProgress(Long.valueOf(offset), Long.valueOf(length));
    }

    private HttpResult retryPipeUpload(String ip) {
        int code;
        int retries = WanAccelerator.getConf().getChunkRetryCount();
        LogUtil.d(LOGTAG, "user set the retry times is : " + retries);
        int count = 0;
        HttpResult httpResult = null;
        while (true) {
            int count2 = count;
            count = count2 + 1;
            if (count2 >= retries) {
                break;
            }
            try {
                if (this.upCancelled) {
                    break;
                }
                LogUtil.d(LOGTAG, "pipeline put file to server : " + ip + ", retryTime: " + count);
                httpResult = this.uploader.upload(ip);
                if (this.upCancelled) {
                    return httpResult;
                }
                code = httpResult.getStatusCode();
                if (code == 200 || code == 403 || code == 520 || code == 500 || code == 699 || code == 400) {
                    break;
                }
                LogUtil.d(LOGTAG, "pipeline retry server " + ip + " with result: " + getErrorString(code));
                this.item.setChunkRetryCount(this.item.getChunkRetryCount() + 1);
            } catch (Exception e) {
                LogUtil.e(LOGTAG, "put file exception", e);
                httpResult = new HttpResult(Code.HTTP_EXCEPTION, new JSONObject(), e);
            }
        }
        LogUtil.d(LOGTAG, "pipeline upload result: " + getErrorString(code));
        return httpResult;
        return httpResult;
    }

    private HttpResult pipeUpload(Context ctx) {
        int result;
        this.item.setFileSize(this.file.length());
        HttpResult httpResult = null;
        try {
            String[] uploadServers = Util.getUploadServer(ctx, this.bucketName, this.isHttps);
            int fails = 0;
            for (String s : uploadServers) {
                String ip = Util.getIPString(s);
                this.item.setUploaderIP(s);
                httpResult = retryPipeUpload(ip);
                if (!this.upCancelled && (result = httpResult.getStatusCode()) != 200 && result != 403 && result != 520 && result != 699 && result != 400) {
                    fails++;
                    this.item.setUploadRetryCount(fails);
                    if (fails >= uploadServers.length) {
                        LogUtil.w(LOGTAG, "pipeline upload failed with all tries");
                    }
                    LogUtil.w(LOGTAG, "http post failed: " + fails);
                } else {
                    return httpResult;
                }
            }
            return httpResult;
        } catch (Exception e) {
            LogUtil.e(LOGTAG, "pipeline upload file exception", e);
            HttpResult httpResult2 = new HttpResult(Code.HTTP_EXCEPTION, new JSONObject(), e);
            return httpResult2;
        }
    }

    private String getErrorString(int result) {
        return "statusCode " + result + ", " + Code.getDes(result);
    }
}
