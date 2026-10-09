package com.applovin.impl;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class tk extends dk {
    private final ah a = new ah();
    private final zg b = new zg();
    private ho c;

    @Override // com.applovin.impl.dk
    protected af a(df dfVar, ByteBuffer byteBuffer) {
        af.b vkVar;
        ho hoVar = this.c;
        if (hoVar == null || dfVar.j != hoVar.c()) {
            ho hoVar2 = new ho(dfVar.f);
            this.c = hoVar2;
            hoVar2.a(dfVar.f - dfVar.j);
        }
        byte[] bArrArray = byteBuffer.array();
        int iLimit = byteBuffer.limit();
        this.a.a(bArrArray, iLimit);
        this.b.a(bArrArray, iLimit);
        this.b.d(39);
        long jA = (((long) this.b.a(1)) << 32) | ((long) this.b.a(32));
        this.b.d(20);
        int iA = this.b.a(12);
        int iA2 = this.b.a(8);
        this.a.g(14);
        if (iA2 == 0) {
            vkVar = new vk();
        } else if (iA2 == 255) {
            vkVar = yh.a(this.a, iA, jA);
        } else if (iA2 == 4) {
            vkVar = wk.a(this.a);
        } else if (iA2 != 5) {
            vkVar = iA2 != 6 ? null : Cdo.a(this.a, jA, this.c);
        } else {
            vkVar = uk.a(this.a, jA, this.c);
        }
        return vkVar == null ? new af(new af.b[0]) : new af(vkVar);
    }
}
