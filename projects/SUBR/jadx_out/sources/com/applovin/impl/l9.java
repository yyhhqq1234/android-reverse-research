package com.applovin.impl;

import android.media.DeniedByServerException;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaDrm;
import android.media.NotProvisionedException;
import android.media.UnsupportedSchemeException;
import android.text.TextUtils;
import com.applovin.exoplayer2.common.base.Charsets;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class l9 implements y7 {
    public static final y7.c d = new y7.c() { // from class: com.applovin.impl.l9$$ExternalSyntheticLambda0
        @Override // com.applovin.impl.y7.c
        public final y7 a(UUID uuid) {
            return l9.b(uuid);
        }
    };
    private final UUID a;
    private final MediaDrm b;
    private int c;

    private static boolean e() {
        return "ASUS_Z00AD".equals(xp.d);
    }

    @Override // com.applovin.impl.y7
    public int c() {
        return 2;
    }

    @Override // com.applovin.impl.y7
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public k9 d(byte[] bArr) {
        return new k9(a(this.a), bArr, xp.a < 21 && t2.d.equals(this.a) && "L3".equals(a("securityLevel")));
    }

    private static byte[] e(byte[] bArr) {
        ah ahVar = new ah(bArr);
        int iM = ahVar.m();
        short sO = ahVar.o();
        short sO2 = ahVar.o();
        if (sO != 1 || sO2 != 1) {
            oc.c("FrameworkMediaDrm", "Unexpected record count or type. Skipping LA_URL workaround.");
            return bArr;
        }
        short sO3 = ahVar.o();
        Charset charset = Charsets.UTF_16LE;
        String strA = ahVar.a(sO3, charset);
        if (strA.contains("<LA_URL>")) {
            return bArr;
        }
        int iIndexOf = strA.indexOf("</DATA>");
        if (iIndexOf == -1) {
            oc.d("FrameworkMediaDrm", "Could not find the </DATA> tag. Skipping LA_URL workaround.");
        }
        String str = strA.substring(0, iIndexOf) + "<LA_URL>https://x</LA_URL>" + strA.substring(iIndexOf);
        int i = iM + 52;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.putInt(i);
        byteBufferAllocate.putShort(sO);
        byteBufferAllocate.putShort(sO2);
        byteBufferAllocate.putShort((short) (str.length() * 2));
        byteBufferAllocate.put(str.getBytes(charset));
        return byteBufferAllocate.array();
    }

    private l9(UUID uuid) {
        b1.a(uuid);
        b1.a(!t2.b.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.a = uuid;
        MediaDrm mediaDrm = new MediaDrm(a(uuid));
        this.b = mediaDrm;
        this.c = 1;
        if (t2.d.equals(uuid) && e()) {
            a(mediaDrm);
        }
    }

    @Override // com.applovin.impl.y7
    public void c(byte[] bArr) {
        this.b.closeSession(bArr);
    }

    public static l9 c(UUID uuid) throws sp {
        try {
            return new l9(uuid);
        } catch (UnsupportedSchemeException e) {
            throw new sp(1, e);
        } catch (Exception e2) {
            throw new sp(2, e2);
        }
    }

    @Override // com.applovin.impl.y7
    public byte[] d() {
        return this.b.openSession();
    }

    @Override // com.applovin.impl.y7
    public y7.d b() {
        MediaDrm.ProvisionRequest provisionRequest = this.b.getProvisionRequest();
        return new y7.d(provisionRequest.getData(), provisionRequest.getDefaultUrl());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ y7 b(UUID uuid) {
        try {
            return c(uuid);
        } catch (sp unused) {
            oc.b("FrameworkMediaDrm", "Failed to instantiate a FrameworkMediaDrm for uuid: " + uuid + ".");
            return new f7();
        }
    }

    private static void a(MediaDrm mediaDrm) {
        mediaDrm.setPropertyString("securityLevel", "L3");
    }

    private static class a {
        public static boolean a(MediaDrm mediaDrm, String str) {
            return mediaDrm.requiresSecureDecoder(str);
        }
    }

    @Override // com.applovin.impl.y7
    public Map b(byte[] bArr) {
        return this.b.queryKeyStatus(bArr);
    }

    @Override // com.applovin.impl.y7
    public byte[] b(byte[] bArr, byte[] bArr2) {
        if (t2.c.equals(this.a)) {
            bArr2 = i3.b(bArr2);
        }
        return this.b.provideKeyResponse(bArr, bArr2);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0058  */
    /* JADX WARN: Code duplicated, block: B:27:0x005e A[RETURN] */
    private static byte[] b(UUID uuid, byte[] bArr) {
        byte[] bArrA;
        UUID uuid2 = t2.e;
        if (uuid2.equals(uuid)) {
            byte[] bArrA2 = ji.a(bArr, uuid);
            if (bArrA2 != null) {
                bArr = bArrA2;
            }
            bArr = ji.a(uuid2, e(bArr));
        }
        if (xp.a >= 23 || !t2.d.equals(uuid)) {
            if (uuid2.equals(uuid) && "Amazon".equals(xp.c)) {
                String str = xp.d;
                if ("AFTB".equals(str) || "AFTS".equals(str) || "AFTM".equals(str) || "AFTT".equals(str)) {
                    bArrA = ji.a(bArr, uuid);
                    if (bArrA != null) {
                        return bArrA;
                    }
                }
            }
        } else {
            bArrA = ji.a(bArr, uuid);
            if (bArrA != null) {
                return bArrA;
            }
        }
        return bArr;
    }

    @Override // com.applovin.impl.y7
    public y7.a a(byte[] bArr, List list, int i, HashMap map) throws NotProvisionedException {
        x6.b bVarA;
        byte[] bArrB;
        String strA;
        if (list != null) {
            bVarA = a(this.a, list);
            bArrB = b(this.a, (byte[]) b1.a(bVarA.f));
            strA = a(this.a, bVarA.d);
        } else {
            bVarA = null;
            bArrB = null;
            strA = null;
        }
        MediaDrm.KeyRequest keyRequest = this.b.getKeyRequest(bArr, bArrB, strA, i, map);
        byte[] bArrA = a(this.a, keyRequest.getData());
        String defaultUrl = keyRequest.getDefaultUrl();
        if ("https://x".equals(defaultUrl)) {
            defaultUrl = "";
        }
        if (TextUtils.isEmpty(defaultUrl) && bVarA != null && !TextUtils.isEmpty(bVarA.c)) {
            defaultUrl = bVarA.c;
        }
        return new y7.a(bArrA, defaultUrl, xp.a >= 23 ? keyRequest.getRequestType() : Integer.MIN_VALUE);
    }

    public String a(String str) {
        return this.b.getPropertyString(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(y7.b bVar, MediaDrm mediaDrm, byte[] bArr, int i, int i2, byte[] bArr2) {
        bVar.a(this, bArr, i, i2, bArr2);
    }

    @Override // com.applovin.impl.y7
    public void a(byte[] bArr) throws DeniedByServerException {
        this.b.provideProvisionResponse(bArr);
    }

    @Override // com.applovin.impl.y7
    public synchronized void a() {
        int i = this.c - 1;
        this.c = i;
        if (i == 0) {
            this.b.release();
        }
    }

    @Override // com.applovin.impl.y7
    public void a(byte[] bArr, byte[] bArr2) {
        this.b.restoreKeys(bArr, bArr2);
    }

    @Override // com.applovin.impl.y7
    public void a(final y7.b bVar) {
        this.b.setOnEventListener(bVar == null ? null : new MediaDrm.OnEventListener() { // from class: com.applovin.impl.l9$$ExternalSyntheticLambda1
            @Override // android.media.MediaDrm.OnEventListener
            public final void onEvent(MediaDrm mediaDrm, byte[] bArr, int i, int i2, byte[] bArr2) {
                this.f$0.a(bVar, mediaDrm, bArr, i, i2, bArr2);
            }
        });
    }

    @Override // com.applovin.impl.y7
    public boolean a(byte[] bArr, String str) {
        if (xp.a >= 31) {
            return a.a(this.b, str);
        }
        try {
            MediaCrypto mediaCrypto = new MediaCrypto(this.a, bArr);
            try {
                return mediaCrypto.requiresSecureDecoderComponent(str);
            } finally {
                mediaCrypto.release();
            }
        } catch (MediaCryptoException unused) {
            return true;
        }
    }

    private static x6.b a(UUID uuid, List list) {
        if (!t2.d.equals(uuid)) {
            return (x6.b) list.get(0);
        }
        if (xp.a >= 28 && list.size() > 1) {
            x6.b bVar = (x6.b) list.get(0);
            int i = 0;
            int length = 0;
            while (true) {
                if (i < list.size()) {
                    x6.b bVar2 = (x6.b) list.get(i);
                    byte[] bArr = (byte[]) b1.a(bVar2.f);
                    if (!xp.a((Object) bVar2.d, (Object) bVar.d) || !xp.a((Object) bVar2.c, (Object) bVar.c) || !ji.a(bArr)) {
                        break;
                    }
                    length += bArr.length;
                    i++;
                } else {
                    byte[] bArr2 = new byte[length];
                    int i2 = 0;
                    for (int i3 = 0; i3 < list.size(); i3++) {
                        byte[] bArr3 = (byte[]) b1.a(((x6.b) list.get(i3)).f);
                        int length2 = bArr3.length;
                        System.arraycopy(bArr3, 0, bArr2, i2, length2);
                        i2 += length2;
                    }
                    return bVar.a(bArr2);
                }
            }
        }
        for (int i4 = 0; i4 < list.size(); i4++) {
            x6.b bVar3 = (x6.b) list.get(i4);
            int iD = ji.d((byte[]) b1.a(bVar3.f));
            int i5 = xp.a;
            if (i5 < 23 && iD == 0) {
                return bVar3;
            }
            if (i5 >= 23 && iD == 1) {
                return bVar3;
            }
        }
        return (x6.b) list.get(0);
    }

    private static UUID a(UUID uuid) {
        return (xp.a >= 27 || !t2.c.equals(uuid)) ? uuid : t2.b;
    }

    private static String a(UUID uuid, String str) {
        return (xp.a < 26 && t2.c.equals(uuid) && ("video/mp4".equals(str) || "audio/mp4".equals(str))) ? "cenc" : str;
    }

    private static byte[] a(UUID uuid, byte[] bArr) {
        return t2.c.equals(uuid) ? i3.a(bArr) : bArr;
    }
}
