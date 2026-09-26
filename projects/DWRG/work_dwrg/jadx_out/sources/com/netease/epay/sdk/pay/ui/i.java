package com.netease.epay.sdk.pay.ui;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;
import com.netease.epay.sdk.NetCallback;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.core.CoreData;
import com.netease.epay.sdk.base.event.BaseEvent;
import com.netease.epay.sdk.base.model.Card;
import com.netease.epay.sdk.base.model.IPayChooser;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.network.NewBaseResponse;
import com.netease.epay.sdk.base.ui.SdkFragment;
import com.netease.epay.sdk.base.ui.TitleMessageFragment;
import com.netease.epay.sdk.base.util.ErrorCode;
import com.netease.epay.sdk.base.util.JumpUtil;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.base.util.ToastUtil;
import com.netease.epay.sdk.base.view.FragmentTitleBar;
import com.netease.epay.sdk.controller.ControllerCallback;
import com.netease.epay.sdk.controller.ControllerJsonBuilder;
import com.netease.epay.sdk.controller.ControllerResult;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.controller.RegisterCenter;
import com.netease.epay.sdk.model.JsonBuilder;
import com.netease.epay.sdk.pay.PayConstants;
import com.netease.epay.sdk.pay.PayController;
import com.netease.epay.sdk.pay.R;
import com.netease.epay.sdk.pay.model.BalanceInfo;
import com.netease.epay.sdk.pay.model.GetPayAmount;
import com.netease.epay.sdk.pay.model.HomeData;
import com.netease.epay.sdk.pay.model.MarketData;
import com.netease.epay.sdk.pay.ui.card.CardPayActivity;
import org.json.JSONObject;

/* compiled from: PayChooserFragment.java */
/* loaded from: classes.dex */
public class i extends SdkFragment implements AdapterView.OnItemClickListener {
    h a;
    private boolean b = false;
    private boolean c = false;
    private String d;
    private String e;

