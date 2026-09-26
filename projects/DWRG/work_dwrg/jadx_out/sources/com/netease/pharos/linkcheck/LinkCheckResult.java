package com.netease.pharos.linkcheck;

import android.text.TextUtils;
import com.netease.environment.config.SdkConstants;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.Const;
import com.netease.pharos.PharosProxy;
import com.netease.pharos.deviceinfo.DeviceInfo;
import com.netease.pharos.util.LogUtil;
import com.netease.pharos.util.Util;
import java.util.ArrayList;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class LinkCheckResult {
    private static final String TAG = "LinkCheckResult";
    private static LinkCheckResult sLinkCheckResult = null;
    private String mNetid;
    private String mProject;
    private String mUdid;
    private String mLinktestId = null;
    private String mIpaddr = null;
    private int mTestlog = 1;
    private String mType = null;
    private String mNapIcmpDest = "";
    private int mNapIcmpLost = -1;
    private double mNapIcmpRtt = -1.0d;
    private double mNapIcmpStddev = -1.0d;
    private String mRapIcmpDest = "";
    private int mRapIcmpLost = -1;
    private double mRapIcmpRtt = -1.0d;
    private double mRapIcmpStddev = -1.0d;
    private String mRapTransferDest = "";
    private double mRapTransferFail = -1.0d;
    private long mRapTransferRtt = -1;
    private long mRapTransferSpeed = 0;
    private double mRapTransferStddev = -1.0d;
    private String mRapUdpDest = "";
    private double mRapUdpLost = -1.0d;
    private long mRapUdpRtt = -1;
    private double mRapUdpStddev = -1.0d;
    private String mSapTransferDest = "";
    private double mSapTransferFail = -1.0d;
    private long mSapTransferRtt = -1;
    private long mSapTransferSpeed = 0;
    private double mSapTransferStddev = -1.0d;
    private String mSapUdpDest = "";
    private double mSapUdpLost = -1.0d;
    private long mSapUdpRtt = -1;
    private double mSapUdpStddev = -1.0d;
    private ArrayList<String> mIpList = new ArrayList<>();
    private String mRapMtr = null;
    private String mRapQosStatus = Const.QOS_DEFAULT;
    private String mRapQosExpire = "0";

    private LinkCheckResult() {
        this.mProject = null;
        this.mUdid = null;
        this.mNetid = null;
        this.mProject = PharosProxy.getInstance().getmProjectId();
        this.mUdid = PharosProxy.getInstance().getmUdid();
        this.mNetid = PharosProxy.getInstance().getmNetId();
    }

    public static LinkCheckResult getInstance() {
        if (sLinkCheckResult == null) {
            sLinkCheckResult = new LinkCheckResult();
        }
        return sLinkCheckResult;
    }

    public String getmProject() {
        return this.mProject;
    }

    public void setmProject(String mProject) {
        this.mProject = mProject;
    }

    public String getmUdid() {
        return this.mUdid;
    }

    public void setmUdid(String mUdid) {
        this.mUdid = mUdid;
    }

    public String getmNetid() {
        return this.mNetid;
    }

    public void setmNetid(String mNetid) {
        this.mNetid = mNetid;
    }

    public String getmRapQosStatus() {
        return this.mRapQosStatus;
    }

    public void setmRapQosStatus(String mRapQosStatus) {
        this.mRapQosStatus = mRapQosStatus;
    }

    public String getmRapQosExpire() {
        return this.mRapQosExpire;
    }

    public void setmRapQosExpire(String mRapQosExpire) {
        this.mRapQosExpire = mRapQosExpire;
    }

    public String getmLinktestId() {
        if (TextUtils.isEmpty(this.mLinktestId)) {
            this.mLinktestId = String.valueOf(this.mUdid) + "-" + System.currentTimeMillis();
        }
        return this.mLinktestId;
    }

    public void setmLinktestId(String mLinktestId) {
        this.mLinktestId = mLinktestId;
    }

    public String getmIpaddr() {
        return this.mIpaddr;
    }

    public void setmIpaddr(String mIpaddr) {
        this.mIpaddr = mIpaddr;
    }

    public int getmTestlog() {
        if (PharosProxy.getInstance().isDebug()) {
            this.mTestlog = 1;
        } else {
            this.mTestlog = 0;
        }
        return this.mTestlog;
    }

    public void setmTestlog(int mTestlog) {
        this.mTestlog = mTestlog;
    }

    public String getmType() {
        return this.mType;
    }

    public void setmType(String mType) {
        this.mType = mType;
    }

    public int getmNapIcmpLost() {
        if (-1 == this.mNapIcmpLost) {
            this.mNapIcmpLost = 100;
        }
        if (this.mNapIcmpLost < 1) {
            this.mNapIcmpLost *= 100;
        }
        return this.mNapIcmpLost;
    }

    public void setmNapIcmpLost(int mNapIcmpLost) {
        this.mNapIcmpLost = mNapIcmpLost;
    }

    public double getmNapIcmpRtt() {
        if (-1.0d == this.mNapIcmpRtt) {
            this.mNapIcmpRtt = 1000.0d;
        }
        return this.mNapIcmpRtt;
    }

    public void setmNapIcmpRtt(double mNapIcmpRtt) {
        this.mNapIcmpRtt = mNapIcmpRtt;
    }

    public int getmRapIcmpLost() {
        if (-1 == this.mRapIcmpLost) {
            this.mRapIcmpLost = 100;
        }
        if (this.mRapIcmpLost < 1) {
            this.mRapIcmpLost *= 100;
        }
        return this.mRapIcmpLost;
    }

    public void setmRapIcmpLost(int mRapIcmpLost) {
        this.mRapIcmpLost = mRapIcmpLost;
    }

    public double getmRapIcmpRtt() {
        if (-1.0d == this.mRapIcmpRtt) {
            this.mRapIcmpRtt = 1000.0d;
        }
        return this.mRapIcmpRtt;
    }

    public void setmRapIcmpRtt(double mRapIcmpRtt) {
        this.mRapIcmpRtt = mRapIcmpRtt;
    }

    public double getmRapTransferFail() {
        if (-1.0d == this.mRapTransferFail) {
            this.mRapTransferFail = 100.0d;
        }
        if (this.mRapTransferFail < 1.0d) {
            this.mRapTransferFail *= 100.0d;
        }
        return this.mRapTransferFail;
    }

    public void setmRapTransferFail(double mRapTransferFail) {
        this.mRapTransferFail = mRapTransferFail;
    }

    public long getmRapTransferRtt() {
        if (-1 == this.mRapTransferRtt) {
            this.mRapTransferRtt = 1000L;
        }
        return this.mRapTransferRtt;
    }

    public void setmRapTransferRtt(long mRapTransferRtt) {
        this.mRapTransferRtt = mRapTransferRtt;
    }

    public long getmRapTransferSpeed() {
        if (-1 == this.mRapTransferSpeed) {
            this.mRapTransferSpeed = 0L;
        }
        return this.mRapTransferSpeed;
    }

    public void setmRapTransferSpeed(long mRapTransferSpeed) {
        this.mRapTransferSpeed = mRapTransferSpeed;
    }

    public double getmRapUdpLost() {
        if (-1.0d == this.mRapUdpLost) {
            this.mRapUdpLost = 100.0d;
        }
        if (this.mRapUdpLost < 1.0d) {
            this.mRapUdpLost *= 100.0d;
        }
        return this.mRapUdpLost;
    }

    public void setmRapUdpLost(double mRapUdpLost) {
        this.mRapUdpLost = mRapUdpLost;
    }

    public long getmRapUdpRtt() {
        if (-1 == this.mRapUdpRtt) {
            this.mRapUdpRtt = 1000L;
        }
        return this.mRapUdpRtt;
    }

    public void setmRapUdpRtt(long mRapudprtt) {
        this.mRapUdpRtt = mRapudprtt;
    }

    public double getmSapTransferFail() {
        if (-1.0d == this.mSapTransferFail) {
            this.mSapTransferFail = 100.0d;
        }
        if (this.mSapTransferFail < 1.0d) {
            this.mSapTransferFail *= 100.0d;
        }
        return this.mSapTransferFail;
    }

    public void setmSapTransferFail(double mSapTransferFail) {
        this.mSapTransferFail = mSapTransferFail;
    }

    public long getmSapTransferRtt() {
        if (-1 == this.mSapTransferRtt) {
            this.mSapTransferRtt = 1000L;
        }
        return this.mSapTransferRtt;
    }

    public void setmSapTransferRtt(long mSapTransferRtt) {
        this.mSapTransferRtt = mSapTransferRtt;
    }

    public long getmSapTransferSpeed() {
        if (-1 == this.mSapTransferSpeed) {
            this.mSapTransferSpeed = 0L;
        }
        return this.mSapTransferSpeed;
    }

    public void setmSapTransferSpeed(long mSapTransferSpeed) {
        this.mSapTransferSpeed = mSapTransferSpeed;
    }

    public double getmSapUdpLost() {
        if (-1.0d == this.mSapUdpLost) {
            this.mSapUdpLost = 100.0d;
        }
        if (this.mSapUdpLost < 1.0d) {
            this.mSapUdpLost *= 100.0d;
        }
        return this.mSapUdpLost;
    }

    public void setmSapUdpLost(double mSapUdpLost) {
        this.mSapUdpLost = mSapUdpLost;
    }

    public long getmSapUdpRtt() {
        if (-1 == this.mSapUdpRtt) {
            this.mSapUdpRtt = 1000L;
        }
        return this.mSapUdpRtt;
    }

    public void setmSapUdpRtt(long mSapUdpRtt) {
        this.mSapUdpRtt = mSapUdpRtt;
    }

    public ArrayList<String> getmResolveHost() {
        return this.mIpList;
    }

    public void setmResolveHost(ArrayList<String> ipList) {
        this.mIpList = ipList;
    }

    public String getmRapMtr() {
        return this.mRapMtr;
    }

    public void setmRapMtr(String mRapMtr) {
        this.mRapMtr = mRapMtr;
    }

    public String getmNapIcmpDest() {
        return this.mNapIcmpDest;
    }

    public void setmNapIcmpDest(String mNapIcmpDest) {
        this.mNapIcmpDest = mNapIcmpDest;
    }

    public String getmRapIcmpDest() {
        return this.mRapIcmpDest;
    }

    public void setmRapIcmpDest(String mRapIcmpDest) {
        this.mRapIcmpDest = mRapIcmpDest;
    }

    public String getmRapTransferDest() {
        return this.mRapTransferDest;
    }

    public void setmRapTransferDest(String mRapTransferDest) {
        this.mRapTransferDest = mRapTransferDest;
    }

    public String getmRapUdpDest() {
        return this.mRapUdpDest;
    }

    public void setmRapUdpDest(String mRapUdpDest) {
        this.mRapUdpDest = mRapUdpDest;
    }

    public String getmSapTransferDest() {
        return this.mSapTransferDest;
    }

    public void setmSapTransferDest(String mSapTransferDest) {
        this.mSapTransferDest = mSapTransferDest;
    }

    public String getmSapUdpDest() {
        return this.mSapUdpDest;
    }

    public void setmSapUdpDest(String mSapUdpDest) {
        this.mSapUdpDest = mSapUdpDest;
    }

    public double getmNapIcmpStddev() {
        return this.mNapIcmpStddev;
    }

    public void setmNapIcmpStddev(double mNapIcmpStddev) {
        this.mNapIcmpStddev = mNapIcmpStddev;
    }

    public double getmRapIcmpStddev() {
        return this.mRapIcmpStddev;
    }

    public void setmRapIcmpStddev(double mRapIcmpStddev) {
        this.mRapIcmpStddev = mRapIcmpStddev;
    }

    public double getmRapTransferStddev() {
        return this.mRapTransferStddev;
    }

    public void setmRapTransferStddev(double mRapTransferStddev) {
        this.mRapTransferStddev = mRapTransferStddev;
    }

    public double getmRapUdpStddev() {
        return this.mRapUdpStddev;
    }

    public void setmRapUdpStddev(double mRapUdpStddev) {
        this.mRapUdpStddev = mRapUdpStddev;
    }

    public double getmSapTransferStddev() {
        return this.mSapTransferStddev;
    }

    public void setmSapTransferStddev(double mSapTransferStddev) {
        this.mSapTransferStddev = mSapTransferStddev;
    }

    public double getmSapUdpStddev() {
        return this.mSapUdpStddev;
    }

    public void setmSapUdpStddev(double mSapUdpStddev) {
        this.mSapUdpStddev = mSapUdpStddev;
    }

    public void clean() {
        this.mLinktestId = null;
        this.mIpaddr = null;
        this.mType = null;
        this.mNapIcmpDest = "";
        this.mNapIcmpLost = -1;
        this.mNapIcmpRtt = -1.0d;
        this.mNapIcmpStddev = -1.0d;
        this.mRapIcmpDest = "";
        this.mRapIcmpLost = -1;
        this.mRapIcmpRtt = -1.0d;
        this.mRapIcmpStddev = -1.0d;
        this.mRapTransferDest = "";
        this.mRapTransferFail = -1.0d;
        this.mRapTransferRtt = -1L;
        this.mRapTransferSpeed = -1L;
        this.mRapTransferStddev = -1.0d;
        this.mRapUdpDest = "";
        this.mRapUdpLost = -1.0d;
        this.mRapUdpRtt = -1L;
        this.mRapUdpStddev = -1.0d;
        this.mSapTransferDest = "";
        this.mSapTransferFail = -1.0d;
        this.mSapTransferRtt = -1L;
        this.mSapTransferSpeed = -1L;
        this.mSapTransferStddev = -1.0d;
        this.mSapUdpDest = "";
        this.mSapUdpLost = -1.0d;
        this.mSapUdpRtt = -1L;
        this.mSapUdpStddev = -1.0d;
        this.mIpList = new ArrayList<>();
        this.mRapMtr = null;
        this.mRapQosStatus = Const.QOS_DEFAULT;
        this.mRapQosExpire = "0";
    }

    public String toString() {
        StringBuffer result = new StringBuffer();
        result.append("\n");
        result.append("mProject=").append(this.mProject).append("\n");
        result.append("mUdid=").append(this.mUdid).append("\n");
        result.append("mNetid=").append(this.mNetid).append("\n");
        result.append("mLinktestId=").append(getmLinktestId()).append("\n");
        result.append("mIpaddr=").append(this.mIpaddr).append("\n");
        result.append("mTestlog=").append(getmTestlog()).append("\n");
        result.append("mType=").append(this.mType).append("\n");
        result.append("mNapIcmpDest=").append(this.mNapIcmpDest).append("\n");
        result.append("mNapIcmpLost=").append(this.mNapIcmpLost).append("\n");
        result.append("mNapIcmpRtt=").append(this.mNapIcmpRtt).append("\n");
        result.append("mNapIcmpStddev=").append(this.mNapIcmpStddev).append("\n");
        result.append("mRapIcmpDest=").append(this.mRapIcmpDest).append("\n");
        result.append("mRapIcmpLost=").append(this.mRapIcmpLost).append("\n");
        result.append("mRapIcmpRtt=").append(this.mRapIcmpRtt).append("\n");
        result.append("mRapIcmpStddev=").append(this.mRapIcmpStddev).append("\n");
        result.append("mRapTransferDest=").append(this.mRapTransferDest).append("\n");
        result.append("mRapTransferFail=").append(this.mRapTransferFail).append("\n");
        result.append("mRapTransferRtt=").append(this.mRapTransferRtt).append("\n");
        result.append("mRapTransferSpeed=").append(this.mRapTransferSpeed).append("\n");
        result.append("mRapTransferStddev=").append(this.mRapTransferStddev).append("\n");
        result.append("mRapUdpDest=").append(this.mRapUdpDest).append("\n");
        result.append("mRapUdpLost=").append(this.mRapUdpLost).append("\n");
        result.append("mRapUdpRtt=").append(this.mRapUdpRtt).append("\n");
        result.append("mRapUdpStddev=").append(this.mRapUdpStddev).append("\n");
        result.append("mSapTransferDest=").append(this.mSapTransferDest).append("\n");
        result.append("mSapTransferFail=").append(this.mSapTransferFail).append("\n");
        result.append("mSapTransferRtt=").append(this.mSapTransferRtt).append("\n");
        result.append("mSapTransferSpeed=").append(this.mSapTransferSpeed).append("\n");
        result.append("mSapTransferStddev=").append(this.mSapTransferStddev).append("\n");
        result.append("mSapUdpDest=").append(this.mSapUdpDest).append("\n");
        result.append("mSapUdpLost=").append(this.mSapUdpLost).append("\n");
        result.append("mSapUdpRtt=").append(this.mSapUdpRtt).append("\n");
        result.append("mSapUdpStddev=").append(this.mSapUdpStddev).append("\n");
        result.append("mIpList=").append(this.mIpList.toString()).append("\n");
        result.append("mRapMtr=").append(this.mRapMtr).append("\n");
        result.append("mRapQosStatus=").append(this.mRapQosStatus).append("\n");
        result.append("mRapQosExpire=").append(this.mRapQosExpire).append("\n");
        return result.toString();
    }

    public String getLinkCheckResultInfo() {
        JSONObject result = new JSONObject();
        try {
            result.put("project", this.mProject);
            result.put("udid", this.mUdid);
            result.put("netid", this.mNetid);
            result.put("linktest_id", getmLinktestId());
            String ipAddr = DeviceInfo.getInstances().getIpaddr();
            if (TextUtils.isEmpty(ipAddr)) {
                ipAddr = "";
            }
            String region = DeviceInfo.getInstances().getmRegion();
            if (TextUtils.isEmpty(region)) {
                region = "";
            }
            result.put("ipaddr", ipAddr);
            result.put("region", region);
            result.put("testlog", getmTestlog());
            result.put("cell_id", Util.getCellId(PharosProxy.getInstance().getmContext()));
            result.put("ip_local", Util.getLocalIp(PharosProxy.getInstance().getmContext()));
            result.put("type", "probe");
            result.put("os_name", SdkConstants.SYSTEM);
            if (!TextUtils.isEmpty(this.mNapIcmpDest)) {
                result.put("nap_icmp_dest", this.mNapIcmpDest);
                result.put("nap_icmp_lost", getmNapIcmpLost());
                result.put("nap_icmp_rtt", getmNapIcmpRtt());
                result.put("nap_icmp_stddev", getmNapIcmpStddev());
            }
            if (!TextUtils.isEmpty(this.mRapIcmpDest)) {
                result.put("rap_imcp_dest", this.mRapIcmpDest);
                result.put("rap_icmp_lost", getmRapIcmpLost());
                result.put("rap_icmp_rtt", getmRapIcmpRtt());
                result.put("rap_icmp_stddev", getmRapIcmpStddev());
            }
            if (!TextUtils.isEmpty(this.mRapTransferDest)) {
                result.put("rap_transfer_dest", this.mRapTransferDest);
                result.put("rap_transfer_fail", getmRapTransferFail());
                result.put("rap_transfer_rtt", getmRapTransferRtt());
                result.put("rap_transfer_speed", getmRapTransferSpeed());
                result.put("rap_transfer_stddev", getmRapTransferStddev());
            }
            if (!TextUtils.isEmpty(this.mRapUdpDest)) {
                result.put("rap_udp_dest", this.mRapUdpDest);
                result.put("rap_udp_lost", getmRapUdpLost());
                result.put("rap_udp_rtt", getmRapUdpRtt());
                result.put("rap_udp_stddev", getmRapUdpStddev());
            }
            if (!TextUtils.isEmpty(this.mSapTransferDest)) {
                result.put("sap_transfer_dest", this.mSapTransferDest);
                result.put("sap_transfer_fail", getmSapTransferFail());
                result.put("sap_transfer_rtt", getmSapTransferRtt());
                result.put("sap_transfer_speed", getmSapTransferSpeed());
                result.put("sap_transfer_stddev", getmSapTransferStddev());
            }
            if (!TextUtils.isEmpty(this.mSapUdpDest)) {
                result.put("sap_udp_dest", this.mSapUdpDest);
                result.put("sap_udp_lost", getmSapUdpLost());
                result.put("sap_udp_rtt", getmSapUdpRtt());
                result.put("sap_udp_stddev", getmSapUdpStddev());
            }
            StringBuffer pIp = new StringBuffer();
            for (int i = 0; i < this.mIpList.size(); i++) {
                pIp.append(this.mIpList.get(i));
                if (i != this.mIpList.size() - 1) {
                    pIp.append(",");
                }
            }
            if (!TextUtils.isEmpty(pIp.toString())) {
                result.put("resolve_host", pIp.toString());
            }
            result.put("rap_qos_status", this.mRapQosStatus);
            result.put("rap_qos_expire", this.mRapQosExpire);
        } catch (Exception e) {
        }
        return result.toString();
    }

    private void supportPatch() {
        LogUtil.v(com.netease.download.Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
