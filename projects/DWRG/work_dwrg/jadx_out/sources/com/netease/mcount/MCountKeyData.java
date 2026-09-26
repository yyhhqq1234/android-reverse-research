package com.netease.mcount;

/* loaded from: classes.dex */
public class MCountKeyData implements CharSequence {
    private String a;

    public MCountKeyData(String str, String str2) {
        this.a = null;
        h.a = str2;
        this.a = str;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        return this.a.charAt(i);
    }

    public String getAppKey() {
        return this.a;
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.a.length();
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        return this.a.subSequence(i, i2);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return this.a;
    }
}