    public static void a(final FragmentActivity fragmentActivity) {
        JSONObject build = new JsonBuilder().build();
        LogicUtil.jsonPut(build, "position", "1");
        HttpClient.startRequest(PayConstants.getMarketPosition, build, false, fragmentActivity, (INetCallback) new NetCallback<MarketData>() { // from class: com.netease.epay.sdk.pay.ui.i.1
            @Override // com.netease.epay.sdk.base.network.INetCallback
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void success(FragmentActivity fragmentActivity2, MarketData marketData) {
                Bundle bundle = new Bundle();
                bundle.putBoolean(PayConstants.HAS_MARKET, !TextUtils.isEmpty(marketData.title));
                bundle.putString("title", marketData.title);
                bundle.putString("desc", marketData.desc);
                i iVar = new i();
                iVar.setArguments(bundle);
                LogicUtil.showFragmentInActivity(iVar, fragmentActivity2);
            }

            @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
            public boolean parseFailureBySelf(NewBaseResponse response) {
                Bundle bundle = new Bundle();
                bundle.putBoolean(PayConstants.HAS_MARKET, false);
                i iVar = new i();
                iVar.setArguments(bundle);
                LogicUtil.showFragmentInActivity(iVar, FragmentActivity.this);
                return true;
            }
        });
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View inflate = inflater.inflate(R.layout.epaysdk_frag_pay_selector, (ViewGroup) null);
        FragmentTitleBar fragmentTitleBar = (FragmentTitleBar) inflate.findViewById(R.id.ftb);
        fragmentTitleBar.setCloseShow(CoreData.lastCheckIndex == -2);
        fragmentTitleBar.setBackShow(CoreData.lastCheckIndex != -2);
        fragmentTitleBar.setCloseListener(new View.OnClickListener() { // from class: com.netease.epay.sdk.pay.ui.i.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                PayController payController = (PayController) ControllerRouter.getController("pay");
                if (payController != null) {
                    payController.deal(new BaseEvent(ErrorCode.CUSTOM_CODE.USER_ABORT, (FragmentActivity) null));
                }
            }
        });
        fragmentTitleBar.setBackListener(new View.OnClickListener() { // from class: com.netease.epay.sdk.pay.ui.i.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (i.this.getActivity() instanceof PayingActivity) {
                    ((PayingActivity) i.this.getActivity()).a();
                }
            }
        });
        ListView listView = (ListView) inflate.findViewById(R.id.lv_payments_list);
        a(listView, inflater);
        g gVar = new g(getContext(), null);
        gVar.setEnabled(true);
        gVar.setTitle(getString(R.string.epaysdk_pay_with_new_card));
        gVar.setImageResource(R.drawable.epaysdk_icon_payaddcard);
        listView.addFooterView(gVar, "footer", true);
        if (getArguments() != null) {
            this.b = getArguments().getBoolean(PayConstants.HAS_MARKET);
            this.d = getArguments().getString("title");
            this.e = getArguments().getString("desc");
        }
        if (this.b) {
            View inflate2 = inflater.inflate(R.layout.epaysdk_view_advertisement, (ViewGroup) null);
            ((TextView) inflate2.findViewById(R.id.tvDesc)).setText(this.d);
            if (TextUtils.isEmpty(this.e)) {
                inflate2.findViewById(R.id.tvDetail).setVisibility(8);
            }
            listView.addHeaderView(inflate2, "header", true);
        }
        listView.setOnItemClickListener(this);
        listView.setHeaderDividersEnabled(false);
        this.a = new h(getActivity());
        listView.setAdapter(this.a);
        return inflate;
    }

    private void a(ListView listView, LayoutInflater layoutInflater) {
        this.c = false;
        if (com.netease.epay.sdk.pay.c.h != null && com.netease.epay.sdk.pay.c.h.code != null) {
            g gVar = new g(getContext(), null);
            boolean equals = HomeData.PromoteLimitDto.FACE_PROMOTE_CAN.equals(com.netease.epay.sdk.pay.c.h.code);
            gVar.setEnabled(equals);
            gVar.setImageResource(R.drawable.epaysdk_icon_verify_limit);
            gVar.setTitle(com.netease.epay.sdk.pay.c.h.title);
            gVar.setMessage(com.netease.epay.sdk.pay.c.h.desc);
            listView.addFooterView(gVar, com.netease.epay.sdk.pay.c.h, equals);
            this.c = true;
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
        if (position == parent.getCount() - 1) {
            a(-100);
            return;
        }
        if (this.c && position == parent.getCount() - 2) {
            ControllerRouter.route(RegisterCenter.FACE, getActivity(), ControllerJsonBuilder.getFaceJson(BaseConstants.FACE_BIZ_PROMOTE_LIMIT, null), new ControllerCallback() { // from class: com.netease.epay.sdk.pay.ui.i.4
                @Override // com.netease.epay.sdk.controller.ControllerCallback
                public void dealResult(ControllerResult controllerResult) {
                    if (controllerResult.code != ErrorCode.FAIL_USER_ABORT_CODE) {
                        PayingActivity.a(i.this.getActivity());
                    }
                }
            });
            return;
        }
        if (this.b) {
            position--;
        }
        if (position == -1) {
            if (!TextUtils.isEmpty(this.e)) {
                final FragmentActivity activity = getActivity();
                LogicUtil.showFragmentWithHide(TitleMessageFragment.getInstance("活动详情", this.e, false, false, new TitleMessageFragment.ITitleMsgCallback() { // from class: com.netease.epay.sdk.pay.ui.i.5
                    @Override // com.netease.epay.sdk.base.ui.TitleMessageFragment.ITitleMsgCallback
                    public void doneClick() {
                        LogicUtil.reshowAllFragment(activity);
                    }
                }), activity, true);
                return;
            }
            return;
        }
        IPayChooser item = this.a.getItem(position);
        if (item.isUsable()) {
            if (item instanceof BalanceInfo) {
                if (CoreData.lastCheckIndex == -1) {
                    if (getActivity() instanceof PayingActivity) {
                        ((PayingActivity) getActivity()).a();
                        return;
                    }
                    return;
                }
                a(-1);
                return;
            }
            if (item instanceof Card) {
                int i = this.a.getItem(0) instanceof BalanceInfo ? position - 1 : position;
                if (Card.isSelectedCardUsable(i)) {
                    if (CoreData.lastCheckIndex == i) {
                        if (getActivity() instanceof PayingActivity) {
                            ((PayingActivity) getActivity()).a();
                            return;
                        }
                        return;
                    }
                    a(i);
                }
            }
        }
    }

    void a(final int i) {
        JSONObject build = new JsonBuilder().build();
        if (i == -100) {
            LogicUtil.jsonPut(build, "paymethod", PayConstants.PAY_METHOD_QUICKPAY);
        } else if (i < 0) {
            LogicUtil.jsonPut(build, "paymethod", PayConstants.PAY_METHOD_BALABCE);
        } else {
            LogicUtil.jsonPut(build, "paymethod", PayConstants.PAY_METHOD_QUICKPAY);
            LogicUtil.jsonPut(build, "cardId", Card.getSelectedCardBankQuickPayId(i));
        }
        HttpClient.startRequest(PayConstants.getPayAmountUrl, build, false, getActivity(), (INetCallback) new NetCallback<GetPayAmount>() { // from class: com.netease.epay.sdk.pay.ui.i.6
            @Override // com.netease.epay.sdk.base.network.INetCallback
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void success(FragmentActivity fragmentActivity, GetPayAmount getPayAmount) {
                getPayAmount.initAmountData();
                if (i == -100) {
                    JumpUtil.go2Activity(i.this.getActivity(), CardPayActivity.class, null);
                    i.this.getActivity().finish();
                } else {
                    CoreData.lastCheckIndex = i;
                    if (i.this.getActivity() instanceof PayingActivity) {
                        ((PayingActivity) i.this.getActivity()).a();
                    }
                }
            }

            @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
            public boolean parseFailureBySelf(NewBaseResponse response) {
                ToastUtil.show(i.this.getActivity(), response.retdesc);
                return true;
            }
        });
    }
}
