package com.netease.unisdk.gmbridge.view;

import android.app.Dialog;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import com.netease.unisdk.gmbridge.utils.ResIdReader;

/* loaded from: classes.dex */
public abstract class BaseDialog {
    protected Context mContext;
    protected Dialog mDialog;
    protected View mDialogView;
    protected int mScreenHeight;
    protected int mScreenWidth;

    protected abstract int getDialogHeight();

    protected abstract int getDialogWidth();

    protected abstract View initDialogView();

    public BaseDialog(Context context) {
        this.mContext = context;
        this.mDialog = new Dialog(this.mContext, ResIdReader.getStyleId(this.mContext, "uni_gm_dialog"));
        DisplayMetrics displayMetrics = this.mContext.getResources().getDisplayMetrics();
        this.mScreenWidth = displayMetrics.widthPixels;
        this.mScreenHeight = displayMetrics.heightPixels;
    }

    public Context getContext() {
        return this.mContext;
    }

    public void show() {
        if (this.mDialogView == null) {
            this.mDialogView = initDialogView();
            this.mDialog.setContentView(this.mDialogView);
            setDialogWindowAttributes();
        }
        this.mDialog.show();
    }

    private void setDialogWindowAttributes() {
        Window dialogWindow = this.mDialog.getWindow();
        WindowManager.LayoutParams layoutParams = dialogWindow.getAttributes();
        layoutParams.width = -1;
        layoutParams.height = -1;
        layoutParams.width = getDialogWidth();
        layoutParams.height = getDialogHeight();
        dialogWindow.setAttributes(layoutParams);
    }

    public boolean isShowing() {
        return this.mDialog != null && this.mDialog.isShowing();
    }

    public void dismiss() {
        if (this.mDialog != null && this.mDialog.isShowing()) {
            this.mDialog.dismiss();
        }
    }

    public void destroy() {
        dismiss();
        this.mDialog = null;
        this.mDialogView = null;
    }
}
