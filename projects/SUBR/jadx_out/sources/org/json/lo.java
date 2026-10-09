package org.json;

/* JADX INFO: loaded from: classes3.dex */
public enum lo {
    PER_DAY("d"),
    PER_HOUR("h");

    public String a;

    lo(String str) {
        this.a = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.a;
    }
}
