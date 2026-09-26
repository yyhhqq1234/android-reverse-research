package com.netease.pharos.qos;

import android.text.TextUtils;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.Const;
import com.netease.pharos.config.CheckResult;
import com.netease.pharos.link.LinkCheckListener;
import com.netease.pharos.link.NetmonProxy;
import com.netease.pharos.util.LogUtil;
import com.netease.pharos.util.Util;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class CheckHighSpeedListCore {
    private static final String TAG = "HighSpeedListCore";
    private String mIp;
    private String mPort;
    private JSONObject mData = new JSONObject();
    private int mHighSpeedIpCount = 0;
    private int mIndex = 0;
    private ArrayList<CheckResult> mHighSpeedUdpResult = new ArrayList<>();
    private LinkCheckListener mListener = new LinkCheckListener() { // from class: com.netease.pharos.qos.CheckHighSpeedListCore.1
        @Override // com.netease.pharos.link.LinkCheckListener
        public void callBack(CheckResult checkResult) {
            LogUtil.i(CheckHighSpeedListCore.TAG, "CheckHighSpeedList UDP 回调结果=" + checkResult.toString());
            if (checkResult.getLoss() < 1.0d && checkResult.getLoss() >= 0.0d && checkResult.getAvgTime() < 800 && checkResult.getAvgTime() > 0) {
                CheckHighSpeedListCore.this.mHighSpeedUdpResult.add(checkResult);
            }
            CheckHighSpeedListCore.this.mIndex++;
            LogUtil.i(CheckHighSpeedListCore.TAG, "CheckHighSpeedList UDP mHighSpeedIpCount=" + CheckHighSpeedListCore.this.mHighSpeedIpCount + ", mIndex=" + CheckHighSpeedListCore.this.mIndex);
            if (CheckHighSpeedListCore.this.mHighSpeedIpCount != CheckHighSpeedListCore.this.mIndex) {
                return;
            }
            CheckHighSpeedListCore.this.sort();
            CheckHighSpeedResult.getInstance().setHighSpeedUdpResult(CheckHighSpeedListCore.this.mHighSpeedUdpResult);
            LogUtil.i(CheckHighSpeedListCore.TAG, "查询高速列表 最终结果=" + CheckHighSpeedResult.getInstance().getResult().toString());
        }
    };

    public CheckHighSpeedListCore(String ip, String port) {
        this.mIp = null;
        this.mPort = null;
        this.mIp = ip;
        this.mPort = port;
        CheckHighSpeedResult.getInstance().init(this.mIp, this.mPort);
    }

    public void setData(JSONObject data) {
        this.mData = data;
    }

    public int start() {
        JSONArray info;
        reset();
        LogUtil.i(TAG, "CheckHighSpeedList [start] 参数 mIp=" + this.mIp + ", mPort=" + this.mPort + ", mData=" + this.mData);
        if (TextUtils.isEmpty(this.mIp) || TextUtils.isEmpty(this.mPort) || this.mData == null || this.mData.length() == 0) {
            LogUtil.i(TAG, "CheckHighSpeedList [start] 参数错误1");
            return 14;
        }
        if (!this.mData.has(this.mIp)) {
            LogUtil.i(TAG, "CheckHighSpeedList [start] 参数错误2");
            return 14;
        }
        JSONObject data = this.mData.optJSONObject(this.mIp);
        if (data != null) {
            Iterator iterator = data.keys();
            boolean udpStart = false;
            while (iterator.hasNext()) {
                String key = iterator.next();
                JSONObject value = data.optJSONObject(key);
                LogUtil.i(TAG, "CheckHighSpeedList [start] key=" + key + ", value=" + value + ", mPort=" + this.mPort);
                if (value != null && value.has(this.mPort) && (info = value.optJSONArray(this.mPort)) != null && info.length() >= 2) {
                    LogUtil.i(TAG, "info=" + info + ", 0=" + info.optString(0) + ", 1=" + info.optString(1));
                    String ip = info.optString(0);
                    int port = Util.string2Int(info.optString(1));
                    if (!TextUtils.isEmpty(ip) && -1 != port) {
                        udpStart = true;
                        this.mHighSpeedIpCount++;
                        LogUtil.i(TAG, "CheckHighSpeedList [start]  提交udp探测 参数 ip=" + ip + ", port=" + port + ", 游戏服务器port=" + this.mPort);
                        NetmonProxy.getInstance().addNetmonCore(2, ip, 8001, 4, Const.TIME_OUT, 512, null, this.mListener, 0, null, null, String.valueOf(this.mPort) + "," + port);
                    }
                }
            }
            if (udpStart) {
                NetmonProxy.getInstance().start();
            }
        }
        return 0;
    }

    private void reset() {
        this.mHighSpeedIpCount = 0;
        this.mIndex = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int sort() {
        int result = 11;
        if (this.mHighSpeedUdpResult == null || this.mHighSpeedUdpResult.size() <= 0) {
            LogUtil.i(TAG, "CheckHighSpeedList [chooseBest] 参数错误1");
            return 14;
        }
        try {
            Collections.sort(this.mHighSpeedUdpResult, new Comparator<CheckResult>() { // from class: com.netease.pharos.qos.CheckHighSpeedListCore.2
                @Override // java.util.Comparator
                public int compare(CheckResult arg0, CheckResult arg1) {
                    if (arg0.getLoss() > arg1.getLoss()) {
                        return 1;
                    }
                    if (arg0.getLoss() >= arg1.getLoss()) {
                        return 0;
                    }
                    return -1;
                }
            });
            Collections.sort(this.mHighSpeedUdpResult, new Comparator<CheckResult>() { // from class: com.netease.pharos.qos.CheckHighSpeedListCore.3
                @Override // java.util.Comparator
                public int compare(CheckResult arg0, CheckResult arg1) {
                    if (arg0.getAvgTime() > arg1.getAvgTime()) {
                        return 1;
                    }
                    if (arg0.getAvgTime() >= arg1.getAvgTime()) {
                        return 0;
                    }
                    return -1;
                }
            });
            result = 0;
        } catch (Exception e) {
            LogUtil.w(TAG, "CheckHighSpeedList [chooseBest] Exception=" + e);
        }
        return result;
    }

    private void supportPatch() {
        LogUtil.v(com.netease.download.Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
