package com.netease.pharos.link;

import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.Const;
import com.netease.pharos.config.CheckResult;
import com.netease.pharos.link.kcp.KcpJavaClient;
import com.netease.pharos.linkcheck.CheckOverNotifyListener;
import com.netease.pharos.linkcheck.CycleTaskStopListener;
import com.netease.pharos.linkcheck.LinkCheckResult;
import com.netease.pharos.util.LogUtil;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.DatagramPacket;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Random;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class LinkCheck {
    private static final String TAG = "LinkCheck";
    private CheckResult mCheckResult;
    private String mRegion = null;
    private int mInterval = 0;
    private LinkCheckListener mListener = null;
    private CycleTaskStopListener mCycleTaskStopListener = null;
    private CheckOverNotifyListener mCheckOverNotifyListener = null;
    private String mExtra = null;
    private Timer timer = new Timer();
    private MyTimeTask mTask = new MyTimeTask();

    public void setRegion(String region) {
        this.mRegion = region;
    }

    public String getmExtra() {
        return this.mExtra;
    }

    public void setmExtra(String mExtra) {
        this.mExtra = mExtra;
    }

    public void setInterval(int interval) {
        this.mInterval = interval;
    }

    public LinkCheckListener getmListener() {
        return this.mListener;
    }

    public void setmListener(LinkCheckListener mListener) {
        this.mListener = mListener;
    }

    public CycleTaskStopListener getmCycleTaskStopListener() {
        return this.mCycleTaskStopListener;
    }

    public void setmCycleTaskStopListener(CycleTaskStopListener mCycleTaskStopListener) {
        this.mCycleTaskStopListener = mCycleTaskStopListener;
    }

    public CheckOverNotifyListener getmCheckOverNotifyListener() {
        return this.mCheckOverNotifyListener;
    }

    public void setmCheckOverNotifyListener(CheckOverNotifyListener mCheckOverNotifyListener) {
        this.mCheckOverNotifyListener = mCheckOverNotifyListener;
    }

    /* loaded from: classes.dex */
    class MyTimeTask extends TimerTask {
        int mCount;
        int mPort;
        int mSize;
        int mTime;
        int mType;
        String mIp = null;
        int mIndex = 0;

        MyTimeTask() {
        }

        public void setType(int type) {
            this.mType = type;
        }

        public void setTime(int count) {
            this.mCount = count;
        }

        public void setmIp(String mIp) {
            this.mIp = mIp;
        }

        public void setmPort(int mPort) {
            this.mPort = mPort;
        }

        public void setmTime(int mTime) {
            this.mTime = mTime;
        }

        public void setmSize(int mSize) {
            this.mSize = mSize;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            LogUtil.i(LinkCheck.TAG, "MyTimeTask checkOnce mType=" + this.mType);
            this.mIndex++;
            int pCount = this.mIndex;
            LogUtil.i(LinkCheck.TAG, "第 " + pCount + " 次执行");
            LinkCheck.this.checkOnce(this.mType, this.mIp, this.mPort, this.mCount, this.mTime, this.mSize);
            if (pCount > 1 && LinkCheck.this.mCheckOverNotifyListener != null) {
                LinkCheck.this.mCheckOverNotifyListener.callBack(LinkCheck.this.mExtra);
            }
            if (10 == pCount) {
                LogUtil.i(LinkCheck.TAG, "结束循环器");
                LinkCheck.this.mTask.cancel();
                if (LinkCheck.this.mCycleTaskStopListener != null) {
                    LinkCheck.this.mCycleTaskStopListener.callBack(LinkCheck.this.mExtra);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int checkOnce(int type, String ip, int port, int count, int time, int size) {
        LogUtil.i(TAG, "单次执行，参数 type=" + type + ", ip=" + ip + ", port=" + port + ", count=" + count + ", time=" + time + ", size=" + size + ", mExtra=" + this.mExtra);
        this.mCheckResult = new CheckResult();
        if (this.mRegion != null) {
            this.mCheckResult.setmRegion(this.mRegion);
        }
        LinkCheckResult.getInstance().getmLinktestId();
        this.mCheckResult.setProtocol(type);
        this.mCheckResult.setPacketCount(count);
        this.mCheckResult.setPacketBytesCount(size);
        this.mCheckResult.setIp(ip);
        this.mCheckResult.setmPort(port);
        this.mCheckResult.setmExtra(this.mExtra);
        if (1 == type) {
            int result = tcpCheck(ip, port, count, time, size);
            return result;
        }
        if (2 == type) {
            int result2 = udpCheck(ip, port, count, time, size);
            return result2;
        }
        if (3 == type) {
            int result3 = kcpCheck(count);
            return result3;
        }
        if (4 == type) {
            int result4 = ping(ip, count, time);
            return result4;
        }
        if (5 != type) {
            return 11;
        }
        int result5 = dns(ip);
        return result5;
    }

    public int check(int type, String ip, int port, int count, int time, int size) {
        LogUtil.i(TAG, "Link check 参数 type=" + type + ", ip=" + ip + ", port=" + port + ", count=" + count + ", time=" + time + ", size=" + size);
        if (this.mInterval == 0) {
            LogUtil.i(TAG, "一次性执行");
            int result = checkOnce(type, ip, port, count, time, size);
            return result;
        }
        LogUtil.i(TAG, "循环执行，时间间隔为=" + this.mInterval);
        this.mTask.setType(type);
        this.mTask.setmIp(ip);
        this.mTask.setmPort(port);
        this.mTask.setTime(count);
        this.mTask.setmTime(time);
        this.mTask.setmSize(size);
        this.timer.schedule(this.mTask, 0, this.mInterval * 1000 * 60);
        return 0;
    }

    /* JADX WARN: Incorrect condition in loop: B:21:0x00e1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int tcpCheck(java.lang.String r27, int r28, int r29, int r30, int r31) {
        /*
            Method dump skipped, instructions count: 390
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.netease.pharos.link.LinkCheck.tcpCheck(java.lang.String, int, int, int, int):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x011e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int udpCheck(java.lang.String r27, int r28, int r29, int r30, int r31) {
        /*
            Method dump skipped, instructions count: 539
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.netease.pharos.link.LinkCheck.udpCheck(java.lang.String, int, int, int, int):int");
    }

    public int kcpCheck(int count) {
        LogUtil.i(TAG, "LinkCheck kcpCheck");
        int result = 11;
        int conv = new Random().nextInt(999999);
        int packetLossCount = 0;
        Timer timer = new Timer();
        try {
            try {
                final KcpJavaClient client = new KcpJavaClient(conv, Const.UPLOAD_SERVER_IP, Const.KCP_PORT);
                client.WndSize(1024, 1024);
                client.NoDelay(1, 20, 2, 1);
                byte[] sendBuf = new byte[2048];
                for (int i = 0; i < sendBuf.length; i++) {
                    sendBuf[i] = 115;
                }
                for (int j = 0; j < count; j++) {
                    try {
                        long startTime = System.currentTimeMillis();
                        client.Send(sendBuf);
                        timer.scheduleAtFixedRate(new TimerTask() { // from class: com.netease.pharos.link.LinkCheck.1
                            @Override // java.util.TimerTask, java.lang.Runnable
                            public void run() {
                                long current = System.currentTimeMillis();
                                client.Update(current);
                            }
                        }, Calendar.getInstance().getTime(), 2000L);
                        byte[] kcpBuf = new byte[2048];
                        int length = 0;
                        do {
                            byte[] recvBuf = new byte[2048];
                            DatagramPacket recvPacket = new DatagramPacket(recvBuf, recvBuf.length);
                            try {
                                client.mDatagramSocket.receive(recvPacket);
                            } catch (IOException e) {
                                e.printStackTrace();
                            }
                            byte[] recvBuf2 = recvPacket.getData();
                            length += recvPacket.getLength();
                            client.Input(recvBuf2);
                        } while (client.Recv(kcpBuf) <= 0);
                        if (2048 > length) {
                            LogUtil.e(TAG, "UDP Packet loss");
                            packetLossCount++;
                            NetmonCore.mNetmonReportMap.get(3).addPacketLossCount();
                        } else {
                            long endTime = System.currentTimeMillis();
                            long useTime = endTime - startTime;
                            this.mCheckResult.addTime(useTime);
                            isRecordMtr(3, useTime);
                        }
                        result = 0;
                        LogUtil.i(TAG, "KCP recePacket length=" + length);
                    } catch (Exception e2) {
                        LogUtil.i(TAG, "kcpCheck Exception1=" + e2);
                        e2.printStackTrace();
                        packetLossCount++;
                        NetmonCore.mNetmonReportMap.get(3).addPacketLossCount();
                    }
                }
            } catch (Exception e3) {
                LogUtil.i(TAG, "kcpCheck Exception2=" + e3);
                e3.printStackTrace();
                packetLossCount++;
                NetmonCore.mNetmonReportMap.get(3).addPacketLossCount();
            }
        } catch (Throwable th) {
        }
        timer.cancel();
        this.mCheckResult.setPacketLossCount(packetLossCount);
        this.mListener.callBack(this.mCheckResult);
        return result;
    }

    private boolean isRecordMtr(int ptotocal, long useTime) {
        long mTraceThreshold = 0;
        switch (ptotocal) {
            case 1:
                mTraceThreshold = 1000;
                LogUtil.i(TAG, "LinkCheck isRecordMtr ptotocal=tcp , useTime=" + useTime);
                break;
            case 2:
                mTraceThreshold = 2000;
                LogUtil.i(TAG, "LinkCheck isRecordMtr ptotocal=udp , useTime=" + useTime);
                break;
            case 3:
                mTraceThreshold = 3000;
                LogUtil.i(TAG, "LinkCheck isRecordMtr ptotocal=kcp , useTime=" + useTime);
                break;
        }
        if (useTime <= mTraceThreshold) {
            return false;
        }
        return true;
    }

    public int ping(String host, int num, int timeout) {
        int start;
        int end;
        String[] infos;
        String[] infos2;
        Process p = null;
        int result = 11;
        try {
            try {
                try {
                    LogUtil.i(TAG, "ping 参数 host= " + host + ", num=" + num + ", timeout=" + timeout);
                    p = Runtime.getRuntime().exec("/system/bin/ping -c " + num + " -w 10 " + host);
                    InputStream input = p.getInputStream();
                    BufferedReader in = new BufferedReader(new InputStreamReader(input));
                    StringBuffer buffer = new StringBuffer();
                    String ip = "";
                    String cost = "";
                    String lost = "";
                    while (true) {
                        String line = in.readLine();
                        if (line == null) {
                            break;
                        }
                        buffer.append(String.valueOf(line) + "\n");
                        if (line.contains("/avg/")) {
                            String[] avgTmp = line.split("=");
                            if (avgTmp.length > 1) {
                                int first = avgTmp[1].indexOf("/");
                                int end2 = avgTmp[1].indexOf("/", first + 1);
                                if (first + 1 < end2) {
                                    cost = avgTmp[1].substring(first + 1, end2);
                                }
                            }
                        } else if (line.contains("icmp_seq")) {
                            LogUtil.i(TAG, "ping line=" + line);
                            String[] info = line.split(" |=");
                            if (info != null && info.length > 9) {
                                try {
                                    float rtt = Float.parseFloat(info[9]);
                                    this.mCheckResult.addTime((int) (100.0f * rtt));
                                } catch (Exception e) {
                                    LogUtil.i(TAG, "LinkCheck  [ping] Exception=" + e + ", cost=" + cost);
                                }
                            }
                        }
                        if (line.contains("% packet loss") && (infos = line.split("% packet loss")) != null && infos.length > 0 && (infos2 = infos[0].split(" ")) != null && infos2.length > 0) {
                            lost = infos2[infos2.length - 1];
                        }
                        if (line.contains("(") && line.contains(")") && (start = line.indexOf("(") + 1) < (end = line.indexOf(")"))) {
                            ip = line.substring(start, end);
                        }
                    }
                    printMessage(p.getErrorStream());
                    p.waitFor();
                    LogUtil.i(TAG, "cost=" + cost + ", lost=" + lost + ", ip=" + ip);
                    LogUtil.i(TAG, "ping result:\n" + buffer.toString());
                    result = 0;
                    if (this.mListener != null) {
                        this.mCheckResult.setmAvgRtt(cost);
                        this.mCheckResult.setmLoss(lost);
                        this.mListener.callBack(this.mCheckResult);
                    }
                    input.close();
                } finally {
                    if (p != null) {
                        p.destroy();
                    }
                }
            } catch (InterruptedException e2) {
                LogUtil.e(TAG, "ping异常 InterruptedException=" + e2);
                e2.printStackTrace();
                if (p != null) {
                    p.destroy();
                }
            }
        } catch (IOException e3) {
            LogUtil.e(TAG, "ping异常 IOException=" + e3);
            e3.printStackTrace();
            if (p != null) {
                p.destroy();
            }
        }
        return result;
    }

    public int dns(String ip) {
        InetAddress[] returnStr = null;
        ArrayList<String> ipArrayList = new ArrayList<>();
        try {
            returnStr = InetAddress.getAllByName(ip);
        } catch (UnknownHostException e) {
            e.printStackTrace();
        }
        for (InetAddress inetAddress : returnStr) {
            String ip2 = inetAddress.getHostAddress();
            LogUtil.i(TAG, "dns ip=" + ip2);
            ipArrayList.add(ip2);
        }
        if (ipArrayList == null || ipArrayList.size() <= 0) {
            return 11;
        }
        this.mCheckResult.setmIpList(ipArrayList);
        this.mListener.callBack(this.mCheckResult);
        return 0;
    }

    public void printMessage(final InputStream input) {
        new Thread(new Runnable() { // from class: com.netease.pharos.link.LinkCheck.2
            @Override // java.lang.Runnable
            public void run() {
                Reader reader = new InputStreamReader(input);
                BufferedReader bf = new BufferedReader(reader);
                while (true) {
                    try {
                        try {
                            String line = bf.readLine();
                            if (line != null) {
                                System.out.println(line);
                                LogUtil.i(LinkCheck.TAG, line);
                            } else {
                                try {
                                    return;
                                } catch (IOException e) {
                                    return;
                                }
                            }
                        } finally {
                            try {
                                input.close();
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            }
                        }
                    } catch (Exception e3) {
                        e3.printStackTrace();
                        try {
                            input.close();
                            return;
                        } catch (IOException e4) {
                            e4.printStackTrace();
                            return;
                        }
                    }
                }
            }
        }).start();
    }

    private void supportPatch() {
        LogUtil.v(com.netease.download.Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
