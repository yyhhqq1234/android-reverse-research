package com.onesignal.inAppMessages.internal.display.impl;

import android.app.Activity;
import android.util.Base64;
import com.onesignal.core.internal.application.IApplicationService;
import com.onesignal.core.internal.config.ConfigModelStore;
import com.onesignal.core.internal.database.impl.OneSignalDbContract;
import com.onesignal.core.internal.language.ILanguageContext;
import com.onesignal.core.internal.time.ITime;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.inAppMessages.BuildConfig;
import com.onesignal.inAppMessages.internal.InAppMessage;
import com.onesignal.inAppMessages.internal.InAppMessageContent;
import com.onesignal.inAppMessages.internal.backend.GetIAMDataResponse;
import com.onesignal.inAppMessages.internal.backend.IInAppBackendService;
import com.onesignal.inAppMessages.internal.common.InAppHelper;
import com.onesignal.inAppMessages.internal.display.IInAppDisplayer;
import com.onesignal.inAppMessages.internal.lifecycle.IInAppLifecycleService;
import com.onesignal.inAppMessages.internal.prompt.IInAppMessagePromptFactory;
import com.onesignal.session.internal.influence.IInfluenceManager;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.MainCoroutineDispatcher;

/* JADX INFO: compiled from: InAppDisplayer.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u0000 (2\u00020\u0001:\u0001(BE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011¢\u0006\u0002\u0010\u0012J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\u001b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u001bJ\u0019\u0010\u001c\u001a\u00020\u00182\u0006\u0010\u001d\u001a\u00020\u001eH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u001fJ)\u0010 \u001a\u00020\u00162\u0006\u0010!\u001a\u00020\"2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010#\u001a\u00020$H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010%J!\u0010&\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010#\u001a\u00020$H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010'R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006)"}, d2 = {"Lcom/onesignal/inAppMessages/internal/display/impl/InAppDisplayer;", "Lcom/onesignal/inAppMessages/internal/display/IInAppDisplayer;", "_applicationService", "Lcom/onesignal/core/internal/application/IApplicationService;", "_lifecycle", "Lcom/onesignal/inAppMessages/internal/lifecycle/IInAppLifecycleService;", "_promptFactory", "Lcom/onesignal/inAppMessages/internal/prompt/IInAppMessagePromptFactory;", "_backend", "Lcom/onesignal/inAppMessages/internal/backend/IInAppBackendService;", "_influenceManager", "Lcom/onesignal/session/internal/influence/IInfluenceManager;", "_configModelStore", "Lcom/onesignal/core/internal/config/ConfigModelStore;", "_languageContext", "Lcom/onesignal/core/internal/language/ILanguageContext;", "_time", "Lcom/onesignal/core/internal/time/ITime;", "(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/inAppMessages/internal/lifecycle/IInAppLifecycleService;Lcom/onesignal/inAppMessages/internal/prompt/IInAppMessagePromptFactory;Lcom/onesignal/inAppMessages/internal/backend/IInAppBackendService;Lcom/onesignal/session/internal/influence/IInfluenceManager;Lcom/onesignal/core/internal/config/ConfigModelStore;Lcom/onesignal/core/internal/language/ILanguageContext;Lcom/onesignal/core/internal/time/ITime;)V", "lastInstance", "Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager;", "dismissCurrentInAppMessage", "", "displayMessage", "", OneSignalDbContract.NotificationTable.COLUMN_NAME_MESSAGE, "Lcom/onesignal/inAppMessages/internal/InAppMessage;", "(Lcom/onesignal/inAppMessages/internal/InAppMessage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "displayPreviewMessage", "previewUUID", "", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "initInAppMessage", "currentActivity", "Landroid/app/Activity;", "content", "Lcom/onesignal/inAppMessages/internal/InAppMessageContent;", "(Landroid/app/Activity;Lcom/onesignal/inAppMessages/internal/InAppMessage;Lcom/onesignal/inAppMessages/internal/InAppMessageContent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "showMessageContent", "(Lcom/onesignal/inAppMessages/internal/InAppMessage;Lcom/onesignal/inAppMessages/internal/InAppMessageContent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class InAppDisplayer implements IInAppDisplayer {
    private static final int IN_APP_MESSAGE_INIT_DELAY = 200;
    private final IApplicationService _applicationService;
    private final IInAppBackendService _backend;
    private final ConfigModelStore _configModelStore;
    private final IInfluenceManager _influenceManager;
    private final ILanguageContext _languageContext;
    private final IInAppLifecycleService _lifecycle;
    private final IInAppMessagePromptFactory _promptFactory;
    private final ITime _time;
    private WebViewManager lastInstance;

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.display.impl.InAppDisplayer$displayMessage$1, reason: invalid class name */
    /* JADX INFO: compiled from: InAppDisplayer.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.display.impl.InAppDisplayer", f = "InAppDisplayer.kt", i = {0, 0}, l = {48, 57}, m = "displayMessage", n = {"this", OneSignalDbContract.NotificationTable.COLUMN_NAME_MESSAGE}, s = {"L$0", "L$1"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return InAppDisplayer.this.displayMessage(null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.display.impl.InAppDisplayer$displayPreviewMessage$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InAppDisplayer.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.display.impl.InAppDisplayer", f = "InAppDisplayer.kt", i = {0, 0}, l = {73, 79}, m = "displayPreviewMessage", n = {"this", OneSignalDbContract.NotificationTable.COLUMN_NAME_MESSAGE}, s = {"L$0", "L$1"})
    static final class C02201 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C02201(Continuation<? super C02201> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return InAppDisplayer.this.displayPreviewMessage(null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.display.impl.InAppDisplayer$initInAppMessage$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InAppDisplayer.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.display.impl.InAppDisplayer", f = "InAppDisplayer.kt", i = {}, l = {145}, m = "initInAppMessage", n = {}, s = {})
    static final class C02211 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C02211(Continuation<? super C02211> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return InAppDisplayer.this.initInAppMessage(null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.display.impl.InAppDisplayer$showMessageContent$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InAppDisplayer.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.display.impl.InAppDisplayer", f = "InAppDisplayer.kt", i = {0, 0, 0, 0, 3, 3, 3}, l = {105, 107, 109, 114, 115}, m = "showMessageContent", n = {"this", OneSignalDbContract.NotificationTable.COLUMN_NAME_MESSAGE, "content", "currentActivity", "this", OneSignalDbContract.NotificationTable.COLUMN_NAME_MESSAGE, "content"}, s = {"L$0", "L$1", "L$2", "L$3", "L$0", "L$1", "L$2"})
    static final class C02221 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        C02221(Continuation<? super C02221> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return InAppDisplayer.this.showMessageContent(null, null, this);
        }
    }

    public InAppDisplayer(IApplicationService _applicationService, IInAppLifecycleService _lifecycle, IInAppMessagePromptFactory _promptFactory, IInAppBackendService _backend, IInfluenceManager _influenceManager, ConfigModelStore _configModelStore, ILanguageContext _languageContext, ITime _time) {
        Intrinsics.checkNotNullParameter(_applicationService, "_applicationService");
        Intrinsics.checkNotNullParameter(_lifecycle, "_lifecycle");
        Intrinsics.checkNotNullParameter(_promptFactory, "_promptFactory");
        Intrinsics.checkNotNullParameter(_backend, "_backend");
        Intrinsics.checkNotNullParameter(_influenceManager, "_influenceManager");
        Intrinsics.checkNotNullParameter(_configModelStore, "_configModelStore");
        Intrinsics.checkNotNullParameter(_languageContext, "_languageContext");
        Intrinsics.checkNotNullParameter(_time, "_time");
        this._applicationService = _applicationService;
        this._lifecycle = _lifecycle;
        this._promptFactory = _promptFactory;
        this._backend = _backend;
        this._influenceManager = _influenceManager;
        this._configModelStore = _configModelStore;
        this._languageContext = _languageContext;
        this._time = _time;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.inAppMessages.internal.display.IInAppDisplayer
    public Object displayMessage(InAppMessage inAppMessage, Continuation<? super Boolean> continuation) {
        AnonymousClass1 anonymousClass1;
        InAppDisplayer inAppDisplayer;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        Object iAMData = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(iAMData);
            IInAppBackendService iInAppBackendService = this._backend;
            String appId = this._configModelStore.getModel().getAppId();
            String messageId = inAppMessage.getMessageId();
            String strVariantIdForMessage = InAppHelper.INSTANCE.variantIdForMessage(inAppMessage, this._languageContext);
            anonymousClass1.L$0 = this;
            anonymousClass1.L$1 = inAppMessage;
            anonymousClass1.label = 1;
            iAMData = iInAppBackendService.getIAMData(appId, messageId, strVariantIdForMessage, anonymousClass1);
            if (iAMData == coroutine_suspended) {
                return coroutine_suspended;
            }
            inAppDisplayer = this;
        } else {
            if (i == 1) {
                inAppMessage = (InAppMessage) anonymousClass1.L$1;
                inAppDisplayer = (InAppDisplayer) anonymousClass1.L$0;
                ResultKt.throwOnFailure(iAMData);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(iAMData);
            }
            return Boxing.boxBoolean(true);
        }
        GetIAMDataResponse getIAMDataResponse = (GetIAMDataResponse) iAMData;
        if (getIAMDataResponse.getContent() != null) {
            InAppMessageContent content = getIAMDataResponse.getContent();
            Intrinsics.checkNotNull(content);
            Double displayDuration = content.getDisplayDuration();
            Intrinsics.checkNotNull(displayDuration);
            inAppMessage.setDisplayDuration(displayDuration.doubleValue());
            inAppDisplayer._influenceManager.onInAppMessageDisplayed(inAppMessage.getMessageId());
            InAppMessageContent content2 = getIAMDataResponse.getContent();
            Intrinsics.checkNotNull(content2);
            anonymousClass1.L$0 = null;
            anonymousClass1.L$1 = null;
            anonymousClass1.label = 2;
            if (inAppDisplayer.showMessageContent(inAppMessage, content2, anonymousClass1) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Boxing.boxBoolean(true);
        }
        if (getIAMDataResponse.getShouldRetry()) {
            return null;
        }
        return Boxing.boxBoolean(false);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.inAppMessages.internal.display.IInAppDisplayer
    public Object displayPreviewMessage(String str, Continuation<? super Boolean> continuation) {
        C02201 c02201;
        InAppDisplayer inAppDisplayer;
        InAppMessage inAppMessage;
        if (continuation instanceof C02201) {
            c02201 = (C02201) continuation;
            if ((c02201.label & Integer.MIN_VALUE) != 0) {
                c02201.label -= Integer.MIN_VALUE;
            } else {
                c02201 = new C02201(continuation);
            }
        } else {
            c02201 = new C02201(continuation);
        }
        Object obj = c02201.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02201.label;
        boolean z = true;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            InAppMessage inAppMessage2 = new InAppMessage(true, this._time);
            IInAppBackendService iInAppBackendService = this._backend;
            String appId = this._configModelStore.getModel().getAppId();
            c02201.L$0 = this;
            c02201.L$1 = inAppMessage2;
            c02201.label = 1;
            Object iAMPreviewData = iInAppBackendService.getIAMPreviewData(appId, str, c02201);
            if (iAMPreviewData == coroutine_suspended) {
                return coroutine_suspended;
            }
            inAppDisplayer = this;
            obj = iAMPreviewData;
            inAppMessage = inAppMessage2;
        } else {
            if (i == 1) {
                inAppMessage = (InAppMessage) c02201.L$1;
                inAppDisplayer = (InAppDisplayer) c02201.L$0;
                ResultKt.throwOnFailure(obj);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Boxing.boxBoolean(z);
        }
        InAppMessageContent inAppMessageContent = (InAppMessageContent) obj;
        if (inAppMessageContent == null) {
            z = false;
        } else {
            Double displayDuration = inAppMessageContent.getDisplayDuration();
            Intrinsics.checkNotNull(displayDuration);
            inAppMessage.setDisplayDuration(displayDuration.doubleValue());
            c02201.L$0 = null;
            c02201.L$1 = null;
            c02201.label = 2;
            if (inAppDisplayer.showMessageContent(inAppMessage, inAppMessageContent, c02201) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Boxing.boxBoolean(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:33:0x00bc A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:45:0x00e9 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object showMessageContent(InAppMessage inAppMessage, InAppMessageContent inAppMessageContent, Continuation<? super Unit> continuation) {
        C02221 c02221;
        InAppDisplayer inAppDisplayer;
        InAppDisplayer inAppDisplayer2;
        InAppMessage inAppMessage2;
        Activity activity;
        if (continuation instanceof C02221) {
            c02221 = (C02221) continuation;
            if ((c02221.label & Integer.MIN_VALUE) != 0) {
                c02221.label -= Integer.MIN_VALUE;
            } else {
                c02221 = new C02221(continuation);
            }
        } else {
            c02221 = new C02221(continuation);
        }
        Object obj = c02221.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02221.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Activity current = this._applicationService.getCurrent();
            Logging.debug$default("InAppDisplayer.showMessageContent: in app message on currentActivity: " + current, null, 2, null);
            if (current != null) {
                if (this.lastInstance != null && inAppMessage.getIsPreview()) {
                    WebViewManager webViewManager = this.lastInstance;
                    Intrinsics.checkNotNull(webViewManager);
                    c02221.L$0 = this;
                    c02221.L$1 = inAppMessage;
                    c02221.L$2 = inAppMessageContent;
                    c02221.L$3 = current;
                    c02221.label = 1;
                    if (webViewManager.dismissAndAwaitNextMessage(c02221) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    inAppDisplayer2 = this;
                    inAppMessage2 = inAppMessage;
                    activity = current;
                    inAppDisplayer2.lastInstance = null;
                    c02221.L$0 = null;
                    c02221.L$1 = null;
                    c02221.L$2 = null;
                    c02221.L$3 = null;
                    c02221.label = 2;
                    if (inAppDisplayer2.initInAppMessage(activity, inAppMessage2, inAppMessageContent, c02221) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    c02221.label = 3;
                    if (initInAppMessage(current, inAppMessage, inAppMessageContent, c02221) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                return Unit.INSTANCE;
            }
            c02221.L$0 = this;
            c02221.L$1 = inAppMessage;
            c02221.L$2 = inAppMessageContent;
            c02221.label = 4;
            if (DelayKt.delay(200L, c02221) == coroutine_suspended) {
                return coroutine_suspended;
            }
            inAppDisplayer = this;
            c02221.L$0 = null;
            c02221.L$1 = null;
            c02221.L$2 = null;
            c02221.label = 5;
            if (inAppDisplayer.showMessageContent(inAppMessage, inAppMessageContent, c02221) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
        if (i == 1) {
            activity = (Activity) c02221.L$3;
            inAppMessageContent = (InAppMessageContent) c02221.L$2;
            inAppMessage2 = (InAppMessage) c02221.L$1;
            inAppDisplayer2 = (InAppDisplayer) c02221.L$0;
            ResultKt.throwOnFailure(obj);
            inAppDisplayer2.lastInstance = null;
            c02221.L$0 = null;
            c02221.L$1 = null;
            c02221.L$2 = null;
            c02221.L$3 = null;
            c02221.label = 2;
            if (inAppDisplayer2.initInAppMessage(activity, inAppMessage2, inAppMessageContent, c02221) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 2 && i != 3) {
                if (i == 4) {
                    inAppMessageContent = (InAppMessageContent) c02221.L$2;
                    inAppMessage = (InAppMessage) c02221.L$1;
                    inAppDisplayer = (InAppDisplayer) c02221.L$0;
                    ResultKt.throwOnFailure(obj);
                    c02221.L$0 = null;
                    c02221.L$1 = null;
                    c02221.L$2 = null;
                    c02221.label = 5;
                    if (inAppDisplayer.showMessageContent(inAppMessage, inAppMessageContent, c02221) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 5) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }

    @Override // com.onesignal.inAppMessages.internal.display.IInAppDisplayer
    public void dismissCurrentInAppMessage() {
        Logging.debug$default("WebViewManager IAM dismissAndAwaitNextMessage lastInstance: " + this.lastInstance, null, 2, null);
        WebViewManager webViewManager = this.lastInstance;
        if (webViewManager != null) {
            Intrinsics.checkNotNull(webViewManager);
            webViewManager.backgroundDismissAndAwaitNextMessage();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    public final Object initInAppMessage(Activity activity, InAppMessage inAppMessage, InAppMessageContent inAppMessageContent, Continuation<? super Unit> continuation) {
        C02211 c02211;
        if (continuation instanceof C02211) {
            c02211 = (C02211) continuation;
            if ((c02211.label & Integer.MIN_VALUE) != 0) {
                c02211.label -= Integer.MIN_VALUE;
            } else {
                c02211 = new C02211(continuation);
            }
        } else {
            c02211 = new C02211(continuation);
        }
        Object obj = c02211.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02211.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                String contentHtml = inAppMessageContent.getContentHtml();
                Intrinsics.checkNotNull(contentHtml);
                Charset charsetForName = Charset.forName("UTF-8");
                Intrinsics.checkNotNullExpressionValue(charsetForName, "forName(charsetName)");
                byte[] bytes = contentHtml.getBytes(charsetForName);
                Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
                String strEncodeToString = Base64.encodeToString(bytes, 2);
                WebViewManager webViewManager = new WebViewManager(inAppMessage, activity, inAppMessageContent, this._lifecycle, this._applicationService, this._promptFactory);
                this.lastInstance = webViewManager;
                if (inAppMessageContent.getIsFullBleed()) {
                    webViewManager.setContentSafeAreaInsets(inAppMessageContent, activity);
                }
                MainCoroutineDispatcher main = Dispatchers.getMain();
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(webViewManager, activity, strEncodeToString, inAppMessageContent, null);
                c02211.label = 1;
                if (BuildersKt.withContext(main, anonymousClass2, c02211) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
        } catch (UnsupportedEncodingException e) {
            Logging.error("Catch on initInAppMessage: ", e);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.display.impl.InAppDisplayer$initInAppMessage$2, reason: invalid class name */
    /* JADX INFO: compiled from: InAppDisplayer.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.display.impl.InAppDisplayer$initInAppMessage$2", f = "InAppDisplayer.kt", i = {}, l = {148}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $base64Str;
        final /* synthetic */ InAppMessageContent $content;
        final /* synthetic */ Activity $currentActivity;
        final /* synthetic */ WebViewManager $webViewManager;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(WebViewManager webViewManager, Activity activity, String str, InAppMessageContent inAppMessageContent, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$webViewManager = webViewManager;
            this.$currentActivity = activity;
            this.$base64Str = str;
            this.$content = inAppMessageContent;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$webViewManager, this.$currentActivity, this.$base64Str, this.$content, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Exception {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    WebViewManager webViewManager = this.$webViewManager;
                    Activity activity = this.$currentActivity;
                    String base64Str = this.$base64Str;
                    Intrinsics.checkNotNullExpressionValue(base64Str, "base64Str");
                    this.label = 1;
                    if (webViewManager.setupWebView(activity, base64Str, this.$content.getIsFullBleed(), this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
            } catch (Exception e) {
                if (e.getMessage() != null) {
                    String message = e.getMessage();
                    Intrinsics.checkNotNull(message);
                    if (StringsKt.contains$default((CharSequence) message, (CharSequence) "No WebView installed", false, 2, (Object) null)) {
                        Logging.error("Error setting up WebView: ", e);
                    }
                }
                throw e;
            }
            return Unit.INSTANCE;
        }
    }
}
