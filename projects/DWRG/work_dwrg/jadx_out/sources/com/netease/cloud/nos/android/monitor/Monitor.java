package com.netease.cloud.nos.android.monitor;

import android.content.Context;
import com.netease.cloud.nos.android.core.WanAccelerator;
import com.netease.cloud.nos.android.utils.LogUtil;
import com.netease.cloud.nos.android.utils.Util;
import com.sina.weibo.sdk.component.WidgetRequestParam;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.zip.GZIPOutputStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class Monitor {
    private static final int maxListNum = 500;
    private static final String LOGTAG = LogUtil.makeLogTag(Monitor.class);
    private static List<StatisticItem> LIST = null;
    private static boolean prompt = false;

    public static ByteArrayOutputStream getPostData(List<StatisticItem> list) {
        GZIPOutputStream gos;
        if (list == null || list.size() == 0) {
            return null;
        }
        GZIPOutputStream gos2 = null;
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        try {
            try {
                gos = new GZIPOutputStream(bos);
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e) {
            e = e;
        } catch (JSONException e2) {
            e = e2;
        }
        try {
            JSONArray array = new JSONArray();
            for (StatisticItem item : list) {
                array.put(toJSON(item));
            }
            JSONObject jo = new JSONObject();
            jo.put("items", array);
            LogUtil.e(LOGTAG, "monitor result: " + jo.toString());
            gos.write(jo.toString().getBytes("UTF-8"));
            gos.flush();
            gos.finish();
        } catch (IOException e3) {
            e = e3;
            gos2 = gos;
            LogUtil.e(LOGTAG, "get post data io exception", e);
            if (gos2 != null) {
                try {
                    gos2.close();
                } catch (IOException e4) {
                    LogUtil.e(LOGTAG, "gos close exception", e4);
                }
            }
            return bos;
        } catch (JSONException e5) {
            e = e5;
            gos2 = gos;
            LogUtil.e(LOGTAG, "get post data json exception", e);
            if (gos2 != null) {
                try {
                    gos2.close();
                } catch (IOException e6) {
                    LogUtil.e(LOGTAG, "gos close exception", e6);
                }
            }
            return bos;
        } catch (Throwable th2) {
            th = th2;
            gos2 = gos;
            if (gos2 != null) {
                try {
                    gos2.close();
                } catch (IOException e7) {
                    LogUtil.e(LOGTAG, "gos close exception", e7);
                }
            }
            throw th;
        }
        if (gos != null) {
            try {
                gos.close();
                gos2 = gos;
            } catch (IOException e8) {
                LogUtil.e(LOGTAG, "gos close exception", e8);
            }
            return bos;
        }
        gos2 = gos;
        return bos;
    }

    public static synchronized void clean() {
        synchronized (Monitor.class) {
            if (LIST != null) {
                LIST.clear();
            }
        }
    }

    public static void add(Context ctx, StatisticItem item) {
        if (WanAccelerator.getConf().isMonitorThreadEnabled()) {
            LogUtil.d(LOGTAG, "monitor add item for thread");
            if (set(item)) {
                LogUtil.d(LOGTAG, "send monitor data immediately");
                MonitorTask task = new MonitorTask(ctx);
                new Timer().schedule(task, 0L);
                return;
            }
            return;
        }
        MonitorManager.sendStatItem(ctx, item);
    }

    public static synchronized boolean set(StatisticItem item) {
        boolean z = true;
        synchronized (Monitor.class) {
            if (LIST == null) {
                LIST = new ArrayList();
            }
            LIST.add(item);
            if (LIST.size() < 500 || prompt) {
                z = false;
            } else {
                LogUtil.d(LOGTAG, "monitor item num " + LIST.size() + " >= 500");
                prompt = true;
            }
        }
        return z;
    }

    public static synchronized List<StatisticItem> get() {
        List<StatisticItem> list;
        synchronized (Monitor.class) {
            list = LIST;
            LIST = null;
            prompt = false;
        }
        return list;
    }

    private static JSONObject toJSON(StatisticItem item) {
        JSONObject data = new JSONObject();
        try {
            data.put("a", item.getPlatform());
            if (item.getClientIP() != null && !item.getClientIP().equals("")) {
                data.put("b", Util.ipToLong(item.getClientIP()));
            }
            data.put("c", item.getSdkVersion());
            if (item.getLbsIP() != null && !item.getLbsIP().equals("")) {
                data.put("d", Util.ipToLong(Util.getIPString(item.getLbsIP())));
            }
            data.put("e", Util.ipToLong(Util.getIPString(item.getUploaderIP())));
            data.put("f", item.getFileSize());
            data.put("g", item.getNetEnv());
            if (item.getLbsUseTime() != 0) {
                data.put("h", item.getLbsUseTime());
            }
            data.put("i", item.getUploaderUseTime());
            if (item.getLbsSucc() != 0) {
                data.put("j", item.getLbsSucc());
            }
            if (item.getUploaderSucc() != 0) {
                data.put("k", item.getUploaderSucc());
            }
            if (item.getLbsHttpCode() != 200) {
                data.put("l", item.getLbsHttpCode());
            }
            if (item.getUploaderHttpCode() != 200) {
                data.put("m", item.getUploaderHttpCode());
            }
            if (item.getUploadRetryCount() != 0) {
                data.put("n", item.getUploadRetryCount());
            }
            if (item.getChunkRetryCount() != 0) {
                data.put("o", item.getChunkRetryCount());
            }
            if (item.getQueryRetryCount() != 0) {
                data.put("p", item.getQueryRetryCount());
            }
            if (item.getBucketName() != null && !item.getBucketName().equals("")) {
                data.put(WidgetRequestParam.REQ_PARAM_COMMENT_TOPIC, item.getBucketName());
            }
            if (item.getUploadType() != 1000) {
                data.put("r", item.getUploadType());
            }
        } catch (JSONException e) {
            LogUtil.e(LOGTAG, "parse statistic item json exception", e);
        }
        return data;
    }
}
