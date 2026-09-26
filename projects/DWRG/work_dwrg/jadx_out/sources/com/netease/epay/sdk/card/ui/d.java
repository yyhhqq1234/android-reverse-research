package com.netease.epay.sdk.card.ui;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.model.Card;
import com.netease.epay.sdk.base.ui.FullSdkFragment;
import com.netease.epay.sdk.base.util.ToastUtil;
import com.netease.epay.sdk.base.view.ActivityTitleBar;
import com.netease.epay.sdk.card.R;
import com.netease.epay.sdk.card.model.AddCardConfig;
import java.util.ArrayList;

/* compiled from: ForgetPwdHomeFragment.java */
/* loaded from: classes.dex */
public class d extends FullSdkFragment implements View.OnClickListener, AdapterView.OnItemClickListener {
    ListView a;
    private AddCardConfig b;
    private com.netease.epay.sdk.card.a.a c;

    public static d a(ArrayList<Card> arrayList) {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("cards_list", arrayList);
        d dVar = new d();
        dVar.setArguments(bundle);
        return dVar;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        KeyEvent.Callback activity = getActivity();
        if (activity != null && (activity instanceof f)) {
            this.b = ((f) activity).a();
        }
    }

    @Override // android.support.v4.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        return inflater.inflate(R.layout.epaysdk_actv_forget_pwd_home, (ViewGroup) null);
    }

    @Override // com.netease.epay.sdk.base.ui.FullSdkFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        a();
    }

    private void a() {
        if (this.b != null) {
            ((ActivityTitleBar) this.rootView.findViewById(R.id.atb)).setTitle(this.b.titleFirstPage);
            ((TextView) findV(R.id.tv_forgetpwdhome_top_guide_x)).setText(this.b.tipsFirstPage);
            this.a = (ListView) findV(R.id.lv_forgetpwdhome_card_list);
            this.a.setOnItemClickListener(this);
            ((Button) findV(R.id.btn_forgetpwdhome_next_c)).setOnClickListener(this);
            if (getArguments() != null) {
                this.c = new com.netease.epay.sdk.card.a.a(getActivity(), getArguments().getParcelableArrayList("cards_list"));
                this.a.setAdapter((ListAdapter) this.c);
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        if (v.getId() == R.id.btn_forgetpwdhome_next_c && this.c != null) {
            Card card = (Card) this.c.getItem(this.c.a);
            if (card != null) {
                addNextFragment2Activity(e.a(card.bankId, card.getBankQuickPayId(), BaseConstants.CARD_TYPE_CREDIT.equals(card.cardType), this.c.a(card), card.bankAccountName));
            } else {
                ToastUtil.show(getActivity(), "银行卡列表信息异常");
            }
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
        if (this.c.a != position) {
            this.c.a = position;
            this.c.notifyDataSetChanged();
        }
    }
}
