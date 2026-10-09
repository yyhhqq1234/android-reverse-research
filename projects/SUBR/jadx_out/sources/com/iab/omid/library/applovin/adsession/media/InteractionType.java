package com.iab.omid.library.applovin.adsession.media;

import org.json.z8;

/* JADX INFO: loaded from: classes3.dex */
public enum InteractionType {
    CLICK(z8.d),
    INVITATION_ACCEPTED("invitationAccept");

    String interactionType;

    InteractionType(String str) {
        this.interactionType = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.interactionType;
    }
}
