package com.netease.epay.sdk.base.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.provider.Settings;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import com.netease.epay.sdk.base.R;

/* loaded from: classes.dex */
public class ProgressWheelView extends View {
    private static final String TAG = ProgressWheelView.class.getSimpleName();
    private int barColor;
    private float barExtraLength;
    private boolean barGrowingFromFront;
    private final int barLength;
    private Paint barPaint;
    private double barSpinCycleTime;
    private int barWidth;
    private ProgressCallback callback;
    private RectF circleBounds;
    private int circleRadius;
    private boolean fillRadius;
    private boolean isSpinning;
    private long lastTimeAnimated;
    private boolean linearProgress;
    private float mProgress;
    private float mTargetProgress;
    private long pausedTimeWithoutGrowing;
    private int rimColor;
    private Paint rimPaint;
    private int rimWidth;
    private boolean shouldAnimate;
    private float spinSpeed;
    private double timeStartGrowing;

    /* loaded from: classes.dex */
    public interface ProgressCallback {
        void onProgressUpdate(float f);
    }

    public ProgressWheelView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.barLength = 16;
        this.circleRadius = 28;
        this.barWidth = 4;
        this.rimWidth = 4;
        this.fillRadius = false;
        this.timeStartGrowing = 0.0d;
        this.barSpinCycleTime = 460.0d;
        this.barExtraLength = 0.0f;
        this.barGrowingFromFront = true;
        this.pausedTimeWithoutGrowing = 0L;
        this.barColor = -1442840576;
        this.rimColor = ViewCompat.MEASURED_SIZE_MASK;
        this.barPaint = new Paint();
        this.rimPaint = new Paint();
        this.circleBounds = new RectF();
        this.spinSpeed = 230.0f;
        this.lastTimeAnimated = 0L;
        this.mProgress = 0.0f;
        this.mTargetProgress = 0.0f;
        this.isSpinning = false;
        parseAttributes(context.obtainStyledAttributes(attrs, R.styleable.epaysdk_ProgressWheel));
        setAnimationEnabled();
    }

    public ProgressWheelView(Context context) {
        super(context);
        this.barLength = 16;
        this.circleRadius = 28;
        this.barWidth = 4;
        this.rimWidth = 4;
        this.fillRadius = false;
        this.timeStartGrowing = 0.0d;
        this.barSpinCycleTime = 460.0d;
        this.barExtraLength = 0.0f;
        this.barGrowingFromFront = true;
        this.pausedTimeWithoutGrowing = 0L;
        this.barColor = -1442840576;
        this.rimColor = ViewCompat.MEASURED_SIZE_MASK;
        this.barPaint = new Paint();
        this.rimPaint = new Paint();
        this.circleBounds = new RectF();
        this.spinSpeed = 230.0f;
        this.lastTimeAnimated = 0L;
        this.mProgress = 0.0f;
        this.mTargetProgress = 0.0f;
        this.isSpinning = false;
        setAnimationEnabled();
    }

    @TargetApi(17)
    private void setAnimationEnabled() {
        float f;
        if (Build.VERSION.SDK_INT >= 17) {
            f = Settings.Global.getFloat(getContext().getContentResolver(), "animator_duration_scale", 1.0f);
        } else {
            f = Settings.System.getFloat(getContext().getContentResolver(), "animator_duration_scale", 1.0f);
        }
        this.shouldAnimate = f != 0.0f;
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        int paddingLeft = this.circleRadius + getPaddingLeft() + getPaddingRight();
        int paddingTop = this.circleRadius + getPaddingTop() + getPaddingBottom();
        int mode = View.MeasureSpec.getMode(widthMeasureSpec);
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        int mode2 = View.MeasureSpec.getMode(heightMeasureSpec);
        int size2 = View.MeasureSpec.getSize(heightMeasureSpec);
        if (mode != 1073741824) {
            size = mode == Integer.MIN_VALUE ? Math.min(paddingLeft, size) : paddingLeft;
        }
        if (mode2 == 1073741824 || mode == 1073741824) {
            paddingTop = size2;
        } else if (mode2 == Integer.MIN_VALUE) {
            paddingTop = Math.min(paddingTop, size2);
        }
        setMeasuredDimension(size, paddingTop);
    }

    @Override // android.view.View
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        setupBounds(w, h);
        setupPaints();
        invalidate();
    }

    private void setupPaints() {
        this.barPaint.setColor(this.barColor);
        this.barPaint.setAntiAlias(true);
        this.barPaint.setStyle(Paint.Style.STROKE);
        this.barPaint.setStrokeWidth(this.barWidth);
        this.rimPaint.setColor(this.rimColor);
        this.rimPaint.setAntiAlias(true);
        this.rimPaint.setStyle(Paint.Style.STROKE);
        this.rimPaint.setStrokeWidth(this.rimWidth);
    }

    private void setupBounds(int layout_width, int layout_height) {
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        if (!this.fillRadius) {
            int min = Math.min(Math.min((layout_width - paddingLeft) - paddingRight, (layout_height - paddingBottom) - paddingTop), (this.circleRadius * 2) - (this.barWidth * 2));
            int i = paddingLeft + ((((layout_width - paddingLeft) - paddingRight) - min) / 2);
            int i2 = paddingTop + ((((layout_height - paddingTop) - paddingBottom) - min) / 2);
            this.circleBounds = new RectF(this.barWidth + i, this.barWidth + i2, (i + min) - this.barWidth, (i2 + min) - this.barWidth);
            return;
        }
        this.circleBounds = new RectF(paddingLeft + this.barWidth, paddingTop + this.barWidth, (layout_width - paddingRight) - this.barWidth, (layout_height - paddingBottom) - this.barWidth);
    }

    private void parseAttributes(TypedArray a) {
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        this.barWidth = (int) TypedValue.applyDimension(1, this.barWidth, displayMetrics);
        this.rimWidth = (int) TypedValue.applyDimension(1, this.rimWidth, displayMetrics);
        this.circleRadius = (int) TypedValue.applyDimension(1, this.circleRadius, displayMetrics);
        this.circleRadius = (int) a.getDimension(R.styleable.epaysdk_ProgressWheel_epaysdk_circleRadius, this.circleRadius);
        this.fillRadius = a.getBoolean(R.styleable.epaysdk_ProgressWheel_epaysdk_fillRadius, false);
        this.barWidth = (int) a.getDimension(R.styleable.epaysdk_ProgressWheel_epaysdk_barWidth, this.barWidth);
        this.rimWidth = (int) a.getDimension(R.styleable.epaysdk_ProgressWheel_epaysdk_rimWidth, this.rimWidth);
        this.spinSpeed = a.getFloat(R.styleable.epaysdk_ProgressWheel_epaysdk_spinSpeed, this.spinSpeed / 360.0f) * 360.0f;
        this.barSpinCycleTime = a.getInt(R.styleable.epaysdk_ProgressWheel_epaysdk_barSpinCycleTime, (int) this.barSpinCycleTime);
        this.barColor = a.getColor(R.styleable.epaysdk_ProgressWheel_epaysdk_barColor, this.barColor);
        this.rimColor = a.getColor(R.styleable.epaysdk_ProgressWheel_epaysdk_rimColor, this.rimColor);
        this.linearProgress = a.getBoolean(R.styleable.epaysdk_ProgressWheel_epaysdk_linearProgress, false);
        if (a.getBoolean(R.styleable.epaysdk_ProgressWheel_epaysdk_progressIndeterminate, false)) {
            spin();
        }
        a.recycle();
    }

    public void setCallback(ProgressCallback progressCallback) {
        this.callback = progressCallback;
        if (!this.isSpinning) {
            runCallback();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        boolean z;
        float f;
        boolean z2 = false;
        if (this.shouldAnimate) {
            if (this.isSpinning) {
                z = true;
                float f2 = (((float) 20) * this.spinSpeed) / 1000.0f;
                updateBarLength(20L);
                this.mProgress += f2;
                if (this.mProgress > 360.0f) {
                    this.mProgress -= 360.0f;
                    runCallback(-1.0f);
                }
                this.lastTimeAnimated = SystemClock.uptimeMillis();
                float f3 = this.mProgress - 90.0f;
                float f4 = 16.0f + this.barExtraLength;
                if (isInEditMode()) {
                    f3 = 0.0f;
                    f4 = 135.0f;
                }
                canvas.drawArc(this.circleBounds, f3, f4, false, this.barPaint);
            } else {
                float f5 = this.mProgress;
                if (this.mProgress != this.mTargetProgress) {
                    z2 = true;
                    this.mProgress = Math.min(((((float) (SystemClock.uptimeMillis() - this.lastTimeAnimated)) / 1000.0f) * this.spinSpeed) + this.mProgress, this.mTargetProgress);
                    this.lastTimeAnimated = SystemClock.uptimeMillis();
                }
                z = z2;
                if (f5 != this.mProgress) {
                    runCallback();
                }
                float f6 = this.mProgress;
                if (this.linearProgress) {
                    f = 0.0f;
                } else {
                    float pow = ((float) (1.0d - Math.pow(1.0f - (this.mProgress / 360.0f), 2.0f * 2.0f))) * 360.0f;
                    f6 = ((float) (1.0d - Math.pow(1.0f - (this.mProgress / 360.0f), 2.0f))) * 360.0f;
                    f = pow;
                }
                canvas.drawArc(this.circleBounds, f - 90.0f, isInEditMode() ? 360.0f : f6, false, this.barPaint);
            }
            if (z) {
                invalidate();
            }
        }
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View changedView, int visibility) {
        super.onVisibilityChanged(changedView, visibility);
        if (visibility == 0) {
            this.lastTimeAnimated = SystemClock.uptimeMillis();
        }
    }

    private void updateBarLength(long deltaTimeInMilliSeconds) {
        if (this.pausedTimeWithoutGrowing >= 50) {
            this.timeStartGrowing += deltaTimeInMilliSeconds;
            if (this.timeStartGrowing > this.barSpinCycleTime) {
                this.timeStartGrowing -= this.barSpinCycleTime;
                this.pausedTimeWithoutGrowing = 0L;
                this.barGrowingFromFront = !this.barGrowingFromFront;
            }
            float cos = (((float) Math.cos(((this.timeStartGrowing / this.barSpinCycleTime) + 1.0d) * 3.141592653589793d)) / 2.0f) + 0.5f;
            float f = 234;
            if (this.barGrowingFromFront) {
                this.barExtraLength = cos * f;
                return;
            }
            float f2 = (1.0f - cos) * f;
            this.mProgress += this.barExtraLength - f2;
            this.barExtraLength = f2;
            return;
        }
        this.pausedTimeWithoutGrowing += deltaTimeInMilliSeconds;
    }

    public boolean isSpinning() {
        return this.isSpinning;
    }

    public void resetCount() {
        this.mProgress = 0.0f;
        this.mTargetProgress = 0.0f;
        invalidate();
    }

    public void stopSpinning() {
        this.isSpinning = false;
        this.mProgress = 0.0f;
        this.mTargetProgress = 0.0f;
        invalidate();
    }

    public void spin() {
        this.lastTimeAnimated = SystemClock.uptimeMillis();
        this.isSpinning = true;
        invalidate();
    }

    private void runCallback(float value) {
        if (this.callback != null) {
            this.callback.onProgressUpdate(value);
        }
    }

    private void runCallback() {
        if (this.callback != null) {
            this.callback.onProgressUpdate(Math.round((this.mProgress * 100.0f) / 360.0f) / 100.0f);
        }
    }

    public void setInstantProgress(float progress) {
        if (this.isSpinning) {
            this.mProgress = 0.0f;
            this.isSpinning = false;
        }
        if (progress > 1.0f) {
            progress -= 1.0f;
        } else if (progress < 0.0f) {
            progress = 0.0f;
        }
        if (progress != this.mTargetProgress) {
            this.mTargetProgress = Math.min(progress * 360.0f, 360.0f);
            this.mProgress = this.mTargetProgress;
            this.lastTimeAnimated = SystemClock.uptimeMillis();
            invalidate();
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        WheelSavedState wheelSavedState = new WheelSavedState(super.onSaveInstanceState());
        wheelSavedState.mProgress = this.mProgress;
        wheelSavedState.mTargetProgress = this.mTargetProgress;
        wheelSavedState.isSpinning = this.isSpinning;
        wheelSavedState.spinSpeed = this.spinSpeed;
        wheelSavedState.barWidth = this.barWidth;
        wheelSavedState.barColor = this.barColor;
        wheelSavedState.rimWidth = this.rimWidth;
        wheelSavedState.rimColor = this.rimColor;
        wheelSavedState.circleRadius = this.circleRadius;
        wheelSavedState.linearProgress = this.linearProgress;
        wheelSavedState.fillRadius = this.fillRadius;
        return wheelSavedState;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable state) {
        if (!(state instanceof WheelSavedState)) {
            super.onRestoreInstanceState(state);
            return;
        }
        WheelSavedState wheelSavedState = (WheelSavedState) state;
        super.onRestoreInstanceState(wheelSavedState.getSuperState());
        this.mProgress = wheelSavedState.mProgress;
        this.mTargetProgress = wheelSavedState.mTargetProgress;
        this.isSpinning = wheelSavedState.isSpinning;
        this.spinSpeed = wheelSavedState.spinSpeed;
        this.barWidth = wheelSavedState.barWidth;
        this.barColor = wheelSavedState.barColor;
        this.rimWidth = wheelSavedState.rimWidth;
        this.rimColor = wheelSavedState.rimColor;
        this.circleRadius = wheelSavedState.circleRadius;
        this.linearProgress = wheelSavedState.linearProgress;
        this.fillRadius = wheelSavedState.fillRadius;
        this.lastTimeAnimated = SystemClock.uptimeMillis();
    }

    public float getProgress() {
        if (this.isSpinning) {
            return -1.0f;
        }
        return this.mProgress / 360.0f;
    }

    public void setProgress(float progress) {
        if (this.isSpinning) {
            this.mProgress = 0.0f;
            this.isSpinning = false;
            runCallback();
        }
        if (progress > 1.0f) {
            progress -= 1.0f;
        } else if (progress < 0.0f) {
            progress = 0.0f;
        }
        if (progress != this.mTargetProgress) {
            if (this.mProgress == this.mTargetProgress) {
                this.lastTimeAnimated = SystemClock.uptimeMillis();
            }
            this.mTargetProgress = Math.min(progress * 360.0f, 360.0f);
            invalidate();
        }
    }

    public void setLinearProgress(boolean isLinear) {
        this.linearProgress = isLinear;
        if (!this.isSpinning) {
            invalidate();
        }
    }

    public int getCircleRadius() {
        return this.circleRadius;
    }

    public void setCircleRadius(int circleRadius) {
        this.circleRadius = circleRadius;
        if (!this.isSpinning) {
            invalidate();
        }
    }

    public int getBarWidth() {
        return this.barWidth;
    }

    public void setBarWidth(int barWidth) {
        this.barWidth = barWidth;
        if (!this.isSpinning) {
            invalidate();
        }
    }

    public int getBarColor() {
        return this.barColor;
    }

    public void setBarColor(int barColor) {
        this.barColor = barColor;
        setupPaints();
        if (!this.isSpinning) {
            invalidate();
        }
    }

    public int getRimColor() {
        return this.rimColor;
    }

    public void setRimColor(int rimColor) {
        this.rimColor = rimColor;
        setupPaints();
        if (!this.isSpinning) {
            invalidate();
        }
    }

    public float getSpinSpeed() {
        return this.spinSpeed / 360.0f;
    }

    public void setSpinSpeed(float spinSpeed) {
        this.spinSpeed = 360.0f * spinSpeed;
    }

    public int getRimWidth() {
        return this.rimWidth;
    }

    public void setRimWidth(int rimWidth) {
        this.rimWidth = rimWidth;
        if (!this.isSpinning) {
            invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class WheelSavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<WheelSavedState> CREATOR = new Parcelable.Creator<WheelSavedState>() { // from class: com.netease.epay.sdk.base.view.ProgressWheelView.WheelSavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public WheelSavedState createFromParcel(Parcel in) {
                return new WheelSavedState(in);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public WheelSavedState[] newArray(int size) {
                return new WheelSavedState[size];
            }
        };
        int barColor;
        int barWidth;
        int circleRadius;
        boolean fillRadius;
        boolean isSpinning;
        boolean linearProgress;
        float mProgress;
        float mTargetProgress;
        int rimColor;
        int rimWidth;
        float spinSpeed;

        WheelSavedState(Parcelable superState) {
            super(superState);
        }

        private WheelSavedState(Parcel in) {
            super(in);
            this.mProgress = in.readFloat();
            this.mTargetProgress = in.readFloat();
            this.isSpinning = in.readByte() != 0;
            this.spinSpeed = in.readFloat();
            this.barWidth = in.readInt();
            this.barColor = in.readInt();
            this.rimWidth = in.readInt();
            this.rimColor = in.readInt();
            this.circleRadius = in.readInt();
            this.linearProgress = in.readByte() != 0;
            this.fillRadius = in.readByte() != 0;
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel out, int flags) {
            super.writeToParcel(out, flags);
            out.writeFloat(this.mProgress);
            out.writeFloat(this.mTargetProgress);
            out.writeByte((byte) (this.isSpinning ? 1 : 0));
            out.writeFloat(this.spinSpeed);
            out.writeInt(this.barWidth);
            out.writeInt(this.barColor);
            out.writeInt(this.rimWidth);
            out.writeInt(this.rimColor);
            out.writeInt(this.circleRadius);
            out.writeByte((byte) (this.linearProgress ? 1 : 0));
            out.writeByte((byte) (this.fillRadius ? 1 : 0));
        }
    }
}
