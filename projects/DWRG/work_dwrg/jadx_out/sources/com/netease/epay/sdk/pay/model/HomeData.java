package com.netease.epay.sdk.pay.model;

import android.content.Context;
import android.os.Build;
import android.support.v4.app.FragmentActivity;
import com.netease.epay.sdk.base.core.BaseData;
import com.netease.epay.sdk.base.core.CoreData;
import com.netease.epay.sdk.base.model.Card;
import com.netease.epay.sdk.base.model.FingerprintDto;
import com.netease.epay.sdk.base.util.fingerprint.FingerPrintHelper;
import com.netease.epay.sdk.base.util.fingerprint.Root;
import com.netease.epay.sdk.pay.PayConstants;
import com.netease.epay.sdk.pay.c;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class HomeData extends GetPayAmount {
    public String accountMobile;
    public String accountName;
    public String accountState;
    public BalanceInfo balanceInfo;
    public ArrayList<Card> cardInfos;
    public String defaultPayMethod;
    public FingerprintDto fingerprintPermissionDto;
    public H5Info h5Info;
    public boolean hasShortPwd;
    public PromoteLimitDto promoteLimitDto;

    /* loaded from: classes.dex */
    public static class H5Info {
        public String directUrl;
    }

    /* loaded from: classes.dex */
    public static class PromoteLimitDto {
        public static final String FACE_PROMOTE_AUDITING = "FACE_PROMOTE_AUDITING";
        public static final String FACE_PROMOTE_CAN = "FACE_PROMOTE_CAN";
        public static final String FACE_PROMOTE_LIMIT = "FACE_PROMOTE_LIMIT";
        public String code;
        public String desc;
        public String title;

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes.dex */
        public @interface Code {
        }
    }

    public void initHomeData(FragmentActivity activity) {
        BaseData.accountState = this.accountState;
        BaseData.accountMobile = this.accountMobile;
        BaseData.userName = this.accountName;
        BaseData.hasShortPwd = this.hasShortPwd;
        BaseData.cardInfos = this.cardInfos;
        if (PayConstants.PAY_METHOD_BALABCE.equals(this.defaultPayMethod)) {
            CoreData.lastCheckIndex = -1;
        } else if (PayConstants.PAY_METHOD_QUICKPAY.equals(this.defaultPayMethod)) {
            CoreData.lastCheckIndex = 0;
        } else {
            CoreData.lastCheckIndex = -2;
        }
        c.h = this.promoteLimitDto;
        c.a = this.balanceInfo;
        if (this.fingerprintPermissionDto != null) {
            parsePayFinger(this.fingerprintPermissionDto, activity);
            c.f = false;
            c.c = this.fingerprintPermissionDto.isCanSetFingerprintPay;
            c.e = this.fingerprintPermissionDto.isOpenFingerprintPay;
            c.d = this.fingerprintPermissionDto.isCanUseFingerprintPay;
        }
        initAmountData();
    }

    public void parsePayFinger(FingerprintDto dto, Context ctx) {
        if (Build.VERSION.SDK_INT < 23 || new Root().isDeviceRooted()) {
            dto.isCanSetFingerprintPay = false;
            dto.isCanUseFingerprintPay = false;
        }
        if (dto.isCanSetFingerprintPay) {
            FingerPrintHelper fingerPrintHelper = new FingerPrintHelper(ctx.getApplicationContext());
            if (fingerPrintHelper.checkFingerprintAvailable(ctx.getApplicationContext()) != 1) {
                dto.isCanSetFingerprintPay = false;
                dto.isCanUseFingerprintPay = false;
            } else if (dto.isCanUseFingerprintPay && !fingerPrintHelper.containsToken()) {
                dto.isCanUseFingerprintPay = false;
            }
        }
    }
}
