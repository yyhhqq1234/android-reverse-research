package com.netease.epay.sdk.base.util;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Build;
import android.text.Html;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.Window;
import android.widget.TextView;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.core.SdkConfig;
import com.netease.epay.sdk.base.model.SupportBanks;
import com.netease.epay.sdk.base.model.SupportCardTypeObj;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class UiUtil {
    private static boolean MIUISetStatusBarLightMode(Window window, boolean dark) {
        if (window == null) {
            return false;
        }
        Class<?> cls = window.getClass();
        try {
            Class<?> cls2 = Class.forName("android.view.MiuiWindowManager$LayoutParams");
            int i = cls2.getField("EXTRA_FLAG_STATUS_BAR_DARK_MODE").getInt(cls2);
            Method method = cls.getMethod("setExtraFlags", Integer.TYPE, Integer.TYPE);
            if (dark) {
                method.invoke(window, Integer.valueOf(i), Integer.valueOf(i));
            } else {
                method.invoke(window, 0, Integer.valueOf(i));
            }
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public static void initImmersiveStatusBar(Activity activity) {
        if (Build.VERSION.SDK_INT >= 19) {
            activity.getWindow().addFlags(67108864);
            SystemBarTintManager systemBarTintManager = new SystemBarTintManager(activity);
            if (Build.VERSION.SDK_INT == 19) {
                int red = Color.red(SdkConfig.StateBarColor);
                int green = Color.green(SdkConfig.StateBarColor);
                int blue = Color.blue(SdkConfig.StateBarColor);
                if (red > 235 && green > 235 && blue > 235) {
                    SdkConfig.StateBarColor = Color.rgb(red - 50, green - 50, blue - 50);
                }
            }
            if (SdkConfig.StateBarColor == -526345) {
                systemBarTintManager.setStatusBarTintColor(SdkConfig.TitleBarBackgroundColor);
                if (Build.VERSION.SDK_INT >= 23) {
                    activity.getWindow().getDecorView().setSystemUiVisibility(9216);
                } else {
                    MIUISetStatusBarLightMode(activity.getWindow(), true);
                }
            } else {
                systemBarTintManager.setStatusBarTintColor(SdkConfig.StateBarColor);
            }
            systemBarTintManager.setStatusBarTintEnabled(true);
            activity.getWindow().getDecorView().setFitsSystemWindows(true);
        }
    }

    public static int px2sp(Context context, float pxValue) {
        return (int) ((pxValue / context.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public static int dp2px(Context context, int dp) {
        if (dp == 0) {
            return 0;
        }
        return (int) ((context.getResources().getDisplayMetrics().density * dp) + 0.5d);
    }

    public static int px2dp(Context context, float px) {
        return (int) ((px / context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static boolean isLandScape(Resources resources) {
        return resources != null && resources.getConfiguration().orientation == 2;
    }

    public static void makeSupportBanksShortDisplay(ArrayList<SupportCardTypeObj> supportCardTypeObj, TextView tvBanksWarming, TextView tvTip, ClickableSpan clickableSpan) {
        if (supportCardTypeObj.size() > 0 && tvBanksWarming != null && tvTip != null) {
            tvBanksWarming.setVisibility(0);
            tvTip.setVisibility(0);
            ArrayList arrayList = new ArrayList();
            Iterator<SupportCardTypeObj> it = supportCardTypeObj.iterator();
            while (it.hasNext()) {
                Iterator<SupportBanks> it2 = it.next().banks.iterator();
                while (it2.hasNext()) {
                    SupportBanks next = it2.next();
                    if (arrayList.size() <= 7 && !arrayList.contains(next.bankName)) {
                        arrayList.add(next.bankName);
                    }
                }
            }
            StringBuilder sb = new StringBuilder();
            Iterator it3 = arrayList.iterator();
            int i = 0;
            while (it3.hasNext()) {
                sb.append((String) it3.next());
                if (i + 1 != arrayList.size()) {
                    sb.append(",");
                }
                if (i == 6) {
                    break;
                }
                int i2 = i + 1;
                if (i2 == 4) {
                    if (tvBanksWarming.getPaint().measureText(sb.toString()) < tvBanksWarming.getResources().getDisplayMetrics().widthPixels - dp2px(tvBanksWarming.getContext(), 38)) {
                        sb.append("\n");
                    }
                }
                i = i2;
            }
            tvBanksWarming.setText(sb.toString());
            if (arrayList.size() > 7) {
                SpannableString spannableString = new SpannableString("更多");
                spannableString.setSpan(clickableSpan, 0, spannableString.length(), 17);
                tvBanksWarming.append(spannableString);
                tvBanksWarming.setHighlightColor(0);
                tvBanksWarming.setMovementMethod(LinkMovementMethod.getInstance());
            }
            if (supportCardTypeObj.size() == 1) {
                if (BaseConstants.CARD_TYPE_DEBIT.equals(supportCardTypeObj.get(0).cardType)) {
                    tvTip.setText(Html.fromHtml("<b>仅支持以下银行的储蓄卡:</b>"));
                    return;
                } else {
                    if (BaseConstants.CARD_TYPE_CREDIT.equals(supportCardTypeObj.get(0).cardType)) {
                        tvTip.setText(Html.fromHtml("<b>仅支持以下银行的信用卡:</b>"));
                        return;
                    }
                    return;
                }
            }
            tvTip.setText(Html.fromHtml("<b>仅支持以下银行卡:</b>"));
        }
    }
}
