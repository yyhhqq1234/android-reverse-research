package com.netease.epay.sdk.risk.ui;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.event.BaseEvent;
import com.netease.epay.sdk.base.util.DigestUtil;
import com.netease.epay.sdk.base.util.EditBindButtonUtil;
import com.netease.epay.sdk.base.util.ErrorCode;
import com.netease.epay.sdk.base.view.FragmentTitleBar;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.risk.R;
import com.netease.epay.sdk.risk.RiskController;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: RiskLongPwdFragment.java */
/* loaded from: classes.dex */
public class d extends b {
    private EditText a;

    public static d a() {
        return new d();
    }

    @Override // android.support.v4.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View inflate = inflater.inflate(R.layout.epaysdk_frag_risk_long, (ViewGroup) null);
        this.a = (EditText) inflate.findViewById(R.id.et_token);
        ((FragmentTitleBar) inflate.findViewById(R.id.ftb)).setCloseListener(new View.OnClickListener() { // from class: com.netease.epay.sdk.risk.ui.d.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                d.this.dismissAllowingStateLoss();
                RiskController riskController = (RiskController) ControllerRouter.getController("risk");
                if (riskController != null) {
                    riskController.deal(new BaseEvent(ErrorCode.CUSTOM_CODE.USER_ABORT));
                }
            }
        });
        Button button = (Button) inflate.findViewById(R.id.btn_riskverify_token_c);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.netease.epay.sdk.risk.ui.d.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.putOpt(BaseConstants.RISK_TYEP_LONG_PWD, DigestUtil.getMD5(d.this.a.getText().toString()));
                    jSONObject.put("challengeInfo", jSONObject2);
                    jSONObject.put("isEnterAssistPwd", false);
                    d.this.a(jSONObject);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        });
        new EditBindButtonUtil(button).addEditText(this.a);
        return inflate;
    }

    @Override // com.netease.epay.sdk.risk.ui.b
    public void b(ArrayList<String> arrayList) {
        this.a.setText("");
    }
}
