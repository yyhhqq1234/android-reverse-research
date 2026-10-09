package com.android.support;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.text.Html;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.method.DigitsKeyListener;
import android.util.Base64;
import android.util.Log;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebView;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.internal.view.SupportMenu;
import com.google.android.gms.drive.DriveFile;
import java.util.Arrays;
import java.util.LinkedList;
import org.json.mediationsdk.utils.IronSourceConstants;
import org.json.rb;

/* JADX INFO: loaded from: classes4.dex */
public class Menu {
    public static final String TAG = "Mod_Menu";
    Button closeBtn;
    Context getContext;
    Button hideBtn;
    LinearLayout mCollapse;
    RelativeLayout mCollapsed;
    LinearLayout mExpanded;
    RelativeLayout mRootContainer;
    LinearLayout mSettings;
    WindowManager mWindowManager;
    LinearLayout mods;
    boolean overlayRequired;
    FrameLayout rootFrame;
    LinearLayout.LayoutParams scrlLL;
    LinearLayout.LayoutParams scrlLLExpanded;
    ScrollView scrollView;
    ImageView startimage;
    boolean stopChecking;
    WindowManager.LayoutParams vmParams;
    int TEXT_COLOR = Color.parseColor("#FF00FF00");
    int TEXT_COLOR_2 = Color.parseColor("#FFFFFF");
    int BTN_COLOR = Color.parseColor("#04000000");
    int MENU_BG_COLOR = Color.parseColor("#A9000000");
    int MENU_FEATURE_BG_COLOR = Color.parseColor("#43000000");
    int MENU_WIDTH = IronSourceConstants.INTERSTITIAL_DAILY_CAPPED;
    int MENU_HEIGHT = IronSourceConstants.INTERSTITIAL_DAILY_CAPPED;
    int POS_X = 0;
    int POS_Y = 100;
    float MENU_CORNER = 6.0f;
    float SET = 18.0f;
    int ICON_SIZE = 45;
    float ICON_ALPHA = 0.7f;
    int ToggleON = -16711936;
    int ToggleOFF = SupportMenu.CATEGORY_MASK;
    int BtnON = Color.parseColor("#1b5e20");
    int BtnOFF = Color.parseColor("#7f0000");
    int CategoryBG = Color.parseColor("#FF267719");
    int SeekBarColor = Color.parseColor("#FF00FF00");
    int SeekBarProgressColor = Color.parseColor("#FF00FF00");
    int CheckBoxColor = Color.parseColor("#FF00FF00");
    int RadioColor = Color.parseColor("#FFFFFF");
    int CollapseColor = Color.parseColor("#232F2C");
    String NumberTxtColor = "#41c300";
    int LST_MAB = Color.parseColor("#A000FF00");

    native String[] GetFeatureList();

    native String Icon();

    native String IconWebViewData();

    native void Init(Context context, TextView textView, TextView textView2);

    native boolean IsGameLibLoaded();

    native String[] SettingsList();

    /* JADX INFO: Access modifiers changed from: private */
    public void MyToast(Context context, String str) {
        TextView textView = new TextView(context);
        textView.setText(str);
        textView.setPadding(20, 10, 20, 10);
        textView.setTextColor(this.LST_MAB);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(this.CategoryBG);
        gradientDrawable.setCornerRadii(new float[]{30, 30, 0, 0, 30, 30, 0, 0});
        gradientDrawable.setStroke(3, this.LST_MAB);
        textView.setBackgroundDrawable(gradientDrawable);
        Toast toastMakeText = Toast.makeText(context, (CharSequence) null, 0);
        toastMakeText.setView(textView);
        toastMakeText.show();
    }

