package com.netease.epay.sdk.base.event;

import com.netease.epay.sdk.base.model.SupportBanks;

/* loaded from: classes.dex */
public class BankTypeChangedEvent {
    public SupportBanks card;

    public BankTypeChangedEvent(SupportBanks card) {
        this.card = card;
    }
}
