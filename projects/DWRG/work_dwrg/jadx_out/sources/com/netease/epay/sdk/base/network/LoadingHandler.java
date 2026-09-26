package com.netease.epay.sdk.base.network;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import com.netease.epay.sdk.base.util.LogicUtil;
import java.util.List;

/* loaded from: classes.dex */
public class LoadingHandler {
    private static final int NET_MSG = 123;
    private static final String NET_TAG = "netLoading";
    private static LoadingHandler sLoadingHandler;
    private Handler handler = new Handler(Looper.getMainLooper());

    public static LoadingHandler getInstance() {
        if (sLoadingHandler == null) {
            synchronized (LoadingHandler.class) {
                if (sLoadingHandler == null) {
                    sLoadingHandler = new LoadingHandler();
                }
            }
        }
        return sLoadingHandler;
    }

    public void showLoading(FragmentActivity activity) {
        boolean z;
        if (activity != null && activity.getSupportFragmentManager() != null) {
            if (this.handler == null) {
                this.handler = new Handler(Looper.getMainLooper());
            }
            List<Fragment> fragments = activity.getSupportFragmentManager().getFragments();
            for (int i = 0; fragments != null && i < fragments.size(); i++) {
                if (fragments.get(i) != null && NET_TAG.equals(fragments.get(i).getTag())) {
                    z = true;
                    break;
                }
            }
            z = false;
            if (z) {
                this.handler.removeMessages(getMsgWhat(activity));
            } else {
                LogicUtil.showLoading(NET_TAG, activity);
            }
        }
    }

    public void dismissLoading(final FragmentActivity activity) {
        if (activity != null && activity.getSupportFragmentManager() != null && this.handler != null) {
            Message obtain = Message.obtain(this.handler, new Runnable() { // from class: com.netease.epay.sdk.base.network.LoadingHandler.1
                @Override // java.lang.Runnable
                public void run() {
                    LogicUtil.dismissLoading(LoadingHandler.NET_TAG, activity);
                }
            });
            obtain.what = getMsgWhat(activity);
            this.handler.sendMessageDelayed(obtain, 200L);
        }
    }

    private int getMsgWhat(Activity activity) {
        return activity == null ? NET_MSG : activity.hashCode() % 10000;
    }
}
