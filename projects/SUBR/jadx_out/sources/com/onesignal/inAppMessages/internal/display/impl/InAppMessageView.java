package com.onesignal.inAppMessages.internal.display.impl;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.Animation;
import android.webkit.WebView;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import androidx.cardview.widget.CardView;
import androidx.core.widget.PopupWindowCompat;
import com.onesignal.common.AndroidUtils;
import com.onesignal.common.ViewUtils;
import com.onesignal.common.threading.ThreadUtilsKt;
import com.onesignal.common.threading.Waiter;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.inAppMessages.BuildConfig;
import com.onesignal.inAppMessages.internal.InAppMessageContent;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Dispatchers;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: compiled from: InAppMessageView.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000¤\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0000\u0018\u0000 l2\u00020\u0001:\u0002lmB'\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0002\u0010\tJ\u0019\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010/J2\u00100\u001a\u0002012\u0006\u0010-\u001a\u00020.2\u0006\u00102\u001a\u00020\u00142\u0006\u00103\u001a\u00020\u00142\u0006\u00104\u001a\u00020\u00142\b\u00105\u001a\u0004\u0018\u000106H\u0002J \u00107\u001a\u00020,2\u0006\u00108\u001a\u00020.2\u0006\u00109\u001a\u00020\u00142\u0006\u0010:\u001a\u00020;H\u0002J*\u0010<\u001a\u00020,2\u0006\u00108\u001a\u00020.2\u0006\u0010-\u001a\u00020.2\u0006\u0010:\u001a\u00020;2\b\u0010=\u001a\u0004\u0018\u000106H\u0002J \u0010>\u001a\u00020,2\u0006\u0010?\u001a\u00020\u00102\u0006\u00108\u001a\u00020.2\u0006\u0010-\u001a\u00020.H\u0002J \u0010@\u001a\u00020,2\u0006\u00108\u001a\u00020.2\u0006\u00109\u001a\u00020\u00142\u0006\u0010:\u001a\u00020;H\u0002J\u0011\u0010A\u001a\u00020,H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010BJ\b\u0010C\u001a\u00020,H\u0002J\u0010\u0010D\u001a\u00020;2\u0006\u0010E\u001a\u00020FH\u0002J\u0010\u0010G\u001a\u00020F2\u0006\u0010H\u001a\u00020IH\u0002J \u0010J\u001a\u00020K2\u0006\u0010$\u001a\u00020\u00142\u0006\u0010?\u001a\u00020\u00102\u0006\u0010L\u001a\u00020\u0007H\u0002J\b\u0010M\u001a\u00020NH\u0002J\u0010\u0010O\u001a\u00020,2\u0006\u0010&\u001a\u00020'H\u0002J\u0019\u0010P\u001a\u00020,2\u0006\u0010\u000b\u001a\u00020\fH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010QJ\b\u0010R\u001a\u00020,H\u0002J\u0011\u0010S\u001a\u00020,H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010BJ\u0011\u0010T\u001a\u00020,H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010BJ\u0010\u0010U\u001a\u00020\u00072\u0006\u0010H\u001a\u00020IH\u0002J\b\u0010V\u001a\u00020\u0014H\u0002J\u0006\u0010W\u001a\u00020,J\u0010\u0010X\u001a\u00020,2\u0006\u0010Y\u001a\u00020\u0005H\u0002J\u0010\u0010Z\u001a\u00020,2\b\u0010\"\u001a\u0004\u0018\u00010#J\"\u0010[\u001a\u00020,2\u0006\u0010H\u001a\u00020I2\b\u0010\\\u001a\u0004\u0018\u00010N2\u0006\u0010]\u001a\u00020KH\u0002J\u0010\u0010^\u001a\u00020,2\u0006\u0010H\u001a\u00020IH\u0002J\u000e\u0010_\u001a\u00020,2\u0006\u0010\u0002\u001a\u00020\u0003J3\u0010`\u001a\u00020,2\u0006\u0010?\u001a\u00020\u00102\u0006\u0010\\\u001a\u00020N2\b\u0010a\u001a\u0004\u0018\u00010N2\u0006\u0010b\u001a\u00020KH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010cJ\u001b\u0010d\u001a\u00020,2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010QJ\u0019\u0010e\u001a\u00020,2\u0006\u0010f\u001a\u00020\fH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010QJ\u0011\u0010g\u001a\u00020,H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010BJ\b\u0010h\u001a\u00020iH\u0016J\u0019\u0010j\u001a\u00020,2\u0006\u0010$\u001a\u00020\u0014H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010kR\u000e\u0010\n\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u000f\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u00148BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0007@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u000e\u0010\u001e\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0014X\u0082D¢\u0006\u0002\n\u0000R\u0010\u0010&\u001a\u0004\u0018\u00010'X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006n"}, d2 = {"Lcom/onesignal/inAppMessages/internal/display/impl/InAppMessageView;", "", "webView", "Landroid/webkit/WebView;", "messageContent", "Lcom/onesignal/inAppMessages/internal/InAppMessageContent;", "disableDragDismiss", "", "hideGrayOverlay", "(Landroid/webkit/WebView;Lcom/onesignal/inAppMessages/internal/InAppMessageContent;ZZ)V", "cancelDismissTimer", "currentActivity", "Landroid/app/Activity;", "displayDuration", "", "displayPosition", "Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;", "getDisplayPosition", "()Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;", "displayYSize", "", "getDisplayYSize", "()I", "draggableRelativeLayout", "Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout;", "hasBackground", "isDismissTimerSet", "<set-?>", "isDragging", "()Z", "marginPxSizeBottom", "marginPxSizeLeft", "marginPxSizeRight", "marginPxSizeTop", "messageController", "Lcom/onesignal/inAppMessages/internal/display/impl/InAppMessageView$InAppMessageViewListener;", "pageHeight", "pageWidth", "parentRelativeLayout", "Landroid/widget/RelativeLayout;", "popupWindow", "Landroid/widget/PopupWindow;", "shouldDismissWhenActive", "animateAndDismissLayout", "", "backgroundView", "Landroid/view/View;", "(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "animateBackgroundColor", "Landroid/animation/ValueAnimator;", IronSourceConstants.EVENTS_DURATION, "startColor", "endColor", "animCallback", "Landroid/animation/Animator$AnimatorListener;", "animateBottom", "messageView", "height", "cardViewAnimCallback", "Landroid/view/animation/Animation$AnimationListener;", "animateCenter", "backgroundAnimCallback", "animateInAppMessage", WebViewManager.IAM_DISPLAY_LOCATION_KEY, "animateTop", "checkIfShouldDismiss", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "cleanupViewsAfterDismiss", "createAnimationListener", "messageViewCardView", "Landroidx/cardview/widget/CardView;", "createCardView", "context", "Landroid/content/Context;", "createDraggableLayoutParams", "Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout$Params;", "disableDragging", "createParentRelativeLayoutParams", "Landroid/widget/RelativeLayout$LayoutParams;", "createPopupWindow", "delayShowUntilAvailable", "(Landroid/app/Activity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "dereferenceViews", "dismissAndAwaitNextMessage", "finishAfterDelay", "getHideDropShadow", "getOverlayColor", "removeAllViews", "setMarginsFromContent", "content", "setMessageController", "setUpDraggableLayout", "relativeLayoutParams", "draggableParams", "setUpParentRelativeLayout", "setWebView", "showDraggableView", "draggableRelativeLayoutParams", "webViewLayoutParams", "(Lcom/onesignal/inAppMessages/internal/display/impl/WebViewManager$Position;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout$Params;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "showInAppMessageView", "showView", "activity", "startDismissTimerIfNeeded", "toString", "", "updateHeight", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "InAppMessageViewListener", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class InAppMessageView {
    private static final int ACTIVITY_BACKGROUND_COLOR_EMPTY = 0;
    private static final int ACTIVITY_FINISH_AFTER_DISMISS_DELAY_MS = 600;
    private static final int ACTIVITY_INIT_DELAY = 200;
    private static final int IN_APP_BACKGROUND_ANIMATION_DURATION_MS = 400;
    private static final int IN_APP_BANNER_ANIMATION_DURATION_MS = 1000;
    private static final int IN_APP_CENTER_ANIMATION_DURATION_MS = 1000;
    private static final String IN_APP_MESSAGE_CARD_VIEW_TAG = "IN_APP_MESSAGE_CARD_VIEW_TAG";
    private boolean cancelDismissTimer;
    private Activity currentActivity;
    private final boolean disableDragDismiss;
    private final double displayDuration;
    private final WebViewManager.Position displayPosition;
    private DraggableRelativeLayout draggableRelativeLayout;
    private final boolean hasBackground;
    private final boolean hideGrayOverlay;
    private boolean isDismissTimerSet;
    private boolean isDragging;
    private int marginPxSizeBottom;
    private int marginPxSizeLeft;
    private int marginPxSizeRight;
    private int marginPxSizeTop;
    private final InAppMessageContent messageContent;
    private InAppMessageViewListener messageController;
    private int pageHeight;
    private final int pageWidth;
    private RelativeLayout parentRelativeLayout;
    private PopupWindow popupWindow;
    private boolean shouldDismissWhenActive;
    private WebView webView;
    private static final int ACTIVITY_BACKGROUND_COLOR_FULL = Color.parseColor("#BB000000");
    private static final int DRAG_THRESHOLD_PX_SIZE = ViewUtils.INSTANCE.dpToPx(4);

    /* JADX INFO: compiled from: InAppMessageView.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b`\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\b\u0010\u0005\u001a\u00020\u0003H&¨\u0006\u0006"}, d2 = {"Lcom/onesignal/inAppMessages/internal/display/impl/InAppMessageView$InAppMessageViewListener;", "", "onMessageWasDismissed", "", "onMessageWasDisplayed", "onMessageWillDismiss", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
    public interface InAppMessageViewListener {
        void onMessageWasDismissed();

        void onMessageWasDisplayed();

        void onMessageWillDismiss();
    }

    /* JADX INFO: compiled from: InAppMessageView.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[WebViewManager.Position.values().length];
            iArr[WebViewManager.Position.TOP_BANNER.ordinal()] = 1;
            iArr[WebViewManager.Position.BOTTOM_BANNER.ordinal()] = 2;
            iArr[WebViewManager.Position.CENTER_MODAL.ordinal()] = 3;
            iArr[WebViewManager.Position.FULL_SCREEN.ordinal()] = 4;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.display.impl.InAppMessageView$delayShowUntilAvailable$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InAppMessageView.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.display.impl.InAppMessageView", f = "InAppMessageView.kt", i = {1, 1}, l = {440, 444, 445}, m = "delayShowUntilAvailable", n = {"this", "currentActivity"}, s = {"L$0", "L$1"})
    static final class C02231 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C02231(Continuation<? super C02231> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return InAppMessageView.this.delayShowUntilAvailable(null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.display.impl.InAppMessageView$startDismissTimerIfNeeded$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InAppMessageView.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.display.impl.InAppMessageView", f = "InAppMessageView.kt", i = {0, 1}, l = {418, 429}, m = "startDismissTimerIfNeeded", n = {"this", "this"}, s = {"L$0", "L$0"})
    static final class C02261 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02261(Continuation<? super C02261> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return InAppMessageView.this.startDismissTimerIfNeeded(this);
        }
    }

    public InAppMessageView(WebView webView, InAppMessageContent messageContent, boolean z, boolean z2) {
        double dDoubleValue;
        Intrinsics.checkNotNullParameter(messageContent, "messageContent");
        this.webView = webView;
        this.messageContent = messageContent;
        this.disableDragDismiss = z;
        this.hideGrayOverlay = z2;
        this.pageWidth = -1;
        this.pageHeight = messageContent.getPageHeight();
        this.marginPxSizeLeft = ViewUtils.INSTANCE.dpToPx(24);
        this.marginPxSizeRight = ViewUtils.INSTANCE.dpToPx(24);
        this.marginPxSizeTop = ViewUtils.INSTANCE.dpToPx(24);
        this.marginPxSizeBottom = ViewUtils.INSTANCE.dpToPx(24);
        WebViewManager.Position displayLocation = messageContent.getDisplayLocation();
        Intrinsics.checkNotNull(displayLocation);
        this.displayPosition = displayLocation;
        if (messageContent.getDisplayDuration() == null) {
            dDoubleValue = 0.0d;
        } else {
            Double displayDuration = messageContent.getDisplayDuration();
            Intrinsics.checkNotNull(displayDuration);
            dDoubleValue = displayDuration.doubleValue();
        }
        this.displayDuration = dDoubleValue;
        this.hasBackground = !displayLocation.isBanner();
        setMarginsFromContent(messageContent);
    }

    public final WebViewManager.Position getDisplayPosition() {
        return this.displayPosition;
    }

    /* JADX INFO: renamed from: isDragging, reason: from getter */
    public final boolean getIsDragging() {
        return this.isDragging;
    }

    private final void setMarginsFromContent(InAppMessageContent content) {
        this.marginPxSizeTop = content.getUseHeightMargin() ? ViewUtils.INSTANCE.dpToPx(24) : 0;
        this.marginPxSizeBottom = content.getUseHeightMargin() ? ViewUtils.INSTANCE.dpToPx(24) : 0;
        this.marginPxSizeLeft = content.getUseWidthMargin() ? ViewUtils.INSTANCE.dpToPx(24) : 0;
        this.marginPxSizeRight = content.getUseWidthMargin() ? ViewUtils.INSTANCE.dpToPx(24) : 0;
    }

    public final void setWebView(WebView webView) {
        Intrinsics.checkNotNullParameter(webView, "webView");
        this.webView = webView;
        if (webView != null) {
            webView.setBackgroundColor(0);
        }
    }

    public final void setMessageController(InAppMessageViewListener messageController) {
        this.messageController = messageController;
    }

    public final Object showView(Activity activity, Continuation<? super Unit> continuation) {
        Object objDelayShowUntilAvailable = delayShowUntilAvailable(activity, continuation);
        return objDelayShowUntilAvailable == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objDelayShowUntilAvailable : Unit.INSTANCE;
    }

    public final Object checkIfShouldDismiss(Continuation<? super Unit> continuation) throws Throwable {
        if (this.shouldDismissWhenActive) {
            this.shouldDismissWhenActive = false;
            Object objFinishAfterDelay = finishAfterDelay(continuation);
            return objFinishAfterDelay == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objFinishAfterDelay : Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }

    public final Object updateHeight(int i, Continuation<? super Unit> continuation) throws Throwable {
        this.pageHeight = i;
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new C02272(i, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.display.impl.InAppMessageView$updateHeight$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InAppMessageView.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.display.impl.InAppMessageView$updateHeight$2", f = "InAppMessageView.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02272 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $pageHeight;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02272(int i, Continuation<? super C02272> continuation) {
            super(2, continuation);
            this.$pageHeight = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return InAppMessageView.this.new C02272(this.$pageHeight, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02272) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            if (InAppMessageView.this.webView != null) {
                WebView webView = InAppMessageView.this.webView;
                Intrinsics.checkNotNull(webView);
                ViewGroup.LayoutParams layoutParams = webView.getLayoutParams();
                if (layoutParams == null) {
                    Logging.warn$default("WebView height update skipped because of null layoutParams, new height will be used once it is displayed.", null, 2, null);
                    return Unit.INSTANCE;
                }
                layoutParams.height = this.$pageHeight;
                WebView webView2 = InAppMessageView.this.webView;
                Intrinsics.checkNotNull(webView2);
                webView2.setLayoutParams(layoutParams);
                if (InAppMessageView.this.draggableRelativeLayout != null) {
                    DraggableRelativeLayout draggableRelativeLayout = InAppMessageView.this.draggableRelativeLayout;
                    Intrinsics.checkNotNull(draggableRelativeLayout);
                    InAppMessageView inAppMessageView = InAppMessageView.this;
                    draggableRelativeLayout.setParams(inAppMessageView.createDraggableLayoutParams(this.$pageHeight, inAppMessageView.getDisplayPosition(), InAppMessageView.this.disableDragDismiss));
                }
                return Unit.INSTANCE;
            }
            Logging.warn$default("WebView height update skipped, new height will be used once it is displayed.", null, 2, null);
            return Unit.INSTANCE;
        }
    }

    public final Object showInAppMessageView(Activity activity, Continuation<? super Unit> continuation) throws Throwable {
        this.currentActivity = activity;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, this.pageHeight);
        layoutParams.addRule(13);
        RelativeLayout.LayoutParams layoutParamsCreateParentRelativeLayoutParams = this.hasBackground ? createParentRelativeLayoutParams() : null;
        WebViewManager.Position position = this.displayPosition;
        Object objShowDraggableView = showDraggableView(position, layoutParams, layoutParamsCreateParentRelativeLayoutParams, createDraggableLayoutParams(this.pageHeight, position, this.disableDragDismiss), continuation);
        return objShowDraggableView == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objShowDraggableView : Unit.INSTANCE;
    }

    private final int getDisplayYSize() {
        ViewUtils viewUtils = ViewUtils.INSTANCE;
        Activity activity = this.currentActivity;
        Intrinsics.checkNotNull(activity);
        return viewUtils.getWindowHeight(activity);
    }

    private final RelativeLayout.LayoutParams createParentRelativeLayoutParams() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(this.pageWidth, -1);
        int i = WhenMappings.$EnumSwitchMapping$0[this.displayPosition.ordinal()];
        if (i == 1) {
            layoutParams.addRule(10);
            layoutParams.addRule(14);
        } else if (i == 2) {
            layoutParams.addRule(12);
            layoutParams.addRule(14);
        } else if (i == 3 || i == 4) {
            layoutParams.addRule(13);
        }
        return layoutParams;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DraggableRelativeLayout.Params createDraggableLayoutParams(int pageHeight, WebViewManager.Position displayLocation, boolean disableDragging) {
        DraggableRelativeLayout.Params params = new DraggableRelativeLayout.Params();
        params.setMaxXPos(this.marginPxSizeRight);
        params.setMaxYPos(this.marginPxSizeTop);
        params.setDraggingDisabled(disableDragging);
        params.setMessageHeight(pageHeight);
        params.setHeight(getDisplayYSize());
        int i = WhenMappings.$EnumSwitchMapping$0[displayLocation.ordinal()];
        if (i == 1) {
            params.setDragThresholdY(this.marginPxSizeTop - DRAG_THRESHOLD_PX_SIZE);
        } else if (i == 2) {
            params.setPosY(getDisplayYSize() - pageHeight);
            params.setDragThresholdY(this.marginPxSizeBottom + DRAG_THRESHOLD_PX_SIZE);
        } else if (i == 3) {
            int displayYSize = (getDisplayYSize() / 2) - (pageHeight / 2);
            params.setDragThresholdY(DRAG_THRESHOLD_PX_SIZE + displayYSize);
            params.setMaxYPos(displayYSize);
            params.setPosY(displayYSize);
        } else if (i == 4) {
            int displayYSize2 = getDisplayYSize() - (this.marginPxSizeBottom + this.marginPxSizeTop);
            params.setMessageHeight(displayYSize2);
            int displayYSize3 = (getDisplayYSize() / 2) - (displayYSize2 / 2);
            params.setDragThresholdY(DRAG_THRESHOLD_PX_SIZE + displayYSize3);
            params.setMaxYPos(displayYSize3);
            params.setPosY(displayYSize3);
        }
        params.setDragDirection(displayLocation == WebViewManager.Position.TOP_BANNER ? 0 : 1);
        return params;
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.display.impl.InAppMessageView$showDraggableView$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InAppMessageView.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.display.impl.InAppMessageView$showDraggableView$2", f = "InAppMessageView.kt", i = {}, l = {263}, m = "invokeSuspend", n = {}, s = {})
    static final class C02252 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ WebViewManager.Position $displayLocation;
        final /* synthetic */ RelativeLayout.LayoutParams $draggableRelativeLayoutParams;
        final /* synthetic */ RelativeLayout.LayoutParams $relativeLayoutParams;
        final /* synthetic */ DraggableRelativeLayout.Params $webViewLayoutParams;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02252(RelativeLayout.LayoutParams layoutParams, RelativeLayout.LayoutParams layoutParams2, DraggableRelativeLayout.Params params, WebViewManager.Position position, Continuation<? super C02252> continuation) {
            super(2, continuation);
            this.$relativeLayoutParams = layoutParams;
            this.$draggableRelativeLayoutParams = layoutParams2;
            this.$webViewLayoutParams = params;
            this.$displayLocation = position;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return InAppMessageView.this.new C02252(this.$relativeLayoutParams, this.$draggableRelativeLayoutParams, this.$webViewLayoutParams, this.$displayLocation, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02252) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                if (InAppMessageView.this.webView != null) {
                    WebView webView = InAppMessageView.this.webView;
                    Intrinsics.checkNotNull(webView);
                    webView.setLayoutParams(this.$relativeLayoutParams);
                    InAppMessageView inAppMessageView = InAppMessageView.this;
                    Activity activity = inAppMessageView.currentActivity;
                    Intrinsics.checkNotNull(activity);
                    inAppMessageView.setUpDraggableLayout(activity, this.$draggableRelativeLayoutParams, this.$webViewLayoutParams);
                    InAppMessageView inAppMessageView2 = InAppMessageView.this;
                    Activity activity2 = inAppMessageView2.currentActivity;
                    Intrinsics.checkNotNull(activity2);
                    inAppMessageView2.setUpParentRelativeLayout(activity2);
                    InAppMessageView inAppMessageView3 = InAppMessageView.this;
                    RelativeLayout relativeLayout = inAppMessageView3.parentRelativeLayout;
                    Intrinsics.checkNotNull(relativeLayout);
                    inAppMessageView3.createPopupWindow(relativeLayout);
                    if (InAppMessageView.this.messageController != null) {
                        InAppMessageView inAppMessageView4 = InAppMessageView.this;
                        WebViewManager.Position position = this.$displayLocation;
                        DraggableRelativeLayout draggableRelativeLayout = inAppMessageView4.draggableRelativeLayout;
                        Intrinsics.checkNotNull(draggableRelativeLayout);
                        RelativeLayout relativeLayout2 = InAppMessageView.this.parentRelativeLayout;
                        Intrinsics.checkNotNull(relativeLayout2);
                        inAppMessageView4.animateInAppMessage(position, draggableRelativeLayout, relativeLayout2);
                    }
                    this.label = 1;
                    if (InAppMessageView.this.startDismissTimerIfNeeded(this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    return Unit.INSTANCE;
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

    /* JADX INFO: Access modifiers changed from: private */
    public final Object showDraggableView(WebViewManager.Position position, RelativeLayout.LayoutParams layoutParams, RelativeLayout.LayoutParams layoutParams2, DraggableRelativeLayout.Params params, Continuation<? super Unit> continuation) throws Throwable {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new C02252(layoutParams, layoutParams2, params, position, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void createPopupWindow(RelativeLayout parentRelativeLayout) {
        RelativeLayout relativeLayout = parentRelativeLayout;
        boolean z = this.hasBackground;
        PopupWindow popupWindow = new PopupWindow((View) relativeLayout, z ? -1 : this.pageWidth, z ? -1 : -2, false);
        this.popupWindow = popupWindow;
        popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        PopupWindow popupWindow2 = this.popupWindow;
        int i = 1;
        if (popupWindow2 != null) {
            popupWindow2.setTouchable(true);
        }
        PopupWindow popupWindow3 = this.popupWindow;
        if (popupWindow3 != null) {
            popupWindow3.setFocusable(!this.displayPosition.isBanner());
        }
        PopupWindow popupWindow4 = this.popupWindow;
        if (popupWindow4 != null) {
            popupWindow4.setClippingEnabled(false);
        }
        if (this.hasBackground) {
            i = 0;
        } else {
            int i2 = WhenMappings.$EnumSwitchMapping$0[this.displayPosition.ordinal()];
            if (i2 == 1) {
                i = 49;
            } else if (i2 == 2) {
                i = 81;
            } else if (i2 != 3 && i2 != 4) {
                throw new NoWhenBranchMatchedException();
            }
        }
        int i3 = this.messageContent.getIsFullBleed() ? 1000 : 1003;
        PopupWindow popupWindow5 = this.popupWindow;
        Intrinsics.checkNotNull(popupWindow5);
        PopupWindowCompat.setWindowLayoutType(popupWindow5, i3);
        PopupWindow popupWindow6 = this.popupWindow;
        if (popupWindow6 != null) {
            Activity activity = this.currentActivity;
            Intrinsics.checkNotNull(activity);
            popupWindow6.showAtLocation(activity.getWindow().getDecorView().getRootView(), i, 0, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setUpParentRelativeLayout(Context context) {
        RelativeLayout relativeLayout = new RelativeLayout(context);
        this.parentRelativeLayout = relativeLayout;
        Intrinsics.checkNotNull(relativeLayout);
        relativeLayout.setBackgroundDrawable(new ColorDrawable(0));
        RelativeLayout relativeLayout2 = this.parentRelativeLayout;
        Intrinsics.checkNotNull(relativeLayout2);
        relativeLayout2.setClipChildren(false);
        RelativeLayout relativeLayout3 = this.parentRelativeLayout;
        Intrinsics.checkNotNull(relativeLayout3);
        relativeLayout3.setClipToPadding(false);
        RelativeLayout relativeLayout4 = this.parentRelativeLayout;
        Intrinsics.checkNotNull(relativeLayout4);
        relativeLayout4.addView(this.draggableRelativeLayout);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setUpDraggableLayout(Context context, RelativeLayout.LayoutParams relativeLayoutParams, DraggableRelativeLayout.Params draggableParams) {
        DraggableRelativeLayout draggableRelativeLayout = new DraggableRelativeLayout(context);
        this.draggableRelativeLayout = draggableRelativeLayout;
        if (relativeLayoutParams != null) {
            Intrinsics.checkNotNull(draggableRelativeLayout);
            draggableRelativeLayout.setLayoutParams(relativeLayoutParams);
        }
        DraggableRelativeLayout draggableRelativeLayout2 = this.draggableRelativeLayout;
        Intrinsics.checkNotNull(draggableRelativeLayout2);
        draggableRelativeLayout2.setParams(draggableParams);
        DraggableRelativeLayout draggableRelativeLayout3 = this.draggableRelativeLayout;
        Intrinsics.checkNotNull(draggableRelativeLayout3);
        draggableRelativeLayout3.setListener(new DraggableRelativeLayout.DraggableListener() { // from class: com.onesignal.inAppMessages.internal.display.impl.InAppMessageView.setUpDraggableLayout.1
            @Override // com.onesignal.inAppMessages.internal.display.impl.DraggableRelativeLayout.DraggableListener
            public void onDismiss() {
                if (InAppMessageView.this.messageController != null) {
                    InAppMessageViewListener inAppMessageViewListener = InAppMessageView.this.messageController;
                    Intrinsics.checkNotNull(inAppMessageViewListener);
                    inAppMessageViewListener.onMessageWillDismiss();
                }
                ThreadUtilsKt.suspendifyOnThread$default(0, new InAppMessageView$setUpDraggableLayout$1$onDismiss$1(InAppMessageView.this, null), 1, null);
            }

            @Override // com.onesignal.inAppMessages.internal.display.impl.DraggableRelativeLayout.DraggableListener
            public void onDragStart() {
                InAppMessageView.this.isDragging = true;
            }

            @Override // com.onesignal.inAppMessages.internal.display.impl.DraggableRelativeLayout.DraggableListener
            public void onDragEnd() {
                InAppMessageView.this.isDragging = false;
            }
        });
        WebView webView = this.webView;
        Intrinsics.checkNotNull(webView);
        if (webView.getParent() != null) {
            WebView webView2 = this.webView;
            Intrinsics.checkNotNull(webView2);
            ViewParent parent = webView2.getParent();
            Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
            ((ViewGroup) parent).removeAllViews();
        }
        CardView cardViewCreateCardView = createCardView(context);
        cardViewCreateCardView.setTag(IN_APP_MESSAGE_CARD_VIEW_TAG);
        cardViewCreateCardView.addView(this.webView);
        DraggableRelativeLayout draggableRelativeLayout4 = this.draggableRelativeLayout;
        Intrinsics.checkNotNull(draggableRelativeLayout4);
        draggableRelativeLayout4.setPadding(this.marginPxSizeLeft, this.marginPxSizeTop, this.marginPxSizeRight, this.marginPxSizeBottom);
        DraggableRelativeLayout draggableRelativeLayout5 = this.draggableRelativeLayout;
        Intrinsics.checkNotNull(draggableRelativeLayout5);
        draggableRelativeLayout5.setClipChildren(false);
        DraggableRelativeLayout draggableRelativeLayout6 = this.draggableRelativeLayout;
        Intrinsics.checkNotNull(draggableRelativeLayout6);
        draggableRelativeLayout6.setClipToPadding(false);
        DraggableRelativeLayout draggableRelativeLayout7 = this.draggableRelativeLayout;
        Intrinsics.checkNotNull(draggableRelativeLayout7);
        draggableRelativeLayout7.addView(cardViewCreateCardView);
    }

    private final CardView createCardView(Context context) {
        CardView cardView = new CardView(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, this.displayPosition == WebViewManager.Position.FULL_SCREEN ? -1 : -2);
        layoutParams.addRule(13);
        cardView.setLayoutParams(layoutParams);
        if (Build.VERSION.SDK_INT == 23 || getHideDropShadow(context)) {
            cardView.setCardElevation(0.0f);
        } else {
            cardView.setCardElevation(ViewUtils.INSTANCE.dpToPx(5));
        }
        cardView.setRadius(ViewUtils.INSTANCE.dpToPx(8));
        cardView.setClipChildren(false);
        cardView.setClipToPadding(false);
        cardView.setPreventCornerOverlap(false);
        cardView.setCardBackgroundColor(0);
        return cardView;
    }

    private final boolean getHideDropShadow(Context context) {
        return AndroidUtils.INSTANCE.getManifestMetaBoolean(context, "com.onesignal.inAppMessageHideDropShadow");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object startDismissTimerIfNeeded(Continuation<? super Unit> continuation) {
        C02261 c02261;
        InAppMessageView inAppMessageView;
        InAppMessageView inAppMessageView2;
        if (continuation instanceof C02261) {
            c02261 = (C02261) continuation;
            if ((c02261.label & Integer.MIN_VALUE) != 0) {
                c02261.label -= Integer.MIN_VALUE;
            } else {
                c02261 = new C02261(continuation);
            }
        } else {
            c02261 = new C02261(continuation);
        }
        Object obj = c02261.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02261.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            double d = this.displayDuration;
            if (d <= 0.0d || this.isDismissTimerSet) {
                return Unit.INSTANCE;
            }
            this.isDismissTimerSet = true;
            c02261.L$0 = this;
            c02261.label = 1;
            if (DelayKt.delay(((long) d) * ((long) 1000), c02261) == coroutine_suspended) {
                return coroutine_suspended;
            }
            inAppMessageView = this;
        } else {
            if (i == 1) {
                inAppMessageView = (InAppMessageView) c02261.L$0;
                ResultKt.throwOnFailure(obj);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                inAppMessageView2 = (InAppMessageView) c02261.L$0;
                ResultKt.throwOnFailure(obj);
            }
            inAppMessageView2.isDismissTimerSet = false;
            return Unit.INSTANCE;
        }
        if (inAppMessageView.cancelDismissTimer) {
            inAppMessageView.cancelDismissTimer = false;
            return Unit.INSTANCE;
        }
        InAppMessageViewListener inAppMessageViewListener = inAppMessageView.messageController;
        if (inAppMessageViewListener != null) {
            Intrinsics.checkNotNull(inAppMessageViewListener);
            inAppMessageViewListener.onMessageWillDismiss();
        }
        if (inAppMessageView.currentActivity != null) {
            c02261.L$0 = inAppMessageView;
            c02261.label = 2;
            if (inAppMessageView.dismissAndAwaitNextMessage(c02261) == coroutine_suspended) {
                return coroutine_suspended;
            }
            inAppMessageView2 = inAppMessageView;
            inAppMessageView2.isDismissTimerSet = false;
        } else {
            inAppMessageView.shouldDismissWhenActive = true;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:33:0x0080 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object delayShowUntilAvailable(Activity activity, Continuation<? super Unit> continuation) {
        C02231 c02231;
        InAppMessageView inAppMessageView;
        if (continuation instanceof C02231) {
            c02231 = (C02231) continuation;
            if ((c02231.label & Integer.MIN_VALUE) != 0) {
                c02231.label -= Integer.MIN_VALUE;
            } else {
                c02231 = new C02231(continuation);
            }
        } else {
            c02231 = new C02231(continuation);
        }
        Object obj = c02231.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02231.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            if (AndroidUtils.INSTANCE.isActivityFullyReady(activity) && this.parentRelativeLayout == null) {
                c02231.label = 1;
                if (showInAppMessageView(activity, c02231) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            }
            c02231.L$0 = this;
            c02231.L$1 = activity;
            c02231.label = 2;
            if (DelayKt.delay(200L, c02231) == coroutine_suspended) {
                return coroutine_suspended;
            }
            inAppMessageView = this;
            c02231.L$0 = null;
            c02231.L$1 = null;
            c02231.label = 3;
            if (inAppMessageView.delayShowUntilAvailable(activity, c02231) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            if (i == 2) {
                activity = (Activity) c02231.L$1;
                inAppMessageView = (InAppMessageView) c02231.L$0;
                ResultKt.throwOnFailure(obj);
                c02231.L$0 = null;
                c02231.L$1 = null;
                c02231.label = 3;
                if (inAppMessageView.delayShowUntilAvailable(activity, c02231) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
        }
        return Unit.INSTANCE;
    }

    public final Object dismissAndAwaitNextMessage(Continuation<? super Unit> continuation) throws Throwable {
        DraggableRelativeLayout draggableRelativeLayout = this.draggableRelativeLayout;
        if (draggableRelativeLayout == null) {
            Logging.error$default("No host presenter to trigger dismiss animation, counting as dismissed already", null, 2, null);
            dereferenceViews();
            return Unit.INSTANCE;
        }
        Intrinsics.checkNotNull(draggableRelativeLayout);
        draggableRelativeLayout.dismiss();
        Object objFinishAfterDelay = finishAfterDelay(continuation);
        return objFinishAfterDelay == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objFinishAfterDelay : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.display.impl.InAppMessageView$finishAfterDelay$2, reason: invalid class name */
    /* JADX INFO: compiled from: InAppMessageView.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.display.impl.InAppMessageView$finishAfterDelay$2", f = "InAppMessageView.kt", i = {}, l = {467, 469}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return InAppMessageView.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (DelayKt.delay(600L, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                } else {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
            if (!InAppMessageView.this.hasBackground || InAppMessageView.this.parentRelativeLayout == null) {
                InAppMessageView.this.cleanupViewsAfterDismiss();
            } else {
                InAppMessageView inAppMessageView = InAppMessageView.this;
                RelativeLayout relativeLayout = inAppMessageView.parentRelativeLayout;
                Intrinsics.checkNotNull(relativeLayout);
                this.label = 2;
                if (inAppMessageView.animateAndDismissLayout(relativeLayout, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object finishAfterDelay(Continuation<? super Unit> continuation) throws Throwable {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new AnonymousClass2(null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void cleanupViewsAfterDismiss() {
        removeAllViews();
        InAppMessageViewListener inAppMessageViewListener = this.messageController;
        if (inAppMessageViewListener != null) {
            inAppMessageViewListener.onMessageWasDismissed();
        }
    }

    public final void removeAllViews() {
        Logging.debug$default("InAppMessageView.removeAllViews()", null, 2, null);
        if (this.isDismissTimerSet) {
            this.cancelDismissTimer = true;
        }
        DraggableRelativeLayout draggableRelativeLayout = this.draggableRelativeLayout;
        if (draggableRelativeLayout != null) {
            Intrinsics.checkNotNull(draggableRelativeLayout);
            draggableRelativeLayout.removeAllViews();
        }
        PopupWindow popupWindow = this.popupWindow;
        if (popupWindow != null) {
            Intrinsics.checkNotNull(popupWindow);
            popupWindow.dismiss();
        }
        dereferenceViews();
    }

    private final void dereferenceViews() {
        this.parentRelativeLayout = null;
        this.draggableRelativeLayout = null;
        this.webView = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void animateInAppMessage(WebViewManager.Position displayLocation, View messageView, View backgroundView) {
        Intrinsics.checkNotNull(messageView);
        CardView messageViewCardView = (CardView) messageView.findViewWithTag(IN_APP_MESSAGE_CARD_VIEW_TAG);
        Intrinsics.checkNotNullExpressionValue(messageViewCardView, "messageViewCardView");
        Animation.AnimationListener animationListenerCreateAnimationListener = createAnimationListener(messageViewCardView);
        int i = WhenMappings.$EnumSwitchMapping$0[displayLocation.ordinal()];
        if (i == 1) {
            WebView webView = this.webView;
            Intrinsics.checkNotNull(webView);
            animateTop(messageViewCardView, webView.getHeight(), animationListenerCreateAnimationListener);
        } else if (i == 2) {
            WebView webView2 = this.webView;
            Intrinsics.checkNotNull(webView2);
            animateBottom(messageViewCardView, webView2.getHeight(), animationListenerCreateAnimationListener);
        } else if (i == 3 || i == 4) {
            animateCenter(messageView, backgroundView, animationListenerCreateAnimationListener, null);
        }
    }

    private final Animation.AnimationListener createAnimationListener(final CardView messageViewCardView) {
        return new Animation.AnimationListener() { // from class: com.onesignal.inAppMessages.internal.display.impl.InAppMessageView.createAnimationListener.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
                Intrinsics.checkNotNullParameter(animation, "animation");
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                Intrinsics.checkNotNullParameter(animation, "animation");
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                Intrinsics.checkNotNullParameter(animation, "animation");
                if (Build.VERSION.SDK_INT == 23) {
                    messageViewCardView.setCardElevation(ViewUtils.INSTANCE.dpToPx(5));
                }
                if (this.messageController != null) {
                    InAppMessageViewListener inAppMessageViewListener = this.messageController;
                    Intrinsics.checkNotNull(inAppMessageViewListener);
                    inAppMessageViewListener.onMessageWasDisplayed();
                }
            }
        };
    }

    private final void animateTop(View messageView, int height, Animation.AnimationListener cardViewAnimCallback) {
        OneSignalAnimate.INSTANCE.animateViewByTranslation(messageView, (-height) - this.marginPxSizeTop, 0.0f, 1000, new OneSignalBounceInterpolator(0.1d, 8.0d), cardViewAnimCallback).start();
    }

    private final void animateBottom(View messageView, int height, Animation.AnimationListener cardViewAnimCallback) {
        OneSignalAnimate.INSTANCE.animateViewByTranslation(messageView, height + this.marginPxSizeBottom, 0.0f, 1000, new OneSignalBounceInterpolator(0.1d, 8.0d), cardViewAnimCallback).start();
    }

    private final void animateCenter(View messageView, View backgroundView, Animation.AnimationListener cardViewAnimCallback, Animator.AnimatorListener backgroundAnimCallback) {
        Animation animationAnimateViewSmallToLarge = OneSignalAnimate.INSTANCE.animateViewSmallToLarge(messageView, 1000, new OneSignalBounceInterpolator(0.1d, 8.0d), cardViewAnimCallback);
        ValueAnimator valueAnimatorAnimateBackgroundColor = animateBackgroundColor(backgroundView, 400, 0, getOverlayColor(), backgroundAnimCallback);
        animationAnimateViewSmallToLarge.start();
        valueAnimatorAnimateBackgroundColor.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object animateAndDismissLayout(View view, Continuation<? super Unit> continuation) {
        final Waiter waiter = new Waiter();
        animateBackgroundColor(view, 400, getOverlayColor(), 0, new AnimatorListenerAdapter() { // from class: com.onesignal.inAppMessages.internal.display.impl.InAppMessageView$animateAndDismissLayout$animCallback$1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) throws Exception {
                Intrinsics.checkNotNullParameter(animation, "animation");
                this.this$0.cleanupViewsAfterDismiss();
                waiter.wake();
            }
        }).start();
        Object objWaitForWake = waiter.waitForWake(continuation);
        return objWaitForWake == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWaitForWake : Unit.INSTANCE;
    }

    private final ValueAnimator animateBackgroundColor(View backgroundView, int duration, int startColor, int endColor, Animator.AnimatorListener animCallback) {
        return OneSignalAnimate.INSTANCE.animateViewColor(backgroundView, duration, startColor, endColor, animCallback);
    }

    public String toString() {
        return "InAppMessageView{currentActivity=" + this.currentActivity + ", pageWidth=" + this.pageWidth + ", pageHeight=" + this.pageHeight + ", displayDuration=" + this.displayDuration + ", hasBackground=" + this.hasBackground + ", shouldDismissWhenActive=" + this.shouldDismissWhenActive + ", isDragging=" + this.isDragging + ", disableDragDismiss=" + this.disableDragDismiss + ", displayLocation=" + this.displayPosition + ", webView=" + this.webView + '}';
    }

    private final int getOverlayColor() {
        if (this.hideGrayOverlay) {
            return 0;
        }
        return ACTIVITY_BACKGROUND_COLOR_FULL;
    }
}
