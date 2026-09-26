package com.netease.unisdk.gmbridge.view;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.netease.unisdk.gmbridge.UnisdkNtGmBridge;
import com.netease.unisdk.gmbridge.data.DataManager;
import com.netease.unisdk.gmbridge.floatwindow.BtnInfo;
import com.netease.unisdk.gmbridge.floatwindow.FloatWindowManager;
import com.netease.unisdk.gmbridge.log.NgLog;
import com.netease.unisdk.gmbridge.task.TaskExecutor;
import com.netease.unisdk.gmbridge.utils.ResIdReader;
import java.util.List;

/* loaded from: classes.dex */
public class FloatWindow {
    private static final String TAG = "gm_bridge FloatWindow";
    private boolean mAddExpandLayoutFlag;
    private Context mContext;
    private ExpandLayout mExpandLayout;
    private int mGravity;
    private int mIconDrawableId;
    private int mIconPressDrawableId;
    private ImageView mIconView;
    private volatile boolean mLoadBtnsFlag;
    private ImageView mRedIv;
    private boolean mShowing;
    private WindowManager mWindowManager;
    private WindowManager.LayoutParams mWindowParams;
    private LinearLayout mWindowView;
    private Runnable mAutoHideRunnable = new Runnable() { // from class: com.netease.unisdk.gmbridge.view.FloatWindow.1
        @Override // java.lang.Runnable
        public void run() {
            FloatWindow.this.hideExpandLayout();
        }
    };
    private View.OnTouchListener mFloatIconTouchListener = new View.OnTouchListener() { // from class: com.netease.unisdk.gmbridge.view.FloatWindow.2
        private static final int MOVEMENT_THRESHOLD_PX = 10;
        private float initialTouchX;
        private float initialTouchY;
        private int initialX;
        private int initialY;

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v, MotionEvent event) {
            switch (event.getAction()) {
                case 0:
                    this.initialX = FloatWindow.this.mWindowParams.x;
                    this.initialY = FloatWindow.this.mWindowParams.y;
                    this.initialTouchX = event.getRawX();
                    this.initialTouchY = event.getRawY();
                    FloatWindow.this.mIconView.setImageResource(FloatWindow.this.mIconPressDrawableId);
                    return true;
                case 1:
                    FloatWindow.this.mIconView.setImageResource(FloatWindow.this.mIconDrawableId);
                    if (Math.abs(event.getRawX() - this.initialTouchX) < 10.0f || Math.abs(event.getRawY() - this.initialTouchY) < 10.0f) {
                        FloatWindow.this.iconClick();
                    }
                    try {
                        FloatWindow.this.mIconView.removeCallbacks(FloatWindow.this.mAutoHideRunnable);
                    } catch (Exception e) {
                    }
                    FloatWindow.this.mIconView.postDelayed(FloatWindow.this.mAutoHideRunnable, 3000L);
                    return true;
                case 2:
                    int diffX = (int) (event.getRawX() - this.initialTouchX);
                    int diffY = (int) (event.getRawY() - this.initialTouchY);
                    if (FloatWindow.this.mGravity == 83) {
                        FloatWindow.this.mWindowParams.x = this.initialX + diffX;
                        FloatWindow.this.mWindowParams.y = this.initialY - diffY;
                    } else if (FloatWindow.this.mGravity == 85) {
                        FloatWindow.this.mWindowParams.x = this.initialX - diffX;
                        FloatWindow.this.mWindowParams.y = this.initialY - diffY;
                    } else if (FloatWindow.this.mGravity == 53) {
                        FloatWindow.this.mWindowParams.x = this.initialX - diffX;
                        FloatWindow.this.mWindowParams.y = this.initialY + diffY;
                    } else {
                        FloatWindow.this.mWindowParams.x = this.initialX + diffX;
                        FloatWindow.this.mWindowParams.y = this.initialY + diffY;
                    }
                    FloatWindow.this.mWindowManager.updateViewLayout(FloatWindow.this.mWindowView, FloatWindow.this.mWindowParams);
                    return true;
                default:
                    return false;
            }
        }
    };

    public FloatWindow(Context context, int gravity) {
        this.mContext = context;
        this.mGravity = gravity;
        this.mWindowManager = (WindowManager) context.getSystemService("window");
    }

    private void initView() {
        this.mIconDrawableId = ResIdReader.getDrawableId(this.mContext, "uni_gm_f_icon");
        this.mIconPressDrawableId = ResIdReader.getDrawableId(this.mContext, "uni_gm_f_icon_press");
        this.mWindowView = (LinearLayout) LayoutInflater.from(this.mContext).inflate(ResIdReader.getLayoutId(this.mContext, "uni_gm_float_view"), (ViewGroup) null);
        this.mIconView = (ImageView) this.mWindowView.findViewById(ResIdReader.getId(this.mContext, "icon_iv"));
        this.mIconView.setOnTouchListener(this.mFloatIconTouchListener);
        this.mRedIv = (ImageView) this.mWindowView.findViewById(ResIdReader.getId(this.mContext, "icon_red_iv"));
        initLayoutParams();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void iconClick() {
        if (this.mExpandLayout == null) {
            if (!this.mLoadBtnsFlag) {
                this.mLoadBtnsFlag = true;
                TaskExecutor.executeTask(new AnonymousClass3());
                return;
            }
            return;
        }
        if (this.mExpandLayout.getVisibility() == 0) {
            this.mExpandLayout.setVisibility(8);
            return;
        }
        this.mExpandLayout.setVisibility(0);
        if (UnisdkNtGmBridge.sDataManager != null) {
            this.mExpandLayout.showRed(UnisdkNtGmBridge.sDataManager.getRedIds());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.netease.unisdk.gmbridge.view.FloatWindow$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass3 implements Runnable {
        AnonymousClass3() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FloatWindowManager.loadBtnInfos(FloatWindow.this.mContext, new DataManager.IDataCallback() { // from class: com.netease.unisdk.gmbridge.view.FloatWindow.3.1
                @Override // com.netease.unisdk.gmbridge.data.DataManager.IDataCallback
                public void setBtnInfos(final List<BtnInfo> btnInfos) {
                    if (btnInfos == null || btnInfos.size() == 0) {
                        NgLog.e(FloatWindow.TAG, "load btns error");
                        FloatWindow.this.mLoadBtnsFlag = false;
                    } else {
                        TaskExecutor.runTaskOnUiThread(new Runnable() { // from class: com.netease.unisdk.gmbridge.view.FloatWindow.3.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                FloatWindow.this.addExpandLayout(btnInfos);
                            }
                        });
                    }
                }

                @Override // com.netease.unisdk.gmbridge.data.DataManager.IDataCallback
                public void setRefer(String refer) {
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addExpandLayout(List<BtnInfo> btnInfos) {
        if (!this.mAddExpandLayoutFlag) {
            this.mExpandLayout = new ExpandLayout(this.mContext, btnInfos);
            this.mWindowView.addView(this.mExpandLayout);
            this.mLoadBtnsFlag = false;
            this.mAddExpandLayoutFlag = true;
        }
    }

    private void initLayoutParams() {
        this.mWindowParams = new WindowManager.LayoutParams(-2, -2, 2, 1032, -3);
        this.mWindowParams.gravity = this.mGravity;
    }

    public Context getContext() {
        return this.mContext;
    }

    public void showRed(String[] menuIds) {
        if (this.mRedIv.getVisibility() == 8) {
            this.mRedIv.setVisibility(0);
        }
        if (this.mExpandLayout != null) {
            this.mExpandLayout.showRed(menuIds);
        }
    }

    public void hideRed() {
        this.mRedIv.setVisibility(8);
    }

    public void show() {
        if (!this.mShowing) {
            if (this.mWindowView == null) {
                initView();
                this.mWindowManager.addView(this.mWindowView, this.mWindowParams);
            } else {
                this.mWindowView.setVisibility(0);
            }
            this.mShowing = true;
            DataManager dataManager = UnisdkNtGmBridge.sDataManager;
            if (dataManager != null && dataManager.getRedIds() != null) {
                this.mRedIv.setVisibility(0);
            }
        }
    }

    public void hide() {
        if (this.mShowing) {
            this.mWindowView.setVisibility(8);
            this.mShowing = false;
        }
    }

    public boolean isShowing() {
        return this.mShowing;
    }

    public void hideExpandLayout() {
        if (this.mExpandLayout != null && this.mExpandLayout.getVisibility() == 0) {
            this.mExpandLayout.setVisibility(8);
        }
    }

    public void destroy() {
        if (this.mWindowManager != null && this.mWindowView != null) {
            try {
                this.mWindowManager.removeView(this.mWindowView);
            } catch (Exception e) {
            }
        }
        this.mWindowManager = null;
        this.mWindowView = null;
        this.mWindowParams = null;
        this.mShowing = false;
    }
}
