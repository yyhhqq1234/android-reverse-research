package com.onesignal.inAppMessages.internal.display.impl;

import android.app.Activity;
import android.os.Build;
import android.webkit.JavascriptInterface;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import com.onesignal.common.AndroidUtils;
import com.onesignal.common.JSONObjectExtensionsKt;
import com.onesignal.common.ViewUtils;
import com.onesignal.common.threading.ThreadUtilsKt;
import com.onesignal.core.internal.application.IActivityLifecycleHandler;
import com.onesignal.core.internal.application.IApplicationService;
import com.onesignal.core.internal.database.impl.OneSignalDbContract;
import com.onesignal.debug.LogLevel;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.inAppMessages.BuildConfig;
import com.onesignal.inAppMessages.internal.InAppMessage;
import com.onesignal.inAppMessages.internal.InAppMessageClickResult;
import com.onesignal.inAppMessages.internal.InAppMessageContent;
import com.onesignal.inAppMessages.internal.InAppMessagePage;
import com.onesignal.inAppMessages.internal.lifecycle.IInAppLifecycleService;
import com.onesignal.inAppMessages.internal.prompt.IInAppMessagePromptFactory;
import java.util.Arrays;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.g3;
import org.json.y8;

/* JADX INFO: compiled from: WebViewManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0012\b\u0000\u0018\u0000 :2\u00020\u0001:\u0003:;<B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ\u0006\u0010\u001d\u001a\u00020\u001eJ\u0011\u0010\u001f\u001a\u00020\u001eH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010 J\u000e\u0010!\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020\u0010J\u0011\u0010#\u001a\u00020\u001eH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010 J\b\u0010$\u001a\u00020\u001eH\u0002J\u0010\u0010%\u001a\u00020\u00152\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\u0010\u0010&\u001a\u00020\u00152\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\u0010\u0010'\u001a\u00020\u001e2\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010(\u001a\u00020\u001e2\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010)\u001a\u00020\u00152\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010*\u001a\u00020+H\u0002J\u0016\u0010,\u001a\u00020\u001e2\u0006\u0010-\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0005J\u0012\u0010.\u001a\u00020\u001e2\b\u0010/\u001a\u0004\u0018\u00010\u0018H\u0002J\u0010\u00100\u001a\u00020\u001e2\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J)\u00101\u001a\u00020\u001e2\u0006\u00102\u001a\u00020\u00052\u0006\u00103\u001a\u00020\u00122\u0006\u00104\u001a\u00020\u0010H\u0087@ø\u0001\u0000¢\u0006\u0002\u00105J\u001b\u00106\u001a\u00020\u001e2\b\u00107\u001a\u0004\u0018\u00010\u0015H\u0082@ø\u0001\u0000¢\u0006\u0002\u00108J\u0011\u00109\u001a\u00020\u001eH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010 R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006="}, d2 = {"Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager;", "Lcom/onesignal/core/internal/application/IActivityLifecycleHandler;", OneSignalDbContract.NotificationTable.COLUMN_NAME_MESSAGE, "Lcom/onesignal/inAppMessages/internal/InAppMessage;", "activity", "Landroid/app/Activity;", "messageContent", "Lcom/onesignal/inAppMessages/internal/InAppMessageContent;", "_lifecycle", "Lcom/onesignal/inAppMessages/internal/lifecycle/IInAppLifecycleService;", "_applicationService", "Lcom/onesignal/core/internal/application/IApplicationService;", "_promptFactory", "Lcom/onesignal/inAppMessages/internal/prompt/IInAppMessagePromptFactory;", "(Lcom/onesignal/inAppMessages/internal/InAppMessage;Landroid/app/Activity;Lcom/onesignal/inAppMessages/internal/InAppMessageContent;Lcom/onesignal/inAppMessages/internal/lifecycle/IInAppLifecycleService;Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/inAppMessages/internal/prompt/IInAppMessagePromptFactory;)V", "closing", "", "currentActivityName", "", "dismissFired", "lastPageHeight", "", "Ljava/lang/Integer;", "messageView", "Lcom/onesignal/inAppMessages/internal/display/impl/InAppMessageView;", "messageViewMutex", "Lkotlinx/coroutines/sync/Mutex;", "webView", "Lcom/onesignal/inAppMessages/internal/display/impl/OSWebView;", "backgroundDismissAndAwaitNextMessage", "", "calculateHeightAndShowWebViewAfterNewActivity", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "createNewInAppMessageView", WebViewManager.IAM_DRAG_TO_DISMISS_DISABLED_KEY, "dismissAndAwaitNextMessage", "enableWebViewRemoteDebugging", "getWebViewMaxSizeX", "getWebViewMaxSizeY", "onActivityAvailable", "onActivityStopped", "pageRectToViewHeight", "jsonObject", "Lorg/json/JSONObject;", "setContentSafeAreaInsets", "content", "setMessageView", "view", "setWebViewToMaxSize", "setupWebView", "currentActivity", "base64Message", "isFullScreen", "(Landroid/app/Activity;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "showMessageView", "newHeight", "(Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateSafeAreaInsets", "Companion", "OSJavaScriptInterface", "Position", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class WebViewManager implements IActivityLifecycleHandler {
    public static final String EVENT_TYPE_ACTION_TAKEN = "action_taken";
    public static final String EVENT_TYPE_KEY = "type";
    public static final String EVENT_TYPE_PAGE_CHANGE = "page_change";
    public static final String EVENT_TYPE_RENDERING_COMPLETE = "rendering_complete";
    public static final String EVENT_TYPE_RESIZE = "resize";
    public static final String GET_PAGE_META_DATA_JS_FUNCTION = "getPageMetaData()";
    public static final String IAM_DISPLAY_LOCATION_KEY = "displayLocation";
    public static final String IAM_DRAG_TO_DISMISS_DISABLED_KEY = "dragToDismissDisabled";
    public static final String IAM_PAGE_META_DATA_KEY = "pageMetaData";
    public static final String JS_OBJ_NAME = "OSAndroid";
    public static final String SAFE_AREA_JS_OBJECT = "{\n   top: %d,\n   bottom: %d,\n   right: %d,\n   left: %d,\n}";
    public static final String SET_SAFE_AREA_INSETS_JS_FUNCTION = "setSafeAreaInsets(%s)";
    public static final String SET_SAFE_AREA_INSETS_SCRIPT = "\n\n<script>\n    setSafeAreaInsets(%s);\n</script>";
    private final IApplicationService _applicationService;
    private final IInAppLifecycleService _lifecycle;
    private final IInAppMessagePromptFactory _promptFactory;
    private Activity activity;
    private boolean closing;
    private String currentActivityName;
    private boolean dismissFired;
    private Integer lastPageHeight;
    private final InAppMessage message;
    private final InAppMessageContent messageContent;
    private InAppMessageView messageView;
    private final Mutex messageViewMutex;
    private OSWebView webView;
    private static final int MARGIN_PX_SIZE = ViewUtils.INSTANCE.dpToPx(24);

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.display.impl.WebViewManager$calculateHeightAndShowWebViewAfterNewActivity$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: WebViewManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.display.impl.WebViewManager", f = "WebViewManager.kt", i = {1, 2}, l = {219, 224, 230}, m = "calculateHeightAndShowWebViewAfterNewActivity", n = {"this", "this"}, s = {"L$0", "L$0"})
    static final class C02281 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02281(Continuation<? super C02281> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return WebViewManager.this.calculateHeightAndShowWebViewAfterNewActivity(this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.display.impl.WebViewManager$dismissAndAwaitNextMessage$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: WebViewManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.display.impl.WebViewManager", f = "WebViewManager.kt", i = {0}, l = {g3.a.b.INSTANCE_SHOW_FAILED}, m = "dismissAndAwaitNextMessage", n = {"this"}, s = {"L$0"})
    static final class C02301 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02301(Continuation<? super C02301> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return WebViewManager.this.dismissAndAwaitNextMessage(this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.display.impl.WebViewManager$setupWebView$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: WebViewManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.display.impl.WebViewManager", f = "WebViewManager.kt", i = {0, 0, 0}, l = {327}, m = "setupWebView", n = {"this", "currentActivity", "base64Message"}, s = {"L$0", "L$1", "L$2"})
    static final class C02321 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C02321(Continuation<? super C02321> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return WebViewManager.this.setupWebView(null, null, false, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.display.impl.WebViewManager$showMessageView$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: WebViewManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.display.impl.WebViewManager", f = "WebViewManager.kt", i = {0, 0, 0, 1, 1, 2, 2, 3}, l = {469, 294, 297, 298}, m = "showMessageView", n = {"this", "newHeight", "$this$withLock_u24default$iv", "this", "$this$withLock_u24default$iv", "this", "$this$withLock_u24default$iv", "$this$withLock_u24default$iv"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$0", "L$1", "L$0"})
    static final class C02331 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C02331(Continuation<? super C02331> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return WebViewManager.this.showMessageView(null, this);
        }
    }

    public WebViewManager(InAppMessage message, Activity activity, InAppMessageContent messageContent, IInAppLifecycleService _lifecycle, IApplicationService _applicationService, IInAppMessagePromptFactory _promptFactory) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(messageContent, "messageContent");
        Intrinsics.checkNotNullParameter(_lifecycle, "_lifecycle");
        Intrinsics.checkNotNullParameter(_applicationService, "_applicationService");
        Intrinsics.checkNotNullParameter(_promptFactory, "_promptFactory");
        this.message = message;
        this.activity = activity;
        this.messageContent = messageContent;
        this._lifecycle = _lifecycle;
        this._applicationService = _applicationService;
        this._promptFactory = _promptFactory;
        this.messageViewMutex = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX INFO: compiled from: WebViewManager.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0080\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;", "", "(Ljava/lang/String;I)V", y8.v, "", "()Z", "TOP_BANNER", "BOTTOM_BANNER", "CENTER_MODAL", "FULL_SCREEN", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
    public enum Position {
        TOP_BANNER,
        BOTTOM_BANNER,
        CENTER_MODAL,
        FULL_SCREEN;

        /* JADX INFO: compiled from: WebViewManager.kt */
        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[Position.values().length];
                iArr[Position.TOP_BANNER.ordinal()] = 1;
                iArr[Position.BOTTOM_BANNER.ordinal()] = 2;
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public final boolean isBanner() {
            int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
            return i == 1 || i == 2;
        }
    }

    /* JADX INFO: compiled from: WebViewManager.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\b\u0080\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\u000e\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007¨\u0006\u0012"}, d2 = {"Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$OSJavaScriptInterface;", "", "(Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager;)V", "getDisplayLocation", "Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;", "jsonObject", "Lorg/json/JSONObject;", "getDragToDismissDisabled", "", "getPageHeightData", "", "handleActionTaken", "", "handlePageChange", "handleRenderComplete", "postMessage", OneSignalDbContract.NotificationTable.COLUMN_NAME_MESSAGE, "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
    public final class OSJavaScriptInterface {
        public OSJavaScriptInterface() {
        }

        @JavascriptInterface
        public final void postMessage(String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            try {
                Logging.debug$default("OSJavaScriptInterface:postMessage: " + message, null, 2, null);
                JSONObject jSONObject = new JSONObject(message);
                String string = jSONObject.getString("type");
                if (string != null) {
                    switch (string.hashCode()) {
                        case -1484226720:
                            if (string.equals(WebViewManager.EVENT_TYPE_PAGE_CHANGE)) {
                                handlePageChange(jSONObject);
                            }
                            break;
                        case -934437708:
                            string.equals(WebViewManager.EVENT_TYPE_RESIZE);
                            break;
                        case 42998156:
                            if (string.equals(WebViewManager.EVENT_TYPE_RENDERING_COMPLETE)) {
                                handleRenderComplete(jSONObject);
                            }
                            break;
                        case 1851145598:
                            if (string.equals(WebViewManager.EVENT_TYPE_ACTION_TAKEN)) {
                                InAppMessageView inAppMessageView = WebViewManager.this.messageView;
                                boolean z = false;
                                if (inAppMessageView != null && !inAppMessageView.getIsDragging()) {
                                    z = true;
                                }
                                if (z) {
                                    handleActionTaken(jSONObject);
                                }
                            }
                            break;
                        default:
                            break;
                    }
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }

        private final void handleRenderComplete(JSONObject jsonObject) {
            Position displayLocation = getDisplayLocation(jsonObject);
            int pageHeightData = displayLocation == Position.FULL_SCREEN ? -1 : getPageHeightData(jsonObject);
            boolean dragToDismissDisabled = getDragToDismissDisabled(jsonObject);
            WebViewManager.this.messageContent.setDisplayLocation(displayLocation);
            WebViewManager.this.messageContent.setPageHeight(pageHeightData);
            WebViewManager.this.createNewInAppMessageView(dragToDismissDisabled);
        }

        private final int getPageHeightData(JSONObject jsonObject) {
            try {
                WebViewManager webViewManager = WebViewManager.this;
                Activity activity = webViewManager.activity;
                JSONObject jSONObject = jsonObject.getJSONObject(WebViewManager.IAM_PAGE_META_DATA_KEY);
                Intrinsics.checkNotNullExpressionValue(jSONObject, "jsonObject.getJSONObject(IAM_PAGE_META_DATA_KEY)");
                return webViewManager.pageRectToViewHeight(activity, jSONObject);
            } catch (JSONException unused) {
                return -1;
            }
        }

        private final Position getDisplayLocation(JSONObject jsonObject) {
            Position position = Position.FULL_SCREEN;
            try {
                if (!jsonObject.has(WebViewManager.IAM_DISPLAY_LOCATION_KEY) || Intrinsics.areEqual(jsonObject.get(WebViewManager.IAM_DISPLAY_LOCATION_KEY), "")) {
                    return position;
                }
                String strOptString = jsonObject.optString(WebViewManager.IAM_DISPLAY_LOCATION_KEY, "FULL_SCREEN");
                Intrinsics.checkNotNullExpressionValue(strOptString, "jsonObject.optString(\n  …                        )");
                Locale locale = Locale.getDefault();
                Intrinsics.checkNotNullExpressionValue(locale, "getDefault()");
                String upperCase = strOptString.toUpperCase(locale);
                Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
                return Position.valueOf(upperCase);
            } catch (JSONException e) {
                e.printStackTrace();
                return position;
            }
        }

        private final boolean getDragToDismissDisabled(JSONObject jsonObject) {
            try {
                return jsonObject.getBoolean(WebViewManager.IAM_DRAG_TO_DISMISS_DISABLED_KEY);
            } catch (JSONException unused) {
                return false;
            }
        }

        private final void handleActionTaken(JSONObject jsonObject) throws JSONException {
            JSONObject body = jsonObject.getJSONObject(y8.h.E0);
            Intrinsics.checkNotNullExpressionValue(body, "body");
            String strSafeString = JSONObjectExtensionsKt.safeString(body, "id");
            WebViewManager.this.closing = body.getBoolean("close");
            if (WebViewManager.this.message.getIsPreview()) {
                WebViewManager.this._lifecycle.messageActionOccurredOnPreview(WebViewManager.this.message, new InAppMessageClickResult(body, WebViewManager.this._promptFactory));
            } else if (strSafeString != null) {
                WebViewManager.this._lifecycle.messageActionOccurredOnMessage(WebViewManager.this.message, new InAppMessageClickResult(body, WebViewManager.this._promptFactory));
            }
            if (WebViewManager.this.closing) {
                WebViewManager.this.backgroundDismissAndAwaitNextMessage();
            }
        }

        private final void handlePageChange(JSONObject jsonObject) throws JSONException {
            WebViewManager.this._lifecycle.messagePageChanged(WebViewManager.this.message, new InAppMessagePage(jsonObject));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int pageRectToViewHeight(Activity activity, JSONObject jsonObject) {
        try {
            int iDpToPx = ViewUtils.INSTANCE.dpToPx(jsonObject.getJSONObject("rect").getInt("height"));
            Logging.debug$default("getPageHeightData:pxHeight: " + iDpToPx, null, 2, null);
            int webViewMaxSizeY = getWebViewMaxSizeY(activity);
            if (iDpToPx <= webViewMaxSizeY) {
                return iDpToPx;
            }
            Logging.debug$default("getPageHeightData:pxHeight is over screen max: " + webViewMaxSizeY, null, 2, null);
            return webViewMaxSizeY;
        } catch (JSONException e) {
            Logging.error("pageRectToViewHeight could not get page height", e);
            return -1;
        }
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.display.impl.WebViewManager$updateSafeAreaInsets$2, reason: invalid class name */
    /* JADX INFO: compiled from: WebViewManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.display.impl.WebViewManager$updateSafeAreaInsets$2", f = "WebViewManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return WebViewManager.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            int[] cutoutAndStatusBarInsets = ViewUtils.INSTANCE.getCutoutAndStatusBarInsets(WebViewManager.this.activity);
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String str = String.format(WebViewManager.SAFE_AREA_JS_OBJECT, Arrays.copyOf(new Object[]{Boxing.boxInt(cutoutAndStatusBarInsets[0]), Boxing.boxInt(cutoutAndStatusBarInsets[1]), Boxing.boxInt(cutoutAndStatusBarInsets[2]), Boxing.boxInt(cutoutAndStatusBarInsets[3])}, 4));
            Intrinsics.checkNotNullExpressionValue(str, "format(format, *args)");
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
            String str2 = String.format(WebViewManager.SET_SAFE_AREA_INSETS_JS_FUNCTION, Arrays.copyOf(new Object[]{str}, 1));
            Intrinsics.checkNotNullExpressionValue(str2, "format(format, *args)");
            OSWebView oSWebView = WebViewManager.this.webView;
            Intrinsics.checkNotNull(oSWebView);
            oSWebView.evaluateJavascript(str2, null);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object updateSafeAreaInsets(Continuation<? super Unit> continuation) throws Throwable {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new AnonymousClass2(null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:37:0x0092  */
    /* JADX WARN: Code duplicated, block: B:39:0x009c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:40:0x009d  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object calculateHeightAndShowWebViewAfterNewActivity(Continuation<? super Unit> continuation) {
        C02281 c02281;
        final WebViewManager webViewManager;
        WebViewManager webViewManager2;
        if (continuation instanceof C02281) {
            c02281 = (C02281) continuation;
            if ((c02281.label & Integer.MIN_VALUE) != 0) {
                c02281.label -= Integer.MIN_VALUE;
            } else {
                c02281 = new C02281(continuation);
            }
        } else {
            c02281 = new C02281(continuation);
        }
        Object obj = c02281.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02281.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            InAppMessageView inAppMessageView = this.messageView;
            if (inAppMessageView == null) {
                return Unit.INSTANCE;
            }
            Intrinsics.checkNotNull(inAppMessageView);
            if (inAppMessageView.getDisplayPosition() == Position.FULL_SCREEN && !this.messageContent.getIsFullBleed()) {
                c02281.label = 1;
                if (showMessageView(null, c02281) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            }
            Logging.debug$default("In app message new activity, calculate height and show ", null, 2, null);
            IApplicationService iApplicationService = this._applicationService;
            c02281.L$0 = this;
            c02281.label = 2;
            if (iApplicationService.waitUntilActivityReady(c02281) == coroutine_suspended) {
                return coroutine_suspended;
            }
            webViewManager = this;
            webViewManager.setWebViewToMaxSize(webViewManager.activity);
            if (webViewManager.messageContent.getIsFullBleed()) {
                c02281.L$0 = webViewManager;
                c02281.label = 3;
                if (webViewManager.updateSafeAreaInsets(c02281) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                webViewManager2 = webViewManager;
                webViewManager = webViewManager2;
            }
        } else {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            if (i == 2) {
                webViewManager = (WebViewManager) c02281.L$0;
                ResultKt.throwOnFailure(obj);
                webViewManager.setWebViewToMaxSize(webViewManager.activity);
                if (webViewManager.messageContent.getIsFullBleed()) {
                    c02281.L$0 = webViewManager;
                    c02281.label = 3;
                    if (webViewManager.updateSafeAreaInsets(c02281) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    webViewManager2 = webViewManager;
                }
            } else {
                if (i != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                webViewManager2 = (WebViewManager) c02281.L$0;
                ResultKt.throwOnFailure(obj);
            }
            webViewManager = webViewManager2;
        }
        OSWebView oSWebView = webViewManager.webView;
        Intrinsics.checkNotNull(oSWebView);
        oSWebView.evaluateJavascript(GET_PAGE_META_DATA_JS_FUNCTION, new ValueCallback() { // from class: com.onesignal.inAppMessages.internal.display.impl.WebViewManager$$ExternalSyntheticLambda0
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj2) {
                WebViewManager.m459calculateHeightAndShowWebViewAfterNewActivity$lambda0(this.f$0, (String) obj2);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: calculateHeightAndShowWebViewAfterNewActivity$lambda-0, reason: not valid java name */
    public static final void m459calculateHeightAndShowWebViewAfterNewActivity$lambda0(WebViewManager this$0, String str) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            ThreadUtilsKt.suspendifyOnThread$default(0, new WebViewManager$calculateHeightAndShowWebViewAfterNewActivity$2$1(this$0, this$0.pageRectToViewHeight(this$0.activity, new JSONObject(str)), null), 1, null);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    @Override // com.onesignal.core.internal.application.IActivityLifecycleHandler
    public void onActivityAvailable(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        String str = this.currentActivityName;
        this.activity = activity;
        this.currentActivityName = activity.getLocalClassName();
        Logging.debug$default("In app message activity available currentActivityName: " + this.currentActivityName + " lastActivityName: " + str, null, 2, null);
        ThreadUtilsKt.suspendifyOnMain(new C02311(str, this, null));
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.display.impl.WebViewManager$onActivityAvailable$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: WebViewManager.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0002\u0010\u0002\n\u0000\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.display.impl.WebViewManager$onActivityAvailable$1", f = "WebViewManager.kt", i = {}, l = {254, 261, 265}, m = "invokeSuspend", n = {}, s = {})
    static final class C02311 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ String $lastActivityName;
        int label;
        final /* synthetic */ WebViewManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02311(String str, WebViewManager webViewManager, Continuation<? super C02311> continuation) {
            super(1, continuation);
            this.$lastActivityName = str;
            this.this$0 = webViewManager;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new C02311(this.$lastActivityName, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((C02311) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                String str = this.$lastActivityName;
                if (str == null) {
                    this.label = 1;
                    if (this.this$0.showMessageView(null, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (!Intrinsics.areEqual(str, this.this$0.currentActivityName)) {
                    if (!this.this$0.closing) {
                        if (this.this$0.messageView != null) {
                            InAppMessageView inAppMessageView = this.this$0.messageView;
                            Intrinsics.checkNotNull(inAppMessageView);
                            inAppMessageView.removeAllViews();
                        }
                        WebViewManager webViewManager = this.this$0;
                        this.label = 2;
                        if (webViewManager.showMessageView(webViewManager.lastPageHeight, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                } else {
                    this.label = 3;
                    if (this.this$0.calculateHeightAndShowWebViewAfterNewActivity(this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
            } else if (i == 1 || i == 2 || i == 3) {
                ResultKt.throwOnFailure(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return Unit.INSTANCE;
        }
    }

    @Override // com.onesignal.core.internal.application.IActivityLifecycleHandler
    public void onActivityStopped(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Logging.debug$default(StringsKt.trimIndent("\n            In app message activity stopped, cleaning views, currentActivityName: " + this.currentActivityName + "\n            activity: " + this.activity + "\n            messageView: " + this.messageView + "\n            "), null, 2, null);
        if (this.messageView == null || !Intrinsics.areEqual(activity.getLocalClassName(), this.currentActivityName)) {
            return;
        }
        InAppMessageView inAppMessageView = this.messageView;
        Intrinsics.checkNotNull(inAppMessageView);
        inAppMessageView.removeAllViews();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:49:0x00d3 A[Catch: all -> 0x005d, TryCatch #0 {all -> 0x005d, blocks: (B:15:0x0036, B:57:0x00f7, B:20:0x004b, B:52:0x00e4, B:54:0x00e8, B:23:0x0058, B:47:0x00cf, B:49:0x00d3, B:32:0x0087, B:34:0x008b, B:37:0x0096, B:39:0x00a9, B:41:0x00b5, B:43:0x00bb), top: B:64:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00e3 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:54:0x00e8 A[Catch: all -> 0x005d, TryCatch #0 {all -> 0x005d, blocks: (B:15:0x0036, B:57:0x00f7, B:20:0x004b, B:52:0x00e4, B:54:0x00e8, B:23:0x0058, B:47:0x00cf, B:49:0x00d3, B:32:0x0087, B:34:0x008b, B:37:0x0096, B:39:0x00a9, B:41:0x00b5, B:43:0x00bb), top: B:64:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x00f6 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:59:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    /* JADX WARN: Multi-variable type inference failed */
    public final Object showMessageView(Integer num, Continuation<? super Unit> continuation) {
        C02331 c02331;
        WebViewManager webViewManager;
        Integer num2;
        Mutex mutex;
        WebViewManager webViewManager2;
        InAppMessageView inAppMessageView;
        Activity activity;
        InAppMessageView inAppMessageView2;
        Unit unit;
        if (continuation instanceof C02331) {
            c02331 = (C02331) continuation;
            if ((c02331.label & Integer.MIN_VALUE) != 0) {
                c02331.label -= Integer.MIN_VALUE;
            } else {
                c02331 = new C02331(continuation);
            }
        } else {
            c02331 = new C02331(continuation);
        }
        Object obj = c02331.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02331.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Mutex mutex2 = this.messageViewMutex;
                c02331.L$0 = this;
                c02331.L$1 = num;
                c02331.L$2 = mutex2;
                c02331.label = 1;
                if (mutex2.lock(null, c02331) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                webViewManager = this;
                num2 = num;
                mutex = mutex2;
            } else {
                if (i == 1) {
                    mutex = (Mutex) c02331.L$2;
                    Integer num3 = (Integer) c02331.L$1;
                    webViewManager = (WebViewManager) c02331.L$0;
                    ResultKt.throwOnFailure(obj);
                    num2 = num3;
                } else {
                    if (i == 2) {
                        mutex = (Mutex) c02331.L$1;
                        webViewManager2 = (WebViewManager) c02331.L$0;
                        ResultKt.throwOnFailure(obj);
                        inAppMessageView = webViewManager2.messageView;
                        if (inAppMessageView != null) {
                            activity = webViewManager2.activity;
                            c02331.L$0 = webViewManager2;
                            c02331.L$1 = mutex;
                            c02331.L$2 = null;
                            c02331.label = 3;
                            if (inAppMessageView.showView(activity, c02331) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        }
                        inAppMessageView2 = webViewManager2.messageView;
                        if (inAppMessageView2 != null) {
                            c02331.L$0 = mutex;
                            c02331.L$1 = null;
                            c02331.L$2 = null;
                            c02331.label = 4;
                            if (inAppMessageView2.checkIfShouldDismiss(c02331) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        } else {
                            unit = null;
                        }
                        mutex.unlock(null);
                        return unit;
                    }
                    if (i == 3) {
                        mutex = (Mutex) c02331.L$1;
                        webViewManager2 = (WebViewManager) c02331.L$0;
                        ResultKt.throwOnFailure(obj);
                        inAppMessageView2 = webViewManager2.messageView;
                        if (inAppMessageView2 != null) {
                            c02331.L$0 = mutex;
                            c02331.L$1 = null;
                            c02331.L$2 = null;
                            c02331.label = 4;
                            if (inAppMessageView2.checkIfShouldDismiss(c02331) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        } else {
                            unit = null;
                        }
                        mutex.unlock(null);
                        return unit;
                    }
                    if (i != 4) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    mutex = (Mutex) c02331.L$0;
                    ResultKt.throwOnFailure(obj);
                }
                unit = Unit.INSTANCE;
                mutex.unlock(null);
                return unit;
            }
            if (webViewManager.messageView == null) {
                Logging.warn$default("No messageView found to update a with a new height.", null, 2, null);
                Unit unit2 = Unit.INSTANCE;
                mutex.unlock(null);
                return unit2;
            }
            Logging.debug$default("In app message, showing first one with height: " + num2, null, 2, null);
            InAppMessageView inAppMessageView3 = webViewManager.messageView;
            if (inAppMessageView3 != null) {
                OSWebView oSWebView = webViewManager.webView;
                Intrinsics.checkNotNull(oSWebView);
                inAppMessageView3.setWebView(oSWebView);
            }
            if (num2 != null) {
                webViewManager.lastPageHeight = num2;
                InAppMessageView inAppMessageView4 = webViewManager.messageView;
                if (inAppMessageView4 != null) {
                    int iIntValue = num2.intValue();
                    c02331.L$0 = webViewManager;
                    c02331.L$1 = mutex;
                    c02331.L$2 = null;
                    c02331.label = 2;
                    if (inAppMessageView4.updateHeight(iIntValue, c02331) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
            }
            webViewManager2 = webViewManager;
            inAppMessageView = webViewManager2.messageView;
            if (inAppMessageView != null) {
                activity = webViewManager2.activity;
                c02331.L$0 = webViewManager2;
                c02331.L$1 = mutex;
                c02331.L$2 = null;
                c02331.label = 3;
                if (inAppMessageView.showView(activity, c02331) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            inAppMessageView2 = webViewManager2.messageView;
            if (inAppMessageView2 != null) {
                c02331.L$0 = mutex;
                c02331.L$1 = null;
                c02331.L$2 = null;
                c02331.label = 4;
                if (inAppMessageView2.checkIfShouldDismiss(c02331) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            mutex.unlock(null);
            return unit;
        } catch (Throwable th) {
            num.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object setupWebView(Activity activity, String str, boolean z, Continuation<? super Unit> continuation) {
        C02321 c02321;
        WebViewManager webViewManager;
        if (continuation instanceof C02321) {
            c02321 = (C02321) continuation;
            if ((c02321.label & Integer.MIN_VALUE) != 0) {
                c02321.label -= Integer.MIN_VALUE;
            } else {
                c02321 = new C02321(continuation);
            }
        } else {
            c02321 = new C02321(continuation);
        }
        Object obj = c02321.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02321.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            enableWebViewRemoteDebugging();
            OSWebView oSWebView = new OSWebView(activity);
            this.webView = oSWebView;
            Intrinsics.checkNotNull(oSWebView);
            oSWebView.setOverScrollMode(2);
            OSWebView oSWebView2 = this.webView;
            Intrinsics.checkNotNull(oSWebView2);
            oSWebView2.setVerticalScrollBarEnabled(false);
            OSWebView oSWebView3 = this.webView;
            Intrinsics.checkNotNull(oSWebView3);
            oSWebView3.setHorizontalScrollBarEnabled(false);
            OSWebView oSWebView4 = this.webView;
            Intrinsics.checkNotNull(oSWebView4);
            oSWebView4.getSettings().setJavaScriptEnabled(true);
            OSWebView oSWebView5 = this.webView;
            Intrinsics.checkNotNull(oSWebView5);
            oSWebView5.addJavascriptInterface(new OSJavaScriptInterface(), JS_OBJ_NAME);
            if (z) {
                OSWebView oSWebView6 = this.webView;
                Intrinsics.checkNotNull(oSWebView6);
                oSWebView6.setSystemUiVisibility(3074);
                if (Build.VERSION.SDK_INT >= 30) {
                    OSWebView oSWebView7 = this.webView;
                    Intrinsics.checkNotNull(oSWebView7);
                    oSWebView7.setFitsSystemWindows(false);
                }
            }
            this._lifecycle.messageWillDisplay(this.message);
            IApplicationService iApplicationService = this._applicationService;
            c02321.L$0 = this;
            c02321.L$1 = activity;
            c02321.L$2 = str;
            c02321.label = 1;
            if (iApplicationService.waitUntilActivityReady(c02321) == coroutine_suspended) {
                return coroutine_suspended;
            }
            webViewManager = this;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str = (String) c02321.L$2;
            activity = (Activity) c02321.L$1;
            webViewManager = (WebViewManager) c02321.L$0;
            ResultKt.throwOnFailure(obj);
        }
        webViewManager.setWebViewToMaxSize(activity);
        OSWebView oSWebView8 = webViewManager.webView;
        Intrinsics.checkNotNull(oSWebView8);
        oSWebView8.loadData(str, "text/html; charset=utf-8", "base64");
        return Unit.INSTANCE;
    }

    private final void setWebViewToMaxSize(Activity activity) {
        OSWebView oSWebView = this.webView;
        Intrinsics.checkNotNull(oSWebView);
        oSWebView.layout(0, 0, getWebViewMaxSizeX(activity), getWebViewMaxSizeY(activity));
    }

    private final void setMessageView(InAppMessageView view) {
        this.messageView = view;
    }

    public final void createNewInAppMessageView(boolean dragToDismissDisabled) {
        this.lastPageHeight = Integer.valueOf(this.messageContent.getPageHeight());
        boolean manifestMetaBoolean = AndroidUtils.INSTANCE.getManifestMetaBoolean(this._applicationService.getAppContext(), "com.onesignal.inAppMessageHideGrayOverlay");
        OSWebView oSWebView = this.webView;
        Intrinsics.checkNotNull(oSWebView);
        setMessageView(new InAppMessageView(oSWebView, this.messageContent, dragToDismissDisabled, manifestMetaBoolean));
        InAppMessageView inAppMessageView = this.messageView;
        Intrinsics.checkNotNull(inAppMessageView);
        inAppMessageView.setMessageController(new InAppMessageView.InAppMessageViewListener() { // from class: com.onesignal.inAppMessages.internal.display.impl.WebViewManager.createNewInAppMessageView.1
            @Override // com.onesignal.inAppMessages.internal.display.impl.InAppMessageView.InAppMessageViewListener
            public void onMessageWasDisplayed() {
                WebViewManager.this._lifecycle.messageWasDisplayed(WebViewManager.this.message);
            }

            @Override // com.onesignal.inAppMessages.internal.display.impl.InAppMessageView.InAppMessageViewListener
            public void onMessageWillDismiss() {
                WebViewManager.this._lifecycle.messageWillDismiss(WebViewManager.this.message);
            }

            @Override // com.onesignal.inAppMessages.internal.display.impl.InAppMessageView.InAppMessageViewListener
            public void onMessageWasDismissed() {
                WebViewManager.this._lifecycle.messageWasDismissed(WebViewManager.this.message);
                WebViewManager.this._applicationService.removeActivityLifecycleHandler(this);
            }
        });
        this._applicationService.addActivityLifecycleHandler(this);
    }

    private final int getWebViewMaxSizeX(Activity activity) {
        if (this.messageContent.getIsFullBleed()) {
            return ViewUtils.INSTANCE.getFullbleedWindowWidth(activity);
        }
        return ViewUtils.INSTANCE.getWindowWidth(activity) - (MARGIN_PX_SIZE * 2);
    }

    private final int getWebViewMaxSizeY(Activity activity) {
        return ViewUtils.INSTANCE.getWindowHeight(activity) - (this.messageContent.getIsFullBleed() ? 0 : MARGIN_PX_SIZE * 2);
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.display.impl.WebViewManager$backgroundDismissAndAwaitNextMessage$1, reason: invalid class name */
    /* JADX INFO: compiled from: WebViewManager.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0002\u0010\u0002\n\u0000\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.display.impl.WebViewManager$backgroundDismissAndAwaitNextMessage$1", f = "WebViewManager.kt", i = {}, l = {387}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return WebViewManager.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (WebViewManager.this.dismissAndAwaitNextMessage(this) == coroutine_suspended) {
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

    public final void backgroundDismissAndAwaitNextMessage() {
        ThreadUtilsKt.suspendifyOnThread$default(0, new AnonymousClass1(null), 1, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object dismissAndAwaitNextMessage(Continuation<? super Unit> continuation) {
        C02301 c02301;
        WebViewManager webViewManager;
        if (continuation instanceof C02301) {
            c02301 = (C02301) continuation;
            if ((c02301.label & Integer.MIN_VALUE) != 0) {
                c02301.label -= Integer.MIN_VALUE;
            } else {
                c02301 = new C02301(continuation);
            }
        } else {
            c02301 = new C02301(continuation);
        }
        Object obj = c02301.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02301.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            InAppMessageView inAppMessageView = this.messageView;
            if (inAppMessageView == null || this.dismissFired) {
                return Unit.INSTANCE;
            }
            this.dismissFired = true;
            this._lifecycle.messageWillDismiss(this.message);
            c02301.L$0 = this;
            c02301.label = 1;
            if (inAppMessageView.dismissAndAwaitNextMessage(c02301) == coroutine_suspended) {
                return coroutine_suspended;
            }
            webViewManager = this;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            webViewManager = (WebViewManager) c02301.L$0;
            ResultKt.throwOnFailure(obj);
        }
        webViewManager.dismissFired = false;
        webViewManager.setMessageView(null);
        return Unit.INSTANCE;
    }

    public final void setContentSafeAreaInsets(InAppMessageContent content, Activity activity) {
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(activity, "activity");
        String contentHtml = content.getContentHtml();
        int[] cutoutAndStatusBarInsets = ViewUtils.INSTANCE.getCutoutAndStatusBarInsets(activity);
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String str = String.format(SAFE_AREA_JS_OBJECT, Arrays.copyOf(new Object[]{Integer.valueOf(cutoutAndStatusBarInsets[0]), Integer.valueOf(cutoutAndStatusBarInsets[1]), Integer.valueOf(cutoutAndStatusBarInsets[2]), Integer.valueOf(cutoutAndStatusBarInsets[3])}, 4));
        Intrinsics.checkNotNullExpressionValue(str, "format(format, *args)");
        StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
        String str2 = String.format(SET_SAFE_AREA_INSETS_SCRIPT, Arrays.copyOf(new Object[]{str}, 1));
        Intrinsics.checkNotNullExpressionValue(str2, "format(format, *args)");
        content.setContentHtml(contentHtml + str2);
    }

    private final void enableWebViewRemoteDebugging() {
        if (Logging.atLogLevel(LogLevel.DEBUG)) {
            WebView.setWebContentsDebuggingEnabled(true);
        }
    }
}
