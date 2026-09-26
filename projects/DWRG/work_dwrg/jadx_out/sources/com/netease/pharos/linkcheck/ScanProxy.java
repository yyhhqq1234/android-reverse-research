package com.netease.pharos.linkcheck;

import com.netease.download.Const;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.PharosListener;
import com.netease.pharos.PharosProxy;
import com.netease.pharos.config.CheckResult;
import com.netease.pharos.link.LinkCheckListener;
import com.netease.pharos.link.NetmonProxy;
import com.netease.pharos.qos.QosProxy;
import com.netease.pharos.util.LogUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ScanProxy {
    private static final String TAG = "ScanProxy";
    private static ScanProxy sScanProxy = null;
    private volatile ArrayList<String> mCheckTypeList = new ArrayList<>();
    private volatile ArrayList<String> mCheckCycleTypeList = new ArrayList<>();
    private CycleTaskStopListener mCycleTaskStopListener = null;
    private ConfigInfoListener mConfigInfoListener = null;
    private CheckOverNotifyListener mCheckOverNotifyListener = new CheckOverNotifyListener() { // from class: com.netease.pharos.linkcheck.ScanProxy.1
        @Override // com.netease.pharos.linkcheck.CheckOverNotifyListener
        public void callBack(String extra) {
            if (!ScanProxy.this.mCheckCycleTypeList.contains(extra)) {
                ScanProxy.this.mCheckCycleTypeList.add(extra);
            }
            ArrayList<String> list = LinkCheckProxy.getInstance().getmCycleList();
            ArrayList<String> tList = new ArrayList<>();
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                String string = it.next();
                tList.add(string);
            }
            try {
                LogUtil.i(ScanProxy.TAG, "mCheckCycleTypeList循环 debug=" + PharosProxy.getInstance().isDebug());
                if (PharosProxy.getInstance().isDebug()) {
                    LogUtil.i(ScanProxy.TAG, "mCheckCycleTypeList循环=" + ScanProxy.this.mCheckCycleTypeList.toString() + ", pList=" + tList.toString());
                }
            } catch (Exception e) {
                LogUtil.w(ScanProxy.TAG, "mCheckCycleTypeList循环 Exception=" + e);
            }
            if (list != null && list.size() > 0 && ScanProxy.this.mCheckCycleTypeList.containsAll(list)) {
                ScanProxy.this.mCheckCycleTypeList.clear();
                QosProxy.getInstance().clean();
                QosProxy.getInstance().start_qosCore();
                JSONObject infoJson = LinkCheckProxy.getInstance().getPharosResultInfo();
                LinkCheckProxy.getInstance().setmPharosResultCache(infoJson);
            }
        }
    };
    private LinkCheckListener mListener = new LinkCheckListener() { // from class: com.netease.pharos.linkcheck.ScanProxy.2
        @Override // com.netease.pharos.link.LinkCheckListener
        public void callBack(CheckResult checkResult) {
            ArrayList<String> ipList;
            try {
                LogUtil.i(ScanProxy.TAG, "链路探测 回调结果=" + checkResult.toString());
            } catch (Exception e) {
                LogUtil.i(ScanProxy.TAG, "链路探测 回调结果 Exception=" + e);
            }
            checkResult.getProtocol();
            String extra = checkResult.getmExtra();
            String dest = checkResult.getIp();
            LogUtil.i(ScanProxy.TAG, "extra=" + extra);
            double stddev = checkResult.getStddev();
            if ("nap_icmp".equals(extra)) {
                double stddev2 = checkResult.getStddev();
                LogUtil.i(ScanProxy.TAG, "icmp stddev=" + (stddev2 / 100.0d));
                double avgRtt = -1.0d;
                int loss = -1;
                try {
                    avgRtt = Double.parseDouble(checkResult.getmAvgRtt());
                    loss = Integer.parseInt(checkResult.getmLoss());
                } catch (Exception e2) {
                    LogUtil.e(ScanProxy.TAG, "LinkCheckListener callBack Exception =" + e2);
                }
                LinkCheckResult.getInstance().setmNapIcmpLost(loss);
                LinkCheckResult.getInstance().setmNapIcmpRtt(avgRtt);
                LinkCheckResult.getInstance().setmNapIcmpDest(dest);
                LinkCheckResult.getInstance().setmNapIcmpStddev(stddev2 / 100.0d);
            } else if ("rap_icmp".equals(extra)) {
                LogUtil.i(ScanProxy.TAG, "icmp stddev=" + (stddev / 100.0d));
                double avgRtt2 = -1.0d;
                int loss2 = -1;
                try {
                    avgRtt2 = Double.parseDouble(checkResult.getmAvgRtt());
                    loss2 = Integer.parseInt(checkResult.getmLoss());
                } catch (Exception e3) {
                    LogUtil.e(ScanProxy.TAG, "LinkCheckListener callBack Exception =" + e3);
                }
                LinkCheckResult.getInstance().setmRapIcmpLost(loss2);
                LinkCheckResult.getInstance().setmRapIcmpRtt(avgRtt2);
                LinkCheckResult.getInstance().setmRapIcmpDest(dest);
                LinkCheckResult.getInstance().setmRapIcmpStddev(stddev / 100.0d);
            } else if ("rap_transfer".equals(extra)) {
                double pLoss = checkResult.getPacketLossCount() / checkResult.getmPacketCount();
                long avgTime = checkResult.getAvgTime();
                long speed = checkResult.getAvgSpeed();
                LogUtil.i(ScanProxy.TAG, "pLoss=" + pLoss + ", avgTime=" + avgTime + ", speed=" + speed);
                LinkCheckResult.getInstance().setmRapTransferFail(pLoss);
                LinkCheckResult.getInstance().setmRapTransferRtt(avgTime);
                LinkCheckResult.getInstance().setmRapTransferSpeed(speed);
                LinkCheckResult.getInstance().setmRapTransferDest(dest);
                LinkCheckResult.getInstance().setmRapTransferStddev(stddev);
            } else if ("rap_udp".equals(extra)) {
                double pLoss2 = checkResult.getPacketLossCount() / checkResult.getmPacketCount();
                long avgTime2 = checkResult.getAvgTime();
                LinkCheckResult.getInstance().setmRapUdpLost(pLoss2);
                LinkCheckResult.getInstance().setmRapUdpRtt(avgTime2);
                LinkCheckResult.getInstance().setmRapUdpDest(dest);
                LinkCheckResult.getInstance().setmRapUdpStddev(stddev);
            } else if ("sap_transfer".equals(extra)) {
                double pLoss3 = checkResult.getPacketLossCount() / checkResult.getmPacketCount();
                long avgTime3 = checkResult.getAvgTime();
                long speed2 = checkResult.getAvgSpeed();
                LinkCheckResult.getInstance().setmSapTransferFail(pLoss3);
                LinkCheckResult.getInstance().setmSapTransferRtt(avgTime3);
                LinkCheckResult.getInstance().setmSapTransferSpeed(speed2);
                LinkCheckResult.getInstance().setmSapTransferDest(dest);
                LinkCheckResult.getInstance().setmSapTransferStddev(stddev);
            } else if ("sap_udp".equals(extra)) {
                double pLoss4 = checkResult.getPacketLossCount() / checkResult.getmPacketCount();
                long avgTime4 = checkResult.getAvgTime();
                LinkCheckResult.getInstance().setmSapUdpLost(pLoss4);
                LinkCheckResult.getInstance().setmSapUdpRtt(avgTime4);
                LinkCheckResult.getInstance().setmSapUdpDest(dest);
                LinkCheckResult.getInstance().setmSapUdpStddev(stddev);
            } else if ("resolve".equals(extra) && (ipList = checkResult.getmIpList()) != null) {
                LinkCheckResult.getInstance().setmResolveHost(ipList);
            }
            ArrayList<String> list = LinkCheckProxy.getInstance().getmOnceList();
            if (list != null && list.size() > 0 && !ScanProxy.this.mCheckTypeList.contains(extra)) {
                ScanProxy.this.mCheckTypeList.add(extra);
            }
            try {
                LogUtil.i(ScanProxy.TAG, "目前已单次探测量=" + ScanProxy.this.mCheckTypeList.toString());
                LogUtil.i(ScanProxy.TAG, "单次探测模块总量=" + list.toString());
            } catch (Exception e4) {
                LogUtil.e(ScanProxy.TAG, "LinkCheckListener callBack Exception2 =" + e4);
            }
            if (list != null) {
                try {
                    if (list.size() > 0 && ScanProxy.this.mCheckTypeList.containsAll(list)) {
                        if (!list.contains("has report")) {
                            list.add("has report");
                        }
                        ScanProxy.this.mCheckTypeList.clear();
                        QosProxy.getInstance().clean();
                        QosProxy.getInstance().init();
                        QosProxy.getInstance().start_qosCore();
                        PharosListener listener = PharosProxy.getInstance().getmPharosListener();
                        JSONObject infoJson = LinkCheckProxy.getInstance().getPharosResultInfo();
                        LinkCheckProxy.getInstance().setmPharosResultCache(infoJson);
                        LogUtil.i(ScanProxy.TAG, "单次回调结果=" + infoJson);
                        if (listener != null) {
                            JSONObject callBackInfo = LinkCheckProxy.getInstance().getCallBackInfo();
                            if (callBackInfo != null) {
                                listener.onResult(callBackInfo);
                                return;
                            } else {
                                LogUtil.i(ScanProxy.TAG, "infoJson is null");
                                return;
                            }
                        }
                        LogUtil.i(ScanProxy.TAG, "PharosListener is null");
                    }
                } catch (Exception e5) {
                    LogUtil.w(ScanProxy.TAG, "PharosListener Exception=" + e5);
                }
            }
        }
    };

    private ScanProxy() {
    }

    public static ScanProxy getInstance() {
        if (sScanProxy == null) {
            sScanProxy = new ScanProxy();
        }
        return sScanProxy;
    }

    public ArrayList<String> getmCycleList() {
        return this.mCheckTypeList;
    }

    public void setmCycleList(ArrayList<String> mCycleList) {
        this.mCheckTypeList = mCycleList;
    }

    public void init(CycleTaskStopListener cycleTaskStopListener, ConfigInfoListener configInfoListener) {
        this.mCycleTaskStopListener = cycleTaskStopListener;
        this.mConfigInfoListener = configInfoListener;
    }

    public int start() {
        if (RegionConfigInfo.getInstance().getmResult() != null && RegionConfigInfo.getInstance().getmResult().length() > 0) {
            LogUtil.i(TAG, new StringBuilder("模拟的数据= ").append(RegionConfigInfo.getInstance().getmResult()).toString() != null ? RegionConfigInfo.getInstance().getmResult().toString() : "result is null");
        }
        this.mCheckTypeList.clear();
        ExecutorService exs = Executors.newFixedThreadPool(1);
        ArrayList<Future<Integer>> al = new ArrayList<>();
        al.add(exs.submit(createScanCore("nap_icmp")));
        al.add(exs.submit(createScanCore("rap_icmp")));
        al.add(exs.submit(createScanCore("rap_udp")));
        al.add(exs.submit(createScanCore("rap_transfer")));
        al.add(exs.submit(createScanCore("sap_udp")));
        al.add(exs.submit(createScanCore("sap_transfer")));
        al.add(exs.submit(createScanCore("resolve")));
        Iterator<Future<Integer>> it = al.iterator();
        while (it.hasNext()) {
            Future<Integer> fs = it.next();
            try {
                LogUtil.i(TAG, "探测结果=" + fs.get());
            } catch (InterruptedException e) {
                e.printStackTrace();
            } catch (ExecutionException e2) {
                e2.printStackTrace();
            }
        }
        int result = NetmonProxy.getInstance().start();
        return result;
    }

    public ScanCore createScanCore(String style) {
        ScanCore scanCore = new ScanCore();
        scanCore.init(style, this.mListener, this.mCycleTaskStopListener, this.mConfigInfoListener, this.mCheckOverNotifyListener);
        return scanCore;
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
