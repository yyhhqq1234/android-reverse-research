package com.netease.epay.sdk.card.ui;

import android.content.Intent;
import android.support.v4.app.Fragment;
import com.netease.epay.sdk.base.ui.FragmentLayoutActivity;
import com.netease.epay.sdk.base.util.ErrorCode;
import com.netease.epay.sdk.card.AddOrVerifyCardController;
import com.netease.epay.sdk.card.model.AddCardConfig;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.controller.RegisterCenter;

/* loaded from: classes.dex */
public class AddCardActivity extends FragmentLayoutActivity implements f {
    AddCardConfig a;

    @Override // com.netease.epay.sdk.base.ui.FragmentLayoutActivity
    public Fragment getFirstFragment() {
        return new a();
    }

    @Override // com.netease.epay.sdk.card.ui.f
    public AddCardConfig a() {
        if (this.a == null) {
            Intent intent = getIntent();
            this.a = AddCardConfig.getAddCardConfigByType(intent != null ? intent.getIntExtra("type", 3) : 3);
        }
        return this.a;
    }

    @Override // com.netease.epay.sdk.base.ui.FragmentLayoutActivity
    public void exitNotify(ErrorCode.CUSTOM_CODE code) {
        AddOrVerifyCardController addOrVerifyCardController = (AddOrVerifyCardController) ControllerRouter.getController(RegisterCenter.CARD);
        if (addOrVerifyCardController != null) {
            addOrVerifyCardController.deal(new com.netease.epay.sdk.card.b.a(code, this));
        }
    }

    @Override // com.netease.epay.sdk.base.ui.FragmentLayoutActivity
    protected String getExitDialogMsg() {
        return "是否放弃绑定银行卡";
    }
}
