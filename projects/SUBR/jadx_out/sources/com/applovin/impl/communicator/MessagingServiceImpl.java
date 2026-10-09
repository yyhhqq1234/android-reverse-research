package com.applovin.impl.communicator;

import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorMessagingService;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes.dex */
public class MessagingServiceImpl implements AppLovinCommunicatorMessagingService {
    private ScheduledThreadPoolExecutor a;
    private final Object b = new Object();

    @Override // com.applovin.communicator.AppLovinCommunicatorMessagingService
    public void publish(final AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutorA = a();
        this.a = scheduledThreadPoolExecutorA;
        scheduledThreadPoolExecutorA.execute(new Runnable() { // from class: com.applovin.impl.communicator.MessagingServiceImpl$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                AppLovinBroadcastManager.sendBroadcastSync(appLovinCommunicatorMessage, null);
            }
        });
    }

    public String toString() {
        return "MessagingServiceImpl{}";
    }

    private ScheduledThreadPoolExecutor a() {
        synchronized (this.b) {
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = this.a;
            if (scheduledThreadPoolExecutor != null) {
                return scheduledThreadPoolExecutor;
            }
            return new ScheduledThreadPoolExecutor(1, new ThreadFactory() { // from class: com.applovin.impl.communicator.MessagingServiceImpl$$ExternalSyntheticLambda0
                @Override // java.util.concurrent.ThreadFactory
                public final Thread newThread(Runnable runnable) {
                    return MessagingServiceImpl.a(runnable);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Thread a(Runnable runnable) {
        Thread thread = new Thread(runnable, "AppLovinSdk:communicator");
        thread.setPriority(1);
        thread.setDaemon(true);
        return thread;
    }
}
