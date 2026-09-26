package com.netease.dwrg;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.netease.neox.NativeInterface;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
public class InputView {
    static final int TYPE_ALPHABET = 2;
    static final int TYPE_ALPHANUMERIC = 3;
    static final int TYPE_EMAILADDRESS = 4;
    static final int TYPE_NONE = 5;
    static final int TYPE_NORMAL = 0;
    static final int TYPE_NUMBER = 1;
    private Activity m_activity;
    private Button m_cancelBtn;
    private View.OnClickListener m_cancelBtnListener;
    private int m_defaultFontColor;
    private float m_defaultFontSize;
    private Dialog m_dialog;
    private EditText m_editText;
    private int m_fontColor;
    private float m_fontSize;
    private boolean m_isVertical;
    private Button m_okBtn;
    private View.OnClickListener m_okBtnListener;
    private Drawable m_oldEditTextBg;
    private int m_paddingBottom;
    private int m_paddingLeft;
    private int m_paddingRight;
    private int m_paddingTop;
    private View m_view;
    private String m_text = null;
    private String m_hint = null;
    private int m_type = 1;
    private boolean m_input_finished = true;
    private Rect m_location = null;
    private boolean m_borderless = false;
    private String m_filter_pattern = "";

    public int getDefaultFontColor() {
        return this.m_defaultFontColor;
    }

    public float getDefaultFontSize() {
        return this.m_defaultFontSize;
    }

    public void setFilterPattern(int input_type) {
        switch (input_type) {
            case 0:
                this.m_filter_pattern = "";
                return;
            case 1:
                this.m_filter_pattern = "[0-9].*";
                return;
            case 2:
                this.m_filter_pattern = "[a-zA-Z].*";
                return;
            case 3:
                this.m_filter_pattern = "[0-9a-zA-Z].*";
                return;
            case 4:
                this.m_filter_pattern = "[a-zA-Z0-9._\\-@].*";
                return;
            default:
                this.m_filter_pattern = "";
                return;
        }
    }

