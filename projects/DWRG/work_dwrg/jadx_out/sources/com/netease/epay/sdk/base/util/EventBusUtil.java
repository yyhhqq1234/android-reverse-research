package com.netease.epay.sdk.base.util;

import com.netease.epay.sdk.base.event.EACSuccessEvent;
import com.netease.epay.sdk.base.event.EpayEvent;
import org.greenrobot.eventbus.EventBus;

/* loaded from: classes.dex */
public class EventBusUtil {
    private static EventBus busSingleton;

    public static EventBus getSingleton() {
        if (busSingleton == null) {
            synchronized (EventBusUtil.class) {
                if (busSingleton == null) {
                    busSingleton = new EventBus();
                }
            }
        }
        return busSingleton;
    }

    public static void clearData() {
        busSingleton = null;
    }

    public static void post(Object event) {
        if (event instanceof EpayEvent) {
            EventBus.getDefault().post(event);
        } else if (event instanceof EACSuccessEvent) {
            EventBus.getDefault().post(event);
        } else {
            getSingleton().post(event);
        }
    }
}
