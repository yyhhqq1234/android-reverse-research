package com.netease.pharos.qos;

import android.text.TextUtils;
import com.netease.download.Const;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.util.LogUtil;
import com.netease.pharos.util.Util;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class HighSpeedListInfo {
    private static final String TAG = "HighSpeedListInfo";
    private static HighSpeedListInfo sHighSpeedListInfo = null;
    private ArrayList<String> mOriInfo = new ArrayList<>();

    private HighSpeedListInfo() {
    }

    public static HighSpeedListInfo getInstance() {
        if (sHighSpeedListInfo == null) {
            sHighSpeedListInfo = new HighSpeedListInfo();
        }
        return sHighSpeedListInfo;
    }

    public void add(String info) {
        LogUtil.i(TAG, "HighSpeedListInfo [add] info =" + info);
        if (this.mOriInfo != null) {
            this.mOriInfo.add(info);
        }
    }

    public int start() {
        return 11;
    }

    public JSONObject parse() {
        String[] data;
        int step;
        if (this.mOriInfo == null || this.mOriInfo.size() <= 0) {
            LogUtil.i(TAG, "HighSpeedListInfo [parse] param error");
            return null;
        }
        LogUtil.i(TAG, "HighSpeedListInfo [parse] mOriInfo=" + this.mOriInfo.toString());
        JSONObject firstData = new JSONObject();
        JSONObject secondData = new JSONObject();
        Iterator<String> it = this.mOriInfo.iterator();
        while (it.hasNext()) {
            String string = it.next();
            if (!TextUtils.isEmpty(string) && (data = string.split(":| ")) != null && data.length > 8 && (step = Math.min(Util.string2Int(data[3]), Util.string2Int(data[8]))) > 0) {
                JSONObject thirdData = create(data[1], data[2], data[5], data[6], data[7], step);
                try {
                    if (!TextUtils.isEmpty(data[0])) {
                        if (firstData.has(data[0])) {
                            secondData = firstData.getJSONObject(data[0]);
                            if (!TextUtils.isEmpty(data[4])) {
                                if (secondData.has(data[4])) {
                                    JSONObject pThirdData = secondData.getJSONObject(data[4]);
                                    Iterator iterator = pThirdData.keys();
                                    while (iterator.hasNext()) {
                                        String key = iterator.next();
                                        JSONArray value = pThirdData.getJSONArray(key);
                                        thirdData.put(key, value);
                                    }
                                }
                                secondData.put(data[4], thirdData);
                                firstData.put(data[0], secondData);
                            }
                        } else {
                            secondData.put(data[4], thirdData);
                            firstData.put(data[0], secondData);
                        }
                    }
                } catch (JSONException e) {
                    LogUtil.w(TAG, "HighSpeedListInfo [parse] JSONException=" + e);
                }
                for (int i = 0; i < data.length; i++) {
                    LogUtil.i(TAG, String.valueOf(i) + " 个元素=" + data[i]);
                }
            }
        }
        LogUtil.i(TAG, "firstData=" + firstData);
        return firstData;
    }

    private JSONObject create(String sourcePort, String sourcePortStepLength, String lightenIp, String lightenPort, String lightenStepLength, int stepNum) {
        JSONObject result = new JSONObject();
        int tLightenPort = Util.string2Int(lightenPort);
        int tSourcePortStepLength = Util.string2Int(sourcePortStepLength);
        int tSourcePort = Util.string2Int(sourcePort);
        int tLightenStepLength = Util.string2Int(lightenStepLength);
        LogUtil.i(TAG, "HighSpeedListInfo [create] param error lightenIp=" + lightenIp + ", sourcePortStepLength=" + sourcePortStepLength + ", tLightenStepLength=" + tLightenStepLength + ", step=" + stepNum + ", tLightenPort=" + tLightenPort + ", tSourcePort=" + tSourcePort);
        if (!TextUtils.isEmpty(lightenIp) && !TextUtils.isEmpty(lightenPort) && stepNum > 0 && -1 != tLightenPort && -1 != tSourcePort) {
            for (int i = 0; i < stepNum; i++) {
                JSONArray jsonArray = new JSONArray();
                int pLightenPort = tLightenPort + (i * tLightenStepLength);
                int pSourcePort = tSourcePort + (i * tSourcePortStepLength);
                jsonArray.put(lightenIp);
                jsonArray.put(pLightenPort);
                try {
                    result.put(new StringBuilder(String.valueOf(pSourcePort)).toString(), jsonArray);
                } catch (JSONException e) {
                    LogUtil.e(TAG, "HighSpeedListInfo [create] Exception2=" + e);
                }
            }
        }
        return result;
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
