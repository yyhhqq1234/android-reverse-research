package com.netease.cloud.nos.android.monitor;

import android.os.Parcel;
import android.os.Parcelable;
import com.netease.environment.config.SdkConstants;

/* loaded from: classes.dex */
public class StatisticItem implements Parcelable {
    public static final Parcelable.Creator<StatisticItem> CREATOR = new Parcelable.Creator<StatisticItem>() { // from class: com.netease.cloud.nos.android.monitor.StatisticItem.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public StatisticItem[] newArray(int size) {
            return new StatisticItem[size];
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public StatisticItem createFromParcel(Parcel source) {
            return new StatisticItem(source.readString(), source.readString(), source.readString(), source.readString(), source.readString(), source.readLong(), source.readString(), source.readLong(), source.readLong(), source.readInt(), source.readInt(), source.readInt(), source.readInt(), source.readInt(), source.readInt(), source.readInt(), source.readString(), source.readInt());
        }
    };
    private String bucketName;
    private int chunkRetryCount;
    private String clientIP;
    private long fileSize;
    private int lbsHttpCode;
    private String lbsIP;
    private int lbsSucc;
    private long lbsUseTime;
    private String netEnv;
    private String platform;
    private int queryRetryCount;
    private String sdkVersion;
    private int uploadRetryCount;
    private int uploadType;
    private int uploaderHttpCode;
    private String uploaderIP;
    private int uploaderSucc;
    private long uploaderUseTime;

    public StatisticItem() {
        this.platform = SdkConstants.SYSTEM;
        this.sdkVersion = "2.0";
        this.lbsSucc = 0;
        this.uploaderSucc = 0;
        this.lbsHttpCode = 200;
        this.uploaderHttpCode = 200;
        this.chunkRetryCount = 0;
        this.queryRetryCount = 0;
        this.uploadRetryCount = 0;
        this.uploadType = 1000;
    }

    public StatisticItem(String platform, String clientIP, String sdkVersion, String lbsIP, String uploaderIP, long fileSize, String netEnv, long lbsUseTime, long uploaderUseTime, int lbsSucc, int uploaderSucc, int lbsHttpCode, int uploaderHttpCode, int chunkRetryCount, int queryRetryCount, int uploadRetryCount, String bucketName, int uploadType) {
        this.platform = SdkConstants.SYSTEM;
        this.sdkVersion = "2.0";
        this.lbsSucc = 0;
        this.uploaderSucc = 0;
        this.lbsHttpCode = 200;
        this.uploaderHttpCode = 200;
        this.chunkRetryCount = 0;
        this.queryRetryCount = 0;
        this.uploadRetryCount = 0;
        this.uploadType = 1000;
        this.platform = platform;
        this.clientIP = clientIP;
        this.sdkVersion = sdkVersion;
        this.lbsIP = lbsIP;
        this.uploaderIP = uploaderIP;
        this.fileSize = fileSize;
        this.netEnv = netEnv;
        this.lbsUseTime = lbsUseTime;
        this.uploaderUseTime = uploaderUseTime;
        this.lbsSucc = lbsSucc;
        this.uploaderSucc = uploaderSucc;
        this.lbsHttpCode = lbsHttpCode;
        this.uploaderHttpCode = uploaderHttpCode;
        this.chunkRetryCount = chunkRetryCount;
        this.queryRetryCount = queryRetryCount;
        this.uploadRetryCount = uploadRetryCount;
        this.bucketName = bucketName;
        this.uploadType = uploadType;
    }

    public String getClientIP() {
        return this.clientIP;
    }

    public void setClientIP(String clientIP) {
        this.clientIP = clientIP;
    }

    public String getLbsIP() {
        return this.lbsIP;
    }

    public void setLbsIP(String lbsIP) {
        this.lbsIP = lbsIP;
    }

    public String getUploaderIP() {
        return this.uploaderIP;
    }

    public void setUploaderIP(String uploaderIP) {
        this.uploaderIP = uploaderIP;
    }

    public long getFileSize() {
        return this.fileSize;
    }

    public void setFileSize(long fileSize) {
        this.fileSize = fileSize;
    }

    public String getNetEnv() {
        return this.netEnv;
    }

    public void setNetEnv(String netEnv) {
        this.netEnv = netEnv;
    }

    public long getLbsUseTime() {
        return this.lbsUseTime;
    }

    public void setLbsUseTime(long lbsUseTime) {
        this.lbsUseTime = lbsUseTime;
    }

    public long getUploaderUseTime() {
        return this.uploaderUseTime;
    }

    public void setUploaderUseTime(long uploaderUseTime) {
        this.uploaderUseTime = uploaderUseTime;
    }

    public int getLbsSucc() {
        return this.lbsSucc;
    }

    public void setLbsSucc(int lbsSucc) {
        this.lbsSucc = lbsSucc;
    }

    public int getUploaderSucc() {
        return this.uploaderSucc;
    }

    public void setUploaderSucc(int uploaderSucc) {
        this.uploaderSucc = uploaderSucc;
    }

    public int getLbsHttpCode() {
        return this.lbsHttpCode;
    }

    public void setLbsHttpCode(int lbsHttpCode) {
        this.lbsHttpCode = lbsHttpCode;
    }

    public int getUploaderHttpCode() {
        return this.uploaderHttpCode;
    }

    public void setUploaderHttpCode(int uploaderHttpCode) {
        this.uploaderHttpCode = uploaderHttpCode;
    }

    public int getChunkRetryCount() {
        return this.chunkRetryCount;
    }

    public void setChunkRetryCount(int chunkRetryCount) {
        this.chunkRetryCount = chunkRetryCount;
    }

    public String getPlatform() {
        return this.platform;
    }

    public String getSdkVersion() {
        return this.sdkVersion;
    }

    public int getQueryRetryCount() {
        return this.queryRetryCount;
    }

    public void setQueryRetryCount(int queryRetryCount) {
        this.queryRetryCount = queryRetryCount;
    }

    public int getUploadRetryCount() {
        return this.uploadRetryCount;
    }

    public void setUploadRetryCount(int uploadRetryCount) {
        this.uploadRetryCount = uploadRetryCount;
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public void setBucketName(String bucketName) {
        this.bucketName = bucketName;
    }

    public int getUploadType() {
        return this.uploadType;
    }

    public void setUploadType(int uploadType) {
        this.uploadType = uploadType;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.platform);
        dest.writeString(this.clientIP);
        dest.writeString(this.sdkVersion);
        dest.writeString(this.lbsIP);
        dest.writeString(this.uploaderIP);
        dest.writeLong(this.fileSize);
        dest.writeString(this.netEnv);
        dest.writeLong(this.lbsUseTime);
        dest.writeLong(this.uploaderUseTime);
        dest.writeInt(this.lbsSucc);
        dest.writeInt(this.uploaderSucc);
        dest.writeInt(this.lbsHttpCode);
        dest.writeInt(this.uploaderHttpCode);
        dest.writeInt(this.chunkRetryCount);
        dest.writeInt(this.queryRetryCount);
        dest.writeInt(this.uploadRetryCount);
        dest.writeString(this.bucketName);
        dest.writeInt(this.uploadType);
    }
}
