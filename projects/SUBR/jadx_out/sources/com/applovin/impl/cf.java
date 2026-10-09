package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
public interface cf {
    public static final cf a = new a();

    boolean a(e9 e9Var);

    bf b(e9 e9Var);

    class a implements cf {
        a() {
        }

        @Override // com.applovin.impl.cf
        public boolean a(e9 e9Var) {
            String str = e9Var.m;
            return "application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str) || "application/x-icy".equals(str) || "application/vnd.dvb.ait".equals(str);
        }

        @Override // com.applovin.impl.cf
        public bf b(e9 e9Var) {
            String str = e9Var.m;
            if (str != null) {
                str.hashCode();
                switch (str) {
                    case "application/vnd.dvb.ait":
                        return new a1();
                    case "application/x-icy":
                        return new ta();
                    case "application/id3":
                        return new wa();
                    case "application/x-emsg":
                        return new w7();
                    case "application/x-scte35":
                        return new tk();
                }
            }
            throw new IllegalArgumentException("Attempted to create decoder for unsupported MIME type: " + str);
        }
    }
}
