package com.netease.mpay.e.c.a;

import android.content.Context;
import com.dodola.rocoo.Hack;
import com.netease.mpay.e.c.q;
import com.netease.mpay.widget.ac;
import com.netease.mpay.widget.bd;
import java.util.Arrays;

/* loaded from: classes.dex */
public class a extends c {
    public a(Context context, String str) {
        super(context, str);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private byte[] a(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        if (i2 - i <= 0) {
            return null;
        }
        for (int i4 = i; i4 < i2; i4++) {
            bArr2[(i4 - i) + i3] = bArr[i4];
        }
        return bArr2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.e.c.a.c
    public byte[] a(byte[] bArr) {
        int length;
        byte[] d = ac.d(bArr, new q(this.b, this.c).a());
        if (d != null && (((d.length - 15) - 17) - 16) - 16 > 0) {
            int i = length / 3;
            byte[] bArr2 = new byte[length];
            a(d, 15, i + 15, bArr2, 0);
            a(d, i + 15 + 17, (d.length - 16) - 16, bArr2, i);
            byte[] bArr3 = new byte[16];
            a(d, d.length - 16, d.length, bArr3, 0);
            if (Arrays.equals(bArr3, bd.a(bArr2))) {
                return bArr2;
            }
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.e.c.a.c
    public byte[] b(byte[] bArr) {
        byte[] a = bd.a(bArr);
        byte[] bArr2 = new byte[bArr.length + 15 + 16 + 17 + 16];
        byte[] a2 = bd.a(15);
        byte[] a3 = bd.a(16);
        byte[] a4 = bd.a(17);
        int length = bArr.length / 3;
        a(a2, 0, 15, bArr2, 0);
        a(bArr, 0, length, bArr2, 15);
        a(a4, 0, 17, bArr2, length + 15);
        a(bArr, length, bArr.length, bArr2, length + 15 + 17);
        a(a3, 0, 16, bArr2, bArr.length + 15 + 17);
        a(a, 0, 16, bArr2, bArr.length + 15 + 17 + 16);
        return ac.c(bArr2, new q(this.b, this.c).a());
    }
}
