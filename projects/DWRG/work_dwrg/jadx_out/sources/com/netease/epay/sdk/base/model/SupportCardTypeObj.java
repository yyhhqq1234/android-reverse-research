package com.netease.epay.sdk.base.model;

import java.util.ArrayList;

/* loaded from: classes.dex */
public class SupportCardTypeObj {
    public ArrayList<SupportBanks> banks;
    public String cardType;
    public String description;
    public int selectIndex = 0;

    public SupportCardTypeObj(ArrayList<SupportBanks> banks, String cardType, String description) {
        this.banks = banks;
        this.cardType = cardType;
        this.description = description;
    }
}