    private void AddColor(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i);
        gradientDrawable.setCornerRadii(new float[]{i6, i7, i8, i9, i10, i11, i12, i13});
        gradientDrawable.setStroke(i2, i5, i3, i4);
        view.setBackgroundDrawable(gradientDrawable);
    }

    public Menu(Context context) {
        LinearLayout.LayoutParams layoutParams;
        this.getContext = context;
        Preferences.context = context;
        this.rootFrame = new FrameLayout(context);
        this.rootFrame.setOnTouchListener(onTouchListener());
        this.mRootContainer = new RelativeLayout(context);
        this.mCollapsed = new RelativeLayout(context);
        this.mCollapsed.setVisibility(0);
        this.mCollapsed.setAlpha(this.ICON_ALPHA);
        this.mExpanded = new LinearLayout(context);
        this.mExpanded.setVisibility(8);
        this.mExpanded.setBackgroundColor(this.MENU_BG_COLOR);
        this.mExpanded.setOrientation(1);
        this.mExpanded.setPadding(8, 8, 8, 8);
        this.mExpanded.setLayoutParams(new LinearLayout.LayoutParams(dp(this.MENU_WIDTH), -2));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(this.MENU_CORNER);
        gradientDrawable.setColor(this.MENU_BG_COLOR);
        gradientDrawable.setStroke(3, Color.parseColor("#FF00FF00"));
        this.mExpanded.setBackground(gradientDrawable);
        this.startimage = new ImageView(context);
        this.startimage.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        int iApplyDimension = (int) TypedValue.applyDimension(1, this.ICON_SIZE, context.getResources().getDisplayMetrics());
        this.startimage.getLayoutParams().height = iApplyDimension;
        this.startimage.getLayoutParams().width = iApplyDimension;
        this.startimage.setScaleType(ImageView.ScaleType.FIT_XY);
        byte[] bArrDecode = Base64.decode(Icon(), 0);
        this.startimage.setImageBitmap(BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length));
        ((ViewGroup.MarginLayoutParams) this.startimage.getLayoutParams()).topMargin = convertDipToPixels(10);
        this.startimage.setOnTouchListener(onTouchListener());
        this.startimage.setOnClickListener(new View.OnClickListener(this) { // from class: com.android.support.Menu.100000000
            private final Menu this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.this$0.mCollapsed.setVisibility(8);
                this.this$0.mExpanded.setVisibility(0);
            }
        });
        WebView webView = new WebView(context);
        webView.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        int iApplyDimension2 = (int) TypedValue.applyDimension(1, this.ICON_SIZE, context.getResources().getDisplayMetrics());
        webView.getLayoutParams().height = iApplyDimension2;
        webView.getLayoutParams().width = iApplyDimension2;
        webView.loadData(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append("<html>").append("<head></head>").toString()).append("<body style=\"margin: 0; padding: 0\">").toString()).append("<img src=\"").toString()).append(IconWebViewData()).toString()).append("\" width=\"").toString()).append(this.ICON_SIZE).toString()).append("\" height=\"").toString()).append(this.ICON_SIZE).toString()).append("\" >").toString()).append("</body>").toString()).append("</html>").toString(), "text/html", rb.N);
        webView.setBackgroundColor(0);
        webView.setAlpha(this.ICON_ALPHA);
        webView.getSettings().setCacheMode(2);
        webView.setOnTouchListener(onTouchListener());
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setPadding(10, 5, 10, 5);
        relativeLayout.setVerticalGravity(16);
        TitanicTextView titanicTextView = new TitanicTextView(context);
        titanicTextView.setTextColor(this.TEXT_COLOR);
        titanicTextView.setTextSize(27.0f);
        titanicTextView.setGravity(17);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(14);
        titanicTextView.setLayoutParams(layoutParams2);
        new Titanic().start(titanicTextView);
        TextView textView = new TextView(context);
        textView.setEllipsize(TextUtils.TruncateAt.MARQUEE);
        textView.setMarqueeRepeatLimit(-1);
        textView.setSingleLine(true);
        textView.setSelected(true);
        textView.setTextColor(this.TEXT_COLOR_2);
        textView.setTextSize(12.0f);
        textView.setGravity(17);
        textView.setPadding(0, 0, 0, 5);
        this.scrollView = new ScrollView(context);
        this.scrlLL = new LinearLayout.LayoutParams(-1, dp(this.MENU_HEIGHT));
        this.scrlLLExpanded = new LinearLayout.LayoutParams(this.mExpanded.getLayoutParams());
        this.scrlLLExpanded.weight = 1.0f;
        ScrollView scrollView = this.scrollView;
        if (Preferences.isExpanded) {
            layoutParams = this.scrlLLExpanded;
        } else {
            layoutParams = this.scrlLL;
        }
        scrollView.setLayoutParams(layoutParams);
        this.scrollView.setBackgroundColor(this.MENU_FEATURE_BG_COLOR);
        this.mods = new LinearLayout(context);
        this.mods.setOrientation(1);
        RelativeLayout relativeLayout2 = new RelativeLayout(context);
        relativeLayout2.setPadding(-2, 3, -2, 3);
        relativeLayout2.setVerticalGravity(17);
        relativeLayout2.setBackgroundColor(this.MENU_FEATURE_BG_COLOR);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.addRule(9);
        this.hideBtn = new Button(context);
        this.hideBtn.setLayoutParams(layoutParams3);
        AddColor(this.hideBtn, this.BTN_COLOR, 3, 0, 0, this.LST_MAB, 0, 0, 30, 30, 0, 0, 0, 0);
        this.hideBtn.setText("𝙷𝙸𝙳𝙴");
        this.hideBtn.setTextColor(this.TEXT_COLOR);
        this.hideBtn.setTypeface((Typeface) null, 1);
        this.hideBtn.setOnClickListener(new View.OnClickListener(this) { // from class: com.android.support.Menu.100000001
            private final Menu this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.this$0.mCollapsed.setVisibility(0);
                this.this$0.mCollapsed.setAlpha(0);
                this.this$0.mExpanded.setVisibility(8);
                Toast.makeText(view.getContext(), "Icon hidden. Remember the hidden icon position", 1).show();
            }
        });
        this.hideBtn.setOnLongClickListener(new View.OnLongClickListener(this) { // from class: com.android.support.Menu.100000002
            private final Menu this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                Toast.makeText(view.getContext(), "Menu killed", 1).show();
                this.this$0.rootFrame.removeView(this.this$0.mRootContainer);
                this.this$0.mWindowManager.removeView(this.this$0.rootFrame);
                return false;
            }
        });
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams4.addRule(11);
        this.closeBtn = new Button(context);
        this.closeBtn.setLayoutParams(layoutParams4);
        AddColor(this.closeBtn, this.BTN_COLOR, 3, 0, 0, this.LST_MAB, 30, 30, 0, 0, 0, 0, 0, 0);
        this.closeBtn.setText("𝙼𝙸𝙽𝙸𝙼𝙸𝚉𝙴");
        this.closeBtn.setTextColor(this.TEXT_COLOR);
        this.closeBtn.setTypeface((Typeface) null, 1);
        this.closeBtn.setOnClickListener(new View.OnClickListener(this) { // from class: com.android.support.Menu.100000003
            private final Menu this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.this$0.mCollapsed.setVisibility(0);
                this.this$0.mCollapsed.setAlpha(this.this$0.ICON_ALPHA);
                this.this$0.mExpanded.setVisibility(8);
            }
        });
        this.mRootContainer.addView(this.mCollapsed);
        this.mRootContainer.addView(this.mExpanded);
        if (IconWebViewData() == null) {
            this.mCollapsed.addView(this.startimage);
        } else {
            this.mCollapsed.addView(webView);
        }
        relativeLayout.addView(titanicTextView);
        this.mExpanded.addView(relativeLayout);
        this.mExpanded.addView(textView);
        this.scrollView.addView(this.mods);
        this.mExpanded.addView(this.scrollView);
        relativeLayout2.addView(this.hideBtn);
        relativeLayout2.addView(this.closeBtn);
        this.mExpanded.addView(relativeLayout2);
        Init(context, titanicTextView, textView);
    }

    public void ShowMenu() {
        this.rootFrame.addView(this.mRootContainer);
        Handler handler = new Handler();
        handler.postDelayed(new Runnable(this, handler) { // from class: com.android.support.Menu.100000004
            private final Menu this$0;
            private final Handler val$handler;
            boolean viewLoaded = false;

            {
                this.this$0 = this;
                this.val$handler = handler;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (Preferences.loadPref && !this.this$0.IsGameLibLoaded() && !this.this$0.stopChecking) {
                    if (!this.viewLoaded) {
                        this.this$0.Category(this.this$0.mods, "Save preferences was been enabled. Waiting for game lib to be loaded...\n\nForce load menu may not apply mods instantly. You would need to reactivate them again");
                        this.this$0.Button(this.this$0.mods, -100, "Force load menu");
                        this.viewLoaded = true;
                    }
                    this.val$handler.postDelayed(this, 600);
                    return;
                }
                this.this$0.mods.removeAllViews();
                this.this$0.featureList(this.this$0.GetFeatureList(), this.this$0.mods);
            }
        }, 500);
    }

    @SuppressLint("WrongConstant")
    public void SetWindowManagerWindowService() {
        this.vmParams = new WindowManager.LayoutParams(-2, -2, Build.VERSION.SDK_INT >= 26 ? 2038 : 2002, 67108872, -3);
        this.vmParams.gravity = 51;
        this.vmParams.x = this.POS_X;
        this.vmParams.y = this.POS_Y;
        this.mWindowManager = (WindowManager) this.getContext.getSystemService("window");
        this.mWindowManager.addView(this.rootFrame, this.vmParams);
        this.overlayRequired = true;
    }

    @SuppressLint("WrongConstant")
    public void SetWindowManagerActivity() {
        this.vmParams = new WindowManager.LayoutParams(-2, -2, this.POS_X, this.POS_Y, 2, 41943304, -2);
        this.vmParams.gravity = 51;
        this.vmParams.x = this.POS_X;
        this.vmParams.y = this.POS_Y;
        this.mWindowManager = ((Activity) this.getContext).getWindowManager();
        this.mWindowManager.addView(this.rootFrame, this.vmParams);
    }

    private View.OnTouchListener onTouchListener() {
        return new View.OnTouchListener(this) { // from class: com.android.support.Menu.100000005
            final View collapsedView;
            final View expandedView;
            private float initialTouchX;
            private float initialTouchY;
            private int initialX;
            private int initialY;
            private final Menu this$0;

            {
                this.this$0 = this;
                this.collapsedView = this.this$0.mCollapsed;
                this.expandedView = this.this$0.mExpanded;
            }

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                switch (motionEvent.getAction()) {
                    case 0:
                        this.initialX = this.this$0.vmParams.x;
                        this.initialY = this.this$0.vmParams.y;
                        this.initialTouchX = motionEvent.getRawX();
                        this.initialTouchY = motionEvent.getRawY();
                        return true;
                    case 1:
                        int rawX = (int) (motionEvent.getRawX() - this.initialTouchX);
                        int rawY = (int) (motionEvent.getRawY() - this.initialTouchY);
                        this.this$0.mExpanded.setAlpha(1.0f);
                        this.this$0.mCollapsed.setAlpha(1.0f);
                        if (rawX < 10 && rawY < 10 && this.this$0.isViewCollapsed()) {
                            try {
                                this.collapsedView.setVisibility(8);
                                this.expandedView.setVisibility(0);
                                break;
                            } catch (NullPointerException e) {
                            }
                        }
                        return true;
                    case 2:
                        this.this$0.mExpanded.setAlpha(0.5f);
                        this.this$0.mCollapsed.setAlpha(0.5f);
                        this.this$0.vmParams.x = this.initialX + ((int) (motionEvent.getRawX() - this.initialTouchX));
                        this.this$0.vmParams.y = this.initialY + ((int) (motionEvent.getRawY() - this.initialTouchY));
                        this.this$0.mWindowManager.updateViewLayout(this.this$0.rootFrame, this.this$0.vmParams);
                        return true;
                    default:
                        return false;
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void featureList(String[] strArr, LinearLayout linearLayout) {
        int i;
        int i2 = 0;
        for (int i3 = 0; i3 < strArr.length; i3++) {
            boolean z = false;
            String strReplaceFirst = strArr[i3];
            if (strReplaceFirst.contains("_True")) {
                z = true;
                strReplaceFirst = strReplaceFirst.replaceFirst("_True", "");
            }
            LinearLayout linearLayout2 = linearLayout;
            if (strReplaceFirst.contains("CollapseAdd_")) {
                linearLayout2 = this.mCollapse;
                strReplaceFirst = strReplaceFirst.replaceFirst("CollapseAdd_", "");
            }
            String[] strArrSplit = strReplaceFirst.split("_");
            if (TextUtils.isDigitsOnly(strArrSplit[0]) || strArrSplit[0].matches("-[0-9]*")) {
                i = Integer.parseInt(strArrSplit[0]);
                strReplaceFirst = strReplaceFirst.replaceFirst(new StringBuffer().append(strArrSplit[0]).append("_").toString(), "");
                i2++;
            } else {
                i = i3 - i2;
            }
            String[] strArrSplit2 = strReplaceFirst.split("_");
            String str = strArrSplit2[0];
            if (str.equals("Toggle")) {
                Switch(linearLayout2, i, strArrSplit2[1], z);
            } else if (str.equals("SeekBar")) {
                SeekBar(linearLayout2, i, strArrSplit2[1], Integer.parseInt(strArrSplit2[2]), Integer.parseInt(strArrSplit2[3]));
            } else if (str.equals("Button")) {
                Button(linearLayout2, i, strArrSplit2[1]);
            } else if (str.equals("ButtonOnOff")) {
                ButtonOnOff(linearLayout2, i, strArrSplit2[1], z);
            } else if (str.equals("Spinner")) {
                TextView(linearLayout2, strArrSplit2[1]);
                Spinner(linearLayout2, i, strArrSplit2[1], strArrSplit2[2]);
            } else if (str.equals("InputText")) {
                InputText(linearLayout2, i, strArrSplit2[1]);
            } else if (str.equals("InputValue")) {
                if (strArrSplit2.length == 3) {
                    InputNum(linearLayout2, i, strArrSplit2[2], Integer.parseInt(strArrSplit2[1]));
                }
                if (strArrSplit2.length == 2) {
                    InputNum(linearLayout2, i, strArrSplit2[1], 0);
                }
            } else if (str.equals("InputLValue")) {
                if (strArrSplit2.length == 3) {
                    InputLNum(linearLayout2, i, strArrSplit2[2], Long.parseLong(strArrSplit2[1]));
                }
                if (strArrSplit2.length == 2) {
                    InputLNum(linearLayout2, i, strArrSplit2[1], 0);
                }
            } else if (str.equals("CheckBox")) {
                CheckBox(linearLayout2, i, strArrSplit2[1], z);
            } else if (str.equals("RadioButton")) {
                RadioButton(linearLayout2, i, strArrSplit2[1], strArrSplit2[2]);
            } else if (str.equals("Collapse")) {
                Collapse(linearLayout2, strArrSplit2[1], z);
                i2++;
            } else if (str.equals("ButtonLink")) {
                i2++;
                ButtonLink(linearLayout2, strArrSplit2[1], strArrSplit2[2]);
            } else if (str.equals("Category")) {
                i2++;
                Category(linearLayout2, strArrSplit2[1]);
            } else if (str.equals("RichTextView")) {
                i2++;
                TextView(linearLayout2, strArrSplit2[1]);
            } else if (str.equals("RichWebView")) {
                i2++;
                WebTextView(linearLayout2, strArrSplit2[1]);
            }
        }
    }

    private void Switch(LinearLayout linearLayout, int i, String str, boolean z) {
        Switch r11 = new Switch(this.getContext);
        ColorStateList colorStateList = new ColorStateList(new int[][]{new int[]{-16842910}, new int[]{android.R.attr.state_checked}, new int[0]}, new int[]{-16776961, this.ToggleON, this.ToggleOFF});
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                r11.getThumbDrawable().setTintList(colorStateList);
                r11.getTrackDrawable().setTintList(colorStateList);
            } catch (NullPointerException e) {
                Log.d(TAG, String.valueOf(e));
            }
        }
        r11.setText(str);
        r11.setTextColor(this.TEXT_COLOR_2);
        r11.setPadding(10, 5, 0, 5);
        r11.setTextSize(this.SET);
        r11.setChecked(Preferences.loadPrefBool(str, i, z));
        r11.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this, str, i, r11) { // from class: com.android.support.Menu.100000006
            private final Menu this$0;
            private final String val$featName;
            private final int val$featNum;
            private final Switch val$switchR;

            {
                this.this$0 = this;
                this.val$featName = str;
                this.val$featNum = i;
                this.val$switchR = r11;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
                LinearLayout.LayoutParams layoutParams;
                Preferences.changeFeatureBool(this.val$featName, this.val$featNum, z2);
                switch (this.val$featNum) {
                    case -3:
                        Preferences.isExpanded = z2;
                        ScrollView scrollView = this.this$0.scrollView;
                        if (z2) {
                            layoutParams = this.this$0.scrlLLExpanded;
                        } else {
                            layoutParams = this.this$0.scrlLL;
                        }
                        scrollView.setLayoutParams(layoutParams);
                        break;
                    case -1:
                        Preferences.with(this.val$switchR.getContext()).writeBoolean(-1, z2);
                        if (!z2) {
                            Preferences.with(this.val$switchR.getContext()).clear();
                        }
                        break;
                    case 1:
                        if (z2) {
                            this.this$0.MyToast(this.this$0.getContext, "[Enable]");
                        } else {
                            this.this$0.MyToast(this.this$0.getContext, "[Disable]");
                        }
                        break;
                    case 2:
                        if (z2) {
                            this.this$0.MyToast(this.this$0.getContext, "[Enable]");
                        } else {
                            this.this$0.MyToast(this.this$0.getContext, "[Disable]");
                        }
                        break;
                    case 3:
                        if (z2) {
                            this.this$0.MyToast(this.this$0.getContext, "[Enable]");
                        } else {
                            this.this$0.MyToast(this.this$0.getContext, "[Disable]");
                        }
                        break;
                    case 4:
                        if (z2) {
                            this.this$0.MyToast(this.this$0.getContext, "[Enable]");
                        } else {
                            this.this$0.MyToast(this.this$0.getContext, "[Disable]");
                        }
                        break;
                    case 5:
                        if (z2) {
                            this.this$0.MyToast(this.this$0.getContext, "[Enable]");
                        } else {
                            this.this$0.MyToast(this.this$0.getContext, "[Disable]");
                        }
                        break;
                    case 6:
                        if (z2) {
                            this.this$0.MyToast(this.this$0.getContext, "[Enable]");
                        } else {
                            this.this$0.MyToast(this.this$0.getContext, "[Disable]");
                        }
                        break;
                    case 7:
                        if (z2) {
                            this.this$0.MyToast(this.this$0.getContext, "[Enable]");
                        } else {
                            this.this$0.MyToast(this.this$0.getContext, "[Disable]");
                        }
                        break;
                    case 8:
                        if (z2) {
                            this.this$0.MyToast(this.this$0.getContext, "[Enable]");
                        } else {
                            this.this$0.MyToast(this.this$0.getContext, "[Disable]");
                        }
                        break;
                    case 9:
                        if (z2) {
                            this.this$0.MyToast(this.this$0.getContext, "[Enable]");
                        } else {
                            this.this$0.MyToast(this.this$0.getContext, "[Disable]");
                        }
                        break;
                    case 10:
                        if (z2) {
                            this.this$0.MyToast(this.this$0.getContext, "[Enable]");
                        } else {
                            this.this$0.MyToast(this.this$0.getContext, "[Disable]");
                        }
                        break;
                    case 11:
                        if (z2) {
                            this.this$0.MyToast(this.this$0.getContext, "[Enable]");
                        } else {
                            this.this$0.MyToast(this.this$0.getContext, "[Disable]");
                        }
                        break;
                    case 12:
                        if (z2) {
                            this.this$0.MyToast(this.this$0.getContext, "[Enable]");
                        } else {
                            this.this$0.MyToast(this.this$0.getContext, "[Disable]");
                        }
                        break;
                    case 13:
                        if (z2) {
                            this.this$0.MyToast(this.this$0.getContext, "[Enable]");
                        } else {
                            this.this$0.MyToast(this.this$0.getContext, "[Disable]");
                        }
                        break;
                    case 14:
                        if (z2) {
                            this.this$0.MyToast(this.this$0.getContext, "[Enable]");
                        } else {
                            this.this$0.MyToast(this.this$0.getContext, "[Disable]");
                        }
                        break;
                    case 15:
                        if (z2) {
                            this.this$0.MyToast(this.this$0.getContext, "[Enable]");
                        } else {
                            this.this$0.MyToast(this.this$0.getContext, "[Disable]");
                        }
                        break;
                    case 16:
                        if (z2) {
                            this.this$0.MyToast(this.this$0.getContext, "[Enable]");
                        } else {
                            this.this$0.MyToast(this.this$0.getContext, "[Disable]");
                        }
                        break;
                    case 17:
                        if (z2) {
                            this.this$0.MyToast(this.this$0.getContext, "[Enable]");
                        } else {
                            this.this$0.MyToast(this.this$0.getContext, "[Disable]");
                        }
                        break;
                    case 18:
                        if (z2) {
                            this.this$0.MyToast(this.this$0.getContext, "[Enable]");
                        } else {
                            this.this$0.MyToast(this.this$0.getContext, "[Disable]");
                        }
                        break;
                    case 19:
                        if (z2) {
                            this.this$0.MyToast(this.this$0.getContext, "[Enable]");
                        } else {
                            this.this$0.MyToast(this.this$0.getContext, "[Disable]");
                        }
                        break;
                }
            }
        });
        linearLayout.addView(r11);
    }

    private void SeekBar(LinearLayout linearLayout, int i, String str, int i2, int i3) {
        int iLoadPrefInt = Preferences.loadPrefInt(str, i);
        LinearLayout linearLayout2 = new LinearLayout(this.getContext);
        linearLayout2.setPadding(10, 5, 0, 5);
        linearLayout2.setOrientation(1);
        linearLayout2.setGravity(17);
        TextView textView = new TextView(this.getContext);
        textView.setText(Html.fromHtml(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(str).append(": <font color='").toString()).append(this.NumberTxtColor).toString()).append("'>").toString()).append(iLoadPrefInt == 0 ? i2 : iLoadPrefInt).toString()));
        textView.setTextColor(this.TEXT_COLOR_2);
        textView.setTextSize(this.SET);
        SeekBar seekBar = new SeekBar(this.getContext);
        seekBar.setPadding(25, 10, 35, 10);
        seekBar.setMax(i3);
        if (Build.VERSION.SDK_INT >= 26) {
            seekBar.setMin(i2);
        }
        seekBar.setProgress(iLoadPrefInt == 0 ? i2 : iLoadPrefInt);
        seekBar.getThumb().setColorFilter(this.SeekBarColor, PorterDuff.Mode.SRC_ATOP);
        seekBar.getProgressDrawable().setColorFilter(this.SeekBarProgressColor, PorterDuff.Mode.SRC_ATOP);
        seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener(this, i2, str, i, textView) { // from class: com.android.support.Menu.100000007
            private final Menu this$0;
            private final String val$featName;
            private final int val$featNum;
            private final int val$min;
            private final TextView val$textView;

            {
                this.this$0 = this;
                this.val$min = i2;
                this.val$featName = str;
                this.val$featNum = i;
                this.val$textView = textView;
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar2) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar2) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar2, int i4, boolean z) {
                int i5;
                int i6;
                seekBar2.setProgress(i4 < this.val$min ? this.val$min : i4);
                String str2 = this.val$featName;
                int i7 = this.val$featNum;
                if (i4 < this.val$min) {
                    i5 = this.val$min;
                } else {
                    i5 = i4;
                }
                Preferences.changeFeatureInt(str2, i7, i5);
                TextView textView2 = this.val$textView;
                StringBuffer stringBufferAppend = new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(this.val$featName).append(": <font color='").toString()).append(this.this$0.NumberTxtColor).toString()).append("'>").toString());
                if (i4 < this.val$min) {
                    i6 = this.val$min;
                } else {
                    i6 = i4;
                }
                textView2.setText(Html.fromHtml(stringBufferAppend.append(i6).toString()));
            }
        });
        linearLayout2.addView(textView);
        linearLayout2.addView(seekBar);
        linearLayout.addView(linearLayout2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Button(LinearLayout linearLayout, int i, String str) {
        Button button = new Button(this.getContext);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.setMargins(7, 5, 7, 5);
        button.setLayoutParams(layoutParams);
        button.setTextColor(this.TEXT_COLOR_2);
        button.setAllCaps(false);
        button.setText(Html.fromHtml(str));
        button.setBackgroundColor(this.BTN_COLOR);
        button.setTextSize(this.SET);
        button.setOnClickListener(new View.OnClickListener(this, i, str) { // from class: com.android.support.Menu.100000008
            private final Menu this$0;
            private final String val$featName;
            private final int val$featNum;

            {
                this.this$0 = this;
                this.val$featNum = i;
                this.val$featName = str;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                switch (this.val$featNum) {
                    case -100:
                        this.this$0.stopChecking = true;
                        break;
                    case -6:
                        this.this$0.scrollView.removeView(this.this$0.mSettings);
                        this.this$0.scrollView.addView(this.this$0.mods);
                        break;
                }
                Preferences.changeFeatureInt(this.val$featName, this.val$featNum, 0);
            }
        });
        linearLayout.addView(button);
    }

    private void ButtonLink(LinearLayout linearLayout, String str, String str2) {
        Button button = new Button(this.getContext);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.setMargins(7, 5, 7, 5);
        button.setLayoutParams(layoutParams);
        button.setAllCaps(false);
        button.setTextColor(this.TEXT_COLOR_2);
        button.setText(Html.fromHtml(str));
        button.setBackgroundColor(this.BTN_COLOR);
        button.setTextSize(this.SET);
        button.setOnClickListener(new View.OnClickListener(this, str2) { // from class: com.android.support.Menu.100000009
            private final Menu this$0;
            private final String val$url;

            {
                this.this$0 = this;
                this.val$url = str2;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setFlags(DriveFile.MODE_READ_ONLY);
                intent.setData(Uri.parse(this.val$url));
                this.this$0.getContext.startActivity(intent);
            }
        });
        linearLayout.addView(button);
    }

    private void ButtonOnOff(LinearLayout linearLayout, int i, String str, boolean z) {
        boolean z2;
        Button button = new Button(this.getContext);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.setMargins(7, 5, 7, 5);
        button.setLayoutParams(layoutParams);
        button.setTextColor(this.TEXT_COLOR_2);
        button.setTextSize(this.SET);
        button.setAllCaps(false);
        String strReplace = str.replace("OnOff_", "");
        if (Preferences.loadPrefBool(str, i, z)) {
            button.setText(Html.fromHtml(new StringBuffer().append(strReplace).append(": ON").toString()));
            button.setBackgroundColor(this.BtnON);
            z2 = false;
        } else {
            button.setText(Html.fromHtml(new StringBuffer().append(strReplace).append(": OFF").toString()));
            button.setBackgroundColor(this.BtnOFF);
            z2 = true;
        }
        button.setOnClickListener(new View.OnClickListener(this, z2, strReplace, i, button) { // from class: com.android.support.Menu.100000010
            boolean isOn;
            private final Menu this$0;
            private final Button val$button;
            private final int val$featNum;
            private final boolean val$finalIsOn;
            private final String val$finalfeatName;

            {
                this.this$0 = this;
                this.val$finalIsOn = z2;
                this.val$finalfeatName = strReplace;
                this.val$featNum = i;
                this.val$button = button;
                this.isOn = this.val$finalIsOn;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Preferences.changeFeatureBool(this.val$finalfeatName, this.val$featNum, this.isOn);
                if (this.isOn) {
                    this.val$button.setText(Html.fromHtml(new StringBuffer().append(this.val$finalfeatName).append(": ON").toString()));
                    this.val$button.setBackgroundColor(this.this$0.BtnON);
                    this.isOn = false;
                } else {
                    this.val$button.setText(Html.fromHtml(new StringBuffer().append(this.val$finalfeatName).append(": OFF").toString()));
                    this.val$button.setBackgroundColor(this.this$0.BtnOFF);
                    this.isOn = true;
                }
            }
        });
        linearLayout.addView(button);
    }

    private void Spinner(LinearLayout linearLayout, int i, String str, String str2) {
        Log.d(TAG, new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append("spinner ").append(i).toString()).append(" ").toString()).append(str).toString()).append(" ").toString()).append(str2).toString());
        LinkedList linkedList = new LinkedList(Arrays.asList(str2.split(",")));
        LinearLayout linearLayout2 = new LinearLayout(this.getContext);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(7, 2, 7, 2);
        linearLayout2.setOrientation(1);
        linearLayout2.setBackgroundColor(this.BTN_COLOR);
        linearLayout2.setLayoutParams(layoutParams);
        Spinner spinner = new Spinner(this.getContext, 1);
        spinner.setLayoutParams(layoutParams);
        spinner.getBackground().setColorFilter(1, PorterDuff.Mode.SRC_ATOP);
        ArrayAdapter arrayAdapter = new ArrayAdapter(this.getContext, android.R.layout.simple_spinner_dropdown_item, linkedList);
        arrayAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        spinner.setAdapter((SpinnerAdapter) arrayAdapter);
        spinner.setSelection(Preferences.loadPrefInt(str, i));
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener(this, spinner, i) { // from class: com.android.support.Menu.100000011
            private final Menu this$0;
            private final int val$featNum;
            private final Spinner val$spinner;

            {
                this.this$0 = this;
                this.val$spinner = spinner;
                this.val$featNum = i;
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                Preferences.changeFeatureInt(this.val$spinner.getSelectedItem().toString(), this.val$featNum, i2);
                ((TextView) adapterView.getChildAt(0)).setTextColor(this.this$0.TEXT_COLOR_2);
            }
        });
        linearLayout2.addView(spinner);
        linearLayout.addView(linearLayout2);
    }

    /* JADX INFO: renamed from: com.android.support.Menu$100000012, reason: invalid class name */
    class AnonymousClass100000012 implements AdapterView.OnItemSelectedListener {
        private final Menu this$0;
        private final int val$featNum;
        private final Spinner val$spinner;

        AnonymousClass100000012(Menu menu, Spinner spinner, int i) {
            this.this$0 = menu;
            this.val$spinner = spinner;
            this.val$featNum = i;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            Preferences.changeFeatureInt(this.val$spinner.getSelectedItem().toString(), this.val$featNum, i);
            ((TextView) adapterView.getChildAt(0)).setTextColor(this.this$0.TEXT_COLOR_2);
        }
    }

    private void InputNum(LinearLayout linearLayout, int i, String str, int i2) {
        LinearLayout linearLayout2 = new LinearLayout(this.getContext);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.setMargins(7, 5, 7, 5);
        Button button = new Button(this.getContext);
        button.setText(Html.fromHtml(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(str).append(": <font color='").toString()).append(this.NumberTxtColor).toString()).append("'>").toString()).append(Preferences.loadPrefInt(str, i)).toString()).append("</font>").toString()));
        button.setAllCaps(false);
        button.setLayoutParams(layoutParams);
        button.setBackgroundColor(this.BTN_COLOR);
        button.setTextColor(this.TEXT_COLOR_2);
        button.setOnClickListener(new AnonymousClass100000015(this, i2, button, str, i));
        linearLayout2.addView(button);
        linearLayout.addView(linearLayout2);
    }

    /* JADX INFO: renamed from: com.android.support.Menu$100000016, reason: invalid class name */
    class AnonymousClass100000016 implements View.OnClickListener {
        private final Menu this$0;
        private final Button val$button;
        private final String val$featName;
        private final int val$featNum;
        private final int val$maxValue;

        AnonymousClass100000016(Menu menu, int i, Button button, String str, int i2) {
            this.this$0 = menu;
            this.val$maxValue = i;
            this.val$button = button;
            this.val$featName = str;
            this.val$featNum = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this.this$0.getContext);
            EditText editText = new EditText(this.this$0.getContext);
            if (this.val$maxValue != 0) {
                editText.setHint(new StringBuffer().append("Max value: ").append(this.val$maxValue).toString());
            }
            editText.setInputType(2);
            editText.setKeyListener(DigitsKeyListener.getInstance("0123456789-"));
            editText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(10)});
            editText.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: com.android.support.Menu.100000016.100000013
                private final AnonymousClass100000016 this$0;

                {
                    this.this$0 = this;
                }

                @Override // android.view.View.OnFocusChangeListener
                public void onFocusChange(View view2, boolean z) {
                    InputMethodManager inputMethodManager = (InputMethodManager) this.this$0.this$0.getContext.getSystemService("input_method");
                    if (z) {
                        inputMethodManager.toggleSoftInput(2, 1);
                    } else {
                        inputMethodManager.toggleSoftInput(1, 0);
                    }
                }
            });
            editText.requestFocus();
            builder.setTitle("Input number");
            builder.setView(editText);
            LinearLayout linearLayout = new LinearLayout(this.this$0.getContext);
            linearLayout.setOrientation(1);
            linearLayout.addView(editText);
            builder.setView(linearLayout);
            builder.setPositiveButton("OK", new DialogInterface.OnClickListener(this, editText, this.val$maxValue, this.val$button, this.val$featName, this.val$featNum) { // from class: com.android.support.Menu.100000016.100000014
                private final AnonymousClass100000016 this$0;
                private final Button val$button;
                private final EditText val$editText;
                private final String val$featName;
                private final int val$featNum;
                private final int val$maxValue;

                {
                    this.this$0 = this;
                    this.val$editText = editText;
                    this.val$maxValue = i;
                    this.val$button = button;
                    this.val$featName = str;
                    this.val$featNum = i;
                }

                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    int i2;
                    try {
                        String string = this.val$editText.getText().toString();
                        i2 = Integer.parseInt(string.isEmpty() ? "0" : string);
                        if (this.val$maxValue != 0 && i2 >= this.val$maxValue) {
                            i2 = this.val$maxValue;
                        }
                    } catch (NumberFormatException e) {
                        i2 = this.val$maxValue != 0 ? this.val$maxValue : Integer.MAX_VALUE;
                    }
                    this.val$button.setText(Html.fromHtml(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(this.val$featName).append(": <font color='").toString()).append(this.this$0.this$0.NumberTxtColor).toString()).append("'>").toString()).append(i2).toString()).append("</font>").toString()));
                    Preferences.changeFeatureInt(this.val$featName, this.val$featNum, i2);
                    this.val$editText.setFocusable(false);
                }
            });
            builder.setNegativeButton("Cancel", new DialogInterface.OnClickListener(this) { // from class: com.android.support.Menu.100000016.100000015
                private final AnonymousClass100000016 this$0;

                {
                    this.this$0 = this;
                }

                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    ((InputMethodManager) this.this$0.this$0.getContext.getSystemService("input_method")).toggleSoftInput(1, 0);
                }
            });
            if (this.this$0.overlayRequired) {
                AlertDialog alertDialogCreate = builder.create();
                alertDialogCreate.getWindow().setType(Build.VERSION.SDK_INT >= 26 ? 2038 : 2002);
                alertDialogCreate.show();
                return;
            }
            builder.show();
        }
    }

    /* JADX INFO: renamed from: com.android.support.Menu$100000015, reason: invalid class name */
    class AnonymousClass100000015 implements View.OnClickListener {
        private final Menu this$0;
        private final Button val$button;
        private final String val$featName;
        private final int val$featNum;
        private final int val$maxValue;

        AnonymousClass100000015(Menu menu, int i, Button button, String str, int i2) {
            this.this$0 = menu;
            this.val$maxValue = i;
            this.val$button = button;
            this.val$featName = str;
            this.val$featNum = i2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this.this$0.getContext);
            EditText editText = new EditText(this.this$0.getContext);
            if (this.val$maxValue != 0) {
                editText.setHint(new StringBuffer().append("Max value: ").append(this.val$maxValue).toString());
            }
            editText.setInputType(2);
            editText.setKeyListener(DigitsKeyListener.getInstance("0123456789-"));
            editText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(10)});
            editText.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: com.android.support.Menu.100000015.100000012
                private final AnonymousClass100000015 this$0;

                {
                    this.this$0 = this;
                }

                @Override // android.view.View.OnFocusChangeListener
                public void onFocusChange(View view2, boolean z) {
                    InputMethodManager inputMethodManager = (InputMethodManager) this.this$0.this$0.getContext.getSystemService("input_method");
                    if (z) {
                        inputMethodManager.toggleSoftInput(2, 1);
                    } else {
                        inputMethodManager.toggleSoftInput(1, 0);
                    }
                }
            });
            editText.requestFocus();
            builder.setTitle("Input number");
            builder.setView(editText);
            LinearLayout linearLayout = new LinearLayout(this.this$0.getContext);
            linearLayout.setOrientation(1);
            linearLayout.addView(editText);
            builder.setView(linearLayout);
            builder.setPositiveButton("OK", new DialogInterface.OnClickListener(this, editText, this.val$maxValue, this.val$button, this.val$featName, this.val$featNum) { // from class: com.android.support.Menu.100000015.100000013
                private final AnonymousClass100000015 this$0;
                private final Button val$button;
                private final EditText val$editText;
                private final String val$featName;
                private final int val$featNum;
                private final int val$maxValue;

                {
                    this.this$0 = this;
                    this.val$editText = editText;
                    this.val$maxValue = i;
                    this.val$button = button;
                    this.val$featName = str;
                    this.val$featNum = i;
                }

                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    int i2;
                    try {
                        String string = this.val$editText.getText().toString();
                        i2 = Integer.parseInt(string.isEmpty() ? "0" : string);
                        if (this.val$maxValue != 0 && i2 >= this.val$maxValue) {
                            i2 = this.val$maxValue;
                        }
                    } catch (NumberFormatException e) {
                        i2 = this.val$maxValue != 0 ? this.val$maxValue : Integer.MAX_VALUE;
                    }
                    this.val$button.setText(Html.fromHtml(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(this.val$featName).append(": <font color='").toString()).append(this.this$0.this$0.NumberTxtColor).toString()).append("'>").toString()).append(i2).toString()).append("</font>").toString()));
                    Preferences.changeFeatureInt(this.val$featName, this.val$featNum, i2);
                    this.val$editText.setFocusable(false);
                }
            });
            builder.setNegativeButton("Cancel", new DialogInterface.OnClickListener(this) { // from class: com.android.support.Menu.100000015.100000014
                private final AnonymousClass100000015 this$0;

                {
                    this.this$0 = this;
                }

                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    ((InputMethodManager) this.this$0.this$0.getContext.getSystemService("input_method")).toggleSoftInput(1, 0);
                }
            });
            if (this.this$0.overlayRequired) {
                AlertDialog alertDialogCreate = builder.create();
                alertDialogCreate.getWindow().setType(Build.VERSION.SDK_INT >= 26 ? 2038 : 2002);
                alertDialogCreate.show();
                return;
            }
            builder.show();
        }
    }

    private void InputLNum(LinearLayout linearLayout, int i, String str, long j) {
        LinearLayout linearLayout2 = new LinearLayout(this.getContext);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.setMargins(7, 5, 7, 5);
        Button button = new Button(this.getContext);
        button.setText(Html.fromHtml(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(str).append(": <font color='").toString()).append(this.NumberTxtColor).toString()).append("'>").toString()).append(Preferences.loadPrefLong(str, i)).toString()).append("</font>").toString()));
        button.setAllCaps(false);
        button.setLayoutParams(layoutParams);
        button.setBackgroundColor(this.BTN_COLOR);
        button.setTextColor(this.TEXT_COLOR_2);
        button.setOnClickListener(new AnonymousClass100000019(this, j, button, str, i));
        linearLayout2.addView(button);
        linearLayout.addView(linearLayout2);
    }

    /* JADX INFO: renamed from: com.android.support.Menu$100000020, reason: invalid class name */
    class AnonymousClass100000020 implements View.OnClickListener {
        private final Menu this$0;
        private final Button val$button;
        private final String val$featName;
        private final int val$featNum;
        private final long val$maxValue;

        AnonymousClass100000020(Menu menu, long j, Button button, String str, int i) {
            this.this$0 = menu;
            this.val$maxValue = j;
            this.val$button = button;
            this.val$featName = str;
            this.val$featNum = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this.this$0.getContext);
            EditText editText = new EditText(this.this$0.getContext);
            if (this.val$maxValue != 0) {
                editText.setHint(new StringBuffer().append("Max value: ").append(this.val$maxValue).toString());
            }
            editText.setInputType(2);
            editText.setKeyListener(DigitsKeyListener.getInstance("0123456789-"));
            editText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(20)});
            editText.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: com.android.support.Menu.100000020.100000017
                private final AnonymousClass100000020 this$0;

                {
                    this.this$0 = this;
                }

                @Override // android.view.View.OnFocusChangeListener
                public void onFocusChange(View view2, boolean z) {
                    InputMethodManager inputMethodManager = (InputMethodManager) this.this$0.this$0.getContext.getSystemService("input_method");
                    if (z) {
                        inputMethodManager.toggleSoftInput(2, 1);
                    } else {
                        inputMethodManager.toggleSoftInput(1, 0);
                    }
                }
            });
            editText.requestFocus();
            builder.setTitle("Input number");
            builder.setView(editText);
            LinearLayout linearLayout = new LinearLayout(this.this$0.getContext);
            linearLayout.setOrientation(1);
            linearLayout.addView(editText);
            builder.setView(linearLayout);
            builder.setPositiveButton("OK", new DialogInterface.OnClickListener(this, editText, this.val$maxValue, this.val$button, this.val$featName, this.val$featNum) { // from class: com.android.support.Menu.100000020.100000018
                private final AnonymousClass100000020 this$0;
                private final Button val$button;
                private final EditText val$editText;
                private final String val$featName;
                private final int val$featNum;
                private final long val$maxValue;

                {
                    this.this$0 = this;
                    this.val$editText = editText;
                    this.val$maxValue = j;
                    this.val$button = button;
                    this.val$featName = str;
                    this.val$featNum = i;
                }

                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    long j;
                    try {
                        String string = this.val$editText.getText().toString();
                        j = Long.parseLong(string.isEmpty() ? "0" : string);
                        if (this.val$maxValue != 0 && j >= this.val$maxValue) {
                            j = this.val$maxValue;
                        }
                    } catch (NumberFormatException e) {
                        j = this.val$maxValue != ((long) 0) ? this.val$maxValue : Long.MAX_VALUE;
                    }
                    this.val$button.setText(Html.fromHtml(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(this.val$featName).append(": <font color='").toString()).append(this.this$0.this$0.NumberTxtColor).toString()).append("'>").toString()).append(j).toString()).append("</font>").toString()));
                    Preferences.changeFeatureLong(this.val$featName, this.val$featNum, j);
                    this.val$editText.setFocusable(false);
                }
            });
            builder.setNegativeButton("Cancel", new DialogInterface.OnClickListener(this) { // from class: com.android.support.Menu.100000020.100000019
                private final AnonymousClass100000020 this$0;

                {
                    this.this$0 = this;
                }

                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    ((InputMethodManager) this.this$0.this$0.getContext.getSystemService("input_method")).toggleSoftInput(1, 0);
                }
            });
            if (this.this$0.overlayRequired) {
                AlertDialog alertDialogCreate = builder.create();
                alertDialogCreate.getWindow().setType(Build.VERSION.SDK_INT >= 26 ? 2038 : 2002);
                alertDialogCreate.show();
                return;
            }
            builder.show();
        }
    }

    /* JADX INFO: renamed from: com.android.support.Menu$100000019, reason: invalid class name */
    class AnonymousClass100000019 implements View.OnClickListener {
        private final Menu this$0;
        private final Button val$button;
        private final String val$featName;
        private final int val$featNum;
        private final long val$maxValue;

        AnonymousClass100000019(Menu menu, long j, Button button, String str, int i) {
            this.this$0 = menu;
            this.val$maxValue = j;
            this.val$button = button;
            this.val$featName = str;
            this.val$featNum = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this.this$0.getContext);
            EditText editText = new EditText(this.this$0.getContext);
            if (this.val$maxValue != 0) {
                editText.setHint(new StringBuffer().append("Max value: ").append(this.val$maxValue).toString());
            }
            editText.setInputType(2);
            editText.setKeyListener(DigitsKeyListener.getInstance("0123456789-"));
            editText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(20)});
            editText.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: com.android.support.Menu.100000019.100000016
                private final AnonymousClass100000019 this$0;

                {
                    this.this$0 = this;
                }

                @Override // android.view.View.OnFocusChangeListener
                public void onFocusChange(View view2, boolean z) {
                    InputMethodManager inputMethodManager = (InputMethodManager) this.this$0.this$0.getContext.getSystemService("input_method");
                    if (z) {
                        inputMethodManager.toggleSoftInput(2, 1);
                    } else {
                        inputMethodManager.toggleSoftInput(1, 0);
                    }
                }
            });
            editText.requestFocus();
            builder.setTitle("Input number");
            builder.setView(editText);
            LinearLayout linearLayout = new LinearLayout(this.this$0.getContext);
            linearLayout.setOrientation(1);
            linearLayout.addView(editText);
            builder.setView(linearLayout);
            builder.setPositiveButton("OK", new DialogInterface.OnClickListener(this, editText, this.val$maxValue, this.val$button, this.val$featName, this.val$featNum) { // from class: com.android.support.Menu.100000019.100000017
                private final AnonymousClass100000019 this$0;
                private final Button val$button;
                private final EditText val$editText;
                private final String val$featName;
                private final int val$featNum;
                private final long val$maxValue;

                {
                    this.this$0 = this;
                    this.val$editText = editText;
                    this.val$maxValue = j;
                    this.val$button = button;
                    this.val$featName = str;
                    this.val$featNum = i;
                }

                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    long j;
                    try {
                        String string = this.val$editText.getText().toString();
                        j = Long.parseLong(string.isEmpty() ? "0" : string);
                        if (this.val$maxValue != 0 && j >= this.val$maxValue) {
                            j = this.val$maxValue;
                        }
                    } catch (NumberFormatException e) {
                        j = this.val$maxValue != ((long) 0) ? this.val$maxValue : Long.MAX_VALUE;
                    }
                    this.val$button.setText(Html.fromHtml(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(this.val$featName).append(": <font color='").toString()).append(this.this$0.this$0.NumberTxtColor).toString()).append("'>").toString()).append(j).toString()).append("</font>").toString()));
                    Preferences.changeFeatureLong(this.val$featName, this.val$featNum, j);
                    this.val$editText.setFocusable(false);
                }
            });
            builder.setNegativeButton("Cancel", new DialogInterface.OnClickListener(this) { // from class: com.android.support.Menu.100000019.100000018
                private final AnonymousClass100000019 this$0;

                {
                    this.this$0 = this;
                }

                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    ((InputMethodManager) this.this$0.this$0.getContext.getSystemService("input_method")).toggleSoftInput(1, 0);
                }
            });
            if (this.this$0.overlayRequired) {
                AlertDialog alertDialogCreate = builder.create();
                alertDialogCreate.getWindow().setType(Build.VERSION.SDK_INT >= 26 ? 2038 : 2002);
                alertDialogCreate.show();
                return;
            }
            builder.show();
        }
    }

    private void InputText(LinearLayout linearLayout, int i, String str) {
        LinearLayout linearLayout2 = new LinearLayout(this.getContext);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.setMargins(7, 5, 7, 5);
        Button button = new Button(this.getContext);
        button.setText(Html.fromHtml(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(str).append(": <font color='").toString()).append(this.NumberTxtColor).toString()).append("'>").toString()).append(Preferences.loadPrefString(str, i)).toString()).append("</font>").toString()));
        button.setAllCaps(false);
        button.setLayoutParams(layoutParams);
        button.setBackgroundColor(this.BTN_COLOR);
        button.setTextColor(this.TEXT_COLOR_2);
        button.setOnClickListener(new AnonymousClass100000023(this, button, str, i));
        linearLayout2.addView(button);
        linearLayout.addView(linearLayout2);
    }

    /* JADX INFO: renamed from: com.android.support.Menu$100000023, reason: invalid class name */
    class AnonymousClass100000023 implements View.OnClickListener {
        private final Menu this$0;
        private final Button val$button;
        private final String val$featName;
        private final int val$featNum;

        AnonymousClass100000023(Menu menu, Button button, String str, int i) {
            this.this$0 = menu;
            this.val$button = button;
            this.val$featName = str;
            this.val$featNum = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this.this$0.getContext);
            EditText editText = new EditText(this.this$0.getContext);
            editText.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: com.android.support.Menu.100000023.100000020
                private final AnonymousClass100000023 this$0;

                {
                    this.this$0 = this;
                }

                @Override // android.view.View.OnFocusChangeListener
                public void onFocusChange(View view2, boolean z) {
                    InputMethodManager inputMethodManager = (InputMethodManager) this.this$0.this$0.getContext.getSystemService("input_method");
                    if (z) {
                        inputMethodManager.toggleSoftInput(2, 1);
                    } else {
                        inputMethodManager.toggleSoftInput(1, 0);
                    }
                }
            });
            editText.requestFocus();
            builder.setTitle("Input text");
            builder.setView(editText);
            LinearLayout linearLayout = new LinearLayout(this.this$0.getContext);
            linearLayout.setOrientation(1);
            linearLayout.addView(editText);
            builder.setView(linearLayout);
            builder.setPositiveButton("OK", new DialogInterface.OnClickListener(this, editText, this.val$button, this.val$featName, this.val$featNum) { // from class: com.android.support.Menu.100000023.100000021
                private final AnonymousClass100000023 this$0;
                private final Button val$button;
                private final EditText val$editText;
                private final String val$featName;
                private final int val$featNum;

                {
                    this.this$0 = this;
                    this.val$editText = editText;
                    this.val$button = button;
                    this.val$featName = str;
                    this.val$featNum = i;
                }

                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    String string = this.val$editText.getText().toString();
                    this.val$button.setText(Html.fromHtml(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(this.val$featName).append(": <font color='").toString()).append(this.this$0.this$0.NumberTxtColor).toString()).append("'>").toString()).append(string).toString()).append("</font>").toString()));
                    Preferences.changeFeatureString(this.val$featName, this.val$featNum, string);
                    this.val$editText.setFocusable(false);
                }
            });
            builder.setNegativeButton("Cancel", new DialogInterface.OnClickListener(this) { // from class: com.android.support.Menu.100000023.100000022
                private final AnonymousClass100000023 this$0;

                {
                    this.this$0 = this;
                }

                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    ((InputMethodManager) this.this$0.this$0.getContext.getSystemService("input_method")).toggleSoftInput(1, 0);
                }
            });
            if (this.this$0.overlayRequired) {
                AlertDialog alertDialogCreate = builder.create();
                alertDialogCreate.getWindow().setType(Build.VERSION.SDK_INT >= 26 ? 2038 : 2002);
                alertDialogCreate.show();
                return;
            }
            builder.show();
        }
    }

    /* JADX INFO: renamed from: com.android.support.Menu$100000024, reason: invalid class name */
    class AnonymousClass100000024 implements CompoundButton.OnCheckedChangeListener {
        private final Menu this$0;
        private final CheckBox val$checkBox;
        private final String val$featName;
        private final int val$featNum;

        AnonymousClass100000024(Menu menu, CheckBox checkBox, String str, int i) {
            this.this$0 = menu;
            this.val$checkBox = checkBox;
            this.val$featName = str;
            this.val$featNum = i;
        }

        /* JADX INFO: renamed from: com.android.support.Menu$100000024$100000021, reason: invalid class name */
        class AnonymousClass100000021 implements View.OnFocusChangeListener {
            private final AnonymousClass100000024 this$0;

            AnonymousClass100000021(AnonymousClass100000024 anonymousClass100000024) {
                this.this$0 = anonymousClass100000024;
            }

            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                InputMethodManager inputMethodManager = (InputMethodManager) this.this$0.this$0.getContext.getSystemService("input_method");
                if (z) {
                    inputMethodManager.toggleSoftInput(2, 1);
                } else {
                    inputMethodManager.toggleSoftInput(1, 0);
                }
            }
        }

        /* JADX INFO: renamed from: com.android.support.Menu$100000024$100000022, reason: invalid class name */
        class AnonymousClass100000022 implements DialogInterface.OnClickListener {
            private final AnonymousClass100000024 this$0;
            private final Button val$button;
            private final EditText val$editText;
            private final String val$featName;
            private final int val$featNum;

            AnonymousClass100000022(AnonymousClass100000024 anonymousClass100000024, EditText editText, Button button, String str, int i) {
                this.this$0 = anonymousClass100000024;
                this.val$editText = editText;
                this.val$button = button;
                this.val$featName = str;
                this.val$featNum = i;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                String string = this.val$editText.getText().toString();
                this.val$button.setText(Html.fromHtml(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(this.val$featName).append(": <font color='").toString()).append(this.this$0.this$0.NumberTxtColor).toString()).append("'>").toString()).append(string).toString()).append("</font>").toString()));
                Preferences.changeFeatureString(this.val$featName, this.val$featNum, string);
                this.val$editText.setFocusable(false);
            }
        }

        /* JADX INFO: renamed from: com.android.support.Menu$100000024$100000023, reason: invalid class name */
        class AnonymousClass100000023 implements DialogInterface.OnClickListener {
            private final AnonymousClass100000024 this$0;

            AnonymousClass100000023(AnonymousClass100000024 anonymousClass100000024) {
                this.this$0 = anonymousClass100000024;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                ((InputMethodManager) this.this$0.this$0.getContext.getSystemService("input_method")).toggleSoftInput(1, 0);
            }
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (this.val$checkBox.isChecked()) {
                Preferences.changeFeatureBool(this.val$featName, this.val$featNum, z);
            } else {
                Preferences.changeFeatureBool(this.val$featName, this.val$featNum, z);
            }
        }
    }

    private void CheckBox(LinearLayout linearLayout, int i, String str, boolean z) {
        CheckBox checkBox = new CheckBox(this.getContext);
        checkBox.setText(str);
        checkBox.setTextColor(this.TEXT_COLOR_2);
        checkBox.setTextSize(this.SET);
        if (Build.VERSION.SDK_INT >= 21) {
            checkBox.setButtonTintList(ColorStateList.valueOf(this.CheckBoxColor));
        }
        checkBox.setChecked(Preferences.loadPrefBool(str, i, z));
        checkBox.setOnCheckedChangeListener(new AnonymousClass100000024(this, checkBox, str, i));
        linearLayout.addView(checkBox);
    }

    private void RadioButton(LinearLayout linearLayout, int i, String str, String str2) {
        LinkedList linkedList = new LinkedList(Arrays.asList(str2.split(",")));
        TextView textView = new TextView(this.getContext);
        textView.setText(new StringBuffer().append(str).append(":").toString());
        textView.setTextColor(this.TEXT_COLOR_2);
        RadioGroup radioGroup = new RadioGroup(this.getContext);
        radioGroup.setPadding(10, 5, 10, 5);
        radioGroup.setOrientation(1);
        radioGroup.addView(textView);
        for (int i2 = 0; i2 < linkedList.size(); i2++) {
            RadioButton radioButton = new RadioButton(this.getContext);
            View.OnClickListener onClickListener = new View.OnClickListener(this, textView, str, (String) linkedList.get(i2), i, radioGroup, radioButton) { // from class: com.android.support.Menu.100000025
                private final Menu this$0;
                private final RadioButton val$Radioo;
                private final int val$featNum;
                private final String val$finalfeatName;
                private final RadioGroup val$radioGroup;
                private final String val$radioName;
                private final TextView val$textView;

                {
                    this.this$0 = this;
                    this.val$textView = textView;
                    this.val$finalfeatName = str;
                    this.val$radioName = str;
                    this.val$featNum = i;
                    this.val$radioGroup = radioGroup;
                    this.val$Radioo = radioButton;
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    this.val$textView.setText(Html.fromHtml(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(this.val$finalfeatName).append(": <font color='").toString()).append(this.this$0.NumberTxtColor).toString()).append("'>").toString()).append(this.val$radioName).toString()));
                    Preferences.changeFeatureInt(this.val$finalfeatName, this.val$featNum, this.val$radioGroup.indexOfChild(this.val$Radioo));
                }
            };
            System.out.println((String) linkedList.get(i2));
            radioButton.setText((String) linkedList.get(i2));
            radioButton.setTextColor(-3355444);
            if (Build.VERSION.SDK_INT >= 21) {
                radioButton.setButtonTintList(ColorStateList.valueOf(this.RadioColor));
            }
            radioButton.setOnClickListener(onClickListener);
            radioGroup.addView(radioButton);
        }
        int iLoadPrefInt = Preferences.loadPrefInt(str, i);
        if (iLoadPrefInt > 0) {
            textView.setText(Html.fromHtml(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(str).append(": <font color='").toString()).append(this.NumberTxtColor).toString()).append("'>").toString()).append((String) linkedList.get(iLoadPrefInt - 1)).toString()));
            ((RadioButton) radioGroup.getChildAt(iLoadPrefInt)).setChecked(true);
        }
        linearLayout.addView(radioGroup);
    }

    private void Collapse(LinearLayout linearLayout, String str, boolean z) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.setMargins(0, 5, 0, 0);
        LinearLayout linearLayout2 = new LinearLayout(this.getContext);
        linearLayout2.setLayoutParams(layoutParams);
        linearLayout2.setVerticalGravity(16);
        linearLayout2.setOrientation(1);
        LinearLayout linearLayout3 = new LinearLayout(this.getContext);
        linearLayout3.setVerticalGravity(16);
        linearLayout3.setPadding(0, 5, 0, 5);
        linearLayout3.setOrientation(1);
        linearLayout3.setBackgroundColor(Color.parseColor("#222D38"));
        linearLayout3.setVisibility(8);
        this.mCollapse = linearLayout3;
        TextView textView = new TextView(this.getContext);
        textView.setBackgroundColor(this.CollapseColor);
        textView.setText(new StringBuffer().append(new StringBuffer().append("▽ ").append(str).toString()).append(" ▽").toString());
        textView.setGravity(17);
        textView.setTextColor(this.TEXT_COLOR_2);
        textView.setTypeface((Typeface) null, 1);
        textView.setPadding(0, 20, 0, 20);
        if (z) {
            linearLayout3.setVisibility(0);
            textView.setText(new StringBuffer().append(new StringBuffer().append("△ ").append(str).toString()).append(" △").toString());
        }
        textView.setOnClickListener(new View.OnClickListener(this, z, linearLayout3, textView, str) { // from class: com.android.support.Menu.100000026
            boolean isChecked;
            private final Menu this$0;
            private final LinearLayout val$collapseSub;
            private final boolean val$expanded;
            private final String val$text;
            private final TextView val$textView;

            {
                this.this$0 = this;
                this.val$expanded = z;
                this.val$collapseSub = linearLayout3;
                this.val$textView = textView;
                this.val$text = str;
                this.isChecked = this.val$expanded;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                boolean z2 = !this.isChecked;
                this.isChecked = z2;
                if (z2) {
                    this.val$collapseSub.setVisibility(0);
                    this.val$textView.setText(new StringBuffer().append(new StringBuffer().append("△ ").append(this.val$text).toString()).append(" △").toString());
                } else {
                    this.val$collapseSub.setVisibility(8);
                    this.val$textView.setText(new StringBuffer().append(new StringBuffer().append("▽ ").append(this.val$text).toString()).append(" ▽").toString());
                }
            }
        });
        linearLayout2.addView(textView);
        linearLayout2.addView(linearLayout3);
        linearLayout.addView(linearLayout2);
    }

    /* JADX INFO: renamed from: com.android.support.Menu$100000027, reason: invalid class name */
    class AnonymousClass100000027 implements View.OnClickListener {
        boolean isChecked;
        private final Menu this$0;
        private final LinearLayout val$collapseSub;
        private final boolean val$expanded;
        private final String val$text;
        private final TextView val$textView;

        AnonymousClass100000027(Menu menu, boolean z, LinearLayout linearLayout, TextView textView, String str) {
            this.this$0 = menu;
            this.val$expanded = z;
            this.val$collapseSub = linearLayout;
            this.val$textView = textView;
            this.val$text = str;
            this.isChecked = this.val$expanded;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            boolean z = !this.isChecked;
            this.isChecked = z;
            if (z) {
                this.val$collapseSub.setVisibility(0);
                this.val$textView.setText(new StringBuffer().append(new StringBuffer().append("△ ").append(this.val$text).toString()).append(" △").toString());
            } else {
                this.val$collapseSub.setVisibility(8);
                this.val$textView.setText(new StringBuffer().append(new StringBuffer().append("▽ ").append(this.val$text).toString()).append(" ▽").toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Category(LinearLayout linearLayout, String str) {
        TextView textView = new TextView(this.getContext);
        textView.setBackgroundColor(this.CategoryBG);
        textView.setText(Html.fromHtml(str));
        textView.setGravity(17);
        textView.setTextColor(this.TEXT_COLOR_2);
        textView.setTypeface((Typeface) null, 1);
        textView.setPadding(0, 5, 0, 5);
        linearLayout.addView(textView);
    }

    private void TextView(LinearLayout linearLayout, String str) {
        TextView textView = new TextView(this.getContext);
        textView.setText(Html.fromHtml(str));
        textView.setTextColor(this.TEXT_COLOR_2);
        textView.setPadding(10, 5, 10, 5);
        linearLayout.addView(textView);
    }

    private void WebTextView(LinearLayout linearLayout, String str) {
        WebView webView = new WebView(this.getContext);
        webView.loadData(str, "text/html", rb.N);
        webView.setBackgroundColor(0);
        webView.setPadding(0, 5, 0, 5);
        webView.getSettings().setCacheMode(2);
        linearLayout.addView(webView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isViewCollapsed() {
        return this.rootFrame == null || this.mCollapsed.getVisibility() == 0;
    }

    private int convertDipToPixels(int i) {
        return (int) ((i * this.getContext.getResources().getDisplayMetrics().density) + 0.5f);
    }

    private int dp(int i) {
        return (int) TypedValue.applyDimension(1, i, this.getContext.getResources().getDisplayMetrics());
    }

    public void setVisibility(int i) {
        if (this.rootFrame != null) {
            this.rootFrame.setVisibility(i);
        }
    }

    public void onDestroy() {
        if (this.rootFrame != null) {
            this.mWindowManager.removeView(this.rootFrame);
        }
    }
}
