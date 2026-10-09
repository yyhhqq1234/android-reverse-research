package com.applovin.impl;

import java.util.Map;
import java.util.Objects;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class u7 {
    private final String b;
    private final Map c;
    private final String a = UUID.randomUUID().toString();
    private final long d = System.currentTimeMillis();

    public String toString() {
        return "Event{name='" + this.b + "', id='" + this.a + "', creationTimestampMillis=" + this.d + ", parameters=" + this.c + '}';
    }

    public String b() {
        return this.a;
    }

    public String c() {
        return this.b;
    }

    public Map d() {
        return this.c;
    }

    public long a() {
        return this.d;
    }

    public u7(String str, Map map) {
        this.b = str;
        this.c = map;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        u7 u7Var = (u7) obj;
        if (this.d == u7Var.d && Objects.equals(this.b, u7Var.b) && Objects.equals(this.c, u7Var.c)) {
            return Objects.equals(this.a, u7Var.a);
        }
        return false;
    }

    public int hashCode() {
        String str = this.b;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        Map map = this.c;
        int iHashCode2 = (iHashCode + (map != null ? map.hashCode() : 0)) * 31;
        long j = this.d;
        int i = (iHashCode2 + ((int) (j ^ (j >>> 32)))) * 31;
        String str2 = this.a;
        return i + (str2 != null ? str2.hashCode() : 0);
    }
}
