package com.netease.pharos.config;

import com.netease.download.Const;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.util.LogUtil;

/* loaded from: classes.dex */
public class CheckConfig {
    private String mExclude_game;
    private String mInclude_game;
    private int mInterval;
    private String mLinktest_protocal;
    private String mLinktest_region;
    private String mLinktest_size;
    private String mLocation;
    private String mNetwork;
    private String mPingtest_region;
    private long mTraceThreshold;

    public String getLocation() {
        return this.mLocation;
    }

    public void setLocation(String mLocation) {
        this.mLocation = mLocation;
    }

    public String getNetwork() {
        return this.mNetwork;
    }

    public void setNetwork(String mNetwork) {
        this.mNetwork = mNetwork;
    }

    public String getPingtest_region() {
        return this.mPingtest_region;
    }

    public void setPingtest_region(String mPingtest_region) {
        this.mPingtest_region = mPingtest_region;
    }

    public String getLinktest_region() {
        return this.mLinktest_region;
    }

    public void setLinktest_region(String mLinktest_region) {
        this.mLinktest_region = mLinktest_region;
    }

    public String getLinktest_protocal() {
        return this.mLinktest_protocal;
    }

    public void setLinktest_protocal(String mLinktest_protocal) {
        this.mLinktest_protocal = mLinktest_protocal;
    }

    public String getLinktest_size() {
        return this.mLinktest_size;
    }

    public void setLinktest_size(String mLinktest_size) {
        this.mLinktest_size = mLinktest_size;
    }

    public String getInclude_game() {
        return this.mInclude_game;
    }

    public void setInclude_game(String mInclude_game) {
        this.mInclude_game = mInclude_game;
    }

    public String getExclude_game() {
        return this.mExclude_game;
    }

    public void setExclude_game(String mExclude_game) {
        this.mExclude_game = mExclude_game;
    }

    public int getInterval() {
        return this.mInterval;
    }

    public void setInterval(int mInterval) {
        this.mInterval = mInterval;
    }

    public long getTraceThreshold() {
        return this.mTraceThreshold;
    }

    public void setTraceThreshold(long mTraceThreshold) {
        this.mTraceThreshold = mTraceThreshold;
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
