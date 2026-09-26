package com.netease.epay.sdk.base.view.bankinput;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.InputFilter;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.netease.epay.sdk.base.R;
import com.netease.epay.sdk.base.util.EditBindButtonUtil;
import com.netease.epay.sdk.base.view.ContentWithSpaceEditText;
import com.netease.epay.sdk.base.view.TipsView;

/* loaded from: classes.dex */
public class InputItemLayout extends LinearLayout {
    public InputItemLayout(Context context) {
        super(context);
        init();
    }

    public InputItemLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R.styleable.epaysdk_InputItem, 0, 0);
        String string = obtainStyledAttributes.getString(R.styleable.epaysdk_InputItem_epaysdk_key);
        String string2 = obtainStyledAttributes.getString(R.styleable.epaysdk_InputItem_epaysdk_hint);
        int color = obtainStyledAttributes.getColor(R.styleable.epaysdk_InputItem_epaysdk_keyColor, 0);
        int color2 = obtainStyledAttributes.getColor(R.styleable.epaysdk_InputItem_epaysdk_hintColor, 0);
        int i = obtainStyledAttributes.getInt(R.styleable.epaysdk_InputItem_epaysdk_inputType, 0);
        int i2 = obtainStyledAttributes.getInt(R.styleable.epaysdk_InputItem_epaysdk_enabled, -1);
        obtainStyledAttributes.recycle();
        InputItem inputItem = new InputItem(i);
        if (!TextUtils.isEmpty(string)) {
            inputItem.leftKey = string;
        }
        if (!TextUtils.isEmpty(string2)) {
            inputItem.hint = string2;
        }
        if (color != 0) {
            inputItem.inputColor = color;
        }
        if (color2 != 0) {
            inputItem.hintTextColor = color2;
        }
        if (i2 != -1) {
            inputItem.canEdit = i2 == 0;
        }
        init(inputItem);
    }

    private void init() {
        inflate(getContext(), R.layout.epaysdk_view_card_item, this);
    }

    public void init(InputItem item) {
        ((TextView) findViewById(R.id.tvKey)).setText(item.leftKey);
        ContentWithSpaceEditText contentWithSpaceEditText = (ContentWithSpaceEditText) findViewById(R.id.etContent);
        contentWithSpaceEditText.setHint(item.hint);
        if (item.hintTextColor != 0) {
            contentWithSpaceEditText.setHintTextColor(item.hintTextColor);
        }
        contentWithSpaceEditText.setFocusable(item.canEdit);
        if (item.inputColor != 0) {
            contentWithSpaceEditText.setTextColor(item.inputColor);
        }
        if (item.listener != null) {
            contentWithSpaceEditText.setClickable(true);
            contentWithSpaceEditText.setOnClickListener(item.listener);
        }
        if (item.inputMaxLength != 0) {
            contentWithSpaceEditText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(item.inputMaxLength)});
        }
        if (item.textInputType != 0) {
            contentWithSpaceEditText.setInputType(item.textInputType);
        }
        contentWithSpaceEditText.setContentType(item.contentType);
        if (item.hasTip) {
            ((TipsView) findViewById(R.id.ivTips)).setType(item.tipType);
        } else {
            findViewById(R.id.ivTips).setVisibility(8);
            if (item.canEdit) {
                contentWithSpaceEditText.setCompoundDrawablesWithIntrinsicBounds(0, 0, R.drawable.epaysdk_icon_cleanup, 0);
            }
        }
        if (!TextUtils.isEmpty(item.cacheContent)) {
            contentWithSpaceEditText.setText(item.cacheContent);
        }
    }

    public String getContent() {
        return ((ContentWithSpaceEditText) getEditText()).getTextWithoutSpace();
    }

    public EditText getEditText() {
        return (ContentWithSpaceEditText) findViewById(R.id.etContent);
    }

    public void bindButton(EditBindButtonUtil util) {
        util.addEditText(getEditText());
    }

    public void setContent(String content) {
        getEditText().setText(content);
    }

    public void setHint(String content) {
        getEditText().setHint(content);
    }
}
