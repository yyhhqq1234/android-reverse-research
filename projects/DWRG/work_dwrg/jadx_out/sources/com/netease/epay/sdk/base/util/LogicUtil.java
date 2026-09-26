package com.netease.epay.sdk.base.util;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.netease.epay.sdk.base.R;
import com.netease.epay.sdk.base.core.BaseData;
import com.netease.epay.sdk.base.core.CoreData;
import com.netease.epay.sdk.base.ui.FullSdkFragment;
import com.netease.epay.sdk.base.ui.LoadingFragment;
import com.netease.epay.sdk.base.ui.SdkActivity;
import com.netease.epay.sdk.base.ui.SdkFragment;
import com.netease.epay.sdk.base.util.fingerprint.FingerPrintHelper;
import com.netease.epay.sdk.base.util.fingerprint.Root;
import com.netease.epay.sdk.pay.PayConstants;
import com.netease.unisdk.gmbridge.utils.ResIdReader;
import io.netty.util.internal.RecyclableArrayList;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class LogicUtil {
    public static void finishPay() {
        if (CoreData.bizType != -2) {
            LogUtil.v("========================================================");
            LogUtil.v("||                       Epay                         ||");
            LogUtil.v("||can't execute finishPay() before sdk function finish||");
            LogUtil.v("========================================================");
            return;
        }
        LogUtil.v("===========================================");
        LogUtil.v("||              Epay                     ||");
        LogUtil.v("||            finishPay()                ||");
        LogUtil.v("===========================================");
        CoreData.lastCheckIndex = -100;
        CoreData.lastActionTime = 0L;
        BaseData.resetData();
    }

    public static void hideSoftInput(Activity actv) {
        if (actv != null && actv.getCurrentFocus() != null && actv.getCurrentFocus().getWindowToken() != null) {
            ((InputMethodManager) actv.getSystemService("input_method")).hideSoftInputFromWindow(actv.getCurrentFocus().getWindowToken(), 0);
        }
    }

    public static void showSoftInput(final View view) {
        if (view != null && view.getContext() != null) {
            final InputMethodManager inputMethodManager = (InputMethodManager) view.getContext().getSystemService("input_method");
            if (view.getWidth() > 0) {
                if (view.getHandler() != null && inputMethodManager != null && inputMethodManager.isActive()) {
                    view.getHandler().postDelayed(new Runnable() { // from class: com.netease.epay.sdk.base.util.LogicUtil.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (inputMethodManager != null && inputMethodManager.isActive() && view != null) {
                                inputMethodManager.showSoftInput(view, 0);
                            }
                        }
                    }, 150L);
                    return;
                }
                return;
            }
            view.setTag(R.id.epaysdk_soft_tag, false);
            view.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.netease.epay.sdk.base.util.LogicUtil.2
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    if (((Boolean) view.getTag(R.id.epaysdk_soft_tag)).booleanValue()) {
                        view.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                    } else if (inputMethodManager != null && inputMethodManager.isActive()) {
                        view.setTag(R.id.epaysdk_soft_tag, Boolean.valueOf(inputMethodManager.showSoftInput(view, 0)));
                    }
                }
            });
        }
    }

    public static void clearAllFragments(FragmentActivity activity) {
        showFragmentInActivity(null, activity);
    }

    public static boolean showFragmentInActivity(SdkFragment frag, FragmentActivity actv) {
        return showFragmentWithConfig(frag, frag != null ? frag.getClass().getSimpleName() : "", actv, false, false);
    }

    public static void showFragmentKeepAll(SdkFragment frag, String tag, FragmentActivity actv) {
        showFragmentWithConfig(frag, tag, actv, false, true);
    }

    public static void showLoading(String tag, FragmentActivity activity) {
        showFragmentKeepAll(LoadingFragment.getInstance(null), tag, activity);
    }

    public static void dismissLoading(@Nullable String tag, FragmentActivity activity) {
        Fragment fragment;
        if (activity != null && activity.getSupportFragmentManager() != null && !activity.isFinishing()) {
            if (TextUtils.isEmpty(tag)) {
                tag = LoadingFragment.class.getSimpleName();
            }
            List<Fragment> fragments = activity.getSupportFragmentManager().getFragments();
            for (int i = 0; fragments != null && i < fragments.size(); i++) {
                if (fragments.get(i) != null && tag.equals(fragments.get(i).getTag())) {
                    fragment = fragments.get(i);
                    break;
                }
            }
            fragment = null;
            if (fragment != null) {
                FragmentTransaction beginTransaction = activity.getSupportFragmentManager().beginTransaction();
                beginTransaction.remove(fragment);
                beginTransaction.commitAllowingStateLoss();
            }
        }
    }

    public static void showFragmentWithHide(SdkFragment fragment, FragmentActivity actv, boolean isHideOthers) {
        showFragmentWithConfig(fragment, fragment.getClass().getSimpleName(), actv, isHideOthers, false);
    }

    public static boolean showFragmentWithConfig(SdkFragment frag, String tag, FragmentActivity actv, boolean isHideOthers, boolean isKeepOthers) {
        if (actv == null || actv.getSupportFragmentManager() == null || ((actv instanceof SdkActivity) && ((SdkActivity) actv).isDestroyed())) {
            return false;
        }
        FragmentTransaction beginTransaction = actv.getSupportFragmentManager().beginTransaction();
        if (beginTransaction == null) {
            return false;
        }
        if (!isKeepOthers) {
            List<Fragment> fragments = actv.getSupportFragmentManager().getFragments();
            for (int i = 0; fragments != null && i < fragments.size(); i++) {
                if (fragments.get(i) != null && (fragments.get(i) instanceof SdkFragment)) {
                    if (isHideOthers) {
                        beginTransaction.hide(fragments.get(i));
                    } else {
                        beginTransaction.remove(fragments.get(i));
                    }
                }
            }
        }
        if (frag != null) {
            beginTransaction.add(frag, tag);
        }
        beginTransaction.commitAllowingStateLoss();
        return true;
    }

    public static boolean reshowAllFragment(FragmentActivity actv) {
        if (actv == null || actv.getSupportFragmentManager() == null || ((actv instanceof SdkActivity) && ((SdkActivity) actv).isDestroyed())) {
            return false;
        }
        FragmentTransaction beginTransaction = actv.getSupportFragmentManager().beginTransaction();
        for (Fragment fragment : actv.getSupportFragmentManager().getFragments()) {
            if (fragment != null && !(fragment instanceof FullSdkFragment) && fragment.isHidden()) {
                beginTransaction.show(fragment);
            }
        }
        beginTransaction.commitAllowingStateLoss();
        return true;
    }

    public static JSONObject getFactor() {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        JSONObject jSONObject4 = new JSONObject();
        try {
            jSONObject2.put("index", BaseData.wordStart);
            jSONObject2.put("range", BaseData.wordEnd - BaseData.wordStart);
            jSONObject3.put("index", BaseData.mStart);
            jSONObject3.put("range", BaseData.mEnd - BaseData.mStart);
            jSONObject4.put("index", BaseData.nStart);
            jSONObject4.put("range", BaseData.nEnd - BaseData.nStart);
            jSONObject.put("word", jSONObject2);
            jSONObject.put("m", jSONObject3);
            jSONObject.put("n", jSONObject4);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    public static String formatPhoneNumber(String phoneNumber) {
        if (!TextUtils.isEmpty(phoneNumber) && phoneNumber.length() >= 11) {
            StringBuilder sb = new StringBuilder(phoneNumber);
            try {
                sb.delete(3, 7);
                sb.insert(3, "****");
            } catch (StringIndexOutOfBoundsException e) {
                e.printStackTrace();
            }
            return sb.toString();
        }
        return phoneNumber;
    }

    public static int getIcon(Context ctx, String bankId) {
        if (PayConstants.PAY_METHOD_BALABCE.equals(bankId)) {
            return R.drawable.epaysdk_icon_balance;
        }
        int identifier = ctx.getResources().getIdentifier("epaysdk_icon_bank" + bankId, ResIdReader.RES_TYPE_DRAWABLE, ctx.getPackageName());
        if (identifier == 0) {
            return R.drawable.epaysdk_icon_bankdefault;
        }
        return identifier;
    }

    public static int isShowOpenFinger(boolean flag, Context ctx) {
        if (Build.VERSION.SDK_INT < 23 || new Root().isDeviceRooted() || !flag) {
            return -1;
        }
        return new FingerPrintHelper(ctx.getApplicationContext()).checkFingerprintAvailable(ctx.getApplicationContext());
    }

    public static void jsonPut(JSONObject obj, String key, Object value) {
        if (obj != null) {
            try {
                obj.put(key, value);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00b6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList<com.netease.epay.sdk.base.model.SupportCardTypeObj> getSupportBanks(java.util.ArrayList<com.netease.epay.sdk.base.model.SupportBanks> r11, java.lang.String r12) {
        /*
            r0 = 5
            r6 = 1
            r10 = 0
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>(r0)
            if (r11 == 0) goto Lb9
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>(r0)
            java.lang.String r1 = ""
            java.lang.String r0 = ""
            boolean r2 = android.text.TextUtils.isEmpty(r12)
            if (r2 != 0) goto Lba
            java.lang.String r2 = ","
            boolean r2 = r12.contains(r2)
            if (r2 == 0) goto Lba
            java.lang.String r2 = ","
            java.lang.String[] r2 = r12.split(r2)
            int r3 = r2.length
            if (r3 <= r6) goto Lba
            r1 = r2[r10]
            r0 = r2[r6]
            r2 = r0
            r3 = r1
        L30:
            java.lang.String r0 = "debit"
            r5.add(r0)
            com.netease.epay.sdk.base.model.SupportCardTypeObj r0 = new com.netease.epay.sdk.base.model.SupportCardTypeObj
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.lang.String r6 = "debit"
            java.lang.String r7 = "debit"
            java.lang.String r7 = com.netease.epay.sdk.base.model.Card.getCardDesFromCardType(r7)
            r0.<init>(r1, r6, r7)
            r4.add(r0)
            java.util.Iterator r6 = r11.iterator()
        L4e:
            boolean r0 = r6.hasNext()
            if (r0 == 0) goto La8
            java.lang.Object r0 = r6.next()
            com.netease.epay.sdk.base.model.SupportBanks r0 = (com.netease.epay.sdk.base.model.SupportBanks) r0
            java.lang.String r1 = r0.cardType
            boolean r1 = r5.contains(r1)
            if (r1 != 0) goto L7c
            java.lang.String r1 = r0.cardType
            r5.add(r1)
            com.netease.epay.sdk.base.model.SupportCardTypeObj r1 = new com.netease.epay.sdk.base.model.SupportCardTypeObj
            java.util.ArrayList r7 = new java.util.ArrayList
            r7.<init>()
            java.lang.String r8 = r0.cardType
            java.lang.String r9 = r0.cardType
            java.lang.String r9 = com.netease.epay.sdk.base.model.Card.getCardDesFromCardType(r9)
            r1.<init>(r7, r8, r9)
            r4.add(r1)
        L7c:
            java.lang.String r1 = r0.cardType
            int r1 = r5.indexOf(r1)
            java.lang.Object r1 = r4.get(r1)
            com.netease.epay.sdk.base.model.SupportCardTypeObj r1 = (com.netease.epay.sdk.base.model.SupportCardTypeObj) r1
            java.util.ArrayList<com.netease.epay.sdk.base.model.SupportBanks> r7 = r1.banks
            r7.add(r0)
            java.lang.String r7 = r0.bankId
            boolean r7 = r2.equals(r7)
            if (r7 == 0) goto L4e
            java.lang.String r0 = r0.cardType
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L4e
            java.util.ArrayList<com.netease.epay.sdk.base.model.SupportBanks> r0 = r1.banks
            int r0 = r0.size()
            int r0 = r0 + (-1)
            r1.selectIndex = r0
            goto L4e
        La8:
            java.lang.Object r0 = r4.get(r10)
            com.netease.epay.sdk.base.model.SupportCardTypeObj r0 = (com.netease.epay.sdk.base.model.SupportCardTypeObj) r0
            java.util.ArrayList<com.netease.epay.sdk.base.model.SupportBanks> r0 = r0.banks
            int r0 = r0.size()
            if (r0 != 0) goto Lb9
            r4.remove(r10)
        Lb9:
            return r4
        Lba:
            r2 = r0
            r3 = r1
            goto L30
        */
        throw new UnsupportedOperationException("Method not decompiled: com.netease.epay.sdk.base.util.LogicUtil.getSupportBanks(java.util.ArrayList, java.lang.String):java.util.ArrayList");
    }

    public static <T> ArrayList<T> json2Array(String str, Class<T> cls) {
        Gson gson = new Gson();
        JsonArray asJsonArray = new JsonParser().parse(str).getAsJsonArray();
        RecyclableArrayList recyclableArrayList = (ArrayList<T>) new ArrayList();
        Iterator<JsonElement> it = asJsonArray.iterator();
        while (it.hasNext()) {
            recyclableArrayList.add(gson.fromJson(it.next(), (Class) cls));
        }
        return recyclableArrayList;
    }
}
