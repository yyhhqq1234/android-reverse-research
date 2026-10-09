package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Color;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import androidx.core.app.NotificationCompat;
import com.onesignal.session.internal.influence.impl.InfluenceConstants;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.j5;
import org.json.y8;
import org.json.z8;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzccs implements zzbjp {
    private boolean zza;

    private static int zzb(Context context, Map map, String str, int i) {
        String str2 = (String) map.get(str);
        if (str2 != null) {
            try {
                com.google.android.gms.ads.internal.client.zzbc.zzb();
                i = com.google.android.gms.ads.internal.util.client.zzf.zzx(context, Integer.parseInt(str2));
            } catch (NumberFormatException unused) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not parse " + str + " in a video GMSG: " + str2);
            }
        }
        if (com.google.android.gms.ads.internal.util.zze.zzc()) {
            com.google.android.gms.ads.internal.util.zze.zza("Parse pixels for " + str + ", got string " + str2 + ", int " + i + ".");
        }
        return i;
    }

    private static void zzc(zzcbg zzcbgVar, Map map) {
        String str = (String) map.get("minBufferMs");
        String str2 = (String) map.get("maxBufferMs");
        String str3 = (String) map.get("bufferForPlaybackMs");
        String str4 = (String) map.get("bufferForPlaybackAfterRebufferMs");
        String str5 = (String) map.get("socketReceiveBufferSize");
        if (str != null) {
            try {
                zzcbgVar.zzB(Integer.parseInt(str));
            } catch (NumberFormatException unused) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj(String.format("Could not parse buffer parameters in loadControl video GMSG: (%s, %s)", str, str2));
                return;
            }
        }
        if (str2 != null) {
            zzcbgVar.zzA(Integer.parseInt(str2));
        }
        if (str3 != null) {
            zzcbgVar.zzy(Integer.parseInt(str3));
        }
        if (str4 != null) {
            zzcbgVar.zzz(Integer.parseInt(str4));
        }
        if (str5 != null) {
            zzcbgVar.zzD(Integer.parseInt(str5));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbjp
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        int iMin;
        int iMin2;
        int i;
        Integer numValueOf;
        zzcbs zzcbsVar = (zzcbs) obj;
        String str = (String) map.get("action");
        if (str == null) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Action missing from video GMSG.");
            return;
        }
        Integer numValueOf2 = map.containsKey("playerId") ? Integer.valueOf(Integer.parseInt((String) map.get("playerId"))) : null;
        Integer numZzb = zzcbsVar.zzo() != null ? zzcbsVar.zzo().zzb() : null;
        if (numValueOf2 != null && numZzb != null && !numValueOf2.equals(numZzb) && !str.equals("load")) {
            com.google.android.gms.ads.internal.util.client.zzo.zzi(String.format(Locale.US, "Event intended for player %s, but sent to player %d - event ignored", numValueOf2, numZzb));
            return;
        }
        if (com.google.android.gms.ads.internal.util.zze.zzm(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            com.google.android.gms.ads.internal.util.client.zzo.zze("Video GMSG: " + str + " " + jSONObject.toString());
        }
        if (str.equals("background")) {
            String str2 = (String) map.get(y8.h.S);
            if (TextUtils.isEmpty(str2)) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Color parameter missing from background video GMSG.");
                return;
            }
            try {
                zzcbsVar.setBackgroundColor(Color.parseColor(str2));
                return;
            } catch (IllegalArgumentException unused) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Invalid color parameter in background video GMSG.");
                return;
            }
        }
        if (str.equals("playerBackground")) {
            String str3 = (String) map.get(y8.h.S);
            if (TextUtils.isEmpty(str3)) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Color parameter missing from playerBackground video GMSG.");
                return;
            }
            try {
                zzcbsVar.zzB(Color.parseColor(str3));
                return;
            } catch (IllegalArgumentException unused2) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Invalid color parameter in playerBackground video GMSG.");
                return;
            }
        }
        if (str.equals("decoderProps")) {
            String str4 = (String) map.get("mimeTypes");
            if (str4 == null) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("No MIME types specified for decoder properties inspection.");
                HashMap map2 = new HashMap();
                map2.put(NotificationCompat.CATEGORY_EVENT, "decoderProps");
                map2.put("error", "missingMimeTypes");
                zzcbsVar.zzd("onVideoEvent", map2);
                return;
            }
            HashMap map3 = new HashMap();
            for (String str5 : str4.split(",")) {
                map3.put(str5, com.google.android.gms.ads.internal.util.zzcj.zza(str5.trim()));
            }
            HashMap map4 = new HashMap();
            map4.put(NotificationCompat.CATEGORY_EVENT, "decoderProps");
            map4.put("mimeTypes", map3);
            zzcbsVar.zzd("onVideoEvent", map4);
            return;
        }
        zzcbh zzcbhVarZzo = zzcbsVar.zzo();
        if (zzcbhVarZzo == null) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not get underlay container for a video GMSG.");
            return;
        }
        boolean zEquals = str.equals("new");
        boolean zEquals2 = str.equals(y8.h.L);
        if (zEquals || zEquals2) {
            Context context = zzcbsVar.getContext();
            int iZzb = zzb(context, map, "x", 0);
            int iZzb2 = zzb(context, map, "y", 0);
            int iZzb3 = zzb(context, map, "w", -1);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdW)).booleanValue()) {
                iMin = iZzb3 == -1 ? zzcbsVar.zzh() : Math.min(iZzb3, zzcbsVar.zzh());
            } else {
                if (com.google.android.gms.ads.internal.util.zze.zzc()) {
                    com.google.android.gms.ads.internal.util.zze.zza("Calculate width with original width " + iZzb3 + ", videoHost.getVideoBoundingWidth() " + zzcbsVar.zzh() + ", x " + iZzb + ".");
                }
                iMin = Math.min(iZzb3, zzcbsVar.zzh() - iZzb);
            }
            int iZzb4 = zzb(context, map, "h", -1);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdW)).booleanValue()) {
                iMin2 = iZzb4 == -1 ? zzcbsVar.zzg() : Math.min(iZzb4, zzcbsVar.zzg());
            } else {
                if (com.google.android.gms.ads.internal.util.zze.zzc()) {
                    com.google.android.gms.ads.internal.util.zze.zza("Calculate height with original height " + iZzb4 + ", videoHost.getVideoBoundingHeight() " + zzcbsVar.zzg() + ", y " + iZzb2 + ".");
                }
                iMin2 = Math.min(iZzb4, zzcbsVar.zzg() - iZzb2);
            }
            try {
                i = Integer.parseInt((String) map.get("player"));
            } catch (NumberFormatException unused3) {
                i = 0;
            }
            boolean z = Boolean.parseBoolean((String) map.get("spherical"));
            if (!zEquals || zzcbhVarZzo.zza() != null) {
                zzcbhVarZzo.zzc(iZzb, iZzb2, iMin, iMin2);
                return;
            }
            zzcbhVarZzo.zzd(iZzb, iZzb2, iMin, iMin2, i, z, new zzcbr((String) map.get("flags")));
            zzcbg zzcbgVarZza = zzcbhVarZzo.zza();
            if (zzcbgVarZza != null) {
                zzc(zzcbgVarZza, map);
                return;
            }
            return;
        }
        zzcfz zzcfzVarZzq = zzcbsVar.zzq();
        if (zzcfzVarZzq != null) {
            if (str.equals("timeupdate")) {
                String str6 = (String) map.get("currentTime");
                if (str6 == null) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("currentTime parameter missing from timeupdate video GMSG.");
                    return;
                }
                try {
                    zzcfzVarZzq.zzt(Float.parseFloat(str6));
                    return;
                } catch (NumberFormatException unused4) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not parse currentTime parameter from timeupdate video GMSG: ".concat(str6));
                    return;
                }
            }
            if (str.equals("skip")) {
                zzcfzVarZzq.zzu();
                return;
            }
        }
        zzcbg zzcbgVarZza2 = zzcbhVarZzo.zza();
        if (zzcbgVarZza2 == null) {
            HashMap map5 = new HashMap();
            map5.put(NotificationCompat.CATEGORY_EVENT, "no_video_view");
            zzcbsVar.zzd("onVideoEvent", map5);
            return;
        }
        if (str.equals(z8.CLICK)) {
            Context context2 = zzcbsVar.getContext();
            int iZzb5 = zzb(context2, map, "x", 0);
            float fZzb = zzb(context2, map, "y", 0);
            long jUptimeMillis = SystemClock.uptimeMillis();
            MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 0, iZzb5, fZzb, 0);
            zzcbgVarZza2.zzx(motionEventObtain);
            motionEventObtain.recycle();
            return;
        }
        if (str.equals("currentTime")) {
            String str7 = (String) map.get(InfluenceConstants.TIME);
            if (str7 == null) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Time parameter missing from currentTime video GMSG.");
                return;
            }
            try {
                zzcbgVarZza2.zzw((int) (Float.parseFloat(str7) * 1000.0f));
                return;
            } catch (NumberFormatException unused5) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not parse time parameter from currentTime video GMSG: ".concat(str7));
                return;
            }
        }
        if (str.equals("hide")) {
            zzcbgVarZza2.setVisibility(4);
            return;
        }
        if (str.equals("remove")) {
            zzcbgVarZza2.setVisibility(8);
            return;
        }
        if (str.equals("load")) {
            zzcbgVarZza2.zzr(numValueOf2);
            return;
        }
        if (str.equals("loadControl")) {
            zzc(zzcbgVarZza2, map);
            return;
        }
        if (str.equals("muted")) {
            if (Boolean.parseBoolean((String) map.get("muted"))) {
                zzcbgVarZza2.zzs();
                return;
            } else {
                zzcbgVarZza2.zzI();
                return;
            }
        }
        if (str.equals("pause")) {
            zzcbgVarZza2.zzu();
            return;
        }
        if (str.equals("play")) {
            zzcbgVarZza2.zzv();
            return;
        }
        if (str.equals(j5.v)) {
            zzcbgVarZza2.setVisibility(0);
            return;
        }
        if (str.equals("src")) {
            String str8 = (String) map.get("src");
            if (map.containsKey("periodicReportIntervalMs")) {
                try {
                    numValueOf = Integer.valueOf(Integer.parseInt((String) map.get("periodicReportIntervalMs")));
                } catch (NumberFormatException unused6) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Video gmsg invalid numeric parameter 'periodicReportIntervalMs': ".concat(String.valueOf((String) map.get("periodicReportIntervalMs"))));
                    numValueOf = null;
                }
            } else {
                numValueOf = null;
            }
            String[] strArr = {str8};
            String str9 = (String) map.get("demuxed");
            if (str9 != null) {
                try {
                    JSONArray jSONArray = new JSONArray(str9);
                    String[] strArr2 = new String[jSONArray.length()];
                    for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                        strArr2[i2] = jSONArray.getString(i2);
                    }
                    strArr = strArr2;
                } catch (JSONException unused7) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Malformed demuxed URL list for playback: ".concat(str9));
                    strArr = new String[]{str8};
                }
            }
            if (numValueOf != null) {
                zzcbsVar.zzA(numValueOf.intValue());
            }
            zzcbgVarZza2.zzE(str8, strArr);
            return;
        }
        if (str.equals("touchMove")) {
            Context context3 = zzcbsVar.getContext();
            zzcbgVarZza2.zzH(zzb(context3, map, "dx", 0), zzb(context3, map, "dy", 0));
            if (this.zza) {
                return;
            }
            zzcbsVar.zzdg();
            this.zza = true;
            return;
        }
        if (!str.equals("volume")) {
            if (str.equals("watermark")) {
                zzcbgVarZza2.zzn();
                return;
            } else {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Unknown video action: ".concat(str));
                return;
            }
        }
        String str10 = (String) map.get("volume");
        if (str10 == null) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Level parameter missing from volume video GMSG.");
            return;
        }
        try {
            zzcbgVarZza2.zzG(Float.parseFloat(str10));
        } catch (NumberFormatException unused8) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not parse volume parameter from volume video GMSG: ".concat(str10));
        }
    }
}
