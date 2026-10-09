package com.onesignal.notifications.internal.lifecycle.impl;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onesignal.common.AndroidUtils;
import com.onesignal.common.events.CallbackProducer;
import com.onesignal.common.events.EventProducer;
import com.onesignal.core.internal.application.IApplicationService;
import com.onesignal.core.internal.time.ITime;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.notifications.BuildConfig;
import com.onesignal.notifications.INotificationClickListener;
import com.onesignal.notifications.INotificationLifecycleListener;
import com.onesignal.notifications.INotificationReceivedEvent;
import com.onesignal.notifications.INotificationServiceExtension;
import com.onesignal.notifications.INotificationWillDisplayEvent;
import com.onesignal.notifications.internal.NotificationClickEvent;
import com.onesignal.notifications.internal.common.NotificationConstants;
import com.onesignal.notifications.internal.common.NotificationGenerationJob;
import com.onesignal.notifications.internal.common.NotificationHelper;
import com.onesignal.notifications.internal.lifecycle.INotificationLifecycleCallback;
import com.onesignal.notifications.internal.lifecycle.INotificationLifecycleEventHandler;
import com.onesignal.notifications.internal.lifecycle.INotificationLifecycleService;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: NotificationLifecycleService.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\tH\u0016J\u0010\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u000eH\u0016J\u0010\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u0012H\u0016J!\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010#J\u0019\u0010$\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020\"H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010&J\u0010\u0010'\u001a\u00020\u00172\u0006\u0010(\u001a\u00020)H\u0016J\u0010\u0010*\u001a\u00020\u00172\u0006\u0010+\u001a\u00020,H\u0016J!\u0010-\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0015H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010.J\u0019\u0010/\u001a\u00020\u00172\u0006\u00100\u001a\u000201H\u0096@ø\u0001\u0000¢\u0006\u0002\u00102J\u0010\u00103\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\tH\u0016J\u0010\u00104\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u000eH\u0016J\u0010\u00105\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u0012H\u0016J\u0012\u00106\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0010H\u0016J\u000e\u00107\u001a\u00020\u00172\u0006\u00108\u001a\u000209R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006:"}, d2 = {"Lcom/onesignal/notifications/internal/lifecycle/impl/NotificationLifecycleService;", "Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;", "applicationService", "Lcom/onesignal/core/internal/application/IApplicationService;", "_time", "Lcom/onesignal/core/internal/time/ITime;", "(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/core/internal/time/ITime;)V", "extOpenedCallback", "Lcom/onesignal/common/events/EventProducer;", "Lcom/onesignal/notifications/INotificationClickListener;", "extRemoteReceivedCallback", "Lcom/onesignal/common/events/CallbackProducer;", "Lcom/onesignal/notifications/INotificationServiceExtension;", "extWillShowInForegroundCallback", "Lcom/onesignal/notifications/INotificationLifecycleListener;", "intLifecycleCallback", "Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleCallback;", "intLifecycleHandler", "Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleEventHandler;", "unprocessedOpenedNotifs", "Lkotlin/collections/ArrayDeque;", "Lorg/json/JSONArray;", "addExternalClickListener", "", "callback", "addExternalForegroundLifecycleListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "addInternalNotificationLifecycleEventHandler", "handler", "canOpenNotification", "", "activity", "Landroid/app/Activity;", "data", "Lorg/json/JSONObject;", "(Landroid/app/Activity;Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "canReceiveNotification", "jsonPayload", "(Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "externalNotificationWillShowInForeground", "willDisplayEvent", "Lcom/onesignal/notifications/INotificationWillDisplayEvent;", "externalRemoteNotificationReceived", "notificationReceivedEvent", "Lcom/onesignal/notifications/INotificationReceivedEvent;", "notificationOpened", "(Landroid/app/Activity;Lorg/json/JSONArray;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "notificationReceived", "notificationJob", "Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;", "(Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "removeExternalClickListener", "removeExternalForegroundLifecycleListener", "removeInternalNotificationLifecycleEventHandler", "setInternalNotificationLifecycleCallback", "setupNotificationServiceExtension", "context", "Landroid/content/Context;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class NotificationLifecycleService implements INotificationLifecycleService {
    private final ITime _time;
    private final EventProducer<INotificationClickListener> extOpenedCallback;
    private final CallbackProducer<INotificationServiceExtension> extRemoteReceivedCallback;
    private final EventProducer<INotificationLifecycleListener> extWillShowInForegroundCallback;
    private final CallbackProducer<INotificationLifecycleCallback> intLifecycleCallback;
    private final EventProducer<INotificationLifecycleEventHandler> intLifecycleHandler;
    private final ArrayDeque<JSONArray> unprocessedOpenedNotifs;

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.lifecycle.impl.NotificationLifecycleService$canOpenNotification$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationLifecycleService.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.lifecycle.impl.NotificationLifecycleService", f = "NotificationLifecycleService.kt", i = {0}, l = {91}, m = "canOpenNotification", n = {"canOpen"}, s = {"L$0"})
    static final class C02831 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02831(Continuation<? super C02831> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return NotificationLifecycleService.this.canOpenNotification(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.lifecycle.impl.NotificationLifecycleService$canReceiveNotification$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationLifecycleService.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.lifecycle.impl.NotificationLifecycleService", f = "NotificationLifecycleService.kt", i = {0}, l = {78}, m = "canReceiveNotification", n = {"canReceive"}, s = {"L$0"})
    static final class C02841 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02841(Continuation<? super C02841> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return NotificationLifecycleService.this.canReceiveNotification(null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.lifecycle.impl.NotificationLifecycleService$notificationOpened$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationLifecycleService.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.lifecycle.impl.NotificationLifecycleService", f = "NotificationLifecycleService.kt", i = {0, 0}, l = {99}, m = "notificationOpened", n = {"this", "data"}, s = {"L$0", "L$1"})
    static final class C02881 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C02881(Continuation<? super C02881> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return NotificationLifecycleService.this.notificationOpened(null, null, this);
        }
    }

    public NotificationLifecycleService(IApplicationService applicationService, ITime _time) {
        Intrinsics.checkNotNullParameter(applicationService, "applicationService");
        Intrinsics.checkNotNullParameter(_time, "_time");
        this._time = _time;
        this.intLifecycleHandler = new EventProducer<>();
        this.intLifecycleCallback = new CallbackProducer<>();
        this.extRemoteReceivedCallback = new CallbackProducer<>();
        this.extWillShowInForegroundCallback = new EventProducer<>();
        this.extOpenedCallback = new EventProducer<>();
        this.unprocessedOpenedNotifs = new ArrayDeque<>();
        setupNotificationServiceExtension(applicationService.getAppContext());
    }

    @Override // com.onesignal.notifications.internal.lifecycle.INotificationLifecycleService
    public void addInternalNotificationLifecycleEventHandler(INotificationLifecycleEventHandler handler) {
        Intrinsics.checkNotNullParameter(handler, "handler");
        this.intLifecycleHandler.subscribe(handler);
    }

    @Override // com.onesignal.notifications.internal.lifecycle.INotificationLifecycleService
    public void removeInternalNotificationLifecycleEventHandler(INotificationLifecycleEventHandler handler) {
        Intrinsics.checkNotNullParameter(handler, "handler");
        this.intLifecycleHandler.unsubscribe(handler);
    }

    @Override // com.onesignal.notifications.internal.lifecycle.INotificationLifecycleService
    public void setInternalNotificationLifecycleCallback(INotificationLifecycleCallback callback) {
        this.intLifecycleCallback.set(callback);
    }

    @Override // com.onesignal.notifications.internal.lifecycle.INotificationLifecycleService
    public void addExternalForegroundLifecycleListener(INotificationLifecycleListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.extWillShowInForegroundCallback.subscribe(listener);
    }

    @Override // com.onesignal.notifications.internal.lifecycle.INotificationLifecycleService
    public void removeExternalForegroundLifecycleListener(INotificationLifecycleListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.extWillShowInForegroundCallback.unsubscribe(listener);
    }

    @Override // com.onesignal.notifications.internal.lifecycle.INotificationLifecycleService
    public void addExternalClickListener(INotificationClickListener callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.extOpenedCallback.subscribe(callback);
        if (this.extOpenedCallback.getHasSubscribers() && CollectionsKt.any(this.unprocessedOpenedNotifs)) {
            Iterator it = this.unprocessedOpenedNotifs.iterator();
            while (it.hasNext()) {
                final NotificationClickEvent notificationClickEventGenerateNotificationOpenedResult$com_onesignal_notifications = NotificationHelper.INSTANCE.generateNotificationOpenedResult$com_onesignal_notifications((JSONArray) it.next(), this._time);
                this.extOpenedCallback.fireOnMain(new Function1<INotificationClickListener, Unit>() { // from class: com.onesignal.notifications.internal.lifecycle.impl.NotificationLifecycleService.addExternalClickListener.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(INotificationClickListener iNotificationClickListener) {
                        invoke2(iNotificationClickListener);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(INotificationClickListener it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        it2.onClick(notificationClickEventGenerateNotificationOpenedResult$com_onesignal_notifications);
                    }
                });
            }
        }
    }

    @Override // com.onesignal.notifications.internal.lifecycle.INotificationLifecycleService
    public void removeExternalClickListener(INotificationClickListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.extOpenedCallback.unsubscribe(listener);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.notifications.internal.lifecycle.INotificationLifecycleService
    public Object canReceiveNotification(JSONObject jSONObject, Continuation<? super Boolean> continuation) {
        C02841 c02841;
        Ref.BooleanRef booleanRef;
        if (continuation instanceof C02841) {
            c02841 = (C02841) continuation;
            if ((c02841.label & Integer.MIN_VALUE) != 0) {
                c02841.label -= Integer.MIN_VALUE;
            } else {
                c02841 = new C02841(continuation);
            }
        } else {
            c02841 = new C02841(continuation);
        }
        Object obj = c02841.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02841.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
            booleanRef2.element = true;
            CallbackProducer<INotificationLifecycleCallback> callbackProducer = this.intLifecycleCallback;
            C02852 c02852 = new C02852(booleanRef2, jSONObject, null);
            c02841.L$0 = booleanRef2;
            c02841.label = 1;
            if (callbackProducer.suspendingFire(c02852, c02841) == coroutine_suspended) {
                return coroutine_suspended;
            }
            booleanRef = booleanRef2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            booleanRef = (Ref.BooleanRef) c02841.L$0;
            ResultKt.throwOnFailure(obj);
        }
        return Boxing.boxBoolean(booleanRef.element);
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.lifecycle.impl.NotificationLifecycleService$canReceiveNotification$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationLifecycleService.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleCallback;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.notifications.internal.lifecycle.impl.NotificationLifecycleService$canReceiveNotification$2", f = "NotificationLifecycleService.kt", i = {}, l = {78}, m = "invokeSuspend", n = {}, s = {})
    static final class C02852 extends SuspendLambda implements Function2<INotificationLifecycleCallback, Continuation<? super Unit>, Object> {
        final /* synthetic */ Ref.BooleanRef $canReceive;
        final /* synthetic */ JSONObject $jsonPayload;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02852(Ref.BooleanRef booleanRef, JSONObject jSONObject, Continuation<? super C02852> continuation) {
            super(2, continuation);
            this.$canReceive = booleanRef;
            this.$jsonPayload = jSONObject;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C02852 c02852 = new C02852(this.$canReceive, this.$jsonPayload, continuation);
            c02852.L$0 = obj;
            return c02852;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(INotificationLifecycleCallback iNotificationLifecycleCallback, Continuation<? super Unit> continuation) {
            return ((C02852) create(iNotificationLifecycleCallback, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Ref.BooleanRef booleanRef;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                INotificationLifecycleCallback iNotificationLifecycleCallback = (INotificationLifecycleCallback) this.L$0;
                Ref.BooleanRef booleanRef2 = this.$canReceive;
                this.L$0 = booleanRef2;
                this.label = 1;
                obj = iNotificationLifecycleCallback.canReceiveNotification(this.$jsonPayload, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
                booleanRef = booleanRef2;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                booleanRef = (Ref.BooleanRef) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            booleanRef.element = ((Boolean) obj).booleanValue();
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.lifecycle.impl.NotificationLifecycleService$notificationReceived$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationLifecycleService.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleEventHandler;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.notifications.internal.lifecycle.impl.NotificationLifecycleService$notificationReceived$2", f = "NotificationLifecycleService.kt", i = {}, l = {83}, m = "invokeSuspend", n = {}, s = {})
    static final class C02902 extends SuspendLambda implements Function2<INotificationLifecycleEventHandler, Continuation<? super Unit>, Object> {
        final /* synthetic */ NotificationGenerationJob $notificationJob;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02902(NotificationGenerationJob notificationGenerationJob, Continuation<? super C02902> continuation) {
            super(2, continuation);
            this.$notificationJob = notificationGenerationJob;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C02902 c02902 = new C02902(this.$notificationJob, continuation);
            c02902.L$0 = obj;
            return c02902;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(INotificationLifecycleEventHandler iNotificationLifecycleEventHandler, Continuation<? super Unit> continuation) {
            return ((C02902) create(iNotificationLifecycleEventHandler, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (((INotificationLifecycleEventHandler) this.L$0).onNotificationReceived(this.$notificationJob, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    @Override // com.onesignal.notifications.internal.lifecycle.INotificationLifecycleService
    public Object notificationReceived(NotificationGenerationJob notificationGenerationJob, Continuation<? super Unit> continuation) {
        Object objSuspendingFire = this.intLifecycleHandler.suspendingFire(new C02902(notificationGenerationJob, null), continuation);
        return objSuspendingFire == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objSuspendingFire : Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.notifications.internal.lifecycle.INotificationLifecycleService
    public Object canOpenNotification(Activity activity, JSONObject jSONObject, Continuation<? super Boolean> continuation) {
        C02831 c02831;
        Ref.BooleanRef booleanRef;
        if (continuation instanceof C02831) {
            c02831 = (C02831) continuation;
            if ((c02831.label & Integer.MIN_VALUE) != 0) {
                c02831.label -= Integer.MIN_VALUE;
            } else {
                c02831 = new C02831(continuation);
            }
        } else {
            c02831 = new C02831(continuation);
        }
        Object obj = c02831.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02831.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
            booleanRef2.element = this.extOpenedCallback.getHasSubscribers();
            CallbackProducer<INotificationLifecycleCallback> callbackProducer = this.intLifecycleCallback;
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(booleanRef2, activity, jSONObject, null);
            c02831.L$0 = booleanRef2;
            c02831.label = 1;
            if (callbackProducer.suspendingFire(anonymousClass2, c02831) == coroutine_suspended) {
                return coroutine_suspended;
            }
            booleanRef = booleanRef2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            booleanRef = (Ref.BooleanRef) c02831.L$0;
            ResultKt.throwOnFailure(obj);
        }
        return Boxing.boxBoolean(booleanRef.element);
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.lifecycle.impl.NotificationLifecycleService$canOpenNotification$2, reason: invalid class name */
    /* JADX INFO: compiled from: NotificationLifecycleService.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleCallback;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.notifications.internal.lifecycle.impl.NotificationLifecycleService$canOpenNotification$2", f = "NotificationLifecycleService.kt", i = {}, l = {91}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<INotificationLifecycleCallback, Continuation<? super Unit>, Object> {
        final /* synthetic */ Activity $activity;
        final /* synthetic */ Ref.BooleanRef $canOpen;
        final /* synthetic */ JSONObject $data;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Ref.BooleanRef booleanRef, Activity activity, JSONObject jSONObject, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$canOpen = booleanRef;
            this.$activity = activity;
            this.$data = jSONObject;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$canOpen, this.$activity, this.$data, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(INotificationLifecycleCallback iNotificationLifecycleCallback, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(iNotificationLifecycleCallback, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Ref.BooleanRef booleanRef;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                INotificationLifecycleCallback iNotificationLifecycleCallback = (INotificationLifecycleCallback) this.L$0;
                Ref.BooleanRef booleanRef2 = this.$canOpen;
                this.L$0 = booleanRef2;
                this.label = 1;
                obj = iNotificationLifecycleCallback.canOpenNotification(this.$activity, this.$data, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
                booleanRef = booleanRef2;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                booleanRef = (Ref.BooleanRef) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            booleanRef.element = ((Boolean) obj).booleanValue();
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.notifications.internal.lifecycle.INotificationLifecycleService
    public Object notificationOpened(Activity activity, JSONArray jSONArray, Continuation<? super Unit> continuation) {
        C02881 c02881;
        NotificationLifecycleService notificationLifecycleService;
        if (continuation instanceof C02881) {
            c02881 = (C02881) continuation;
            if ((c02881.label & Integer.MIN_VALUE) != 0) {
                c02881.label -= Integer.MIN_VALUE;
            } else {
                c02881 = new C02881(continuation);
            }
        } else {
            c02881 = new C02881(continuation);
        }
        Object obj = c02881.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02881.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            EventProducer<INotificationLifecycleEventHandler> eventProducer = this.intLifecycleHandler;
            C02892 c02892 = new C02892(activity, jSONArray, null);
            c02881.L$0 = this;
            c02881.L$1 = jSONArray;
            c02881.label = 1;
            if (eventProducer.suspendingFire(c02892, c02881) == coroutine_suspended) {
                return coroutine_suspended;
            }
            notificationLifecycleService = this;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            jSONArray = (JSONArray) c02881.L$1;
            notificationLifecycleService = (NotificationLifecycleService) c02881.L$0;
            ResultKt.throwOnFailure(obj);
        }
        if (notificationLifecycleService.extOpenedCallback.getHasSubscribers()) {
            final NotificationClickEvent notificationClickEventGenerateNotificationOpenedResult$com_onesignal_notifications = NotificationHelper.INSTANCE.generateNotificationOpenedResult$com_onesignal_notifications(jSONArray, notificationLifecycleService._time);
            notificationLifecycleService.extOpenedCallback.fireOnMain(new Function1<INotificationClickListener, Unit>() { // from class: com.onesignal.notifications.internal.lifecycle.impl.NotificationLifecycleService.notificationOpened.3
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(INotificationClickListener iNotificationClickListener) {
                    invoke2(iNotificationClickListener);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(INotificationClickListener it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    it.onClick(notificationClickEventGenerateNotificationOpenedResult$com_onesignal_notifications);
                }
            });
        } else {
            notificationLifecycleService.unprocessedOpenedNotifs.add(jSONArray);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.lifecycle.impl.NotificationLifecycleService$notificationOpened$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationLifecycleService.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleEventHandler;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.notifications.internal.lifecycle.impl.NotificationLifecycleService$notificationOpened$2", f = "NotificationLifecycleService.kt", i = {}, l = {99}, m = "invokeSuspend", n = {}, s = {})
    static final class C02892 extends SuspendLambda implements Function2<INotificationLifecycleEventHandler, Continuation<? super Unit>, Object> {
        final /* synthetic */ Activity $activity;
        final /* synthetic */ JSONArray $data;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02892(Activity activity, JSONArray jSONArray, Continuation<? super C02892> continuation) {
            super(2, continuation);
            this.$activity = activity;
            this.$data = jSONArray;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C02892 c02892 = new C02892(this.$activity, this.$data, continuation);
            c02892.L$0 = obj;
            return c02892;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(INotificationLifecycleEventHandler iNotificationLifecycleEventHandler, Continuation<? super Unit> continuation) {
            return ((C02892) create(iNotificationLifecycleEventHandler, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (((INotificationLifecycleEventHandler) this.L$0).onNotificationOpened(this.$activity, this.$data, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    @Override // com.onesignal.notifications.internal.lifecycle.INotificationLifecycleService
    public void externalRemoteNotificationReceived(final INotificationReceivedEvent notificationReceivedEvent) {
        Intrinsics.checkNotNullParameter(notificationReceivedEvent, "notificationReceivedEvent");
        this.extRemoteReceivedCallback.fire(new Function1<INotificationServiceExtension, Unit>() { // from class: com.onesignal.notifications.internal.lifecycle.impl.NotificationLifecycleService.externalRemoteNotificationReceived.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(INotificationServiceExtension iNotificationServiceExtension) {
                invoke2(iNotificationServiceExtension);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(INotificationServiceExtension it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onNotificationReceived(notificationReceivedEvent);
            }
        });
    }

    @Override // com.onesignal.notifications.internal.lifecycle.INotificationLifecycleService
    public void externalNotificationWillShowInForeground(final INotificationWillDisplayEvent willDisplayEvent) {
        Intrinsics.checkNotNullParameter(willDisplayEvent, "willDisplayEvent");
        this.extWillShowInForegroundCallback.fire(new Function1<INotificationLifecycleListener, Unit>() { // from class: com.onesignal.notifications.internal.lifecycle.impl.NotificationLifecycleService.externalNotificationWillShowInForeground.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(INotificationLifecycleListener iNotificationLifecycleListener) {
                invoke2(iNotificationLifecycleListener);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(INotificationLifecycleListener it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onWillDisplay(willDisplayEvent);
            }
        });
    }

    public final void setupNotificationServiceExtension(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        String manifestMeta = AndroidUtils.INSTANCE.getManifestMeta(context, NotificationConstants.EXTENSION_SERVICE_META_DATA_TAG_NAME);
        if (manifestMeta == null) {
            Logging.verbose$default("No class found, not setting up OSRemoteNotificationReceivedHandler", null, 2, null);
            return;
        }
        Logging.verbose$default("Found class: " + manifestMeta + ", attempting to call constructor", null, 2, null);
        try {
            Object objNewInstance = Class.forName(manifestMeta).newInstance();
            if (!(objNewInstance instanceof INotificationServiceExtension) || this.extRemoteReceivedCallback.getHasCallback()) {
                return;
            }
            this.extRemoteReceivedCallback.set((INotificationServiceExtension) objNewInstance);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
        } catch (InstantiationException e3) {
            e3.printStackTrace();
        }
    }
}
