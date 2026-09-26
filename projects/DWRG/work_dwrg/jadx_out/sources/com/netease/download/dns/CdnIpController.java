package com.netease.download.dns;

import android.text.TextUtils;
import com.netease.download.Const;
import com.netease.download.dns.DnsParams;
import com.netease.download.reporter.ReportInfo;
import com.netease.download.util.LogUtil;
import com.netease.download.util.StrUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public class CdnIpController {
    private static final String TAG = "CdnIpController";
    private static CdnIpController sCndIpController = null;
    public HashMap<String, CndIpControllerUnit> mOriginalMap = new HashMap<>();
    public HashMap<String, CndIpControllerUnit> mActualTimeMap = new HashMap<>();

    private CdnIpController() {
    }

    public static CdnIpController getInstances() {
        if (sCndIpController == null) {
            sCndIpController = new CdnIpController();
        }
        return sCndIpController;
    }

    public void init(ArrayList<DnsParams.Unit> dnsIpNodeUnitList, int[] weights) {
        this.mActualTimeMap.putAll(createData(dnsIpNodeUnitList, weights));
        this.mOriginalMap.putAll(createData(dnsIpNodeUnitList, weights));
    }

    private HashMap<String, CndIpControllerUnit> createData(ArrayList<DnsParams.Unit> dnsIpNodeUnitList, int[] weights) {
        HashMap<String, CndIpControllerUnit> mOriginalMap = new HashMap<>();
        LogUtil.i(TAG, "dnsIpNodeUnitList个数=" + dnsIpNodeUnitList.size() + ", 权重个数=" + weights.length);
        if (dnsIpNodeUnitList != null && weights != null && dnsIpNodeUnitList.size() == weights.length) {
            for (int i = 0; i < weights.length; i++) {
                ArrayList<String> list = new ArrayList<>();
                DnsParams.Unit unit = dnsIpNodeUnitList.get(i);
                list.addAll(unit.ipArrayList);
                CndIpControllerUnit cndIpControllerUnit = new CndIpControllerUnit(unit.domain, list, weights[i]);
                mOriginalMap.put(unit.domain, cndIpControllerUnit);
            }
        }
        return mOriginalMap;
    }

    private HashMap<String, CndIpControllerUnit> test() {
        HashMap<String, CndIpControllerUnit> mOriginalMap = new HashMap<>();
        for (int i = 0; i < 3; i++) {
            if (i == 0) {
                ArrayList<String> list = new ArrayList<>();
                list.add("119.36.82.67");
                list.add("175.43.124.205");
                CndIpControllerUnit cndIpControllerUnit = new CndIpControllerUnit("g55-02.gph.netease.com", list, 50);
                mOriginalMap.put("g55-02.gph.netease.com", cndIpControllerUnit);
            }
            if (1 == i) {
                ArrayList<String> list2 = new ArrayList<>();
                list2.add("163.177.175.67");
                CndIpControllerUnit cndIpControllerUnit2 = new CndIpControllerUnit("g55-03.gph.netease.com", list2, 20);
                mOriginalMap.put("g55-03.gph.netease.com", cndIpControllerUnit2);
            }
            if (2 == i) {
                ArrayList<String> list3 = new ArrayList<>();
                list3.add("112.91.135.70");
                list3.add("112.91.135.105");
                list3.add("112.91.135.9");
                CndIpControllerUnit cndIpControllerUnit3 = new CndIpControllerUnit("g55-04.gph.netease.com", list3, 30);
                mOriginalMap.put("g55-04.gph.netease.com", cndIpControllerUnit3);
            }
        }
        LogUtil.i(TAG, "test结果=" + mOriginalMap.toString());
        return mOriginalMap;
    }

    public void removeUnit(String domain) {
        if (this.mActualTimeMap.containsKey(domain)) {
            this.mActualTimeMap.remove(domain);
        }
    }

    public CndIpControllerUnit nextUnit(String channel) {
        LogUtil.i(TAG, "nextUnit 频道=" + channel);
        String domain = null;
        int maxWeight = 0;
        for (CndIpControllerUnit cndIpControllerUnit : this.mActualTimeMap.values()) {
            if (StrUtil.getCdnChannel(cndIpControllerUnit.mDomain).equals(channel) && cndIpControllerUnit.mWeight > maxWeight) {
                maxWeight = cndIpControllerUnit.mWeight;
                domain = cndIpControllerUnit.mDomain;
            }
        }
        LogUtil.i(TAG, "权重最大的单元=" + this.mActualTimeMap.get(domain).toString());
        return this.mActualTimeMap.get(domain);
    }

    public boolean hasNextUnit(String channel) {
        LogUtil.i(TAG, "hasNextUnit 频道=" + channel);
        boolean result = false;
        if (TextUtils.isEmpty(channel)) {
            LogUtil.i(TAG, "[hasNextUnit] 参数错误");
            return false;
        }
        Iterator<CndIpControllerUnit> it = this.mActualTimeMap.values().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            CndIpControllerUnit cndIpControllerUnit = it.next();
            if (StrUtil.getCdnChannel(cndIpControllerUnit.mDomain).equals(channel)) {
                result = true;
                break;
            }
        }
        return result;
    }

    public void removeIp(String domain, String ip) {
        CndIpControllerUnit cndIpControllerUnit;
        ReportInfo.getInstance().mIpRemoved = 1;
        ArrayList<String> slowIps = ReportInfo.getInstance().mSlowIps.get(domain) != null ? ReportInfo.getInstance().mSlowIps.get(domain) : new ArrayList<>();
        if (!slowIps.contains(ip)) {
            ArrayList<String> errorIps = ReportInfo.getInstance().mErrorIps.get(domain) != null ? ReportInfo.getInstance().mErrorIps.get(domain) : new ArrayList<>();
            if (!errorIps.contains(ip)) {
                errorIps.add(ip);
                ReportInfo.getInstance().mErrorIps.put(domain, errorIps);
            }
        }
        if (this.mActualTimeMap.containsKey(domain) && (cndIpControllerUnit = this.mActualTimeMap.get(domain)) != null) {
            ArrayList<IpLinkUnit> list = cndIpControllerUnit.mIpLinkUnitList;
            for (int i = 0; i < list.size(); i++) {
                IpLinkUnit removeIpUnit = list.get(i);
                if (ip.equals(removeIpUnit.mIp)) {
                    list.remove(i);
                }
            }
        }
    }

    public String nextIp(String domain) {
        ArrayList<IpLinkUnit> list;
        IpLinkUnit minLinkCountUnit = null;
        CndIpControllerUnit cndIpControllerUnit = this.mActualTimeMap.get(domain);
        if (cndIpControllerUnit != null && (list = cndIpControllerUnit.mIpLinkUnitList) != null && list.size() > 0) {
            int min = list.get(0).mLinkCount + 1;
            Iterator<IpLinkUnit> it = list.iterator();
            while (it.hasNext()) {
                IpLinkUnit ipLinkUnit = it.next();
                int linkCount = ipLinkUnit.mLinkCount;
                if (linkCount < min) {
                    minLinkCountUnit = ipLinkUnit;
                    min = linkCount;
                }
            }
        }
        minLinkCountUnit.mLinkCount++;
        return minLinkCountUnit.mIp;
    }

    public boolean hasNextIp(String domain) {
        CndIpControllerUnit cndIpControllerUnit;
        boolean result = false;
        LogUtil.i(TAG, "CdnIpController [hasNextIp] 参数 domain=" + domain);
        if (TextUtils.isEmpty(domain)) {
            LogUtil.i(TAG, "CdnIpController [hasNextIp] domain is null");
            return false;
        }
        if (this.mActualTimeMap == null) {
            LogUtil.i(TAG, "CdnIpController [hasNextIp] mActualTimeMap is null");
        } else {
            LogUtil.i(TAG, "CdnIpController [hasNextIp] mActualTimeMap=" + this.mActualTimeMap);
        }
        if (this.mActualTimeMap != null && this.mActualTimeMap.size() > 0 && (cndIpControllerUnit = this.mActualTimeMap.get(domain)) != null) {
            ArrayList<IpLinkUnit> list = cndIpControllerUnit.mIpLinkUnitList;
            LogUtil.i(TAG, "domain=" + domain + ", list列表=" + list.toString() + ", list大小=" + list.size());
            if (list.size() > 0) {
                result = true;
            }
        }
        return result;
    }

    public boolean hasNextIp() {
        return this.mActualTimeMap.size() == 0 ? true : true;
    }

    public boolean isLastIp(String channel) {
        int count = 0;
        if (this.mActualTimeMap.size() > 0) {
            for (CndIpControllerUnit cndIpControllerUnit : this.mActualTimeMap.values()) {
                if (cndIpControllerUnit.mDomain.contains(channel)) {
                    ArrayList<IpLinkUnit> list = cndIpControllerUnit.mIpLinkUnitList;
                    count += list.size();
                }
            }
        }
        if (count != 1) {
            return false;
        }
        return true;
    }

    private int getOriginalWeight() {
        int weight = 0;
        for (CndIpControllerUnit cndIpControllerUnit : this.mOriginalMap.values()) {
            weight += cndIpControllerUnit.mWeight;
        }
        return weight;
    }

    public int getChannelWeight(String channel) {
        int weight = 0;
        for (CndIpControllerUnit cndIpControllerUnit : this.mOriginalMap.values()) {
            if (StrUtil.getCdnChannel(cndIpControllerUnit.mDomain).equals(channel)) {
                weight += cndIpControllerUnit.mWeight;
            }
        }
        return weight;
    }

    public ArrayList<Integer> getWeights(String channel) {
        ArrayList<Integer> weights = new ArrayList<>();
        for (CndIpControllerUnit cndIpControllerUnit : this.mOriginalMap.values()) {
            if (StrUtil.getCdnChannel(cndIpControllerUnit.mDomain).equals(channel)) {
                weights.add(Integer.valueOf(cndIpControllerUnit.mWeight));
            }
        }
        return weights;
    }

    public int getCdnCount(String channel) {
        int count = 0;
        for (CndIpControllerUnit cndIpControllerUnit : this.mOriginalMap.values()) {
            if (StrUtil.getCdnChannel(cndIpControllerUnit.mDomain).equals(channel)) {
                count++;
            }
        }
        return count;
    }

    private int getActualTimeWeight() {
        int weight = 0;
        for (CndIpControllerUnit cndIpControllerUnit : this.mActualTimeMap.values()) {
            weight += cndIpControllerUnit.mWeight;
        }
        return weight;
    }

    private int[] getOriginalWeightArray() {
        int size = this.mOriginalMap.size();
        int[] weightArray = new int[size];
        int index = 0;
        for (CndIpControllerUnit cndIpControllerUnit : this.mOriginalMap.values()) {
            weightArray[index] = cndIpControllerUnit.mWeight;
            index++;
        }
        return weightArray;
    }

    private int[] getActualTimeWeightArray() {
        int size = this.mActualTimeMap.size();
        int[] weightArray = new int[size];
        int index = 0;
        for (CndIpControllerUnit cndIpControllerUnit : this.mActualTimeMap.values()) {
            weightArray[index] = cndIpControllerUnit.mWeight;
            index++;
        }
        return weightArray;
    }

    public ArrayList<String> getHost(String channel) {
        ArrayList<String> result = new ArrayList<>();
        for (CndIpControllerUnit cndIpControllerUnit : this.mOriginalMap.values()) {
            if (StrUtil.getCdnChannel(cndIpControllerUnit.mDomain).equals(channel)) {
                result.add(cndIpControllerUnit.mDomain);
            }
        }
        return result;
    }

    /* loaded from: classes.dex */
    public class CndIpControllerUnit {
        public String mDomain;
        public ArrayList<IpLinkUnit> mIpLinkUnitList = new ArrayList<>();
        public int mWeight;

        public CndIpControllerUnit(String domain, ArrayList<String> ipArrayList, int weight) {
            this.mDomain = domain;
            Iterator<String> it = ipArrayList.iterator();
            while (it.hasNext()) {
                String ip = it.next();
                IpLinkUnit unit = new IpLinkUnit(ip);
                this.mIpLinkUnitList.add(unit);
            }
            this.mWeight = weight;
        }

        public String toString() {
            return "mDomain=" + this.mDomain + ", mIpArrayList=" + this.mIpLinkUnitList.toString() + ", mWeight=" + this.mWeight;
        }
    }

    /* loaded from: classes.dex */
    public class IpLinkUnit {
        public String mIp;
        public int mLinkCount = 0;

        public IpLinkUnit(String ip) {
            this.mIp = null;
            this.mIp = ip;
        }

        public String toString() {
            return "mIp=" + this.mIp + ", mLinkCount=" + this.mLinkCount;
        }
    }

    public void clean() {
        this.mOriginalMap.clear();
        this.mActualTimeMap.clear();
        sCndIpController = null;
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
