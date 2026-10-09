package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
public interface ql {
    public static final ql a = new a();

    boolean a(e9 e9Var);

    ol b(e9 e9Var);

    class a implements ql {
        a() {
        }

        @Override // com.applovin.impl.ql
        public boolean a(e9 e9Var) {
            String str = e9Var.m;
            return "text/vtt".equals(str) || "text/x-ssa".equals(str) || "application/ttml+xml".equals(str) || "application/x-mp4-vtt".equals(str) || "application/x-subrip".equals(str) || "application/x-quicktime-tx3g".equals(str) || "application/cea-608".equals(str) || "application/x-mp4-cea-608".equals(str) || "application/cea-708".equals(str) || "application/dvbsubs".equals(str) || "application/pgs".equals(str) || "text/x-exoplayer-cues".equals(str);
        }

        @Override // com.applovin.impl.ql
        public ol b(e9 e9Var) {
            String str = e9Var.m;
            if (str != null) {
                str.hashCode();
                switch (str) {
                    case "application/dvbsubs":
                        return new i7(e9Var.o);
                    case "application/pgs":
                        return new jh();
                    case "application/x-mp4-vtt":
                        return new pf();
                    case "text/vtt":
                        return new yr();
                    case "application/x-quicktime-tx3g":
                        return new lp(e9Var.o);
                    case "text/x-ssa":
                        return new xk(e9Var.o);
                    case "application/x-mp4-cea-608":
                    case "application/cea-608":
                        return new y2(str, e9Var.E, 16000L);
                    case "text/x-exoplayer-cues":
                        return new h8();
                    case "application/cea-708":
                        return new z2(e9Var.E, e9Var.o);
                    case "application/x-subrip":
                        return new jl();
                    case "application/ttml+xml":
                        return new fp();
                }
            }
            throw new IllegalArgumentException("Attempted to create decoder for unsupported MIME type: " + str);
        }
    }
}
