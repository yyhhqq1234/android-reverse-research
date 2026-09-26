package com.netease.epay.sdk.base.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.DigitsKeyListener;
import android.util.AttributeSet;
import com.netease.epay.sdk.base.R;
import com.netease.epay.sdk.base.util.ToastUtil;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class ContentWithSpaceEditText extends CleanUpEditText {
    public static final int TYPE_CARD = 1;
    public static final int TYPE_COMMON = -1;
    public static final int TYPE_IDCARD = 2;
    public static final int TYPE_OILCARD = 7;
    public static final int TYPE_PHONE = 0;
    private int before;
    private int contentType;
    private int count;
    private String digits;
    private int maxLength;
    private int start;
    private TextWatcher watcher;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface ContentSpaceType {
    }

    public ContentWithSpaceEditText(Context context) {
        this(context, null);
    }

    public ContentWithSpaceEditText(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.maxLength = 100;
        this.watcher = new TextWatcher() { // from class: com.netease.epay.sdk.base.view.ContentWithSpaceEditText.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence s, int start, int before, int count) {
                ContentWithSpaceEditText.this.start = start;
                ContentWithSpaceEditText.this.before = before;
                ContentWithSpaceEditText.this.count = count;
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable s) {
                if (s != null) {
                    boolean z = ContentWithSpaceEditText.this.start + ContentWithSpaceEditText.this.count < s.length();
                    boolean z2 = !z && ContentWithSpaceEditText.this.isSpace(s.length());
                    if (z || z2 || ContentWithSpaceEditText.this.count > 1) {
                        String replace = s.toString().replace(" ", "");
                        StringBuilder sb = new StringBuilder();
                        int i = 0;
                        for (int i2 = 0; i2 < replace.length(); i2++) {
                            sb.append(replace.substring(i2, i2 + 1));
                            if (ContentWithSpaceEditText.this.isSpace(i2 + 2 + i)) {
                                sb.append(" ");
                                i++;
                            }
                        }
                        ContentWithSpaceEditText.this.removeTextChangedListener(ContentWithSpaceEditText.this.watcher);
                        s.replace(0, s.length(), sb);
                        if (!z || ContentWithSpaceEditText.this.count > 1) {
                            ContentWithSpaceEditText.this.setSelection(s.length() <= ContentWithSpaceEditText.this.maxLength ? s.length() : ContentWithSpaceEditText.this.maxLength);
                        } else if (ContentWithSpaceEditText.this.before <= 1 || ContentWithSpaceEditText.this.count != 0) {
                            if (ContentWithSpaceEditText.this.count == 0) {
                                if (ContentWithSpaceEditText.this.isSpace((ContentWithSpaceEditText.this.start - ContentWithSpaceEditText.this.before) + 1)) {
                                    ContentWithSpaceEditText.this.setSelection(ContentWithSpaceEditText.this.start - ContentWithSpaceEditText.this.before > 0 ? ContentWithSpaceEditText.this.start - ContentWithSpaceEditText.this.before : 0);
                                } else {
                                    ContentWithSpaceEditText.this.setSelection((ContentWithSpaceEditText.this.start - ContentWithSpaceEditText.this.before) + 1 > s.length() ? s.length() : (ContentWithSpaceEditText.this.start - ContentWithSpaceEditText.this.before) + 1);
                                }
                            } else if (ContentWithSpaceEditText.this.isSpace((ContentWithSpaceEditText.this.start - ContentWithSpaceEditText.this.before) + ContentWithSpaceEditText.this.count)) {
                                ContentWithSpaceEditText.this.setSelection(((ContentWithSpaceEditText.this.start + ContentWithSpaceEditText.this.count) - ContentWithSpaceEditText.this.before) + 1 < s.length() ? ((ContentWithSpaceEditText.this.start + ContentWithSpaceEditText.this.count) - ContentWithSpaceEditText.this.before) + 1 : s.length());
                            } else {
                                ContentWithSpaceEditText.this.setSelection((ContentWithSpaceEditText.this.start + ContentWithSpaceEditText.this.count) - ContentWithSpaceEditText.this.before);
                            }
                        } else {
                            ContentWithSpaceEditText.this.setSelection(ContentWithSpaceEditText.this.start);
                        }
                        ContentWithSpaceEditText.this.addTextChangedListener(ContentWithSpaceEditText.this.watcher);
                    }
                }
            }
        };
        parseAttributeSet(context, attrs);
    }

    public ContentWithSpaceEditText(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.maxLength = 100;
        this.watcher = new TextWatcher() { // from class: com.netease.epay.sdk.base.view.ContentWithSpaceEditText.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence s, int start, int before, int count) {
                ContentWithSpaceEditText.this.start = start;
                ContentWithSpaceEditText.this.before = before;
                ContentWithSpaceEditText.this.count = count;
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable s) {
                if (s != null) {
                    boolean z = ContentWithSpaceEditText.this.start + ContentWithSpaceEditText.this.count < s.length();
                    boolean z2 = !z && ContentWithSpaceEditText.this.isSpace(s.length());
                    if (z || z2 || ContentWithSpaceEditText.this.count > 1) {
                        String replace = s.toString().replace(" ", "");
                        StringBuilder sb = new StringBuilder();
                        int i = 0;
                        for (int i2 = 0; i2 < replace.length(); i2++) {
                            sb.append(replace.substring(i2, i2 + 1));
                            if (ContentWithSpaceEditText.this.isSpace(i2 + 2 + i)) {
                                sb.append(" ");
                                i++;
                            }
                        }
                        ContentWithSpaceEditText.this.removeTextChangedListener(ContentWithSpaceEditText.this.watcher);
                        s.replace(0, s.length(), sb);
                        if (!z || ContentWithSpaceEditText.this.count > 1) {
                            ContentWithSpaceEditText.this.setSelection(s.length() <= ContentWithSpaceEditText.this.maxLength ? s.length() : ContentWithSpaceEditText.this.maxLength);
                        } else if (ContentWithSpaceEditText.this.before <= 1 || ContentWithSpaceEditText.this.count != 0) {
                            if (ContentWithSpaceEditText.this.count == 0) {
                                if (ContentWithSpaceEditText.this.isSpace((ContentWithSpaceEditText.this.start - ContentWithSpaceEditText.this.before) + 1)) {
                                    ContentWithSpaceEditText.this.setSelection(ContentWithSpaceEditText.this.start - ContentWithSpaceEditText.this.before > 0 ? ContentWithSpaceEditText.this.start - ContentWithSpaceEditText.this.before : 0);
                                } else {
                                    ContentWithSpaceEditText.this.setSelection((ContentWithSpaceEditText.this.start - ContentWithSpaceEditText.this.before) + 1 > s.length() ? s.length() : (ContentWithSpaceEditText.this.start - ContentWithSpaceEditText.this.before) + 1);
                                }
                            } else if (ContentWithSpaceEditText.this.isSpace((ContentWithSpaceEditText.this.start - ContentWithSpaceEditText.this.before) + ContentWithSpaceEditText.this.count)) {
                                ContentWithSpaceEditText.this.setSelection(((ContentWithSpaceEditText.this.start + ContentWithSpaceEditText.this.count) - ContentWithSpaceEditText.this.before) + 1 < s.length() ? ((ContentWithSpaceEditText.this.start + ContentWithSpaceEditText.this.count) - ContentWithSpaceEditText.this.before) + 1 : s.length());
                            } else {
                                ContentWithSpaceEditText.this.setSelection((ContentWithSpaceEditText.this.start + ContentWithSpaceEditText.this.count) - ContentWithSpaceEditText.this.before);
                            }
                        } else {
                            ContentWithSpaceEditText.this.setSelection(ContentWithSpaceEditText.this.start);
                        }
                        ContentWithSpaceEditText.this.addTextChangedListener(ContentWithSpaceEditText.this.watcher);
                    }
                }
            }
        };
        parseAttributeSet(context, attrs);
    }

    private void parseAttributeSet(Context context, AttributeSet attrs) {
        setSingleLine();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.epaysdk_ContentWithSpaceEditText, 0, 0);
        this.contentType = obtainStyledAttributes.getInt(R.styleable.epaysdk_ContentWithSpaceEditText_epaysdk_type, 0);
        obtainStyledAttributes.recycle();
        setContentType(this.contentType);
    }

    private void initType() {
        if (this.contentType == 0) {
            this.maxLength = 13;
            this.digits = "0123456789 ";
            setInputType(2);
        } else if (this.contentType == 1) {
            this.maxLength = 31;
            this.digits = "0123456789 ";
            setInputType(2);
        } else if (this.contentType == 2) {
            this.maxLength = 20;
            this.digits = null;
            setInputType(1);
        } else if (this.contentType == 7) {
            this.maxLength = 37;
            this.digits = null;
            setInputType(1);
        } else {
            this.maxLength = 100;
            this.digits = null;
            setInputType(1);
        }
        setFilters(new InputFilter[]{new InputFilter.LengthFilter(this.maxLength)});
    }

    @Override // android.widget.TextView
    public void setInputType(int type) {
        if (this.contentType == 0 || this.contentType == 1) {
            type = 2;
        } else if (this.contentType == 2) {
            type = 1;
        }
        super.setInputType(type);
        if (!TextUtils.isEmpty(this.digits)) {
            setKeyListener(DigitsKeyListener.getInstance(this.digits));
        }
    }

    public void setContentType(int contentType) {
        this.contentType = contentType;
        initType();
        if (contentType == -1) {
            removeTextChangedListener(this.watcher);
        } else {
            addTextChangedListener(this.watcher);
        }
    }

    @Override // android.widget.EditText
    public void setSelection(int index) {
        if (index < 0) {
            index = 0;
        } else if (index > getText().toString().length()) {
            index = getText().toString().length();
        } else if (index > this.maxLength) {
            index = this.maxLength;
        }
        super.setSelection(index);
    }

    public String getTextWithoutSpace() {
        return super.getText().toString().replace(" ", "");
    }

    public boolean checkTextWrong(boolean isShowToast) {
        String str;
        String textWithoutSpace = getTextWithoutSpace();
        Pattern rightPattern = getRightPattern();
        if (rightPattern == null || rightPattern.matcher(textWithoutSpace).matches()) {
            return false;
        }
        if (isShowToast) {
            switch (this.contentType) {
                case 0:
                    str = "手机号";
                    break;
                case 1:
                    str = "银行卡号";
                    break;
                case 2:
                    str = "身份证号";
                    break;
                default:
                    str = "输入内容";
                    break;
            }
            ToastUtil.show(getContext(), str + "格式错误，请重新输入");
        }
        return true;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0002. Please report as an issue. */
    private Pattern getRightPattern() {
        String str;
        switch (this.contentType) {
            case 0:
                str = "^\\d{11}$";
                return Pattern.compile(str);
            case 1:
                str = "^\\d{14,20}$";
                return Pattern.compile(str);
            case 2:
                str = "(^\\d{15}$)|(\\d{17}([0-9]|X|x)$)";
                return Pattern.compile(str);
            default:
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isSpace(int length) {
        if (this.contentType == 0) {
            return isSpacePhone(length);
        }
        if (this.contentType == 1) {
            return isSpaceCard(length);
        }
        if (this.contentType == 2) {
            return isSpaceIDCard(length);
        }
        if (this.contentType == 7) {
            return isSpaceCard(length);
        }
        return false;
    }

    private boolean isSpacePhone(int length) {
        return length >= 4 && (length == 4 || (length + 1) % 5 == 0);
    }

    private boolean isSpaceCard(int length) {
        return length > 0 && length % 5 == 0;
    }

    private boolean isSpaceIDCard(int length) {
        return length == 7 || length == 16;
    }
}
