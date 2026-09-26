package com.netease.mpay.e.b;

import com.dodola.rocoo.Hack;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class ad {
    public String a;
    public HashMap b;

    public ad(String str, HashMap hashMap) {
        this.a = str;
        this.b = hashMap;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static ad a(byte[] bArr) {
        try {
            HashMap a = com.netease.mpay.e.a.a((HashMap) com.netease.mpay.e.a.a(bArr), String.class, String.class);
            return new ad((String) a.remove("61607af4a69be530e281ff00a9bb1cf4"), a);
        } catch (ClassCastException e) {
            return null;
        }
    }

    private boolean a(String str, String str2) {
        return (str == null || str2 == null) ? str == str2 : str.equals(str2);
    }

    private boolean a(HashMap hashMap, HashMap hashMap2) {
        if (hashMap == null || hashMap2 == null) {
            return hashMap == hashMap2;
        }
        if (hashMap.size() != hashMap2.size()) {
            return false;
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            if (!a((String) entry.getValue(), (String) hashMap2.get(entry.getKey()))) {
                return false;
            }
        }
        return true;
    }

    public boolean a(String str, HashMap hashMap) {
        return a(str, this.a) && a(hashMap, this.b);
    }

    public byte[] a() {
        HashMap hashMap = new HashMap();
        if (this.b != null) {
            hashMap.putAll(this.b);
        }
        hashMap.put("61607af4a69be530e281ff00a9bb1cf4", this.a);
        return com.netease.mpay.e.a.a(hashMap);
    }
}
