package com.onesignal.inAppMessages.internal.display.impl;

import android.content.Context;
import android.content.res.Resources;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.core.app.NotificationCompat;
import androidx.core.view.ViewCompat;
import androidx.customview.widget.ViewDragHelper;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onesignal.common.ViewUtils;
import com.onesignal.inAppMessages.BuildConfig;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DraggableRelativeLayout.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u0000 \u00182\u00020\u0001:\u0003\u0018\u0019\u001aB\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u000fH\u0002J\u0006\u0010\u0011\u001a\u00020\u000fJ\u0010\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u000f2\b\u0010\u0016\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\rR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout;", "Landroid/widget/RelativeLayout;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "dismissing", "", "draggingDisabled", "mDragHelper", "Landroidx/customview/widget/ViewDragHelper;", "mListener", "Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout$DraggableListener;", "params", "Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout$Params;", "computeScroll", "", "createDragHelper", "dismiss", "onInterceptTouchEvent", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "setListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setParams", "Companion", "DraggableListener", "Params", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class DraggableRelativeLayout extends RelativeLayout {
    private boolean dismissing;
    private final boolean draggingDisabled;
    private ViewDragHelper mDragHelper;
    private DraggableListener mListener;
    private Params params;
    private static final int MARGIN_PX_SIZE = ViewUtils.INSTANCE.dpToPx(28);
    private static final int EXTRA_PX_DISMISS = ViewUtils.INSTANCE.dpToPx(64);

    /* JADX INFO: compiled from: DraggableRelativeLayout.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b`\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\b\u0010\u0005\u001a\u00020\u0003H&¨\u0006\u0006"}, d2 = {"Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout$DraggableListener;", "", "onDismiss", "", "onDragEnd", "onDragStart", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
    public interface DraggableListener {
        void onDismiss();

        void onDragEnd();

        void onDragStart();
    }

    public DraggableRelativeLayout(Context context) {
        super(context);
        setClipChildren(false);
        createDragHelper();
    }

    /* JADX INFO: compiled from: DraggableRelativeLayout.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0018\b\u0000\u0018\u0000 *2\u00020\u0001:\u0001*B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR\u001a\u0010\u001b\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0006\"\u0004\b\u001d\u0010\bR\u001a\u0010\u001e\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\bR\u001a\u0010!\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0006\"\u0004\b#\u0010\bR\u001a\u0010$\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0006\"\u0004\b&\u0010\bR\u001a\u0010'\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0006\"\u0004\b)\u0010\b¨\u0006+"}, d2 = {"Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout$Params;", "", "()V", "dismissingYPos", "", "getDismissingYPos", "()I", "setDismissingYPos", "(I)V", "dismissingYVelocity", "getDismissingYVelocity", "setDismissingYVelocity", "dragDirection", "getDragDirection", "setDragDirection", "dragThresholdY", "getDragThresholdY", "setDragThresholdY", "draggingDisabled", "", "getDraggingDisabled", "()Z", "setDraggingDisabled", "(Z)V", "height", "getHeight", "setHeight", "maxXPos", "getMaxXPos", "setMaxXPos", "maxYPos", "getMaxYPos", "setMaxYPos", "messageHeight", "getMessageHeight", "setMessageHeight", "offScreenYPos", "getOffScreenYPos", "setOffScreenYPos", "posY", "getPosY", "setPosY", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Params {
        public static final int DRAGGABLE_DIRECTION_DOWN = 1;
        public static final int DRAGGABLE_DIRECTION_UP = 0;
        private int dismissingYPos;
        private int dismissingYVelocity;
        private int dragDirection;
        private int dragThresholdY;
        private boolean draggingDisabled;
        private int height;
        private int maxXPos;
        private int maxYPos;
        private int messageHeight;
        private int offScreenYPos;
        private int posY;

        public final int getPosY() {
            return this.posY;
        }

        public final void setPosY(int i) {
            this.posY = i;
        }

        public final int getMaxYPos() {
            return this.maxYPos;
        }

        public final void setMaxYPos(int i) {
            this.maxYPos = i;
        }

        public final int getDragThresholdY() {
            return this.dragThresholdY;
        }

        public final void setDragThresholdY(int i) {
            this.dragThresholdY = i;
        }

        public final int getMaxXPos() {
            return this.maxXPos;
        }

        public final void setMaxXPos(int i) {
            this.maxXPos = i;
        }

        public final int getHeight() {
            return this.height;
        }

        public final void setHeight(int i) {
            this.height = i;
        }

        public final int getMessageHeight() {
            return this.messageHeight;
        }

        public final void setMessageHeight(int i) {
            this.messageHeight = i;
        }

        public final int getDragDirection() {
            return this.dragDirection;
        }

        public final void setDragDirection(int i) {
            this.dragDirection = i;
        }

        public final boolean getDraggingDisabled() {
            return this.draggingDisabled;
        }

        public final void setDraggingDisabled(boolean z) {
            this.draggingDisabled = z;
        }

        public final int getDismissingYVelocity() {
            return this.dismissingYVelocity;
        }

        public final void setDismissingYVelocity(int i) {
            this.dismissingYVelocity = i;
        }

        public final int getOffScreenYPos() {
            return this.offScreenYPos;
        }

        public final void setOffScreenYPos(int i) {
            this.offScreenYPos = i;
        }

        public final int getDismissingYPos() {
            return this.dismissingYPos;
        }

        public final void setDismissingYPos(int i) {
            this.dismissingYPos = i;
        }
    }

    public final void setListener(DraggableListener listener) {
        this.mListener = listener;
    }

    public final void setParams(Params params) {
        Intrinsics.checkNotNullParameter(params, "params");
        this.params = params;
        params.setOffScreenYPos(params.getMessageHeight() + params.getPosY() + ((Resources.getSystem().getDisplayMetrics().heightPixels - params.getMessageHeight()) - params.getPosY()) + EXTRA_PX_DISMISS);
        params.setDismissingYVelocity(ViewUtils.INSTANCE.dpToPx(3000));
        if (params.getDragDirection() == 0) {
            params.setOffScreenYPos((-params.getMessageHeight()) - MARGIN_PX_SIZE);
            params.setDismissingYVelocity(-params.getDismissingYVelocity());
            params.setDismissingYPos(params.getOffScreenYPos() / 3);
            return;
        }
        params.setDismissingYPos((params.getMessageHeight() / 3) + (params.getMaxYPos() * 2));
    }

    private final void createDragHelper() {
        this.mDragHelper = ViewDragHelper.create(this, 1.0f, new ViewDragHelper.Callback() { // from class: com.onesignal.inAppMessages.internal.display.impl.DraggableRelativeLayout.createDragHelper.1
            private int lastYPos;

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public boolean tryCaptureView(View child, int pointerId) {
                Intrinsics.checkNotNullParameter(child, "child");
                return true;
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public int clampViewPositionVertical(View child, int top, int dy) {
                Intrinsics.checkNotNullParameter(child, "child");
                Params params = DraggableRelativeLayout.this.params;
                Intrinsics.checkNotNull(params);
                if (params.getDraggingDisabled()) {
                    Params params2 = DraggableRelativeLayout.this.params;
                    Intrinsics.checkNotNull(params2);
                    return params2.getMaxYPos();
                }
                this.lastYPos = top;
                Params params3 = DraggableRelativeLayout.this.params;
                Intrinsics.checkNotNull(params3);
                if (params3.getDragDirection() == 1) {
                    Params params4 = DraggableRelativeLayout.this.params;
                    Intrinsics.checkNotNull(params4);
                    if (top >= params4.getDragThresholdY() && DraggableRelativeLayout.this.mListener != null) {
                        DraggableListener draggableListener = DraggableRelativeLayout.this.mListener;
                        Intrinsics.checkNotNull(draggableListener);
                        draggableListener.onDragStart();
                    }
                    Params params5 = DraggableRelativeLayout.this.params;
                    Intrinsics.checkNotNull(params5);
                    if (top < params5.getMaxYPos()) {
                        Params params6 = DraggableRelativeLayout.this.params;
                        Intrinsics.checkNotNull(params6);
                        return params6.getMaxYPos();
                    }
                } else {
                    Params params7 = DraggableRelativeLayout.this.params;
                    Intrinsics.checkNotNull(params7);
                    if (top <= params7.getDragThresholdY() && DraggableRelativeLayout.this.mListener != null) {
                        DraggableListener draggableListener2 = DraggableRelativeLayout.this.mListener;
                        Intrinsics.checkNotNull(draggableListener2);
                        draggableListener2.onDragStart();
                    }
                    Params params8 = DraggableRelativeLayout.this.params;
                    Intrinsics.checkNotNull(params8);
                    if (top > params8.getMaxYPos()) {
                        Params params9 = DraggableRelativeLayout.this.params;
                        Intrinsics.checkNotNull(params9);
                        return params9.getMaxYPos();
                    }
                }
                return top;
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public int clampViewPositionHorizontal(View child, int right, int dy) {
                Intrinsics.checkNotNullParameter(child, "child");
                Params params = DraggableRelativeLayout.this.params;
                Intrinsics.checkNotNull(params);
                return params.getMaxXPos();
            }

            /* JADX WARN: Code duplicated, block: B:10:0x004d  */
            /* JADX WARN: Code duplicated, block: B:12:0x0067  */
            /* JADX WARN: Code duplicated, block: B:17:0x0097  */
            /* JADX WARN: Code duplicated, block: B:19:0x00b1  */
            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public void onViewReleased(View releasedChild, float xvel, float yvel) {
                Intrinsics.checkNotNullParameter(releasedChild, "releasedChild");
                Params params = DraggableRelativeLayout.this.params;
                Intrinsics.checkNotNull(params);
                int maxYPos = params.getMaxYPos();
                if (!DraggableRelativeLayout.this.dismissing) {
                    Params params2 = DraggableRelativeLayout.this.params;
                    Intrinsics.checkNotNull(params2);
                    if (params2.getDragDirection() == 1) {
                        int i = this.lastYPos;
                        Params params3 = DraggableRelativeLayout.this.params;
                        Intrinsics.checkNotNull(params3);
                        if (i <= params3.getDismissingYPos()) {
                            Params params4 = DraggableRelativeLayout.this.params;
                            Intrinsics.checkNotNull(params4);
                            if (yvel > params4.getDismissingYVelocity()) {
                                Params params5 = DraggableRelativeLayout.this.params;
                                Intrinsics.checkNotNull(params5);
                                maxYPos = params5.getOffScreenYPos();
                                DraggableRelativeLayout.this.dismissing = true;
                                if (DraggableRelativeLayout.this.mListener != null) {
                                    DraggableListener draggableListener = DraggableRelativeLayout.this.mListener;
                                    Intrinsics.checkNotNull(draggableListener);
                                    draggableListener.onDismiss();
                                }
                            }
                        } else {
                            Params params6 = DraggableRelativeLayout.this.params;
                            Intrinsics.checkNotNull(params6);
                            maxYPos = params6.getOffScreenYPos();
                            DraggableRelativeLayout.this.dismissing = true;
                            if (DraggableRelativeLayout.this.mListener != null) {
                                DraggableListener draggableListener2 = DraggableRelativeLayout.this.mListener;
                                Intrinsics.checkNotNull(draggableListener2);
                                draggableListener2.onDismiss();
                            }
                        }
                    } else {
                        int i2 = this.lastYPos;
                        Params params7 = DraggableRelativeLayout.this.params;
                        Intrinsics.checkNotNull(params7);
                        if (i2 >= params7.getDismissingYPos()) {
                            Params params8 = DraggableRelativeLayout.this.params;
                            Intrinsics.checkNotNull(params8);
                            if (yvel < params8.getDismissingYVelocity()) {
                                Params params9 = DraggableRelativeLayout.this.params;
                                Intrinsics.checkNotNull(params9);
                                maxYPos = params9.getOffScreenYPos();
                                DraggableRelativeLayout.this.dismissing = true;
                                if (DraggableRelativeLayout.this.mListener != null) {
                                    DraggableListener draggableListener3 = DraggableRelativeLayout.this.mListener;
                                    Intrinsics.checkNotNull(draggableListener3);
                                    draggableListener3.onDismiss();
                                }
                            }
                        } else {
                            Params params10 = DraggableRelativeLayout.this.params;
                            Intrinsics.checkNotNull(params10);
                            maxYPos = params10.getOffScreenYPos();
                            DraggableRelativeLayout.this.dismissing = true;
                            if (DraggableRelativeLayout.this.mListener != null) {
                                DraggableListener draggableListener4 = DraggableRelativeLayout.this.mListener;
                                Intrinsics.checkNotNull(draggableListener4);
                                draggableListener4.onDismiss();
                            }
                        }
                    }
                }
                ViewDragHelper viewDragHelper = DraggableRelativeLayout.this.mDragHelper;
                Intrinsics.checkNotNull(viewDragHelper);
                Params params11 = DraggableRelativeLayout.this.params;
                Intrinsics.checkNotNull(params11);
                if (viewDragHelper.settleCapturedViewAt(params11.getMaxXPos(), maxYPos)) {
                    ViewCompat.postInvalidateOnAnimation(DraggableRelativeLayout.this);
                }
            }
        });
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent event) {
        DraggableListener draggableListener;
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.dismissing) {
            return true;
        }
        int action = event.getAction();
        if ((action == 0 || action == 5) && (draggableListener = this.mListener) != null) {
            Intrinsics.checkNotNull(draggableListener);
            draggableListener.onDragEnd();
        }
        ViewDragHelper viewDragHelper = this.mDragHelper;
        Intrinsics.checkNotNull(viewDragHelper);
        viewDragHelper.processTouchEvent(event);
        return false;
    }

    @Override // android.view.View
    public void computeScroll() {
        super.computeScroll();
        ViewDragHelper viewDragHelper = this.mDragHelper;
        Intrinsics.checkNotNull(viewDragHelper);
        if (viewDragHelper.continueSettling(true)) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public final void dismiss() {
        this.dismissing = true;
        ViewDragHelper viewDragHelper = this.mDragHelper;
        Intrinsics.checkNotNull(viewDragHelper);
        DraggableRelativeLayout draggableRelativeLayout = this;
        int left = getLeft();
        Params params = this.params;
        Intrinsics.checkNotNull(params);
        viewDragHelper.smoothSlideViewTo(draggableRelativeLayout, left, params.getOffScreenYPos());
        ViewCompat.postInvalidateOnAnimation(draggableRelativeLayout);
    }
}
