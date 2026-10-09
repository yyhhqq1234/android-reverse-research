package com.onesignal.notifications.internal;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onesignal.core.BuildConfig;
import com.onesignal.core.internal.minification.KeepStub;
import com.onesignal.notifications.INotificationClickListener;
import com.onesignal.notifications.INotificationLifecycleListener;
import com.onesignal.notifications.INotificationsManager;
import com.onesignal.notifications.IPermissionObserver;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MisconfiguredNotificationsManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@KeepStub
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0001\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0004H\u0016J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\rH\u0016J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0010\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0019\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001dH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u001eR\u0014\u0010\u0003\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006 "}, d2 = {"Lcom/onesignal/notifications/internal/MisconfiguredNotificationsManager;", "Lcom/onesignal/notifications/INotificationsManager;", "()V", "canRequestPermission", "", "getCanRequestPermission", "()Ljava/lang/Void;", "permission", "getPermission", "addClickListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/onesignal/notifications/INotificationClickListener;", "addForegroundLifecycleListener", "Lcom/onesignal/notifications/INotificationLifecycleListener;", "addPermissionObserver", "observer", "Lcom/onesignal/notifications/IPermissionObserver;", "clearAllNotifications", "removeClickListener", "removeForegroundLifecycleListener", "removeGroupedNotifications", "group", "", "removeNotification", "id", "", "removePermissionObserver", "requestPermission", "fallbackToSettings", "", "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class MisconfiguredNotificationsManager implements INotificationsManager {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Override // com.onesignal.notifications.INotificationsManager
    /* JADX INFO: renamed from: getCanRequestPermission, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ boolean mo468getCanRequestPermission() {
        return ((Boolean) getCanRequestPermission()).booleanValue();
    }

    @Override // com.onesignal.notifications.INotificationsManager
    /* JADX INFO: renamed from: getPermission, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ boolean mo469getPermission() {
        return ((Boolean) getPermission()).booleanValue();
    }

    public Void getPermission() throws Exception {
        throw INSTANCE.getEXCEPTION();
    }

    public Void getCanRequestPermission() throws Exception {
        throw INSTANCE.getEXCEPTION();
    }

    @Override // com.onesignal.notifications.INotificationsManager
    public Object requestPermission(boolean z, Continuation<?> continuation) throws Exception {
        throw INSTANCE.getEXCEPTION();
    }

    @Override // com.onesignal.notifications.INotificationsManager
    /* JADX INFO: renamed from: removeNotification, reason: merged with bridge method [inline-methods] */
    public Void mo473removeNotification(int id) throws Exception {
        throw INSTANCE.getEXCEPTION();
    }

    @Override // com.onesignal.notifications.INotificationsManager
    /* JADX INFO: renamed from: removeGroupedNotifications, reason: merged with bridge method [inline-methods] */
    public Void mo472removeGroupedNotifications(String group) throws Exception {
        Intrinsics.checkNotNullParameter(group, "group");
        throw INSTANCE.getEXCEPTION();
    }

    @Override // com.onesignal.notifications.INotificationsManager
    /* JADX INFO: renamed from: clearAllNotifications, reason: merged with bridge method [inline-methods] */
    public Void mo467clearAllNotifications() throws Exception {
        throw INSTANCE.getEXCEPTION();
    }

    @Override // com.onesignal.notifications.INotificationsManager
    /* JADX INFO: renamed from: addPermissionObserver, reason: merged with bridge method [inline-methods] */
    public Void mo466addPermissionObserver(IPermissionObserver observer) throws Exception {
        Intrinsics.checkNotNullParameter(observer, "observer");
        throw INSTANCE.getEXCEPTION();
    }

    @Override // com.onesignal.notifications.INotificationsManager
    /* JADX INFO: renamed from: removePermissionObserver, reason: merged with bridge method [inline-methods] */
    public Void mo474removePermissionObserver(IPermissionObserver observer) throws Exception {
        Intrinsics.checkNotNullParameter(observer, "observer");
        throw INSTANCE.getEXCEPTION();
    }

    @Override // com.onesignal.notifications.INotificationsManager
    /* JADX INFO: renamed from: addForegroundLifecycleListener, reason: merged with bridge method [inline-methods] */
    public Void mo465addForegroundLifecycleListener(INotificationLifecycleListener listener) throws Exception {
        Intrinsics.checkNotNullParameter(listener, "listener");
        throw INSTANCE.getEXCEPTION();
    }

    @Override // com.onesignal.notifications.INotificationsManager
    /* JADX INFO: renamed from: removeForegroundLifecycleListener, reason: merged with bridge method [inline-methods] */
    public Void mo471removeForegroundLifecycleListener(INotificationLifecycleListener listener) throws Exception {
        Intrinsics.checkNotNullParameter(listener, "listener");
        throw INSTANCE.getEXCEPTION();
    }

    @Override // com.onesignal.notifications.INotificationsManager
    /* JADX INFO: renamed from: addClickListener, reason: merged with bridge method [inline-methods] */
    public Void mo464addClickListener(INotificationClickListener listener) throws Exception {
        Intrinsics.checkNotNullParameter(listener, "listener");
        throw INSTANCE.getEXCEPTION();
    }

    @Override // com.onesignal.notifications.INotificationsManager
    /* JADX INFO: renamed from: removeClickListener, reason: merged with bridge method [inline-methods] */
    public Void mo470removeClickListener(INotificationClickListener listener) throws Exception {
        Intrinsics.checkNotNullParameter(listener, "listener");
        throw INSTANCE.getEXCEPTION();
    }

    /* JADX INFO: compiled from: MisconfiguredNotificationsManager.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0018\u0010\u0003\u001a\u00060\u0004j\u0002`\u00058BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/onesignal/notifications/internal/MisconfiguredNotificationsManager$Companion;", "", "()V", "EXCEPTION", "Ljava/lang/Exception;", "Lkotlin/Exception;", "getEXCEPTION", "()Ljava/lang/Exception;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Exception getEXCEPTION() {
            return new Exception("Must include gradle module com.onesignal:Notification in order to use this functionality!");
        }
    }
}
