package com.applovin.impl;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
final class d3 extends z1 {
    private int[] i;
    private int[] j;

    d3() {
    }

    @Override // com.applovin.impl.z1
    public p1.a b(p1.a aVar) throws p1.b {
        int[] iArr = this.i;
        if (iArr == null) {
            return p1.a.e;
        }
        if (aVar.c == 2) {
            boolean z = aVar.b != iArr.length;
            int i = 0;
            while (i < iArr.length) {
                int i2 = iArr[i];
                if (i2 >= aVar.b) {
                    throw new p1.b(aVar);
                }
                z |= i2 != i;
                i++;
            }
            if (z) {
                return new p1.a(aVar.a, iArr.length, 2);
            }
            return p1.a.e;
        }
        throw new p1.b(aVar);
    }

    @Override // com.applovin.impl.p1
    public void a(ByteBuffer byteBuffer) {
        int[] iArr = (int[]) b1.a(this.j);
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        ByteBuffer byteBufferA = a(((iLimit - iPosition) / this.b.d) * this.c.d);
        while (iPosition < iLimit) {
            for (int i : iArr) {
                byteBufferA.putShort(byteBuffer.getShort((i * 2) + iPosition));
            }
            iPosition += this.b.d;
        }
        byteBuffer.position(iLimit);
        byteBufferA.flip();
    }

    @Override // com.applovin.impl.z1
    protected void g() {
        this.j = this.i;
    }

    @Override // com.applovin.impl.z1
    protected void i() {
        this.j = null;
        this.i = null;
    }

    public void a(int[] iArr) {
        this.i = iArr;
    }
}
