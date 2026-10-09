package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgor {
    private static final zzgmx zza = zzgmx.zzb(new zzgmv() { // from class: com.google.android.gms.internal.ads.zzgon
        @Override // com.google.android.gms.internal.ads.zzgmv
        public final Object zza(zzgdx zzgdxVar) {
            return new zzgpr((zzgom) zzgdxVar);
        }
    }, zzgom.class, zzgog.class);
    private static final zzgmx zzb = zzgmx.zzb(new zzgmv() { // from class: com.google.android.gms.internal.ads.zzgoo
        @Override // com.google.android.gms.internal.ads.zzgmv
        public final Object zza(zzgdx zzgdxVar) {
            return zzgvl.zzb((zzgom) zzgdxVar);
        }
    }, zzgom.class, zzgej.class);
    private static final zzgdy zzc = zzgli.zzd("type.googleapis.com/google.crypto.tink.HmacKey", zzgej.class, zzgsj.SYMMETRIC, zzgsb.zzi());
    private static final zzgmb zzd = new zzgmb() { // from class: com.google.android.gms.internal.ads.zzgop
    };
    private static final zzglz zze = new zzglz() { // from class: com.google.android.gms.internal.ads.zzgoq
        @Override // com.google.android.gms.internal.ads.zzglz
        public final zzgdx zza(zzgek zzgekVar, Integer num) {
            zzgow zzgowVar = (zzgow) zzgekVar;
            zzgok zzgokVar = new zzgok(null);
            zzgokVar.zzc(zzgowVar);
            zzgokVar.zzb(zzgvp.zzc(zzgowVar.zzc()));
            zzgokVar.zza(num);
            return zzgokVar.zzd();
        }
    };
    private static final int zzf = 2;

    public static void zza(boolean z) throws GeneralSecurityException {
        int i = zzf;
        if (!zzgks.zza(i)) {
            throw new GeneralSecurityException("Can not use HMAC in FIPS-mode, as BoringCrypto module is not available.");
        }
        int i2 = zzgpw.zza;
        zzgpw.zze(zzgmk.zzc());
        zzgmh.zza().zze(zza);
        zzgmh.zza().zze(zzb);
        zzgmg zzgmgVarZzb = zzgmg.zzb();
        HashMap map = new HashMap();
        map.put("HMAC_SHA256_128BITTAG", zzgpj.zza);
        zzgos zzgosVar = new zzgos(null);
        zzgosVar.zzb(32);
        zzgosVar.zzc(16);
        zzgosVar.zzd(zzgou.zzd);
        zzgosVar.zza(zzgot.zzc);
        map.put("HMAC_SHA256_128BITTAG_RAW", zzgosVar.zze());
        zzgos zzgosVar2 = new zzgos(null);
        zzgosVar2.zzb(32);
        zzgosVar2.zzc(32);
        zzgosVar2.zzd(zzgou.zza);
        zzgosVar2.zza(zzgot.zzc);
        map.put("HMAC_SHA256_256BITTAG", zzgosVar2.zze());
        zzgos zzgosVar3 = new zzgos(null);
        zzgosVar3.zzb(32);
        zzgosVar3.zzc(32);
        zzgosVar3.zzd(zzgou.zzd);
        zzgosVar3.zza(zzgot.zzc);
        map.put("HMAC_SHA256_256BITTAG_RAW", zzgosVar3.zze());
        zzgos zzgosVar4 = new zzgos(null);
        zzgosVar4.zzb(64);
        zzgosVar4.zzc(16);
        zzgosVar4.zzd(zzgou.zza);
        zzgosVar4.zza(zzgot.zze);
        map.put("HMAC_SHA512_128BITTAG", zzgosVar4.zze());
        zzgos zzgosVar5 = new zzgos(null);
        zzgosVar5.zzb(64);
        zzgosVar5.zzc(16);
        zzgosVar5.zzd(zzgou.zzd);
        zzgosVar5.zza(zzgot.zze);
        map.put("HMAC_SHA512_128BITTAG_RAW", zzgosVar5.zze());
        zzgos zzgosVar6 = new zzgos(null);
        zzgosVar6.zzb(64);
        zzgosVar6.zzc(32);
        zzgosVar6.zzd(zzgou.zza);
        zzgosVar6.zza(zzgot.zze);
        map.put("HMAC_SHA512_256BITTAG", zzgosVar6.zze());
        zzgos zzgosVar7 = new zzgos(null);
        zzgosVar7.zzb(64);
        zzgosVar7.zzc(32);
        zzgosVar7.zzd(zzgou.zzd);
        zzgosVar7.zza(zzgot.zze);
        map.put("HMAC_SHA512_256BITTAG_RAW", zzgosVar7.zze());
        map.put("HMAC_SHA512_512BITTAG", zzgpj.zzb);
        zzgos zzgosVar8 = new zzgos(null);
        zzgosVar8.zzb(64);
        zzgosVar8.zzc(64);
        zzgosVar8.zzd(zzgou.zzd);
        zzgosVar8.zza(zzgot.zze);
        map.put("HMAC_SHA512_512BITTAG_RAW", zzgosVar8.zze());
        zzgmgVarZzb.zzd(Collections.unmodifiableMap(map));
        zzgma.zzb().zzc(zze, zzgow.class);
        zzgmc.zza().zzb(zzd, zzgow.class);
        zzgkz.zzc().zzf(zzc, i, true);
    }
}
