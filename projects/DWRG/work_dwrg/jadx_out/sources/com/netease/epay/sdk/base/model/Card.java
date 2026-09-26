package com.netease.epay.sdk.base.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.core.BaseData;
import java.math.BigDecimal;

/* loaded from: classes.dex */
public class Card implements Parcelable, IPayChooser {
    public static final Parcelable.Creator<Card> CREATOR = new Parcelable.Creator<Card>() { // from class: com.netease.epay.sdk.base.model.Card.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Card createFromParcel(Parcel in) {
            return new Card(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Card[] newArray(int size) {
            return new Card[size];
        }
    };
    public String bankAccountName;
    public String bankId;
    public String bankName;
    public String bankStyleColor;
    public String bankStyleId;
    private boolean cardComplete;
    private String cardId;
    public String cardLimit;
    public String cardNoTail;
    public String cardNumber;
    public String cardType;
    public String finishTimeDesc;
    private boolean isBankSend;
    public boolean isCardInfoAndUserInfoFit;
    private String limitPerDay;
    private String limitPerDeal;
    private String mobilePhone;
    private String msg;
    private String quickPayId;
    public String useable;

    public static boolean hasCards() {
        return cardsLength() > 0;
    }

    public static boolean hasUsableCards() {
        if (cardsLength() <= 0) {
            return false;
        }
        for (int i = 0; i < BaseData.cardInfos.size(); i++) {
            if ("USEABLE".equals(BaseData.cardInfos.get(i).useable)) {
                return true;
            }
        }
        return false;
    }

    public static int cardsLength() {
        if (BaseData.cardInfos == null) {
            return 0;
        }
        return BaseData.cardInfos.size();
    }

    public static String getSelectedCardBankQuickPayId(int index) {
        return checkIndexInvalid(index) ? "" : BaseData.cardInfos.get(index).getBankQuickPayId();
    }

    public static boolean checkIndexInvalid(int index) {
        return index < 0 || cardsLength() <= index;
    }

    public static String getSelectedCardBankStyleId(int index) {
        return checkIndexInvalid(index) ? "null" : BaseData.cardInfos.get(index).bankStyleId;
    }

    public static String getSelectedCardType(int index) {
        return checkIndexInvalid(index) ? "储蓄卡" : getCardDesFromCardType(BaseData.cardInfos.get(index).cardType);
    }

    public static String getCardDesFromCardType(String cardType) {
        if (BaseConstants.CARD_TYPE_DEBIT.equals(cardType)) {
            return "储蓄卡";
        }
        if (BaseConstants.CARD_TYPE_CREDIT.equals(cardType)) {
            return "信用卡";
        }
        return "";
    }

    public static BigDecimal getSelectedCardLimitDeal(int index) {
        return (checkIndexInvalid(index) || BaseData.cardInfos.get(index).limitPerDeal == null) ? new BigDecimal("0") : new BigDecimal(BaseData.cardInfos.get(index).limitPerDeal);
    }

    public static BigDecimal getSelectedCardLimitDay(int index) {
        return (checkIndexInvalid(index) || BaseData.cardInfos.get(index).limitPerDay == null) ? new BigDecimal("0") : new BigDecimal(BaseData.cardInfos.get(index).limitPerDay);
    }

    public static String getSelectedCardLimitDesp(int index) {
        return "单笔限额 ¥" + getSelectedCardLimitDeal(index) + "；单日限额 ¥" + getSelectedCardLimitDay(index);
    }

    public static String getBankCardDesp(int index) {
        return getSelectedCardBankName(index) + " " + getSelectedCardType(index) + " " + getSelectedCardTail(index);
    }

    public static String getSelectedCardBankName(int index) {
        return checkIndexInvalid(index) ? "" : BaseData.cardInfos.get(index).bankName;
    }

    public static String getSelectedCardTail(int index) {
        return checkIndexInvalid(index) ? "(尾号)" : "(尾号" + BaseData.cardInfos.get(index).cardNoTail + ")";
    }

    public static boolean isSelectedCardUsable(int index) {
        return !checkIndexInvalid(index) && "USEABLE".equals(BaseData.cardInfos.get(index).useable);
    }

    public static String getSelectedCardFinishDesp(int index) {
        return checkIndexInvalid(index) ? "" : BaseData.cardInfos.get(index).finishTimeDesc;
    }

    public static String getSelectedCardMsg(int index) {
        return checkIndexInvalid(index) ? "" : BaseData.cardInfos.get(index).msg;
    }

    public static boolean isSelectedCardBankSend(int index) {
        return !checkIndexInvalid(index) && BaseData.cardInfos.get(index).isBankSend;
    }

    public static boolean isSelectedCardInfoCompleted(int index) {
        return !checkIndexInvalid(index) && BaseData.cardInfos.get(index).cardComplete;
    }

    public static String getSelectedCardMobile(int index) {
        return checkIndexInvalid(index) ? "" : BaseData.cardInfos.get(index).mobilePhone;
    }

    public static Card getSelectedCard(int index) {
        if (checkIndexInvalid(index)) {
            return null;
        }
        return BaseData.cardInfos.get(index);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        out.writeString(this.bankId);
        out.writeString(this.bankStyleId);
        out.writeString(this.bankName);
        out.writeString(this.cardNoTail);
        out.writeString(this.cardType);
        out.writeString(this.quickPayId);
        out.writeString(this.useable);
        out.writeString(this.mobilePhone);
        out.writeByte((byte) (this.isBankSend ? 1 : 0));
        out.writeString(this.msg);
        out.writeString(this.limitPerDeal);
        out.writeString(this.limitPerDay);
        out.writeString(this.finishTimeDesc);
        out.writeByte((byte) (this.cardComplete ? 1 : 0));
        out.writeString(this.cardId);
        out.writeString(this.cardNumber);
        out.writeString(this.bankAccountName);
        out.writeString(this.bankStyleColor);
    }

    private Card(Parcel in) {
        this.bankId = in.readString();
        this.bankStyleId = in.readString();
        this.bankName = in.readString();
        this.cardNoTail = in.readString();
        this.cardType = in.readString();
        this.quickPayId = in.readString();
        this.useable = in.readString();
        this.mobilePhone = in.readString();
        this.isBankSend = in.readByte() != 0;
        this.msg = in.readString();
        this.limitPerDeal = in.readString();
        this.limitPerDay = in.readString();
        this.finishTimeDesc = in.readString();
        this.cardComplete = in.readByte() != 0;
        this.cardId = in.readString();
        this.cardNumber = in.readString();
        this.bankAccountName = in.readString();
        this.bankStyleColor = in.readString();
    }

    public String getBankQuickPayId() {
        return !TextUtils.isEmpty(this.quickPayId) ? this.quickPayId : this.cardId;
    }

    @Override // com.netease.epay.sdk.base.model.IPayChooser
    public boolean isUsable() {
        return "USEABLE".equals(this.useable);
    }

    @Override // com.netease.epay.sdk.base.model.IPayChooser
    public String getTitle() {
        return this.bankName + " " + getCardDesFromCardType(this.cardType) + " (尾号" + this.cardNoTail + ")";
    }

    @Override // com.netease.epay.sdk.base.model.IPayChooser
    public String getDesp() {
        return this.msg;
    }

    @Override // com.netease.epay.sdk.base.model.IPayChooser
    public String getBankId() {
        return this.bankStyleId;
    }

    public String getMobilePhone() {
        return this.mobilePhone;
    }
}
