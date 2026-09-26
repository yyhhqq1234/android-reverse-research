package com.netease.epay.sdk.register;

import android.content.Context;
import android.content.Intent;
import android.support.annotation.Keep;
import com.netease.epay.sdk.Constants;
import com.netease.epay.sdk.base.event.BaseEvent;
import com.netease.epay.sdk.base.network.NewBaseResponse;
import com.netease.epay.sdk.base.ui.OnlyMessageFragment;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.controller.BaseController;
import com.netease.epay.sdk.controller.ControllerCallback;
import com.netease.epay.sdk.controller.ControllerResult;
import com.netease.epay.sdk.register.a;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class DeviceRegisterController extends BaseController {
    private boolean a;
    private a.InterfaceC0022a b;

    @Keep
    public DeviceRegisterController(JSONObject params, ControllerCallback callback) {
        super(params, callback);
        this.b = new a.InterfaceC0022a() { // from class: com.netease.epay.sdk.register.DeviceRegisterController.1
            @Override // com.netease.epay.sdk.register.a.InterfaceC0022a
            public void a() {
                DeviceRegisterController.this.callback.sendResult(new ControllerResult("000000", null, null, null));
            }

            @Override // com.netease.epay.sdk.register.a.InterfaceC0022a
            public void a(NewBaseResponse newBaseResponse) {
                DeviceRegisterController.this.callback.sendResult(new ControllerResult(newBaseResponse.retcode, newBaseResponse.retdesc, null, null));
            }
        };
        this.a = params.getBoolean("isNeedUI");
    }

    @Override // com.netease.epay.sdk.controller.BaseController
    @Keep
    public void start(Context context) {
        if (this.a) {
            Intent intent = new Intent(context, (Class<?>) RegisterActivity.class);
            intent.setFlags(67108864);
            context.startActivity(intent);
            return;
        }
        new a(context, this.b).a();
    }

    @Override // com.netease.epay.sdk.controller.BaseController
    public void deal(BaseEvent event) {
        if (event.isSuccess) {
            event.activity.finish();
            this.callback.sendResult(new ControllerResult(event.code, event.msg, null, event.activity));
        } else {
            LogicUtil.showFragmentInActivity(OnlyMessageFragment.getInstance(event.code, event.msg, Constants.EXIT_CALLBACK), event.activity);
        }
    }
}
