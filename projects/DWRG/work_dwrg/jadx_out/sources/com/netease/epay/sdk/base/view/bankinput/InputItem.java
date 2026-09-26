package com.netease.epay.sdk.base.view.bankinput;

import android.graphics.Color;
import android.view.View;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public class InputItem {
    public static final int INPUT_CARD_NUM = 1;
    public static final int INPUT_CARD_TYPE = 3;
    public static final int INPUT_EFFECTIVE_DATE = 6;
    public static final int INPUT_ID_CARD = 2;
    public static final int INPUT_NAME = 4;
    public static final int INPUT_OIL = 7;
    public static final int INPUT_PHONE = 0;
    public static final int INPUT_SAFE_CODE = 5;
    public String cacheContent;
    public boolean canEdit = true;
    int contentType;
    public boolean hasTip;
    public String hint;
    public int hintTextColor;
    public int inputColor;
    public int inputMaxLength;
    int itemType;
    public String leftKey;
    public View.OnClickListener listener;
    public int textInputType;
    int tipType;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface InputType {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public InputItem(int itemType) {
        this.itemType = itemType;
        init();
    }

    private void init() {
        switch (this.itemType) {
            case 0:
                this.leftKey = "手机号";
                this.hint = "请输入银行预留手机号码";
                break;
            case 1:
                this.leftKey = "卡号";
                this.hint = "请输入银行卡号";
                break;
            case 2:
                this.leftKey = "身份证";
                this.hint = "请输入持卡人对应身份证号";
                break;
            case 3:
                this.leftKey = "卡类型";
                this.hint = "请选择银行卡";
                this.inputColor = Color.parseColor("#6faae9");
                this.canEdit = false;
                this.hintTextColor = this.inputColor;
                break;
            case 4:
                this.leftKey = "持卡人";
                this.hint = "请输入银行卡户名";
                break;
            case 5:
                this.leftKey = "安全码";
                this.hint = "请输入卡背面3位数字";
                this.inputMaxLength = 5;
                this.textInputType = 2;
                break;
            case 6:
                this.leftKey = "有效期";
                this.hint = "月份/年份 (MM/YY)";
                this.canEdit = false;
                break;
        }
        if (this.itemType == 0 || this.itemType == 1 || this.itemType == 2) {
            this.contentType = this.itemType;
        } else {
            this.contentType = -1;
        }
        if (this.itemType == 4 || this.itemType == 5 || this.itemType == 0 || this.itemType == 6) {
            this.tipType = this.itemType;
            this.hasTip = true;
        }
    }
}
