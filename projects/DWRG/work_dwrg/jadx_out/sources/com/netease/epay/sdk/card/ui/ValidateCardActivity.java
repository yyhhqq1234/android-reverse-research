package com.netease.epay.sdk.card.ui;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import com.netease.epay.sdk.NetCallback;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.ui.FragmentLayoutActivity;
import com.netease.epay.sdk.base.util.ErrorCode;
import com.netease.epay.sdk.card.AddOrVerifyCardController;
import com.netease.epay.sdk.card.model.AddCardConfig;
import com.netease.epay.sdk.card.model.QuickpayCardsArray;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.controller.RegisterCenter;
import com.netease.epay.sdk.model.JsonBuilder;

/* loaded from: classes.dex */
public class ValidateCardActivity extends FragmentLayoutActivity implements f {
    AddCardConfig a;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.epay.sdk.base.ui.FragmentLayoutActivity, com.netease.epay.sdk.base.ui.SdkActivity
    public void onCreateSdkActivity(Bundle savedInstanceState) {
        super.onCreateSdkActivity(savedInstanceState);
        HttpClient.startRequest("get_pay_quickPay_list.htm", new JsonBuilder().build(), true, (FragmentActivity) this, (INetCallback) new NetCallback<QuickpayCardsArray>() { // from class: com.netease.epay.sdk.card.ui.ValidateCardActivity.1
            @Override // com.netease.epay.sdk.base.network.INetCallback
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void success(FragmentActivity fragmentActivity, QuickpayCardsArray quickpayCardsArray) {
                if (quickpayCardsArray.cardInfos == null || quickpayCardsArray.cardInfos.size() <= 0) {
                    ValidateCardActivity.this.b();
                    ValidateCardActivity.this.finish();
                } else {
                    ValidateCardActivity.this.setContentFragment(d.a(quickpayCardsArray.cardInfos));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        Intent intent = getIntent();
        if (intent == null) {
            intent = new Intent(this, (Class<?>) AddCardActivity.class);
        } else {
            intent.setClass(this, AddCardActivity.class);
        }
        startActivity(intent);
    }

    @Override // com.netease.epay.sdk.base.ui.FragmentLayoutActivity
    public Fragment getFirstFragment() {
        return null;
    }

    @Override // com.netease.epay.sdk.card.ui.f
    public AddCardConfig a() {
        if (this.a == null) {
            Intent intent = getIntent();
            this.a = AddCardConfig.getValidateCardConfigByType(intent != null ? intent.getIntExtra("type", 7) : 7);
        }
        return this.a;
    }

    @Override // com.netease.epay.sdk.base.ui.FragmentLayoutActivity
    public void exitNotify(ErrorCode.CUSTOM_CODE code) {
        com.netease.epay.sdk.card.b.a aVar = new com.netease.epay.sdk.card.b.a(code, this);
        aVar.c = true;
        AddOrVerifyCardController addOrVerifyCardController = (AddOrVerifyCardController) ControllerRouter.getController(RegisterCenter.CARD);
        if (addOrVerifyCardController != null) {
            addOrVerifyCardController.deal(aVar);
        }
    }

    @Override // com.netease.epay.sdk.base.ui.FragmentLayoutActivity
    public void interceptExit() {
        finish();
        exitNotify(ErrorCode.CUSTOM_CODE.USER_ABORT);
    }
}
