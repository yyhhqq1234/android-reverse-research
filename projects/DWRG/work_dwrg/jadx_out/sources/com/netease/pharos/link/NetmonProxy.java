package com.netease.pharos.link;

import com.netease.download.Const;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.linkcheck.CheckOverNotifyListener;
import com.netease.pharos.linkcheck.CycleTaskStopListener;
import com.netease.pharos.util.LogUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public class NetmonProxy {
    private static final String TAG = "NetmonProxy";
    private static NetmonProxy sNetmonProxy;
    private static NetmonProxyListener sNetmonProxyListener = null;
    private volatile ArrayList<NetmonCore> mList = new ArrayList<>();
    private BlockingQueue<NetmonCore> mQueue = new ArrayBlockingQueue(100);
    private NetmonCore netmonCore = new NetmonCore();

    public void addNetmonCore(int type, String ip, int port, int count, int time, int size, LinkCheckListener listener, int interval, CycleTaskStopListener cycleTaskStopListener, CheckOverNotifyListener checkOverNotifyListener, String extra) {
        NetmonCore netmonCore = new NetmonCore();
        netmonCore.init(type, ip, port, count, time, size);
        netmonCore.setmListener(listener);
        netmonCore.setmCycleTaskStopListener(cycleTaskStopListener);
        netmonCore.setmCheckOverNotifyListener(checkOverNotifyListener);
        netmonCore.setmInterval(interval);
        netmonCore.setmExtra(extra);
        this.mList.add(netmonCore);
    }

    public void addNetmonCore(int type, String ip, int port, int count, int time, int size, String region, LinkCheckListener listener, int interval, CycleTaskStopListener cycleTaskStopListener, CheckOverNotifyListener checkOverNotifyListener, String extra) {
        NetmonCore netmonCore = new NetmonCore();
        netmonCore.init(type, ip, port, count, time, size);
        netmonCore.setRegion(region);
        netmonCore.setmListener(listener);
        netmonCore.setmCycleTaskStopListener(cycleTaskStopListener);
        netmonCore.setmCheckOverNotifyListener(checkOverNotifyListener);
        netmonCore.setmInterval(interval);
        netmonCore.setmExtra(extra);
        this.mList.add(netmonCore);
    }

    public void setNetmonProxyListener(NetmonProxyListener listener) {
        sNetmonProxyListener = listener;
    }

    public NetmonProxyListener getNetmonProxyListener() {
        if (sNetmonProxyListener == null) {
            sNetmonProxyListener = new NetmonProxyListener() { // from class: com.netease.pharos.link.NetmonProxy.1
                @Override // com.netease.pharos.link.NetmonProxyListener
                public void handle(String operation, String info) {
                    LogUtil.i(NetmonProxy.TAG, "NetmonProxyListener handle operation=" + operation + ", info=" + info);
                }
            };
        }
        return sNetmonProxyListener;
    }

    public static NetmonProxy getInstance() {
        if (sNetmonProxy == null) {
            sNetmonProxy = new NetmonProxy();
        }
        return sNetmonProxy;
    }

    public int start() {
        int result = 0;
        ExecutorService exs = Executors.newFixedThreadPool(1);
        ArrayList<Future<Integer>> al = new ArrayList<>();
        for (int i = 0; i < this.mList.size(); i++) {
            al.add(exs.submit(this.mList.get(i)));
            LogUtil.i(TAG, "al 大小=" + al.size() + ", 参数=" + this.mList.get(i).toString());
        }
        this.mList.clear();
        Iterator<Future<Integer>> it = al.iterator();
        while (it.hasNext()) {
            Future<Integer> fs = it.next();
            try {
                LogUtil.i(TAG, "分片总下载结果=" + fs.get());
                if (fs.get().intValue() != 0) {
                    result = 11;
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
            } catch (ExecutionException e2) {
                e2.printStackTrace();
            }
        }
        return result;
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
