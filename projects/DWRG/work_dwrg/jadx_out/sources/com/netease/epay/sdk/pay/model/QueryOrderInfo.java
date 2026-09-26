package com.netease.epay.sdk.pay.model;

/* loaded from: classes.dex */
public class QueryOrderInfo {
    public Order order;

    /* loaded from: classes.dex */
    public static class Order {
        public String behavior;
        public String handFee;
        public String orderAmount;
        public String orderId;
        public String orderName;
        public String orderStatus;
        public String orderStatusDesc;
        public String orderTime;
        public String platformName;
        public String userNotes;
    }

    public boolean isPaySuccess() {
        return "3".equals(this.order.orderStatus);
    }
}
