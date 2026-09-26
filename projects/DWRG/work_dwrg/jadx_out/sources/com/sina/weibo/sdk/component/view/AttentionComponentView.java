package com.sina.weibo.sdk.component.view;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.alipay.sdk.util.k;
import com.sina.weibo.sdk.auth.WeiboAuthListener;
import com.sina.weibo.sdk.cmd.WbAppActivator;
import com.sina.weibo.sdk.component.WeiboSdkBrowser;
import com.sina.weibo.sdk.component.WidgetRequestParam;
import com.sina.weibo.sdk.exception.WeiboException;
import com.sina.weibo.sdk.net.NetUtils;
import com.sina.weibo.sdk.net.RequestListener;
import com.sina.weibo.sdk.net.WeiboParameters;
import com.sina.weibo.sdk.utils.LogUtil;
import com.sina.weibo.sdk.utils.ResourceManager;
import com.sina.weibo.sdk.utils.Utility;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AttentionComponentView extends FrameLayout {
    private static final String ALREADY_ATTEND_EN = "Following";
    private static final String ALREADY_ATTEND_ZH_CN = "已关注";
    private static final String ALREADY_ATTEND_ZH_TW = "已關注";
    private static final String ATTEND_EN = "Follow";
    private static final String ATTEND_ZH_CN = "关注";
    private static final String ATTEND_ZH_TW = "關注";
    private static final String ATTENTION_H5 = "http://widget.weibo.com/relationship/followsdk.php";
    private static final String FRIENDSHIPS_SHOW_URL = "https://api.weibo.com/2/friendships/show.json";
    private static final String TAG = AttentionComponentView.class.getName();
    private FrameLayout flButton;
    private RequestParam mAttentionParam;
    private TextView mButton;
    private volatile boolean mIsLoadingState;
    private ProgressBar pbLoading;

    public AttentionComponentView(Context context) {
        super(context);
        this.mIsLoadingState = false;
        init(context);
    }

    public AttentionComponentView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mIsLoadingState = false;
        init(context);
    }

    public AttentionComponentView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mIsLoadingState = false;
        init(context);
    }

    private void init(Context context) {
        Drawable relationShipButtonBg = ResourceManager.createStateListDrawable(context, "common_button_white.9.png", "common_button_white_highlighted.9.png");
        this.flButton = new FrameLayout(context);
        this.flButton.setBackgroundDrawable(relationShipButtonBg);
        int paddingTop = ResourceManager.dp2px(getContext(), 6);
        int paddingRight = ResourceManager.dp2px(getContext(), 2);
        int paddingBottom = ResourceManager.dp2px(getContext(), 6);
        this.flButton.setPadding(0, paddingTop, paddingRight, paddingBottom);
        this.flButton.setLayoutParams(new FrameLayout.LayoutParams(ResourceManager.dp2px(getContext(), 66), -2));
        addView(this.flButton);
        this.mButton = new TextView(getContext());
        this.mButton.setIncludeFontPadding(false);
        this.mButton.setSingleLine(true);
        this.mButton.setTextSize(2, 13.0f);
        FrameLayout.LayoutParams buttonLp = new FrameLayout.LayoutParams(-2, -2);
        buttonLp.gravity = 17;
        this.mButton.setLayoutParams(buttonLp);
        this.flButton.addView(this.mButton);
        this.pbLoading = new ProgressBar(getContext(), null, R.attr.progressBarStyleSmall);
        this.pbLoading.setVisibility(8);
        FrameLayout.LayoutParams pbLoadingLp = new FrameLayout.LayoutParams(-2, -2);
        pbLoadingLp.gravity = 17;
        this.pbLoading.setLayoutParams(pbLoadingLp);
        this.flButton.addView(this.pbLoading);
        this.flButton.setOnClickListener(new View.OnClickListener() { // from class: com.sina.weibo.sdk.component.view.AttentionComponentView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                AttentionComponentView.this.execAttented();
            }
        });
        showFollowButton(false);
    }

    public void setAttentionParam(RequestParam param) {
        this.mAttentionParam = param;
        if (param.hasAuthoriz()) {
            loadAttentionState(param);
        }
    }

    private void startLoading() {
        this.flButton.setEnabled(false);
        this.mButton.setVisibility(8);
        this.pbLoading.setVisibility(0);
    }

    private void stopLoading() {
        this.flButton.setEnabled(true);
        this.mButton.setVisibility(0);
        this.pbLoading.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showFollowButton(boolean attention) {
        stopLoading();
        if (attention) {
            this.mButton.setText(ResourceManager.getString(getContext(), ALREADY_ATTEND_EN, ALREADY_ATTEND_ZH_CN, ALREADY_ATTEND_ZH_TW));
            this.mButton.setTextColor(-13421773);
            Drawable leftDrawable = ResourceManager.getDrawable(getContext(), "timeline_relationship_icon_attention.png");
            this.mButton.setCompoundDrawablesWithIntrinsicBounds(leftDrawable, (Drawable) null, (Drawable) null, (Drawable) null);
            this.flButton.setEnabled(false);
            return;
        }
        this.mButton.setText(ResourceManager.getString(getContext(), ATTEND_EN, ATTEND_ZH_CN, ATTEND_ZH_TW));
        this.mButton.setTextColor(-32256);
        Drawable leftDrawable2 = ResourceManager.getDrawable(getContext(), "timeline_relationship_icon_addattention.png");
        this.mButton.setCompoundDrawablesWithIntrinsicBounds(leftDrawable2, (Drawable) null, (Drawable) null, (Drawable) null);
        this.flButton.setEnabled(true);
    }

    private void loadAttentionState(RequestParam req) {
        if (this.mIsLoadingState) {
            return;
        }
        WbAppActivator.getInstance(getContext(), req.mAppKey).activateApp();
        this.mIsLoadingState = true;
        startLoading();
        WeiboParameters params = new WeiboParameters(req.mAppKey);
        params.put("access_token", req.mAccessToken);
        params.put("target_id", req.mAttentionUid);
        params.put("target_screen_name", req.mAttentionScreenName);
        NetUtils.internalHttpRequest(getContext(), FRIENDSHIPS_SHOW_URL, params, "GET", new RequestListener() { // from class: com.sina.weibo.sdk.component.view.AttentionComponentView.2
            @Override // com.sina.weibo.sdk.net.RequestListener
            public void onWeiboException(WeiboException e) {
                LogUtil.d(AttentionComponentView.TAG, "error : " + e.getMessage());
                AttentionComponentView.this.mIsLoadingState = false;
            }

            @Override // com.sina.weibo.sdk.net.RequestListener
            public void onComplete(String response) {
                LogUtil.d(AttentionComponentView.TAG, "json : " + response);
                try {
                    JSONObject root = new JSONObject(response);
                    final JSONObject target = root.optJSONObject("target");
                    AttentionComponentView.this.getHandler().post(new Runnable() { // from class: com.sina.weibo.sdk.component.view.AttentionComponentView.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (target != null) {
                                AttentionComponentView.this.showFollowButton(target.optBoolean("followed_by", false));
                            }
                            AttentionComponentView.this.mIsLoadingState = false;
                        }
                    });
                } catch (JSONException e) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void execAttented() {
        WidgetRequestParam req = new WidgetRequestParam(getContext());
        req.setUrl(ATTENTION_H5);
        req.setSpecifyTitle(ResourceManager.getString(getContext(), ATTEND_EN, ATTEND_ZH_CN, ATTEND_ZH_TW));
        req.setAppKey(this.mAttentionParam.mAppKey);
        req.setAttentionFuid(this.mAttentionParam.mAttentionUid);
        req.setAuthListener(this.mAttentionParam.mAuthlistener);
        req.setToken(this.mAttentionParam.mAccessToken);
        req.setWidgetRequestCallback(new WidgetRequestParam.WidgetRequestCallback() { // from class: com.sina.weibo.sdk.component.view.AttentionComponentView.3
            @Override // com.sina.weibo.sdk.component.WidgetRequestParam.WidgetRequestCallback
            public void onWebViewResult(String url) {
                Bundle b = Utility.parseUri(url);
                String result = b.getString(k.c);
                if (!TextUtils.isEmpty(result)) {
                    try {
                        long attented = Integer.parseInt(result);
                        if (attented == 1) {
                            AttentionComponentView.this.showFollowButton(true);
                        } else if (attented == 0) {
                            AttentionComponentView.this.showFollowButton(false);
                        }
                    } catch (NumberFormatException e) {
                    }
                }
            }
        });
        Bundle data = req.createRequestParamBundle();
        Intent intent = new Intent(getContext(), (Class<?>) WeiboSdkBrowser.class);
        intent.putExtras(data);
        getContext().startActivity(intent);
    }

    private void requestAsync(Context context, String url, WeiboParameters params, String httpMethod, RequestListener listener) {
        NetUtils.internalHttpRequest(context, url, params, httpMethod, listener);
    }

    /* loaded from: classes.dex */
    public static class RequestParam {
        private String mAccessToken;
        private String mAppKey;
        private String mAttentionScreenName;
        private String mAttentionUid;
        private WeiboAuthListener mAuthlistener;

        private RequestParam() {
        }

        public static RequestParam createRequestParam(String appKey, String token, String attentionUid, String attentionScreenName, WeiboAuthListener listener) {
            RequestParam param = new RequestParam();
            param.mAppKey = appKey;
            param.mAccessToken = token;
            param.mAttentionUid = attentionUid;
            param.mAttentionScreenName = attentionScreenName;
            param.mAuthlistener = listener;
            return param;
        }

        public static RequestParam createRequestParam(String appKey, String attentionUid, String attentionScreenName, WeiboAuthListener listener) {
            RequestParam param = new RequestParam();
            param.mAppKey = appKey;
            param.mAttentionUid = attentionUid;
            param.mAttentionScreenName = attentionScreenName;
            param.mAuthlistener = listener;
            return param;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean hasAuthoriz() {
            return !TextUtils.isEmpty(this.mAccessToken);
        }
    }
}
