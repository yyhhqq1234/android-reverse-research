package com.netease.epay.sdk.risk.ui;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.core.CoreData;
import com.netease.epay.sdk.base.event.BaseEvent;
import com.netease.epay.sdk.base.util.EditBindButtonUtil;
import com.netease.epay.sdk.base.util.ErrorCode;
import com.netease.epay.sdk.base.view.FragmentTitleBar;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.risk.R;
import com.netease.epay.sdk.risk.RiskController;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: RiskCardFragment.java */
/* loaded from: classes.dex */
public class a extends b implements View.OnClickListener {
    private TextView[] a;
    private EditText b;
    private CheckBox c;
    private Button d;

    public static a a(ArrayList<String> arrayList) {
        a aVar = new a();
        Bundle bundle = new Bundle();
        bundle.putStringArrayList("sdk_risk_card_tokens", arrayList);
        aVar.setArguments(bundle);
        return aVar;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View inflate = inflater.inflate(R.layout.epaysdk_frag_risk_token, (ViewGroup) null);
        this.a = new TextView[3];
        this.a[0] = (TextView) inflate.findViewById(R.id.tv_token1);
        this.a[1] = (TextView) inflate.findViewById(R.id.tv_token2);
        this.a[2] = (TextView) inflate.findViewById(R.id.tv_token3);
        this.c = (CheckBox) inflate.findViewById(R.id.cb_set_psw_token);
        if (CoreData.bizType == 905) {
            this.c.setChecked(true);
            this.c.setVisibility(8);
        }
        this.b = (EditText) inflate.findViewById(R.id.et_token);
        this.d = (Button) inflate.findViewById(R.id.btn_riskverify_token_c);
        this.d.setOnClickListener(this);
        new EditBindButtonUtil(this.d).addEditText(this.b);
        b(getArguments().getStringArrayList("sdk_risk_card_tokens"));
        ((FragmentTitleBar) inflate.findViewById(R.id.ftb)).setCloseListener(new View.OnClickListener() { // from class: com.netease.epay.sdk.risk.ui.a.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                a.this.dismissAllowingStateLoss();
                RiskController riskController = (RiskController) ControllerRouter.getController("risk");
                if (riskController != null) {
                    riskController.deal(new BaseEvent(ErrorCode.CUSTOM_CODE.USER_ABORT));
                }
            }
        });
        return inflate;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.d) {
            String obj = this.b.getText().toString();
            try {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.putOpt(BaseConstants.RISK_TYEP_PASS_CARD, obj);
                jSONObject.put("challengeInfo", jSONObject2);
                jSONObject.put("isEnterAssistPwd", this.c.isChecked());
                a(jSONObject);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.netease.epay.sdk.risk.ui.b
    public void b(ArrayList<String> arrayList) {
        for (int i = 0; arrayList != null && arrayList.size() == 3 && i < arrayList.size(); i++) {
            this.a[i].setText(arrayList.get(i));
        }
        this.b.setText("");
    }
}
