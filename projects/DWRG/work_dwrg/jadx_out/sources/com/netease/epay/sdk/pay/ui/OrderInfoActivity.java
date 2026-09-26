package com.netease.epay.sdk.pay.ui;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.netease.epay.sdk.NetCallback;
import com.netease.epay.sdk.base.event.BaseEvent;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.ui.SdkActivity;
import com.netease.epay.sdk.base.util.ErrorCode;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.model.JsonBuilder;
import com.netease.epay.sdk.pay.PayConstants;
import com.netease.epay.sdk.pay.PayController;
import com.netease.epay.sdk.pay.R;
import com.netease.epay.sdk.pay.model.QueryOrderInfo;

/* loaded from: classes.dex */
public class OrderInfoActivity extends SdkActivity {
    View.OnClickListener a = new View.OnClickListener() { // from class: com.netease.epay.sdk.pay.ui.OrderInfoActivity.2
        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            if (v != OrderInfoActivity.this.n) {
                if (v == OrderInfoActivity.this.m) {
                    if (OrderInfoActivity.this.k.getVisibility() == 8) {
                        OrderInfoActivity.this.k.setVisibility(0);
                        OrderInfoActivity.this.l.setImageResource(R.drawable.epaysdk_icon_orderinfo_hide);
                        return;
                    } else {
                        OrderInfoActivity.this.k.setVisibility(8);
                        OrderInfoActivity.this.l.setImageResource(R.drawable.epaysdk_icon_orderinfo_show);
                        return;
                    }
                }
                return;
            }
            PayingActivity.a(OrderInfoActivity.this);
            OrderInfoActivity.this.finish();
        }
    };
    private TextView b;
    private TextView c;
    private TextView d;
    private TextView e;
    private TextView f;
    private TextView g;
    private TextView h;
    private TextView i;
    private TextView j;
    private RelativeLayout k;
    private ImageView l;
    private View m;
    private View n;

    @Override // com.netease.epay.sdk.base.ui.SdkActivity
    protected void onCreateSdkActivity(Bundle savedInstanceState) {
        PayController payController = (PayController) ControllerRouter.getController("pay");
        if (payController != null) {
            payController.c = false;
        } else {
            finish();
        }
        setContentView(R.layout.epaysdk_actv_order_info);
        b();
        a();
    }

    private void a() {
        HttpClient.startRequest(PayConstants.query_order_info, new JsonBuilder().build(), true, (FragmentActivity) this, (INetCallback) new NetCallback<QueryOrderInfo>() { // from class: com.netease.epay.sdk.pay.ui.OrderInfoActivity.1
            @Override // com.netease.epay.sdk.base.network.INetCallback
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void success(FragmentActivity fragmentActivity, QueryOrderInfo queryOrderInfo) {
                OrderInfoActivity.this.b.setText("-" + queryOrderInfo.order.orderAmount);
                OrderInfoActivity.this.c.setText("(手续费 " + queryOrderInfo.order.handFee + "元）");
                OrderInfoActivity.this.d.setText(queryOrderInfo.order.orderName);
                OrderInfoActivity.this.e.setText(queryOrderInfo.order.platformName);
                OrderInfoActivity.this.f.setText(queryOrderInfo.order.orderId);
                OrderInfoActivity.this.g.setText(queryOrderInfo.order.orderTime);
                OrderInfoActivity.this.h.setText(queryOrderInfo.order.behavior);
                OrderInfoActivity.this.j.setText(queryOrderInfo.order.userNotes);
                OrderInfoActivity.this.i.setText(queryOrderInfo.order.orderStatusDesc);
            }
        });
    }

    private void b() {
        this.b = (TextView) findViewById(R.id.tv_order_amount);
        this.c = (TextView) findViewById(R.id.tv_order_handfee);
        this.d = (TextView) findViewById(R.id.tv_order_name);
        this.e = (TextView) findViewById(R.id.tv_order_plat);
        this.f = (TextView) findViewById(R.id.tv_order_id);
        this.g = (TextView) findViewById(R.id.tv_order_date);
        this.h = (TextView) findViewById(R.id.tv_order_behavior);
        this.i = (TextView) findViewById(R.id.tv_order_state);
        this.j = (TextView) findViewById(R.id.tv_order_userNote);
        this.k = (RelativeLayout) findViewById(R.id.rl_order_detail);
        this.l = (ImageView) findViewById(R.id.iv_order_detail);
        this.n = findViewById(R.id.btn_pay);
        this.m = findViewById(R.id.rl_detail);
        this.n.setOnClickListener(this.a);
        this.m.setOnClickListener(this.a);
    }

    @Override // com.netease.epay.sdk.base.ui.SdkActivity
    public void back(View view) {
        PayController payController = (PayController) ControllerRouter.getController("pay");
        if (payController != null) {
            payController.deal(new BaseEvent(ErrorCode.CUSTOM_CODE.USER_ABORT, this));
        }
    }
}
