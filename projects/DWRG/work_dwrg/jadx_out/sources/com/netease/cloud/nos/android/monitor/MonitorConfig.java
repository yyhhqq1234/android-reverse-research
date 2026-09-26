package com.netease.cloud.nos.android.monitor;

import android.os.Parcel;
import android.os.Parcelable;
import com.netease.cloud.nos.android.exception.InvalidParameterException;
import com.netease.cloud.nos.android.utils.LogUtil;
import com.netease.environment.config.SdkConstants;

/* loaded from: classes.dex */
public class MonitorConfig implements Parcelable {
    private int connectionTimeout;
    private String monitorHost;
    private long monitorInterval;
    private int soTimeout;
    private static final String LOGTAG = LogUtil.makeLogTag(MonitorConfig.class);
    public static final Parcelable.Creator<MonitorConfig> CREATOR = new Parcelable.Creator<MonitorConfig>() { // from class: com.netease.cloud.nos.android.monitor.MonitorConfig.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MonitorConfig[] newArray(int size) {
            return new MonitorConfig[size];
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MonitorConfig createFromParcel(Parcel source) {
            return new MonitorConfig(source.readString(), source.readInt(), source.readInt(), source.readLong());
        }
    };

    public MonitorConfig() {
        this.monitorHost = "http://wanproxy.127.net";
        this.connectionTimeout = 10000;
        this.soTimeout = 30000;
        this.monitorInterval = 120000L;
    }

    public MonitorConfig(String monitorHost, int connectionTimeout, int soTimeout, long monitorInterval) {
        this.monitorHost = "http://wanproxy.127.net";
        this.connectionTimeout = 10000;
        this.soTimeout = 30000;
        this.monitorInterval = 120000L;
        this.monitorHost = monitorHost;
        this.connectionTimeout = connectionTimeout;
        this.soTimeout = soTimeout;
        this.monitorInterval = monitorInterval;
    }

    public String getMonitorHost() {
        return this.monitorHost;
    }

    public void setMontiroHost(String monitorHost) {
        this.monitorHost = monitorHost;
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

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.monitorHost);
        dest.writeInt(this.connectionTimeout);
        dest.writeInt(this.soTimeout);
        dest.writeLong(this.monitorInterval);
    }
}
