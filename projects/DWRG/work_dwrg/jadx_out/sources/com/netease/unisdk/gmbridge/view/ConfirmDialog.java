package com.netease.unisdk.gmbridge.view;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.netease.unisdk.gmbridge.floatwindow.FloatWindowManager;
import com.netease.unisdk.gmbridge.utils.ResIdReader;

/* loaded from: classes.dex */
public class ConfirmDialog extends BaseDialog {
    private static final String RES_ID_CANCEL = "cancel";
    private static final String RES_ID_SURE = "sure";
    private int mPressTextColor;
    private int mTextColor;

    public ConfirmDialog(Context context) {
        super(context);
        this.mTextColor = Color.parseColor("#ffffff");
        this.mPressTextColor = Color.parseColor("#80ffffff");
    }

    @Override // com.netease.unisdk.gmbridge.view.BaseDialog
    protected View initDialogView() {
        View view = LayoutInflater.from(this.mContext).inflate(ResIdReader.getLayoutId(this.mContext, "uni_gm_confirm_dialog"), (ViewGroup) null);
        setOnclickListener(view, RES_ID_CANCEL, new View.OnClickListener() { // from class: com.netease.unisdk.gmbridge.view.ConfirmDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ConfirmDialog.this.dismiss();
            }
        });
        setOnclickListener(view, RES_ID_SURE, new View.OnClickListener() { // from class: com.netease.unisdk.gmbridge.view.ConfirmDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ConfirmDialog.this.dismiss();
                FloatWindowManager.setFloatBtnVisible(false);
            }
        });
        return view;
    }

    private void setOnclickListener(View view, String btnName, final View.OnClickListener onClickListener) {
        final TextView textView = (TextView) view.findViewById(ResIdReader.getId(this.mContext, btnName + "_tv"));
        textView.setOnTouchListener(new View.OnTouchListener() { // from class: com.netease.unisdk.gmbridge.view.ConfirmDialog.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v, MotionEvent event) {
                switch (event.getAction()) {
                    case 0:
                        textView.setTextColor(ConfirmDialog.this.mPressTextColor);
                        return true;
                    case 1:
                        textView.setTextColor(ConfirmDialog.this.mTextColor);
                        onClickListener.onClick(textView);
                        return true;
                    case 2:
                        return true;
                    default:
                        return false;
                }
            }
        });
    }

    @Override // com.netease.unisdk.gmbridge.view.BaseDialog
    protected int getDialogWidth() {
        return this.mContext.getResources().getDimensionPixelSize(ResIdReader.getDimenId(this.mContext, "uni_gm_f_confirm_dialog_width"));
    }

    @Override // com.netease.unisdk.gmbridge.view.BaseDialog
    protected int getDialogHeight() {
        return this.mContext.getResources().getDimensionPixelSize(ResIdReader.getDimenId(this.mContext, "uni_gm_f_confirm_dialog_height"));
    }
}
