package com.netease.cloud.nos.android.core;

import com.netease.cloud.nos.android.exception.InvalidChunkSizeException;
import com.netease.cloud.nos.android.exception.InvalidParameterException;
import com.netease.cloud.nos.android.utils.LogUtil;
import com.netease.cloud.nos.android.utils.Util;
import com.netease.environment.config.SdkConstants;
import org.apache.http.client.HttpClient;

/* loaded from: classes.dex */
public class AcceleratorConf {
    private static final String LOGTAG = LogUtil.makeLogTag(AcceleratorConf.class);
    private String lbsHost = "http://wanproxy.127.net/lbs;http://wanproxy-hz.127.net/lbs;http://wanproxy-bj.127.net/lbs;http://wanproxy-oversea.127.net/lbs";
    private String lbsIP = "http://223.252.196.38/lbs";
    private String monitorHost = "http://wanproxy.127.net";
    private String charset = "utf-8";
    private int connectionTimeout = 10000;
    private int soTimeout = 30000;
    private int lbsConnectionTimeout = 10000;
    private int lbsSoTimeout = 10000;
    private int chunkSize = 32768;
    private int chunkRetryCount = 2;
    private int queryRetryCount = 2;
    private long refreshInterval = 7200000;
    private long monitorInterval = 120000;
    private boolean isPipelineEnabled = true;
    private long pipelineFailoverPeriod = 300000;
    private int md5FileMaxSize = 1048576;
    private HttpClient httpClient = null;
    private boolean monitorThreadEnable = false;

    public String getLbsHost() {
        return this.lbsHost;
    }

    public void setLbsHost(String lbsHost) {
        this.lbsHost = lbsHost;
    }

    public String getLbsIP() {
        return this.lbsIP;
    }

    public void setLbsIP(String lbsIP) throws InvalidParameterException {
        if (!Util.isValidLbsIP(lbsIP)) {
            throw new InvalidParameterException("Invalid LbsIP");
        }
        this.lbsIP = lbsIP;
    }

    public String getMonitorHost() {
        return this.monitorHost;
    }

    public void setMontiroHost(String monitorHost) {
        this.monitorHost = monitorHost;
    }

    public String getCharset() {
        return this.charset;
    }

    public int getConnectionTimeout() {
        return this.connectionTimeout;
    }

    public void setConnectionTimeout(int connectionTimeout) throws InvalidParameterException {
        if (connectionTimeout <= 0) {
            throw new InvalidParameterException("Invalid ConnectionTimeout:" + connectionTimeout);
        }
        this.connectionTimeout = connectionTimeout;
    }

    public int getSoTimeout() {
        return this.soTimeout;
    }

    public void setSoTimeout(int soTimeout) throws InvalidParameterException {
        if (soTimeout <= 0) {
            throw new InvalidParameterException("Invalid soTimeout:" + soTimeout);
        }
        this.soTimeout = soTimeout;
    }

    public int getLbsConnectionTimeout() {
        return this.lbsConnectionTimeout;
    }

    public void setLbsConnectionTimeout(int connectionTimeout) throws InvalidParameterException {
        if (connectionTimeout <= 0) {
            throw new InvalidParameterException("Invalid lbsConnectionTimeout:" + connectionTimeout);
        }
        this.lbsConnectionTimeout = connectionTimeout;
    }

    public int getLbsSoTimeout() {
        return this.lbsSoTimeout;
    }

    public void setLbsSoTimeout(int soTimeout) throws InvalidParameterException {
        if (soTimeout <= 0) {
            throw new InvalidParameterException("Invalid lbsSoTimeout:" + soTimeout);
        }
        this.lbsSoTimeout = soTimeout;
    }

    public int getChunkSize() {
        return this.chunkSize;
    }

    public void setChunkSize(int chunkSize) throws InvalidChunkSizeException {
        if (chunkSize > 4194304 || chunkSize < 4096) {
            throw new InvalidChunkSizeException();
        }
        this.chunkSize = chunkSize;
    }

    public int getChunkRetryCount() {
        return this.chunkRetryCount;
    }

    public void setChunkRetryCount(int chunkRetryCount) throws InvalidParameterException {
        if (chunkRetryCount <= 0) {
            throw new InvalidParameterException("Invalid chunkRetryCount:" + chunkRetryCount);
        }
        this.chunkRetryCount = chunkRetryCount;
    }

    public int getQueryRetryCount() {
        return this.queryRetryCount;
    }

    public void setQueryRetryCount(int queryRetryCount) throws InvalidParameterException {
        if (queryRetryCount <= 0) {
            throw new InvalidParameterException("Invalid queryRetryCount:" + queryRetryCount);
        }
        this.queryRetryCount = queryRetryCount;
    }

    public long getRefreshInterval() {
        return this.refreshInterval;
    }

    public void setRefreshInterval(long refreshInterval) {
        if (refreshInterval < SdkConstants.A_MUNITE) {
            LogUtil.w(LOGTAG, "Invalid refreshInterval:" + refreshInterval);
        } else {
            this.refreshInterval = refreshInterval;
        }
    }

    public long getMonitorInterval() {
        return this.monitorInterval;
    }

    public void setMonitorInterval(long monitorInterval) {
        if (monitorInterval < SdkConstants.A_MUNITE) {
            LogUtil.w(LOGTAG, "Invalid monitorInterval:" + monitorInterval);
        } else {
            this.monitorInterval = monitorInterval;
        }
    }

    public boolean isPipelineEnabled() {
        return this.isPipelineEnabled;
    }

    public void setPipelineEnabled(boolean enable) {
        this.isPipelineEnabled = enable;
    }

    public void setPipelineFailoverPeriod(long period) {
        if (period < 0) {
            LogUtil.w(LOGTAG, "Invalid pipelineFailoverPeriod:" + period);
        } else {
            this.pipelineFailoverPeriod = period;
        }
    }

    public long getPipelineFailoverPeriod() {
        return this.pipelineFailoverPeriod;
    }

    public int getMd5FileMaxSize() {
        return this.md5FileMaxSize;
    }

    public void setMd5FileMaxSize(int md5FileMaxSize) throws InvalidParameterException {
        if (md5FileMaxSize < 0) {
            throw new InvalidParameterException("Invalid md5FileMaxSize:" + md5FileMaxSize);
        }
        this.md5FileMaxSize = md5FileMaxSize;
    }

    public void setHttpClient(HttpClient httpClient) {
        this.httpClient = httpClient;
    }

    public HttpClient getHttpClient() {
        return this.httpClient;
    }

    public void setMonitorThread(boolean enable) {
        this.monitorThreadEnable = enable;
    }

    public boolean isMonitorThreadEnabled() {
        return this.monitorThreadEnable;
    }
}