    @SuppressLint({"InflateParams"})
    public InputView(Activity context) {
        this.m_activity = null;
        this.m_view = null;
        this.m_editText = null;
        this.m_okBtn = null;
        this.m_cancelBtn = null;
        this.m_okBtnListener = null;
        this.m_cancelBtnListener = null;
        this.m_dialog = null;
        this.m_isVertical = false;
        this.m_oldEditTextBg = null;
        this.m_fontColor = 0;
        this.m_fontSize = 0.0f;
        this.m_paddingLeft = 0;
        this.m_paddingRight = 0;
        this.m_paddingTop = 0;
        this.m_paddingBottom = 0;
        this.m_defaultFontColor = 0;
        this.m_defaultFontSize = 0.0f;
        this.m_activity = context;
        LayoutInflater li = LayoutInflater.from(context);
        DisplayMetrics dm = new DisplayMetrics();
        context.getWindowManager().getDefaultDisplay().getMetrics(dm);
        if (dm.widthPixels > dm.heightPixels) {
            this.m_view = li.inflate(com.identityv.shrek156.R.layout.inputview, (ViewGroup) null);
            this.m_isVertical = false;
        } else {
            this.m_view = li.inflate(com.identityv.shrek156.R.layout.inputview2, (ViewGroup) null);
            this.m_isVertical = true;
        }
        this.m_editText = (EditText) this.m_view.findViewById(com.identityv.shrek156.R.id.edit_text);
        this.m_paddingLeft = this.m_editText.getPaddingLeft();
        this.m_paddingRight = this.m_editText.getPaddingRight();
        this.m_paddingTop = this.m_editText.getPaddingTop();
        this.m_paddingBottom = this.m_editText.getPaddingBottom();
        this.m_editText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.netease.dwrg.InputView.1
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView v, int actionId, KeyEvent event) {
                if (actionId != 6) {
                    return false;
                }
                InputView.this.inputFinish(true);
                return true;
            }
        });
        this.m_oldEditTextBg = this.m_editText.getBackground();
        this.m_fontColor = this.m_editText.getCurrentTextColor();
        this.m_defaultFontColor = this.m_fontColor;
        this.m_fontSize = this.m_editText.getTextSize();
        this.m_defaultFontSize = this.m_fontSize;
        this.m_okBtn = (Button) this.m_view.findViewById(com.identityv.shrek156.R.id.ok_button);
        this.m_okBtnListener = new View.OnClickListener() { // from class: com.netease.dwrg.InputView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                InputView.this.inputFinish(true);
            }
        };
        this.m_okBtn.setOnClickListener(this.m_okBtnListener);
        this.m_cancelBtn = (Button) this.m_view.findViewById(com.identityv.shrek156.R.id.cancel_button);
        this.m_cancelBtnListener = new View.OnClickListener() { // from class: com.netease.dwrg.InputView.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                InputView.this.inputFinish(false);
            }
        };
        this.m_cancelBtn.setOnClickListener(this.m_cancelBtnListener);
        this.m_dialog = new Dialog(this.m_activity);
        this.m_dialog.requestWindowFeature(1);
        this.m_dialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.netease.dwrg.InputView.4
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface arg0) {
                InputView.this.inputFinish(false);
                Timer timer = new Timer();
                timer.schedule(new TimerTask() { // from class: com.netease.dwrg.InputView.4.1
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        View v = InputView.this.m_activity.getWindow().peekDecorView();
                        InputMethodManager inputManager = (InputMethodManager) InputView.this.m_activity.getSystemService("input_method");
                        inputManager.hideSoftInputFromWindow(v.getWindowToken(), 0);
                    }
                }, 10L);
            }
        });
        this.m_dialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.netease.dwrg.InputView.5
            @Override // android.content.DialogInterface.OnShowListener
            public void onShow(DialogInterface arg0) {
                InputMethodManager inputManager = (InputMethodManager) InputView.this.m_activity.getSystemService("input_method");
                inputManager.showSoftInput(InputView.this.m_editText, 0);
                inputManager.toggleSoftInputFromWindow(InputView.this.m_view.getWindowToken(), 2, 1);
            }
        });
        this.m_dialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.netease.dwrg.InputView.6
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialog, int keyCode, KeyEvent event) {
                if (keyCode != 4) {
                    return false;
                }
                InputView.this.inputFinish(false);
                return true;
            }
        });
        this.m_dialog.setContentView(this.m_view);
        this.m_dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        this.m_dialog.setCanceledOnTouchOutside(true);
    }

    public void setType(int type) {
        this.m_type = type;
        if (isVisible()) {
            this.m_activity.runOnUiThread(new Runnable() { // from class: com.netease.dwrg.InputView.7
                @Override // java.lang.Runnable
                public void run() {
                    InputView.this.m_editText.setInputType(InputView.this.m_type);
                }
            });
        }
    }

    public int getType() {
        return this.m_type;
    }

    public void setHint(String hint) {
        this.m_hint = hint;
        if (isVisible()) {
            this.m_activity.runOnUiThread(new Runnable() { // from class: com.netease.dwrg.InputView.8
                @Override // java.lang.Runnable
                public void run() {
                    InputView.this.m_editText.setHint(InputView.this.m_hint);
                }
            });
        }
    }

    public String getHint() {
        return this.m_hint;
    }

    public void setText(String text) {
        this.m_text = text;
        if (isVisible()) {
            this.m_activity.runOnUiThread(new Runnable() { // from class: com.netease.dwrg.InputView.9
                @Override // java.lang.Runnable
                public void run() {
                    InputView.this.m_editText.setText(InputView.this.m_text);
                    Editable editable = InputView.this.m_editText.getText();
                    if (editable != null) {
                        InputView.this.m_editText.setSelection(editable.length());
                    }
                }
            });
        }
    }

    public String getText() {
        return this.m_text;
    }

    public void show(boolean bShow) {
        if (bShow != this.m_dialog.isShowing()) {
            if (bShow) {
                this.m_input_finished = false;
                this.m_activity.runOnUiThread(new Runnable() { // from class: com.netease.dwrg.InputView.10
                    @Override // java.lang.Runnable
                    public void run() {
                        Window window = InputView.this.m_dialog.getWindow();
                        window.setSoftInputMode(5);
                        InputView.this.m_editText.setInputType(InputView.this.m_type);
                        InputView.this.m_dialog.show();
                        InputView.this.updateLocation();
                        InputView.this.updateBorderless();
                        InputView.this.updateFont();
                        if (InputView.this.m_text == null || InputView.this.m_text.length() <= 0) {
                            InputView.this.m_editText.setText("");
                        } else {
                            InputView.this.m_editText.setText(InputView.this.m_text);
                            Editable editable = InputView.this.m_editText.getText();
                            if (editable != null) {
                                InputView.this.m_editText.setSelection(editable.length());
                            }
                        }
                        if (InputView.this.m_hint == null || InputView.this.m_hint.length() <= 0) {
                            InputView.this.m_editText.setHint("");
                        } else {
                            InputView.this.m_editText.setHint(InputView.this.m_hint);
                        }
                        InputView.this.m_editText.setFocusable(true);
                        InputView.this.m_editText.setEnabled(true);
                        InputView.this.m_editText.requestFocus();
                        if (Build.VERSION.SDK_INT >= 18) {
                            View rootView = window.getDecorView().getRootView();
                            if (!rootView.isInLayout()) {
                                rootView.requestLayout();
                            }
                        }
                        if (InputView.this.m_filter_pattern.length() != 0) {
                            InputView.this.m_editText.setFilters(new InputFilter[]{new InputFilter() { // from class: com.netease.dwrg.InputView.10.1
                                @Override // android.text.InputFilter
                                public CharSequence filter(CharSequence src, int start, int end, Spanned dst, int dstart, int dend) {
                                    return (src.equals("") || src.toString().matches(InputView.this.m_filter_pattern)) ? src : "";
                                }
                            }});
                        } else {
                            InputView.this.m_editText.setFilters(new InputFilter[0]);
                        }
                    }
                });
            } else {
                this.m_activity.runOnUiThread(new Runnable() { // from class: com.netease.dwrg.InputView.11
                    @Override // java.lang.Runnable
                    public void run() {
                        InputView.this.inputFinish(false);
                    }
                });
            }
        }
    }

    public boolean isVisible() {
        return this.m_dialog.isShowing();
    }

    public void inputFinish(boolean isConfirm) {
        if (!this.m_input_finished) {
            this.m_input_finished = true;
            String text = this.m_editText.getText().toString();
            this.m_dialog.cancel();
            NativeInterface.NativeOnInputFinish(text, isConfirm);
        }
    }

    public void setLocation(int x, int y, int w, int h) {
        if (w == 0 || h == 0) {
            this.m_location = null;
        } else {
            this.m_location = new Rect(x, y, x + w, y + h);
        }
        if (isVisible()) {
            this.m_activity.runOnUiThread(new Runnable() { // from class: com.netease.dwrg.InputView.12
                @Override // java.lang.Runnable
                public void run() {
                    InputView.this.updateLocation();
                }
            });
        }
    }

    public int[] getLocation() {
        if (this.m_location == null) {
            return null;
        }
        return new int[]{this.m_location.left, this.m_location.top, this.m_location.width(), this.m_location.height()};
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"RtlHardcoded"})
    public void updateLocation() {
        Window window = this.m_dialog.getWindow();
        WindowManager.LayoutParams params = window.getAttributes();
        params.flags |= 1792;
        params.gravity = 51;
        if (this.m_location == null) {
            params.x = 0;
            params.y = 0;
            params.width = -1;
            params.height = -2;
        } else {
            params.x = this.m_location.left;
            params.y = this.m_location.top;
            params.width = this.m_location.width();
            params.height = this.m_location.height();
        }
        window.setAttributes(params);
    }

    public void setBorderless(boolean borderless) {
        if (this.m_borderless != borderless) {
            this.m_borderless = borderless;
            if (isVisible()) {
                this.m_activity.runOnUiThread(new Runnable() { // from class: com.netease.dwrg.InputView.13
                    @Override // java.lang.Runnable
                    public void run() {
                        InputView.this.updateBorderless();
                    }
                });
            }
        }
    }

    public boolean isBorderless() {
        return this.m_borderless;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBorderless() {
        WindowManager.LayoutParams winparams = this.m_dialog.getWindow().getAttributes();
        if (this.m_borderless) {
            winparams.flags &= -3;
            RelativeLayout.LayoutParams params = (RelativeLayout.LayoutParams) this.m_editText.getLayoutParams();
            if (Build.VERSION.SDK_INT >= 17) {
                params.removeRule(0);
            } else {
                params.addRule(0, 0);
            }
            params.height = -1;
            this.m_editText.setLayoutParams(params);
            this.m_editText.setBackgroundColor(0);
            this.m_editText.setPadding(0, 0, 0, 0);
            this.m_editText.setIncludeFontPadding(false);
            this.m_okBtn.setVisibility(4);
            this.m_cancelBtn.setVisibility(4);
            RelativeLayout.LayoutParams params2 = (RelativeLayout.LayoutParams) this.m_cancelBtn.getLayoutParams();
            if (Build.VERSION.SDK_INT >= 17) {
                params2.removeRule(3);
            } else {
                params2.addRule(3, 0);
            }
            this.m_cancelBtn.setLayoutParams(params2);
        } else {
            winparams.flags |= 2;
            RelativeLayout.LayoutParams params3 = (RelativeLayout.LayoutParams) this.m_editText.getLayoutParams();
            if (!this.m_isVertical) {
                params3.addRule(0, com.identityv.shrek156.R.id.ok_button);
            }
            params3.height = -2;
            this.m_editText.setLayoutParams(params3);
            if (Build.VERSION.SDK_INT >= 16) {
                this.m_editText.setBackground(this.m_oldEditTextBg);
            } else {
                this.m_editText.setBackgroundDrawable(this.m_oldEditTextBg);
            }
            this.m_editText.setPadding(this.m_paddingLeft, this.m_paddingRight, this.m_paddingTop, this.m_paddingBottom);
            this.m_editText.setIncludeFontPadding(true);
            this.m_okBtn.setVisibility(0);
            this.m_cancelBtn.setVisibility(0);
            if (this.m_isVertical) {
                RelativeLayout.LayoutParams params4 = (RelativeLayout.LayoutParams) this.m_cancelBtn.getLayoutParams();
                params4.addRule(3, com.identityv.shrek156.R.id.edit_text);
                this.m_cancelBtn.setLayoutParams(params4);
            }
        }
        this.m_dialog.getWindow().setAttributes(winparams);
    }

    public void setFontSize(float size) {
        this.m_fontSize = size;
        if (isVisible()) {
            this.m_activity.runOnUiThread(new Runnable() { // from class: com.netease.dwrg.InputView.14
                @Override // java.lang.Runnable
                public void run() {
                    InputView.this.updateFont();
                }
            });
        }
    }

    public float getFontSize() {
        return this.m_fontSize;
    }

    public void setFontColor(int color) {
        this.m_fontColor = color;
        if (isVisible()) {
            this.m_activity.runOnUiThread(new Runnable() { // from class: com.netease.dwrg.InputView.15
                @Override // java.lang.Runnable
                public void run() {
                    InputView.this.updateFont();
                }
            });
        }
    }

    public int getFontColor() {
        return this.m_fontColor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFont() {
        this.m_editText.setTextSize(0, this.m_fontSize);
        this.m_editText.setTextColor(this.m_fontColor);
    }
}
