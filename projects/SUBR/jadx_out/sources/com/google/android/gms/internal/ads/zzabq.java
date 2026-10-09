package com.google.android.gms.internal.ads;

import com.google.common.primitives.SignedBytes;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzabq {
    public static final /* synthetic */ int zza = 0;
    private static final int[] zzb = {2002, 2000, 1920, 1601, 1600, 1001, 1000, 960, 800, 800, 480, CommonGatewayClient.CODE_400, CommonGatewayClient.CODE_400, 2048};

    /* JADX WARN: Code duplicated, block: B:47:0x009c  */
    /* JADX WARN: Code duplicated, block: B:51:0x00a3  */
    public static zzabo zza(zzdx zzdxVar) {
        int i;
        int i2;
        int iZzd;
        int iZzd2 = zzdxVar.zzd(16);
        int iZzd3 = zzdxVar.zzd(16);
        if (iZzd3 == 65535) {
            iZzd3 = zzdxVar.zzd(24);
            i = 7;
        } else {
            i = 4;
        }
        int i3 = iZzd3 + i;
        if (iZzd2 == 44097) {
            i3 += 2;
        }
        int i4 = i3;
        int iZzd4 = zzdxVar.zzd(2);
        if (iZzd4 == 3) {
            int i5 = 0;
            while (true) {
                iZzd = i5 + zzdxVar.zzd(2);
                if (!zzdxVar.zzp()) {
                    break;
                }
                i5 = (iZzd + 1) << 2;
            }
            iZzd4 = iZzd + 3;
        }
        int i6 = iZzd4;
        int iZzd5 = zzdxVar.zzd(10);
        if (zzdxVar.zzp() && zzdxVar.zzd(3) > 0) {
            zzdxVar.zzn(2);
        }
        int i7 = true != zzdxVar.zzp() ? 44100 : 48000;
        int iZzd6 = zzdxVar.zzd(4);
        if (i7 == 44100 && iZzd6 == 13) {
            i2 = zzb[13];
        } else if (i7 != 48000 || iZzd6 >= 14) {
            i2 = 0;
        } else {
            int i8 = zzb[iZzd6];
            int i9 = iZzd5 % 5;
            if (i9 == 1) {
                if (iZzd6 != 3 || iZzd6 == 8) {
                    i8++;
                }
            } else if (i9 != 2) {
                if (i9 != 3) {
                    if (i9 == 4 && (iZzd6 == 3 || iZzd6 == 8 || iZzd6 == 11)) {
                        i8++;
                    }
                } else if (iZzd6 != 3) {
                    i8++;
                } else {
                    i8++;
                }
            } else if (iZzd6 == 8 || iZzd6 == 11) {
                i8++;
            }
            i2 = i8;
        }
        return new zzabo(i6, 2, i7, i4, i2, null);
    }

    public static void zzb(int i, zzdy zzdyVar) {
        zzdyVar.zzI(7);
        byte[] bArrZzN = zzdyVar.zzN();
        bArrZzN[0] = -84;
        bArrZzN[1] = SignedBytes.MAX_POWER_OF_TWO;
        bArrZzN[2] = -1;
        bArrZzN[3] = -1;
        bArrZzN[4] = (byte) ((i >> 16) & 255);
        bArrZzN[5] = (byte) ((i >> 8) & 255);
        bArrZzN[6] = (byte) (i & 255);
    }
}
