package com.netease.epay.sdk.model;

/* loaded from: classes.dex */
public class SenseTimeLicenceInfo {
    private Info faceDetectLicenceInfo;

    public String getLicenceDownloadUrl() {
        return this.faceDetectLicenceInfo != null ? this.faceDetectLicenceInfo.licenceDownloadUrl : "";
    }

    public String getLicenceMd5() {
        return this.faceDetectLicenceInfo != null ? this.faceDetectLicenceInfo.licenceMd5 : "";
    }

    /* loaded from: classes.dex */
    private static class Info {
        public String licenceDownloadUrl;
        public String licenceMd5;

        private Info() {
        }
    }
}
