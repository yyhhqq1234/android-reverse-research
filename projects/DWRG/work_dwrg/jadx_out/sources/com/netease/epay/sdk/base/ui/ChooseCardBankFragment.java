package com.netease.epay.sdk.base.ui;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.netease.epay.sdk.base.R;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.event.BankTypeChangedEvent;
import com.netease.epay.sdk.base.model.SupportBanks;
import com.netease.epay.sdk.base.model.SupportCardTypeObj;
import com.netease.epay.sdk.base.util.EventBusUtil;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.base.view.ActivityTitleBar;
import com.netease.epay.sdk.base.view.ChooseCardBankHeadLayout;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class ChooseCardBankFragment extends SdkFragment {
    private static final String KEY_BANK_JSON = "epay_bundle_bank_json";
    private static final String KEY_CHOOSE_BANK_SAVE_DATA = "epay_bundle_chooseBank_onSaveInstanceState";
    private static final String KEY_CHOOSE_MODE = "epay_bundle_is_choose_mode";
    private static final String KEY_NOW_BANK = "epay_bundle_now_bank";
    private ChooseCardBankAdapter adapter;
    private SupportCardTypeObj nowCardObj;
    private View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.netease.epay.sdk.base.ui.ChooseCardBankFragment.3
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view.getId() == R.id.ivBack) {
                ChooseCardBankFragment.this.dismiss();
                return;
            }
            if (view.getId() == R.id.tv_titlebar_done) {
                if (ChooseCardBankFragment.this.isSelectMode && ChooseCardBankFragment.this.nowCardObj != null) {
                    int lastSelectBankPosition = ChooseCardBankFragment.this.adapter.getLastSelectBankPosition();
                    SupportBanks supportBanks = null;
                    if (lastSelectBankPosition >= 0 && lastSelectBankPosition < ChooseCardBankFragment.this.nowCardObj.banks.size()) {
                        supportBanks = ChooseCardBankFragment.this.nowCardObj.banks.get(lastSelectBankPosition);
                    }
                    EventBusUtil.post(new BankTypeChangedEvent(supportBanks));
                }
                ChooseCardBankFragment.this.dismiss();
            }
        }
    };
    private ArrayList<SupportCardTypeObj> cards = null;
    private boolean isSelectMode = false;

    public static ChooseCardBankFragment getInstance_SeclectMode(String banksInfoJson, String nowBank) {
        ChooseCardBankFragment chooseCardBankFragment = new ChooseCardBankFragment();
        Bundle bundle = new Bundle();
        bundle.putString(KEY_BANK_JSON, banksInfoJson);
        bundle.putString(KEY_NOW_BANK, nowBank);
        bundle.putBoolean(KEY_CHOOSE_MODE, true);
        chooseCardBankFragment.setArguments(bundle);
        return chooseCardBankFragment;
    }

    public static ChooseCardBankFragment getInstance_ShowMode(String banksInfoJson) {
        ChooseCardBankFragment chooseCardBankFragment = new ChooseCardBankFragment();
        Bundle bundle = new Bundle();
        bundle.putString(KEY_BANK_JSON, banksInfoJson);
        bundle.putBoolean(KEY_CHOOSE_MODE, false);
        chooseCardBankFragment.setArguments(bundle);
        return chooseCardBankFragment;
    }

    @Override // com.netease.epay.sdk.base.ui.SdkFragment, android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        String str;
        super.onCreate(savedInstanceState);
        setStyle(1, android.R.style.Theme.Light.NoTitleBar);
        setCancelable(true);
        Bundle arguments = getArguments();
        Bundle bundle = (arguments != null || savedInstanceState == null) ? arguments : savedInstanceState.getBundle(KEY_CHOOSE_BANK_SAVE_DATA);
        if (bundle != null) {
            this.isSelectMode = bundle.getBoolean(KEY_CHOOSE_MODE, false);
            String string = bundle.getString(KEY_BANK_JSON);
            if (!this.isSelectMode) {
                str = null;
            } else {
                str = bundle.getString(KEY_NOW_BANK);
            }
            Gson gson = new Gson();
            JsonArray asJsonArray = new JsonParser().parse(string).getAsJsonArray();
            ArrayList arrayList = new ArrayList();
            Iterator<JsonElement> it = asJsonArray.iterator();
            while (it.hasNext()) {
                arrayList.add((SupportBanks) gson.fromJson(it.next(), SupportBanks.class));
            }
            this.cards = LogicUtil.getSupportBanks(LogicUtil.json2Array(string, SupportBanks.class), str);
            if (TextUtils.isEmpty(str)) {
                str = BaseConstants.CARD_TYPE_DEBIT;
            }
            if (this.cards.size() > 0) {
                this.nowCardObj = this.cards.get(0);
            }
            Iterator<SupportCardTypeObj> it2 = this.cards.iterator();
            while (it2.hasNext()) {
                SupportCardTypeObj next = it2.next();
                if (str.startsWith(next.cardType)) {
                    this.nowCardObj = next;
                    return;
                }
            }
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        super.onCreateView(inflater, container, savedInstanceState);
        View inflate = inflater.inflate(R.layout.epaysdk_frag_choose_card_bank, (ViewGroup) null);
        ListView listView = (ListView) inflate.findViewById(R.id.lv_banks);
        ActivityTitleBar activityTitleBar = (ActivityTitleBar) inflate.findViewById(R.id.atb);
        activityTitleBar.setBackListener(this.onClickListener);
        if (this.isSelectMode) {
            activityTitleBar.setDoneShow(true);
            activityTitleBar.setDoneListener(this.onClickListener);
        }
        ChooseCardBankHeadLayout chooseCardBankHeadLayout = new ChooseCardBankHeadLayout(getActivity());
        listView.addHeaderView(chooseCardBankHeadLayout, null, false);
        this.adapter = new ChooseCardBankAdapter(getActivity());
        listView.setAdapter((ListAdapter) this.adapter);
        chooseCardBankHeadLayout.setOnItemSelectedListener(new ChooseCardBankHeadLayout.OnCardTypeSelectListener() { // from class: com.netease.epay.sdk.base.ui.ChooseCardBankFragment.1
            @Override // com.netease.epay.sdk.base.view.ChooseCardBankHeadLayout.OnCardTypeSelectListener
            public void onSelect(int index, Object info) {
                if (info != null && (info instanceof SupportCardTypeObj)) {
                    ChooseCardBankFragment.this.nowCardObj = (SupportCardTypeObj) info;
                    ChooseCardBankFragment.this.adapter.setData(ChooseCardBankFragment.this.nowCardObj.banks);
                    if (ChooseCardBankFragment.this.isSelectMode) {
                        ChooseCardBankFragment.this.adapter.selectBank(ChooseCardBankFragment.this.nowCardObj.selectIndex);
                    } else {
                        ChooseCardBankFragment.this.adapter.notifyDataSetChanged();
                    }
                }
            }
        });
        chooseCardBankHeadLayout.reloadDatas(getActivity(), this.cards, this.cards.indexOf(this.nowCardObj));
        if (this.isSelectMode) {
            listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.netease.epay.sdk.base.ui.ChooseCardBankFragment.2
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                    ChooseCardBankFragment.this.adapter.selectBank(i - 1);
                    ChooseCardBankFragment.this.nowCardObj.selectIndex = i - 1;
                }
            });
        }
        return inflate;
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        outState.putBundle(KEY_CHOOSE_BANK_SAVE_DATA, getArguments());
    }
}
