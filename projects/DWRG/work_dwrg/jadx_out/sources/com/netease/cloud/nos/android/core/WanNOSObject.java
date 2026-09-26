package com.netease.cloud.nos.android.core;

import java.util.Map;

/* loaded from: classes.dex */
public class WanNOSObject {
    private String contentMD5;
    private String contentType;
    private String nosBucketName;
    private String nosObjectName;
    private String uploadToken;
    private Map<String, String> userMetadata;

    public WanNOSObject() {
    }

    public WanNOSObject(String uploadToken, String nosBucketName, String nosObjectName, String contentMD5, Map<String, String> userMetadata) {
        this.uploadToken = uploadToken;
        this.nosBucketName = nosBucketName;
        this.nosObjectName = nosObjectName;
        this.contentMD5 = contentMD5;
        this.userMetadata = userMetadata;
    }

    public String getContentMD5() {
        return this.contentMD5;
    }

    public void setContentMD5(String contentMD5) {
        this.contentMD5 = contentMD5;
    }

    public String getContentType() {
        return this.contentType;
    }

    public void setContentType(String contentType) {
        this.contentType = contentType;
    }

    public Map<String, String> getUserMetadata() {
        return this.userMetadata;
    }

    public void setUserMetadata(Map<String, String> userMetadata) {
        this.userMetadata = userMetadata;
    }

    public String getUploadToken() {
        return this.uploadToken;
    }

    public void setUploadToken(String uploadToken) {
        this.uploadToken = uploadToken;
    }

    public String getNosBucketName() {
        return this.nosBucketName;
    }

    public void setNosBucketName(String nosBucketName) {
        this.nosBucketName = nosBucketName;
    }

    public String getNosObjectName() {
        return this.nosObjectName;
    }

    public void setNosObjectName(String nosObjectName) {
        this.nosObjectName = nosObjectName;
    }
}
