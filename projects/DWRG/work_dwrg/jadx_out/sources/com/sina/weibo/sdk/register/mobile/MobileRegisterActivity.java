package com.sina.weibo.sdk.register.mobile;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Message;
import android.support.v4.view.ViewCompat;
import android.text.Editable;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.netease.environment.config.SdkConstants;
import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.component.WeiboSdkBrowser;
import com.sina.weibo.sdk.component.view.ResizeableLayout;
import com.sina.weibo.sdk.component.view.TitleBar;
import com.sina.weibo.sdk.constant.WBConstants;
import com.sina.weibo.sdk.exception.WeiboException;
import com.sina.weibo.sdk.net.NetUtils;
import com.sina.weibo.sdk.net.RequestListener;
import com.sina.weibo.sdk.net.WeiboParameters;
import com.sina.weibo.sdk.utils.LogUtil;
import com.sina.weibo.sdk.utils.NetworkHelper;
import com.sina.weibo.sdk.utils.ResourceManager;
import com.sina.weibo.sdk.utils.UIUtils;
import java.util.Locale;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class MobileRegisterActivity extends Activity implements View.OnFocusChangeListener, View.OnClickListener, ResizeableLayout.SizeChangeListener {
    private static final String APPKEY_NOT_SET_CN = "您的app_key没有设置";
    private static final String APPKEY_NOT_SET_EN = "your appkey not set";
    private static final String APPKEY_NOT_SET_TW = "您的app_key沒有設置";
    private static final String CANCEL_EN = "Cancel";
    private static final String CANCEL_ZH_CN = "取消";
    private static final String CANCEL_ZH_TW = "取消";
    private static final String CHINA_CN = "中国";
    private static final String CHINA_EN = "China";
    private static final String CHINA_TW = "中國";
    private static final String CODE_LENGTH_CN = "你的验证码不是6位数";
    private static final String CODE_LENGTH_EN = "Your code isn’t 6-digit long";
    private static final String CODE_LENGTH_TW = "你的驗證碼不是6位數";
    private static final int DEFAULT_BG_COLOR = -855310;
    private static final int DEFAULT_CLEAR_BTN = 22;
    private static final int DEFAULT_TEXT_PADDING = 12;
    private static final int DEFAULT_TIPS_TEXT_SIZE = 13;
    private static final int DEFAULT__RIGHT_TRIANGLE = 13;
    private static final int EMPTY_VIEW_TEXT_COLOR = -4342339;
    private static final int GET_CODE_BTN_ID = 3;
    private static final String GET_CODE_CN = "获取验证码";
    private static final String GET_CODE_EN = "Get code";
    private static final String GET_CODE_TW = "獲取驗證碼";
    private static final String HELP_INFO_CN = "请确认国家和地区并填写手机号码";
    private static final String HELP_INFO_EN = "Confirm your country/region and enter your mobile number";
    private static final String HELP_INFO_TW = "請確認國家和地區并填寫手機號";
    private static final String INPUT_AUTH_CODE_CN = "请输入验证码";
    private static final String INPUT_AUTH_CODE_EN = "Verification code";
    private static final String INPUT_AUTH_CODE_TW = "請輸入驗證碼";
    private static final String INPUT_PHONE_NUM_CN = "请输入手机号码";
    private static final String INPUT_PHONE_NUM_EN = "Your mobile number";
    private static final String INPUT_PHONE_NUM_TW = "請輸入手機號";
    private static final int LINK_TEXT_COLOR = -8224126;
    private static final int MIAN_LINK_TEXT_COLOR = -11502161;
    private static final String NETWORK_ERROR_CN = "您的网络不可用，请稍后";
    private static final String NETWORK_ERROR_EN = "your network is  disabled  try again later";
    private static final String NETWORK_ERROR_TW = "您的網絡不可用，請稍後";
    private static final String OK_EN = "OK";
    private static final String OK_ZH_CN = "确定";
    private static final String OK_ZH_TW = "確定";
    private static final String PHONE_ERROR_CN = "您的手机号不是11位数";
    private static final String PHONE_ERROR_EN = "Your phone number isn’t 11-digit long";
    private static final String PHONE_ERROR_TW = "您的手機號不是11位數";
    private static final int PHONE_NUM_CLEAR_BTN_ID = 4;
    public static final String REGISTER_TITLE = "register_title";
    private static final int RESIZEABLE_INPUTMETHODHIDE = 0;
    private static final int RESIZEABLE_INPUTMETHODSHOW = 1;
    public static final String RESPONSE_EXPIRES = "expires";
    public static final String RESPONSE_OAUTH_TOKEN = "oauth_token";
    private static final int SELECT_COUNTRY_REQUEST_CODE = 0;
    private static final String SEND_MSG = "http://api.weibo.com/oauth2/sms_authorize/send";
    private static final String SEND_SUBMIT = "http://api.weibo.com/oauth2/sms_authorize/submit";
    private static final String SERVER_ERROR_CN = "服务器忙,请稍后再试";
    private static final String SERVER_ERROR_EN = "the server is busy, please  wait";
    private static final String SERVER_ERROR_TW = "服務器忙,請稍後再試";
    private static final String SINA_NOTICE_EN = "By clicking ok, you hereby agree to Weibo Online Service Agreement and Privacy Policy";
    private static final String SINA_NOTICE_ZH_CN = "点击“确定”表示你同意服务使用协议和隐私条款。";
    private static final String SINA_NOTICE_ZH_TW = "點擊“確定”標示你同意服務使用協議和隱私條款。";
    private static final String SINA_PRIVATE_URL = "http://m.weibo.cn/reg/privacyagreement?from=h5&wm=3349";
    private static final String SINA_PROTOCOL_URL = "http://weibo.cn/dpool/ttt/h5/regagreement.php?from=h5";
    private static final String SINA_SERVICE_EN = "Service By Sina WeiBo";
    private static final String SINA_SERVICE_ZH_CN = "此服务由微博提供";
    private static final String SINA_SERVICE_ZH_TW = "此服務由微博提供";
    private static final String TAG = MobileRegisterActivity.class.getName();
    private static final int TITLE_BAR_ID = 1;
    private static final String TITLE_CN = "验证码登录";
    private static final String TITLE_EN = "Login";
    private static final String TITLE_TW = "驗證碼登錄";
    private static final int TRIANGLE_ID = 2;
    private static final String WAIT_CN = "正在处理中.....";
    private static final String WAIT_EN = "please wait .... ";
    private static final String WAIT_TW = "正在處理中.....";
    private String cfrom;
    private String mAppkey;
    private Button mBtnRegist;
    private EditText mCheckCode;
    private CountDownTimer mCountDownTimer;
    private TextView mCountryCode;
    private String mCountryCodeStr;
    private RelativeLayout mCountryLayout;
    private TextView mCountryName;
    private String mCountryNameStr;
    private Button mGetCodeBtn;
    private TextView mInfoText;
    private String mKeyHash;
    private ProgressDialog mLoadingDlg;
    private String mPackageName;
    private EditText mPhoneNum;
    private ImageView mPhoneNumClearBtn;
    private ScrollView mRegistScrollview;
    private LinearLayout mRegiter_llt;
    private String mSpecifyTitle;
    private TextView mTips;
    private TitleBar titleBar;
    private InputHandler mInputHandler = new InputHandler(this, null);
    private int mMaxHeight = 0;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle extras = getIntent().getExtras();
        if (extras == null) {
            UIUtils.showToast(getApplicationContext(), "Pass wrong params!!", 0);
            finish();
        }
        this.mAppkey = extras.getString(WBConstants.SSO_APP_KEY);
        this.mPackageName = extras.getString("packagename");
        this.mKeyHash = extras.getString("key_hash");
        if (TextUtils.isEmpty(this.mAppkey)) {
            UIUtils.showToast(getApplicationContext(), ResourceManager.getString(this, APPKEY_NOT_SET_EN, APPKEY_NOT_SET_CN, APPKEY_NOT_SET_TW), 0);
            finish();
        }
        String titleStr = extras.getString(REGISTER_TITLE);
        if (TextUtils.isEmpty(titleStr)) {
            titleStr = ResourceManager.getString(this, TITLE_EN, TITLE_CN, TITLE_TW);
        }
        this.mSpecifyTitle = titleStr;
        this.mCountryCodeStr = Country.CHINA_CODE;
        this.mCountryNameStr = ResourceManager.getString(this, CHINA_EN, CHINA_CN, CHINA_TW);
        initView();
        this.mCountDownTimer = new CountDownTimer(SdkConstants.A_MUNITE, 1000L) { // from class: com.sina.weibo.sdk.register.mobile.MobileRegisterActivity.1
            @Override // android.os.CountDownTimer
            public void onTick(long millisUntilFinished) {
                MobileRegisterActivity.this.mGetCodeBtn.setText(String.valueOf(ResourceManager.getString(MobileRegisterActivity.this.getApplicationContext(), MobileRegisterActivity.GET_CODE_EN, MobileRegisterActivity.GET_CODE_CN, MobileRegisterActivity.GET_CODE_TW)) + "(" + (millisUntilFinished / 1000) + "s)");
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                MobileRegisterActivity.this.mGetCodeBtn.setText(ResourceManager.getString(MobileRegisterActivity.this.getApplicationContext(), MobileRegisterActivity.GET_CODE_EN, MobileRegisterActivity.GET_CODE_CN, MobileRegisterActivity.GET_CODE_TW));
                MobileRegisterActivity.this.enableGetCodeBtn();
            }
        };
    }

    private void initView() {
        ResizeableLayout mobile_regist = new ResizeableLayout(this);
        mobile_regist.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        mobile_regist.setBackgroundColor(DEFAULT_BG_COLOR);
        this.titleBar = new TitleBar(this);
        this.titleBar.setId(1);
        this.titleBar.setLeftBtnText(ResourceManager.getString(this, CANCEL_EN, "取消", "取消"));
        this.titleBar.setTitleBarText(this.mSpecifyTitle);
        this.titleBar.setTitleBarClickListener(new TitleBar.ListenerOnTitleBtnClicked() { // from class: com.sina.weibo.sdk.register.mobile.MobileRegisterActivity.2
            @Override // com.sina.weibo.sdk.component.view.TitleBar.ListenerOnTitleBtnClicked
            public void onLeftBtnClicked() {
                MobileRegisterActivity.this.setResult(0);
                MobileRegisterActivity.this.finish();
            }
        });
        mobile_regist.addView(this.titleBar);
        View mDividingLine1 = new View(this);
        RelativeLayout.LayoutParams rllp = new RelativeLayout.LayoutParams(-1, ResourceManager.dp2px(this, 2));
        mDividingLine1.setBackgroundDrawable(ResourceManager.getNinePatchDrawable(this, "weibosdk_common_shadow_top.9.png"));
        rllp.addRule(3, 1);
        mDividingLine1.setLayoutParams(rllp);
        mobile_regist.addView(mDividingLine1);
        this.mRegistScrollview = new ScrollView(this);
        RelativeLayout.LayoutParams scly = new RelativeLayout.LayoutParams(-1, -1);
        scly.topMargin = ResourceManager.dp2px(this, 47);
        this.mRegistScrollview.setBackgroundColor(DEFAULT_BG_COLOR);
        this.mRegistScrollview.setLayoutParams(scly);
        this.mRegiter_llt = new LinearLayout(this);
        LinearLayout.LayoutParams mlly = new LinearLayout.LayoutParams(-1, -2);
        this.mRegiter_llt.setOrientation(1);
        this.mRegiter_llt.setLayoutParams(mlly);
        this.mInfoText = new TextView(this);
        this.mInfoText.setTextSize(2, 13.0f);
        this.mInfoText.setHeight(ResourceManager.dp2px(this, 44));
        this.mInfoText.setGravity(17);
        this.mInfoText.setTextColor(LINK_TEXT_COLOR);
        this.mInfoText.setText(ResourceManager.getString(this, HELP_INFO_EN, HELP_INFO_CN, HELP_INFO_TW));
        this.mInfoText.setFocusable(true);
        this.mInfoText.setFocusableInTouchMode(true);
        this.mRegiter_llt.addView(this.mInfoText);
        this.mCountryLayout = new RelativeLayout(this);
        RelativeLayout.LayoutParams mCountrylp = new RelativeLayout.LayoutParams(-1, ResourceManager.dp2px(this, 48));
        this.mCountryLayout.setBackgroundDrawable(ResourceManager.createStateListDrawable(this, "login_country_background.9.png", "login_country_background_highlighted.9.png"));
        this.mCountryLayout.setLayoutParams(mCountrylp);
        this.mCountryCode = new TextView(this);
        this.mCountryCode.setTextSize(2, 17.0f);
        this.mCountryCode.setText(Country.CHINA_CODE);
        this.mCountryCode.setTextColor(-11382190);
        this.mCountryCode.setGravity(3);
        this.mCountryCode.setGravity(16);
        RelativeLayout.LayoutParams mCountryCodelp = new RelativeLayout.LayoutParams(-2, ResourceManager.dp2px(this, 48));
        mCountryCodelp.leftMargin = ResourceManager.dp2px(this, 15);
        mCountryCodelp.addRule(9);
        this.mCountryCode.setLayoutParams(mCountryCodelp);
        ImageView mTriangle = new ImageView(this);
        mTriangle.setId(2);
        mTriangle.setImageDrawable(ResourceManager.getDrawable(this, "triangle.png"));
        RelativeLayout.LayoutParams mTriangleImgLp = new RelativeLayout.LayoutParams(ResourceManager.dp2px(this, 13), ResourceManager.dp2px(this, 13));
        mTriangleImgLp.rightMargin = ResourceManager.dp2px(this, 15);
        mTriangleImgLp.addRule(11);
        mTriangleImgLp.addRule(15);
        mTriangle.setLayoutParams(mTriangleImgLp);
        this.mCountryName = new TextView(this);
        this.mCountryName.setTextSize(2, 17.0f);
        this.mCountryName.setTextColor(-11382190);
        this.mCountryName.setText(this.mCountryNameStr);
        this.mCountryName.setGravity(16);
        RelativeLayout.LayoutParams mCountryNameLp = new RelativeLayout.LayoutParams(-2, ResourceManager.dp2px(this, 48));
        mCountryNameLp.rightMargin = ResourceManager.dp2px(this, 118);
        mCountryNameLp.addRule(0, 2);
        mCountryNameLp.addRule(15);
        this.mCountryName.setLayoutParams(mCountryNameLp);
        this.mCountryLayout.addView(this.mCountryCode);
        this.mCountryLayout.addView(this.mCountryName);
        this.mCountryLayout.addView(mTriangle);
        this.mRegiter_llt.addView(this.mCountryLayout);
        LinearLayout linearLayout = new LinearLayout(this);
        LinearLayout.LayoutParams mInputLayoutlp = new LinearLayout.LayoutParams(-1, -2);
        mInputLayoutlp.topMargin = ResourceManager.dp2px(this, 10);
        linearLayout.setLayoutParams(mInputLayoutlp);
        linearLayout.setOrientation(1);
        RelativeLayout mPhoneNumLly = new RelativeLayout(this);
        LinearLayout.LayoutParams mPhoneNumLlylp = new LinearLayout.LayoutParams(-1, ResourceManager.dp2px(this, 50));
        mPhoneNumLlylp.gravity = 16;
        mPhoneNumLly.setBackgroundDrawable(ResourceManager.getNinePatchDrawable(this, "login_top_background.9.png"));
        mPhoneNumLly.setLayoutParams(mPhoneNumLlylp);
        this.mPhoneNumClearBtn = new ImageView(this);
        this.mPhoneNumClearBtn.setId(4);
        this.mPhoneNumClearBtn.setImageDrawable(ResourceManager.createStateListDrawable(this, "search_clear_btn_normal.png", "search_clear_btn_down.png"));
        RelativeLayout.LayoutParams mPhoneNumClearBtnLp = new RelativeLayout.LayoutParams(ResourceManager.dp2px(this, 22), ResourceManager.dp2px(this, 22));
        mPhoneNumClearBtnLp.rightMargin = ResourceManager.dp2px(this, 15);
        mPhoneNumClearBtnLp.addRule(11);
        mPhoneNumClearBtnLp.addRule(15);
        this.mPhoneNumClearBtn.setVisibility(4);
        this.mPhoneNumClearBtn.setLayoutParams(mPhoneNumClearBtnLp);
        mPhoneNumLly.addView(this.mPhoneNumClearBtn);
        this.mPhoneNum = new EditText(this);
        this.mPhoneNum.setTextSize(2, 16.0f);
        this.mPhoneNum.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        this.mPhoneNum.setHint(ResourceManager.getString(this, INPUT_PHONE_NUM_EN, INPUT_PHONE_NUM_CN, INPUT_PHONE_NUM_TW));
        this.mPhoneNum.setHintTextColor(EMPTY_VIEW_TEXT_COLOR);
        this.mPhoneNum.setBackgroundDrawable(null);
        this.mPhoneNum.setSelected(false);
        RelativeLayout.LayoutParams mPhoneNumlp = new RelativeLayout.LayoutParams(-1, ResourceManager.dp2px(this, 50));
        mPhoneNumlp.topMargin = ResourceManager.dp2px(this, 0);
        mPhoneNumlp.bottomMargin = ResourceManager.dp2px(this, 0);
        mPhoneNumlp.leftMargin = ResourceManager.dp2px(this, 0);
        mPhoneNumlp.rightMargin = ResourceManager.dp2px(this, 0);
        mPhoneNumlp.addRule(0, 4);
        this.mPhoneNum.setLayoutParams(mPhoneNumlp);
        mPhoneNumLly.addView(this.mPhoneNum);
        RelativeLayout mCheckCodeLayout = new RelativeLayout(this);
        RelativeLayout.LayoutParams mCheckCodeLayoutlp = new RelativeLayout.LayoutParams(-1, ResourceManager.dp2px(this, 50));
        mCheckCodeLayout.setBackgroundDrawable(ResourceManager.getNinePatchDrawable(this, "login_bottom_background.9.png"));
        mCheckCodeLayout.setLayoutParams(mCheckCodeLayoutlp);
        this.mGetCodeBtn = new Button(this);
        this.mGetCodeBtn.setId(3);
        this.mGetCodeBtn.setBackgroundDrawable(ResourceManager.createStateListDrawable(this, "get_code_button.9.png", "get_code_button_highlighted.9.png"));
        RelativeLayout.LayoutParams mBtnGetCodeLp = new RelativeLayout.LayoutParams(-2, ResourceManager.dp2px(this, 29));
        mBtnGetCodeLp.rightMargin = ResourceManager.dp2px(this, 12);
        mBtnGetCodeLp.addRule(11);
        mBtnGetCodeLp.addRule(15);
        this.mGetCodeBtn.setPadding(18, 0, 18, 0);
        this.mGetCodeBtn.setLayoutParams(mBtnGetCodeLp);
        this.mGetCodeBtn.setText(ResourceManager.getString(this, GET_CODE_EN, GET_CODE_CN, GET_CODE_TW));
        this.mGetCodeBtn.setTextSize(15.0f);
        enableGetCodeBtn();
        mCheckCodeLayout.addView(this.mGetCodeBtn);
        this.mCheckCode = new EditText(this);
        this.mCheckCode.setTextSize(2, 16.0f);
        this.mCheckCode.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        this.mCheckCode.setHintTextColor(EMPTY_VIEW_TEXT_COLOR);
        this.mCheckCode.setHint(ResourceManager.getString(this, INPUT_AUTH_CODE_EN, INPUT_AUTH_CODE_CN, INPUT_AUTH_CODE_TW));
        this.mCheckCode.setBackgroundDrawable(null);
        RelativeLayout.LayoutParams mCheckCodelp = new RelativeLayout.LayoutParams(-1, ResourceManager.dp2px(this, 48));
        mCheckCodelp.addRule(0, 3);
        this.mCheckCode.setLayoutParams(mCheckCodelp);
        mCheckCodeLayout.addView(this.mCheckCode);
        linearLayout.addView(mPhoneNumLly);
        linearLayout.addView(mCheckCodeLayout);
        this.mRegiter_llt.addView(linearLayout);
        this.mGetCodeBtn.setOnClickListener(this);
        this.mTips = new TextView(this);
        this.mTips.setTextSize(2, 13.0f);
        this.mTips.setTextColor(-2014941);
        this.mTips.setText("");
        this.mTips.setVisibility(4);
        LinearLayout.LayoutParams mTipsLy = new LinearLayout.LayoutParams(-1, ResourceManager.dp2px(this, 36));
        mTipsLy.leftMargin = ResourceManager.dp2px(this, 12);
        this.mTips.setGravity(16);
        this.mTips.setLayoutParams(mTipsLy);
        this.mRegiter_llt.addView(this.mTips);
        this.mBtnRegist = genOKBtn();
        disableRegisterBtn();
        this.mRegiter_llt.addView(this.mBtnRegist);
        TextView mDeveloperInfo = genSinaServiceTv();
        TextView mProtocalInfoTv = genProtocalInfoTv();
        this.mRegiter_llt.addView(mDeveloperInfo);
        this.mRegiter_llt.addView(mProtocalInfoTv);
        this.mRegistScrollview.addView(this.mRegiter_llt);
        mobile_regist.addView(this.mRegistScrollview);
        initLoadingDlg();
        this.mPhoneNum.setInputType(2);
        this.mPhoneNum.addTextChangedListener(new PhoneNumTextWatcher(this, null));
        this.mCheckCode.setInputType(2);
        this.mCheckCode.addTextChangedListener(new CodeTextWatcher(this, null));
        this.mPhoneNumClearBtn.setOnClickListener(this);
        this.mPhoneNum.setOnFocusChangeListener(this);
        this.mBtnRegist.setOnClickListener(this);
        this.mCountryLayout.setOnClickListener(this);
        mobile_regist.setSizeChangeListener(this);
        setContentView(mobile_regist);
    }

    private Button genOKBtn() {
        Button btn = new Button(this);
        btn.setBackgroundDrawable(ResourceManager.createStateListDrawable(this, "common_button_big_blue.9.png", "common_button_big_blue_highlighted.9.png", "common_button_big_blue_disable.9.png"));
        LinearLayout.LayoutParams mBtnRegistLp = new LinearLayout.LayoutParams(-1, ResourceManager.dp2px(this, 46));
        int dp2px = ResourceManager.dp2px(this, 12);
        mBtnRegistLp.rightMargin = dp2px;
        mBtnRegistLp.leftMargin = dp2px;
        btn.setText(ResourceManager.getString(this, OK_EN, OK_ZH_CN, OK_ZH_TW));
        btn.setTextSize(17.0f);
        btn.setLayoutParams(mBtnRegistLp);
        return btn;
    }

    private TextView genSinaServiceTv() {
        TextView developerInfo = new TextView(this);
        LinearLayout.LayoutParams mDeveloperInfoly = new LinearLayout.LayoutParams(-1, -2);
        mDeveloperInfoly.topMargin = ResourceManager.dp2px(this, 12);
        mDeveloperInfoly.leftMargin = ResourceManager.dp2px(this, 12);
        developerInfo.setLayoutParams(mDeveloperInfoly);
        developerInfo.setTextSize(13.0f);
        developerInfo.setGravity(3);
        developerInfo.setTextColor(LINK_TEXT_COLOR);
        developerInfo.setText(ResourceManager.getString(this, SINA_SERVICE_EN, SINA_SERVICE_ZH_CN, SINA_SERVICE_ZH_TW));
        return developerInfo;
    }

    private TextView genProtocalInfoTv() {
        String notice;
        int protocalStartIndex;
        int protocalEndIndex;
        int privacyStartIndex;
        int privacyEndIndex;
        TextView view = new TextView(this);
        view.setTextSize(2, 13.0f);
        LinearLayout.LayoutParams mProtocalInfoly = new LinearLayout.LayoutParams(-1, -2);
        mProtocalInfoly.topMargin = ResourceManager.dp2px(this, 8);
        mProtocalInfoly.leftMargin = ResourceManager.dp2px(this, 12);
        mProtocalInfoly.rightMargin = ResourceManager.dp2px(this, 12);
        view.setLayoutParams(mProtocalInfoly);
        view.setTextSize(13.0f);
        view.setGravity(3);
        view.setTextColor(LINK_TEXT_COLOR);
        Locale locale = ResourceManager.getLanguage();
        String lang = "zh_CN";
        if (Locale.SIMPLIFIED_CHINESE.equals(locale)) {
            notice = SINA_NOTICE_ZH_CN;
            protocalStartIndex = SINA_NOTICE_ZH_CN.indexOf("服务使用协议");
            protocalEndIndex = protocalStartIndex + "服务使用协议".length();
            privacyStartIndex = SINA_NOTICE_ZH_CN.indexOf("隐私条款");
            privacyEndIndex = privacyStartIndex + "隐私条款".length();
        } else if (Locale.TRADITIONAL_CHINESE.equals(locale)) {
            notice = SINA_NOTICE_ZH_TW;
            lang = "zh_HK";
            protocalStartIndex = SINA_NOTICE_ZH_TW.indexOf("服務使用協議");
            protocalEndIndex = protocalStartIndex + "服務使用協議".length();
            privacyStartIndex = SINA_NOTICE_ZH_TW.indexOf("隱私條款");
            privacyEndIndex = privacyStartIndex + "隱私條款".length();
        } else {
            notice = SINA_NOTICE_EN;
            lang = "en_US";
            protocalStartIndex = SINA_NOTICE_EN.indexOf("Service Agreement");
            protocalEndIndex = protocalStartIndex + "Service Agreement".length();
            privacyStartIndex = SINA_NOTICE_EN.indexOf("Privacy Policy");
            privacyEndIndex = privacyStartIndex + "Privacy Policy".length();
        }
        Spannable span = new SpannableStringBuilder(notice);
        if (protocalStartIndex != -1 && protocalEndIndex != -1) {
            span.setSpan(new WBSdkUrlClickSpan(this, "http://weibo.cn/dpool/ttt/h5/regagreement.php?from=h5&lang=" + lang), protocalStartIndex, protocalEndIndex, 33);
        }
        if (privacyStartIndex != -1 && privacyEndIndex != -1) {
            span.setSpan(new WBSdkUrlClickSpan(this, "http://m.weibo.cn/reg/privacyagreement?from=h5&wm=3349&lang=" + lang), privacyStartIndex, privacyEndIndex, 33);
        }
        view.setText(span);
        view.setMovementMethod(LinkMovementMethod.getInstance());
        view.setFocusable(false);
        return view;
    }

    @Override // android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        switch (requestCode) {
            case 0:
                if (data != null) {
                    this.mCountryCodeStr = data.getStringExtra("code");
                    this.mCountryNameStr = data.getStringExtra("name");
                    this.mCountryCode.setText(this.mCountryCodeStr);
                    this.mCountryName.setText(this.mCountryNameStr);
                    return;
                }
                return;
            default:
                return;
        }
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View v, boolean hasFocus) {
        if (v == this.mPhoneNum && !hasFocus) {
            String phoneNumStr = this.mPhoneNum.getText().toString();
            if (verifyPhoneNum(phoneNumStr)) {
                this.mTips.setVisibility(4);
            } else {
                this.mTips.setText(ResourceManager.getString(this, PHONE_ERROR_EN, PHONE_ERROR_CN, PHONE_ERROR_TW));
                this.mTips.setVisibility(0);
            }
        }
    }

    private boolean doCheckOnGetMsg(String phoneNum) {
        if (!NetworkHelper.isNetworkAvailable(this)) {
            showNetFail();
            return false;
        }
        boolean verified = verifyPhoneNum(phoneNum);
        if (!verified) {
            this.mTips.setVisibility(0);
            this.mTips.setText(ResourceManager.getString(getApplicationContext(), PHONE_ERROR_EN, PHONE_ERROR_CN, PHONE_ERROR_TW));
            return false;
        }
        this.mTips.setVisibility(4);
        return true;
    }

    private boolean verifyPhoneNum(String phoneNum) {
        if (TextUtils.isEmpty(phoneNum)) {
            return false;
        }
        return !Country.CHINA_CODE.equals(this.mCountryCodeStr) || phoneNum.trim().length() == 11;
    }

    private boolean doCheckOnSubmit(String checkCodeStr) {
        if (!NetworkHelper.isNetworkAvailable(this)) {
            showNetFail();
            return false;
        }
        if (verifyCheckCode(checkCodeStr)) {
            this.mTips.setVisibility(4);
            return true;
        }
        this.mTips.setVisibility(0);
        this.mTips.setText(ResourceManager.getString(getApplicationContext(), CODE_LENGTH_EN, CODE_LENGTH_CN, CODE_LENGTH_TW));
        UIUtils.showToast(getApplicationContext(), ResourceManager.getString(getApplicationContext(), CODE_LENGTH_EN, CODE_LENGTH_CN, CODE_LENGTH_TW), 0);
        return false;
    }

    private boolean verifyCheckCode(String checkCodeStr) {
        return !TextUtils.isEmpty(checkCodeStr) && checkCodeStr.length() == 6;
    }

    private void disableGetCodeBtn() {
        this.mGetCodeBtn.setEnabled(false);
        this.mGetCodeBtn.setTextColor(EMPTY_VIEW_TEXT_COLOR);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enableGetCodeBtn() {
        this.mGetCodeBtn.setEnabled(true);
        this.mGetCodeBtn.setTextColor(MIAN_LINK_TEXT_COLOR);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void disableRegisterBtn() {
        this.mBtnRegist.setTextColor(1308622847);
        this.mBtnRegist.setEnabled(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enableRegisterBtn() {
        this.mBtnRegist.setEnabled(true);
        this.mBtnRegist.setTextColor(-1);
    }

    private void showNetFail() {
        UIUtils.showToast(getApplicationContext(), ResourceManager.getString(getApplicationContext(), NETWORK_ERROR_EN, NETWORK_ERROR_CN, NETWORK_ERROR_TW), 0);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        if (keyCode != 4) {
            return super.onKeyUp(keyCode, event);
        }
        setResult(0);
        finish();
        return true;
    }

    public void dismiss() {
        if (this.mLoadingDlg != null && this.mLoadingDlg.isShowing()) {
            this.mLoadingDlg.dismiss();
        }
    }

    private void initLoadingDlg() {
        this.mLoadingDlg = new ProgressDialog(this);
        this.mLoadingDlg.setCanceledOnTouchOutside(false);
        this.mLoadingDlg.requestWindowFeature(1);
        this.mLoadingDlg.setMessage(ResourceManager.getString(this, WAIT_EN, WAIT_CN, WAIT_TW));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class CodeTextWatcher implements TextWatcher {
        private CodeTextWatcher() {
        }

        /* synthetic */ CodeTextWatcher(MobileRegisterActivity mobileRegisterActivity, CodeTextWatcher codeTextWatcher) {
            this();
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s, int start, int before, int count) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s) {
            if (TextUtils.isEmpty(MobileRegisterActivity.this.mPhoneNum.getText().toString()) || TextUtils.isEmpty(MobileRegisterActivity.this.mCheckCode.getText().toString())) {
                MobileRegisterActivity.this.disableRegisterBtn();
            } else {
                MobileRegisterActivity.this.enableRegisterBtn();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class PhoneNumTextWatcher implements TextWatcher {
        private PhoneNumTextWatcher() {
        }

        /* synthetic */ PhoneNumTextWatcher(MobileRegisterActivity mobileRegisterActivity, PhoneNumTextWatcher phoneNumTextWatcher) {
            this();
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s, int start, int before, int count) {
            if (TextUtils.isEmpty(MobileRegisterActivity.this.mPhoneNum.getText().toString())) {
                MobileRegisterActivity.this.mPhoneNumClearBtn.setVisibility(4);
            } else {
                MobileRegisterActivity.this.mPhoneNumClearBtn.setVisibility(0);
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s) {
            if (TextUtils.isEmpty(MobileRegisterActivity.this.mPhoneNum.getText().toString()) || TextUtils.isEmpty(MobileRegisterActivity.this.mCheckCode.getText().toString())) {
                MobileRegisterActivity.this.disableRegisterBtn();
            } else {
                MobileRegisterActivity.this.enableRegisterBtn();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class WBSdkUrlClickSpan extends ClickableSpan {
        private Context context;
        private String url;

        public WBSdkUrlClickSpan(Context ctx, String url) {
            this.context = ctx;
            this.url = url;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View widget) {
            Intent intent = new Intent(this.context, (Class<?>) WeiboSdkBrowser.class);
            Bundle data = new Bundle();
            data.putString("key_url", this.url);
            intent.putExtras(data);
            MobileRegisterActivity.this.startActivity(intent);
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint ds) {
            ds.setColor(MobileRegisterActivity.MIAN_LINK_TEXT_COLOR);
            ds.setUnderlineText(false);
        }
    }

    public void getMsg(String phoneNum, String countryCode) {
        WeiboParameters params = new WeiboParameters(this.mAppkey);
        params.put("appkey", this.mAppkey);
        params.put("packagename", this.mPackageName);
        params.put("key_hash", this.mKeyHash);
        if (!Country.CHINA_CODE.equals(countryCode)) {
            phoneNum = String.valueOf(countryCode) + phoneNum;
        }
        params.put("phone", phoneNum);
        params.put("version", WBConstants.WEIBO_SDK_VERSION_CODE);
        NetUtils.internalHttpRequest(this, SEND_MSG, params, "GET", new RequestListener() { // from class: com.sina.weibo.sdk.register.mobile.MobileRegisterActivity.3
            @Override // com.sina.weibo.sdk.net.RequestListener
            public void onWeiboException(WeiboException e) {
                LogUtil.d(MobileRegisterActivity.TAG, "get onWeiboException " + e.getMessage());
                String error_description = ResourceManager.getString(MobileRegisterActivity.this.getApplicationContext(), MobileRegisterActivity.SERVER_ERROR_EN, MobileRegisterActivity.SERVER_ERROR_CN, MobileRegisterActivity.SERVER_ERROR_TW);
                try {
                    JSONObject res = new JSONObject(e.getMessage());
                    if (!TextUtils.isEmpty(res.optString("error_description"))) {
                        error_description = res.optString("error_description");
                    }
                } catch (Exception exception) {
                    exception.printStackTrace();
                }
                UIUtils.showToast(MobileRegisterActivity.this.getApplicationContext(), error_description, 1);
            }

            @Override // com.sina.weibo.sdk.net.RequestListener
            public void onComplete(String response) {
                LogUtil.d(MobileRegisterActivity.TAG, "get onComplete : " + response);
                if (response != null) {
                    try {
                        JSONObject res = new JSONObject(response);
                        MobileRegisterActivity.this.cfrom = (String) res.get("cfrom");
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        });
    }

    public void submit(final String phoneNum, String checkCodeStr) {
        WeiboParameters params = new WeiboParameters(this.mAppkey);
        params.put("appkey", this.mAppkey);
        params.put("packagename", this.mPackageName);
        params.put("key_hash", this.mKeyHash);
        params.put("phone", phoneNum);
        params.put("version", WBConstants.WEIBO_SDK_VERSION_CODE);
        params.put("code", checkCodeStr);
        params.put("cfrom", this.cfrom);
        this.mLoadingDlg.show();
        NetUtils.internalHttpRequest(this, SEND_SUBMIT, params, "GET", new RequestListener() { // from class: com.sina.weibo.sdk.register.mobile.MobileRegisterActivity.4
            @Override // com.sina.weibo.sdk.net.RequestListener
            public void onWeiboException(WeiboException e) {
                LogUtil.d(MobileRegisterActivity.TAG, "get onWeiboException " + e.getMessage());
                String error_description = ResourceManager.getString(MobileRegisterActivity.this.getApplicationContext(), MobileRegisterActivity.SERVER_ERROR_EN, MobileRegisterActivity.SERVER_ERROR_CN, MobileRegisterActivity.SERVER_ERROR_TW);
                try {
                    JSONObject res = new JSONObject(e.getMessage());
                    if (!TextUtils.isEmpty(res.optString("error_description"))) {
                        error_description = res.optString("error_description");
                    }
                } catch (Exception exception) {
                    exception.printStackTrace();
                }
                MobileRegisterActivity.this.mTips.setVisibility(0);
                MobileRegisterActivity.this.mTips.setText(error_description);
                MobileRegisterActivity.this.dismiss();
            }

            @Override // com.sina.weibo.sdk.net.RequestListener
            public void onComplete(String response) {
                MobileRegisterActivity.this.dismiss();
                LogUtil.d(MobileRegisterActivity.TAG, "get onComplete : " + response);
                if (response != null) {
                    try {
                        JSONObject res = new JSONObject(response);
                        Intent intent = new Intent();
                        Bundle param = new Bundle();
                        param.putString("uid", res.optString("uid"));
                        param.putString(Oauth2AccessToken.KEY_PHONE_NUM, phoneNum);
                        param.putString("access_token", res.optString(MobileRegisterActivity.RESPONSE_OAUTH_TOKEN));
                        param.putString("expires_in", res.optString("expires"));
                        intent.putExtras(param);
                        MobileRegisterActivity.this.setResult(-1, intent);
                        MobileRegisterActivity.this.finish();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        });
    }

    /* loaded from: classes.dex */
    private class InputHandler extends Handler {
        private InputHandler() {
        }

        /* synthetic */ InputHandler(MobileRegisterActivity mobileRegisterActivity, InputHandler inputHandler) {
            this();
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    MobileRegisterActivity.this.mInfoText.setVisibility(0);
                    MobileRegisterActivity.this.mCountryLayout.setVisibility(0);
                    return;
                case 1:
                    MobileRegisterActivity.this.mInfoText.setVisibility(8);
                    MobileRegisterActivity.this.mCountryLayout.setVisibility(8);
                    return;
                default:
                    return;
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        if (v == this.mGetCodeBtn) {
            String phoneNumStr = this.mPhoneNum.getText().toString();
            String countryCode = this.mCountryCode.getText().toString();
            boolean checked = doCheckOnGetMsg(phoneNumStr);
            if (checked) {
                this.mCountDownTimer.start();
                disableGetCodeBtn();
                getMsg(phoneNumStr, countryCode);
                return;
            }
            return;
        }
        if (v == this.mPhoneNumClearBtn) {
            this.mPhoneNum.setText("");
            return;
        }
        if (v == this.mBtnRegist) {
            String phoneNumStr2 = this.mPhoneNum.getText().toString();
            String checkCodeStr = this.mCheckCode.getText().toString();
            if (doCheckOnSubmit(checkCodeStr)) {
                submit(phoneNumStr2, checkCodeStr);
                return;
            }
            return;
        }
        if (v == this.mCountryLayout) {
            this.mTips.setVisibility(4);
            Intent intent = new Intent();
            intent.setClass(this, SelectCountryActivity.class);
            startActivityForResult(intent, 0);
        }
    }

    @Override // com.sina.weibo.sdk.component.view.ResizeableLayout.SizeChangeListener
    public void onSizeChanged(int width, int height, int oldWidth, int oldHeight) {
        DisplayMetrics dm = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(dm);
        if (dm.widthPixels <= dm.heightPixels) {
            this.mMaxHeight = this.mMaxHeight < height ? height : this.mMaxHeight;
            int change = 0;
            if (height < oldHeight) {
                change = 1;
            } else if (height > oldHeight && height < this.mMaxHeight) {
                change = 1;
            } else if (height == oldHeight && height != this.mMaxHeight) {
                change = 1;
            }
            this.mInputHandler.sendEmptyMessage(change);
        }
    }
}
