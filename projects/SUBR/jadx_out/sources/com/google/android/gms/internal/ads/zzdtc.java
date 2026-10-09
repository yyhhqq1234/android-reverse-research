package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridgeBase;
import org.json.gt;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdtc {
    private final zzbko zza;

    zzdtc(zzbko zzbkoVar) {
        this.zza = zzbkoVar;
    }

    private final void zzs(zzdta zzdtaVar) throws RemoteException {
        String strZza = zzdta.zza(zzdtaVar);
        com.google.android.gms.ads.internal.util.client.zzo.zzi("Dispatching AFMA event on publisher webview: ".concat(strZza));
        this.zza.zzb(strZza);
    }

    public final void zza() throws RemoteException {
        zzs(new zzdta(MobileAdsBridgeBase.initializeMethodName, null));
    }

    public final void zzb(long j) throws RemoteException {
        zzdta zzdtaVar = new zzdta("interstitial", null);
        zzdtaVar.zza = Long.valueOf(j);
        zzdtaVar.zzc = gt.f;
        this.zza.zzb(zzdta.zza(zzdtaVar));
    }

    public final void zzc(long j) throws RemoteException {
        zzdta zzdtaVar = new zzdta("interstitial", null);
        zzdtaVar.zza = Long.valueOf(j);
        zzdtaVar.zzc = gt.g;
        zzs(zzdtaVar);
    }

    public final void zzd(long j, int i) throws RemoteException {
        zzdta zzdtaVar = new zzdta("interstitial", null);
        zzdtaVar.zza = Long.valueOf(j);
        zzdtaVar.zzc = "onAdFailedToLoad";
        zzdtaVar.zzd = Integer.valueOf(i);
        zzs(zzdtaVar);
    }

    public final void zze(long j) throws RemoteException {
        zzdta zzdtaVar = new zzdta("interstitial", null);
        zzdtaVar.zza = Long.valueOf(j);
        zzdtaVar.zzc = gt.j;
        zzs(zzdtaVar);
    }

    public final void zzf(long j) throws RemoteException {
        zzdta zzdtaVar = new zzdta("interstitial", null);
        zzdtaVar.zza = Long.valueOf(j);
        zzdtaVar.zzc = "onNativeAdObjectNotAvailable";
        zzs(zzdtaVar);
    }

    public final void zzg(long j) throws RemoteException {
        zzdta zzdtaVar = new zzdta("interstitial", null);
        zzdtaVar.zza = Long.valueOf(j);
        zzdtaVar.zzc = gt.c;
        zzs(zzdtaVar);
    }

    public final void zzh(long j) throws RemoteException {
        zzdta zzdtaVar = new zzdta("creation", null);
        zzdtaVar.zza = Long.valueOf(j);
        zzdtaVar.zzc = "nativeObjectCreated";
        zzs(zzdtaVar);
    }

    public final void zzi(long j) throws RemoteException {
        zzdta zzdtaVar = new zzdta("creation", null);
        zzdtaVar.zza = Long.valueOf(j);
        zzdtaVar.zzc = "nativeObjectNotCreated";
        zzs(zzdtaVar);
    }

    public final void zzj(long j) throws RemoteException {
        zzdta zzdtaVar = new zzdta("rewarded", null);
        zzdtaVar.zza = Long.valueOf(j);
        zzdtaVar.zzc = gt.f;
        zzs(zzdtaVar);
    }

    public final void zzk(long j) throws RemoteException {
        zzdta zzdtaVar = new zzdta("rewarded", null);
        zzdtaVar.zza = Long.valueOf(j);
        zzdtaVar.zzc = "onRewardedAdClosed";
        zzs(zzdtaVar);
    }

    public final void zzl(long j, zzbwm zzbwmVar) throws RemoteException {
        zzdta zzdtaVar = new zzdta("rewarded", null);
        zzdtaVar.zza = Long.valueOf(j);
        zzdtaVar.zzc = "onUserEarnedReward";
        zzdtaVar.zze = zzbwmVar.zzf();
        zzdtaVar.zzf = Integer.valueOf(zzbwmVar.zze());
        zzs(zzdtaVar);
    }

    public final void zzm(long j, int i) throws RemoteException {
        zzdta zzdtaVar = new zzdta("rewarded", null);
        zzdtaVar.zza = Long.valueOf(j);
        zzdtaVar.zzc = "onRewardedAdFailedToLoad";
        zzdtaVar.zzd = Integer.valueOf(i);
        zzs(zzdtaVar);
    }

    public final void zzn(long j, int i) throws RemoteException {
        zzdta zzdtaVar = new zzdta("rewarded", null);
        zzdtaVar.zza = Long.valueOf(j);
        zzdtaVar.zzc = "onRewardedAdFailedToShow";
        zzdtaVar.zzd = Integer.valueOf(i);
        zzs(zzdtaVar);
    }

    public final void zzo(long j) throws RemoteException {
        zzdta zzdtaVar = new zzdta("rewarded", null);
        zzdtaVar.zza = Long.valueOf(j);
        zzdtaVar.zzc = "onAdImpression";
        zzs(zzdtaVar);
    }

    public final void zzp(long j) throws RemoteException {
        zzdta zzdtaVar = new zzdta("rewarded", null);
        zzdtaVar.zza = Long.valueOf(j);
        zzdtaVar.zzc = "onRewardedAdLoaded";
        zzs(zzdtaVar);
    }

    public final void zzq(long j) throws RemoteException {
        zzdta zzdtaVar = new zzdta("rewarded", null);
        zzdtaVar.zza = Long.valueOf(j);
        zzdtaVar.zzc = "onNativeAdObjectNotAvailable";
        zzs(zzdtaVar);
    }

    public final void zzr(long j) throws RemoteException {
        zzdta zzdtaVar = new zzdta("rewarded", null);
        zzdtaVar.zza = Long.valueOf(j);
        zzdtaVar.zzc = "onRewardedAdOpened";
        zzs(zzdtaVar);
    }
}
