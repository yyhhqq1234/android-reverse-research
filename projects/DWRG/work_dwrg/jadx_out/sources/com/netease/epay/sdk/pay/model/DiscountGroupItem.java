package com.netease.epay.sdk.pay.model;

import com.netease.epay.sdk.base.model.Promotion;
import com.netease.epay.sdk.base.model.Voucher;
import com.netease.epay.sdk.pay.PayConstants;
import com.netease.epay.sdk.pay.c;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class DiscountGroupItem {
    public static int promotionSize;
    public static int redpaperSize;
    public static int voucherDisableSize;
    public static int voucherEnableSize;
    public String amount;
    public String deadline;
    public boolean isMark;
    public boolean isUseable;
    public String msg;
    public String name;
    public String tag;
    public boolean isNeedExpand = false;
    public boolean hasChild = false;

    public static ArrayList<DiscountGroupItem> getGroupList() {
        ArrayList<DiscountGroupItem> arrayList = new ArrayList<>();
        if (c.b == null) {
            return arrayList;
        }
        promotionSize = 0;
        if (c.b.promotionInfo != null && c.b.promotionInfo.promotions != null) {
            promotionSize = c.b.promotionInfo.promotions.size();
            for (int i = 0; i < promotionSize; i++) {
                Promotion promotion = c.b.promotionInfo.promotions.get(i);
                DiscountGroupItem discountGroupItem = new DiscountGroupItem();
                discountGroupItem.name = promotion.promotionName;
                discountGroupItem.amount = PayConstants.RANDOM.equals(promotion.promotionType) ? "随机立减" : "￥" + promotion.promotionAmount;
                discountGroupItem.tag = promotion.tag;
                discountGroupItem.msg = promotion.msg;
                discountGroupItem.deadline = promotion.deadline;
                discountGroupItem.isUseable = true;
                discountGroupItem.isMark = promotion.isMark;
                arrayList.add(discountGroupItem);
            }
        }
        voucherEnableSize = 0;
        voucherDisableSize = 0;
        if (c.b.voucherInfo != null && c.b.voucherInfo.vouchers != null) {
            for (int i2 = 0; i2 < c.b.voucherInfo.vouchers.size(); i2++) {
                Voucher voucher = c.b.voucherInfo.vouchers.get(i2);
                DiscountGroupItem discountGroupItem2 = new DiscountGroupItem();
                discountGroupItem2.name = voucher.voucherName;
                discountGroupItem2.amount = "￥" + voucher.voucherAmount;
                discountGroupItem2.tag = null;
                discountGroupItem2.msg = voucher.msg;
                discountGroupItem2.deadline = voucher.deadline;
                discountGroupItem2.isUseable = voucher.isUseable;
                discountGroupItem2.isMark = voucher.isMark;
                voucherEnableSize = (discountGroupItem2.isUseable ? 1 : 0) + voucherEnableSize;
                voucherDisableSize = (discountGroupItem2.isUseable ? 0 : 1) + voucherDisableSize;
                arrayList.add(discountGroupItem2);
            }
        }
        redpaperSize = 0;
        if (c.b.hongbaoInfo != null && c.b.hongbaoInfo.hongbaos != null && c.b.hongbaoInfo.hongbaos.size() > 0) {
            redpaperSize = 1;
            DiscountGroupItem discountGroupItem3 = new DiscountGroupItem();
            discountGroupItem3.name = c.b.hongbaoInfo.hongbaoTotalTitle;
            discountGroupItem3.amount = "￥" + c.b.hongbaoInfo.hongbaoTotalAmount;
            discountGroupItem3.tag = null;
            discountGroupItem3.msg = c.b.hongbaoInfo.hongbaoTotalNumsDesc;
            discountGroupItem3.deadline = null;
            discountGroupItem3.isUseable = c.b.hongbaoInfo.isUseable;
            discountGroupItem3.isMark = c.b.hongbaoInfo.isMark;
            discountGroupItem3.isNeedExpand = true;
            discountGroupItem3.hasChild = true;
            arrayList.add(promotionSize + voucherEnableSize, discountGroupItem3);
        }
        return arrayList;
    }

    public static void setDiscountData(int markPosition) {
        int i = 0;
        while (i < promotionSize) {
            c.b.promotionInfo.promotions.get(i).isMark = i == markPosition;
            i++;
        }
        int i2 = 0;
        while (i2 < voucherEnableSize) {
            c.b.voucherInfo.vouchers.get(i2).isMark = i2 == markPosition - promotionSize;
            i2++;
        }
        if (redpaperSize > 0) {
            c.b.hongbaoInfo.isMark = markPosition == promotionSize + voucherEnableSize;
        }
    }
}
