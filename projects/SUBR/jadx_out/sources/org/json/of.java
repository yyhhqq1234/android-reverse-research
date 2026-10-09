package org.json;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onesignal.core.internal.database.impl.OneSignalDbContract;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.environment.thread.IronSourceThreadManager;
import org.json.mediationsdk.logger.IronLog;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bf\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0001\u0005J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028\u0000H&¢\u0006\u0004\b\u0005\u0010\u0006ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0007À\u0006\u0001"}, d2 = {"Lcom/ironsource/of;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", "a", "(Ljava/lang/Object;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public interface of<T> {

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\b\u0016\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u0002B\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u0018\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0005J\u0016\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tJ\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\b\u0010\rR$\u0010\f\u001a\u0004\u0018\u00018\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\u000e\u001a\u0004\b\b\u0010\u000f\"\u0004\b\u0010\u0010\r¨\u0006\u0013"}, d2 = {"Lcom/ironsource/of$a;", "ListenerType", "Lcom/ironsource/of;", "Ljava/lang/Runnable;", "runnable", "", "predicate", "", "a", "", "instanceId", OneSignalDbContract.NotificationTable.COLUMN_NAME_MESSAGE, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "(Ljava/lang/Object;)V", "Ljava/lang/Object;", "()Ljava/lang/Object;", "b", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static class a<ListenerType> implements of<ListenerType> {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata */
        private ListenerType listener;

        /* JADX INFO: renamed from: com.ironsource.of$a$a, reason: collision with other inner class name */
        @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0004"}, d2 = {"com/ironsource/of$a$a", "Lcom/ironsource/cq;", "", "a", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
        public static final class C0096a extends cq {
            final /* synthetic */ Runnable a;

            C0096a(Runnable runnable) {
                this.a = runnable;
            }

            @Override // org.json.cq
            public void a() {
                this.a.run();
            }
        }

        public static /* synthetic */ void a(a aVar, Runnable runnable, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: executeOnUIThreadIfConditionMet");
            }
            if ((i & 2) != 0) {
                z = true;
            }
            aVar.a(runnable, z);
        }

        public final ListenerType a() {
            return this.listener;
        }

        @Override // org.json.of
        public void a(ListenerType listener) {
            this.listener = listener;
        }

        public final void a(Runnable runnable, boolean predicate) {
            Intrinsics.checkNotNullParameter(runnable, "runnable");
            if (predicate) {
                IronSourceThreadManager.postOnUiThreadTask$default(IronSourceThreadManager.INSTANCE, new C0096a(runnable), 0L, 2, null);
            }
        }

        public final void a(String instanceId, String message) {
            Intrinsics.checkNotNullParameter(instanceId, "instanceId");
            Intrinsics.checkNotNullParameter(message, "message");
            IronLog.CALLBACK.info(message + " instanceId=" + instanceId);
        }

        public final void b(ListenerType listenertype) {
            this.listener = listenertype;
        }
    }

    void a(T listener);
}
