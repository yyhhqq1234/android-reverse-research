package com.netease.epay.sdk.base.view.gridpwd;

import android.R;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.PopupWindow;
import com.netease.epay.sdk.base.util.UIDispatcher;
import com.netease.epay.sdk.base.util.UiUtil;
import com.netease.epay.sdk.base.view.gridpwd.NumKeyboardLayout;

/* loaded from: classes.dex */
public class NumKeyBoard {
    private Context context;
    private View inputView;
    private View mDecorView;
    private PopupWindow mKeyboardWindow;
    private int mScrollDistance = 0;
    public int screenWidth = -1;
    public int screenHeight = -1;
    public int screenHeightNoNavBar = -1;
    public int screenContentHeight = -1;
    private int KEYBOARD_MIN_MARGIN_EDITTEXT = 70;
    private boolean needShowFirst = false;
    private Runnable showKeyboardRunnable = new Runnable() { // from class: com.netease.epay.sdk.base.view.gridpwd.NumKeyBoard.3
        @Override // java.lang.Runnable
        public void run() {
            NumKeyBoard.this.showKeyboard();
        }
    };

    public NumKeyBoard(GridPasswordView inputView) {
        this.inputView = inputView;
        this.context = inputView.getContext();
    }

    public NumKeyBoard(EditText inputView) {
        this.inputView = inputView;
        this.context = inputView.getContext();
        viewInit();
        onAttachedToWindow();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void viewInit() {
        this.KEYBOARD_MIN_MARGIN_EDITTEXT = UiUtil.dp2px(this.context, 35);
        this.inputView.setLongClickable(false);
        initScreenParams(this.context);
        NumKeyboardLayout numKeyboardLayout = new NumKeyboardLayout(this.context);
        numKeyboardLayout.setOnNumberKeyClickListner(new NumKeyboardLayout.NumberKeyClickListner() { // from class: com.netease.epay.sdk.base.view.gridpwd.NumKeyBoard.1
            @Override // com.netease.epay.sdk.base.view.gridpwd.NumKeyboardLayout.NumberKeyClickListner
            public void onBackSpace() {
                if (NumKeyBoard.this.inputView instanceof GridPasswordView) {
                    ((GridPasswordView) NumKeyBoard.this.inputView).backSpace();
                } else if ((NumKeyBoard.this.inputView instanceof EditText) && ((EditText) NumKeyBoard.this.inputView).length() > 0) {
                    ((EditText) NumKeyBoard.this.inputView).getText().delete(((EditText) NumKeyBoard.this.inputView).length() - 1, ((EditText) NumKeyBoard.this.inputView).length());
                }
            }

            @Override // com.netease.epay.sdk.base.view.gridpwd.NumKeyboardLayout.NumberKeyClickListner
            public void hide() {
                NumKeyBoard.this.hideKeyboard();
            }

            @Override // com.netease.epay.sdk.base.view.gridpwd.NumKeyboardLayout.NumberKeyClickListner
            public void numberInput(String num) {
                if (NumKeyBoard.this.inputView instanceof GridPasswordView) {
                    ((GridPasswordView) NumKeyBoard.this.inputView).onKey(num);
                } else if (NumKeyBoard.this.inputView instanceof EditText) {
                    ((EditText) NumKeyBoard.this.inputView).append(num);
                }
            }
        });
        this.mKeyboardWindow = new PopupWindow(numKeyboardLayout, -1, -2);
        this.mKeyboardWindow.setAnimationStyle(R.style.Animation.InputMethod);
        this.mKeyboardWindow.setTouchable(true);
        this.mKeyboardWindow.setBackgroundDrawable(new ColorDrawable(0));
        this.mKeyboardWindow.setOutsideTouchable(true);
        this.mKeyboardWindow.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.netease.epay.sdk.base.view.gridpwd.NumKeyBoard.2
            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                if (NumKeyBoard.this.mScrollDistance > 0) {
                    final int i = NumKeyBoard.this.mScrollDistance;
                    NumKeyBoard.this.mScrollDistance = 0;
                    UIDispatcher.runOnUiThread(new Runnable() { // from class: com.netease.epay.sdk.base.view.gridpwd.NumKeyBoard.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (NumKeyBoard.this.mDecorView != null) {
                                NumKeyBoard.this.mDecorView.scrollBy(0, -i);
                            }
                        }
                    }, 100);
                }
            }
        });
    }

    public void showKeyboard() {
        int dp2px;
        if (this.mDecorView == null) {
            this.needShowFirst = true;
            return;
        }
        if (this.mKeyboardWindow != null && !this.mKeyboardWindow.isShowing()) {
            this.mKeyboardWindow.showAtLocation(this.mDecorView, 80, 0, 0);
            if (this.mDecorView != null) {
                int[] iArr = new int[2];
                this.inputView.getLocationOnScreen(iArr);
                if (this.screenWidth > this.screenHeight) {
                    dp2px = UiUtil.dp2px(this.inputView.getContext(), 190);
                } else {
                    dp2px = UiUtil.dp2px(this.inputView.getContext(), 240);
                }
                this.mScrollDistance = ((iArr[1] + this.inputView.getMeasuredHeight()) + this.KEYBOARD_MIN_MARGIN_EDITTEXT) - (this.screenContentHeight - dp2px);
                if (this.mScrollDistance > 0) {
                    this.mDecorView.scrollBy(0, this.mScrollDistance);
                }
                this.needShowFirst = false;
            }
        }
    }

    public void hideKeyboard() {
        if (this.mKeyboardWindow != null && this.mKeyboardWindow.isShowing()) {
            this.mKeyboardWindow.dismiss();
        }
    }

    public void onAttachedToWindow() {
        this.mDecorView = this.inputView.getRootView();
        if (this.needShowFirst && this.inputView.getHandler() != null) {
            this.inputView.getHandler().postDelayed(this.showKeyboardRunnable, 400L);
        }
    }

    public void onDetachedFromWindow() {
        if (this.inputView.getHandler() != null) {
            this.inputView.getHandler().removeCallbacksAndMessages(null);
        }
        hideKeyboard();
    }

    private void initScreenParams(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        defaultDisplay.getMetrics(displayMetrics);
        this.screenWidth = displayMetrics.widthPixels;
        this.screenHeight = displayMetrics.heightPixels;
        this.screenHeightNoNavBar = this.screenHeight;
        int i = Build.VERSION.SDK_INT;
        if (i == 13) {
            try {
                this.screenHeightNoNavBar = ((Integer) defaultDisplay.getClass().getMethod("getRealHeight", new Class[0]).invoke(defaultDisplay, new Object[0])).intValue();
            } catch (Exception e) {
            }
        } else if (i > 13) {
            try {
                this.screenHeightNoNavBar = ((Integer) defaultDisplay.getClass().getMethod("getRawHeight", new Class[0]).invoke(defaultDisplay, new Object[0])).intValue();
            } catch (Exception e2) {
            }
        }
        this.screenContentHeight = this.screenHeightNoNavBar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void screenOrientationChange() {
        if (this.inputView != null && this.inputView.getHandler() != null) {
            this.inputView.getHandler().removeCallbacks(this.showKeyboardRunnable);
        }
        hideKeyboard();
        viewInit();
    }
}
