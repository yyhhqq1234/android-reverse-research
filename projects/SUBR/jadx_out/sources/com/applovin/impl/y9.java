package com.applovin.impl;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class y9 {
    private static final Pattern c = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");
    public int a = -1;
    public int b = -1;

    public boolean a() {
        return (this.a == -1 || this.b == -1) ? false : true;
    }

    public boolean a(af afVar) {
        for (int i = 0; i < afVar.c(); i++) {
            af.b bVarA = afVar.a(i);
            if (bVarA instanceof u3) {
                u3 u3Var = (u3) bVarA;
                if ("iTunSMPB".equals(u3Var.c) && a(u3Var.d)) {
                    return true;
                }
            } else if (bVarA instanceof rb) {
                rb rbVar = (rb) bVarA;
                if ("com.apple.iTunes".equals(rbVar.b) && "iTunSMPB".equals(rbVar.c) && a(rbVar.d)) {
                    return true;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    public boolean a(int i) {
        int i2 = i >> 12;
        int i3 = i & 4095;
        if (i2 <= 0 && i3 <= 0) {
            return false;
        }
        this.a = i2;
        this.b = i3;
        return true;
    }

    private boolean a(String str) {
        Matcher matcher = c.matcher(str);
        if (!matcher.find()) {
            return false;
        }
        try {
            int i = Integer.parseInt((String) xp.a((Object) matcher.group(1)), 16);
            int i2 = Integer.parseInt((String) xp.a((Object) matcher.group(2)), 16);
            if (i <= 0 && i2 <= 0) {
                return false;
            }
            this.a = i;
            this.b = i2;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }
}
