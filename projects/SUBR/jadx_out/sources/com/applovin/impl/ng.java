package com.applovin.impl;

import android.view.View;
import com.iab.omid.library.applovin.adsession.FriendlyObstructionPurpose;

/* JADX INFO: loaded from: classes.dex */
public class ng {
    private final View a;
    private final FriendlyObstructionPurpose b;
    private final String c;

    public ng(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str) {
        this.a = view;
        this.b = friendlyObstructionPurpose;
        this.c = str;
    }

    public View c() {
        return this.a;
    }

    public FriendlyObstructionPurpose b() {
        return this.b;
    }

    public String a() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ng ngVar = (ng) obj;
        View view = this.a;
        if (view == null ? ngVar.a != null : !view.equals(ngVar.a)) {
            return false;
        }
        if (this.b != ngVar.b) {
            return false;
        }
        String str = this.c;
        String str2 = ngVar.c;
        if (str != null) {
            return str.equals(str2);
        }
        return str2 == null;
    }

    public int hashCode() {
        View view = this.a;
        int iHashCode = (view != null ? view.hashCode() : 0) * 31;
        FriendlyObstructionPurpose friendlyObstructionPurpose = this.b;
        int iHashCode2 = (iHashCode + (friendlyObstructionPurpose != null ? friendlyObstructionPurpose.hashCode() : 0)) * 31;
        String str = this.c;
        return iHashCode2 + (str != null ? str.hashCode() : 0);
    }
}
