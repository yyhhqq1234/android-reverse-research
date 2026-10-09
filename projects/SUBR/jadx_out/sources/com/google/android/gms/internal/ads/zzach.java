package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzach implements zzacs {
    private static final int[] zza = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 16, 15, 14, 17, 18, 19, 20, 21};
    private static final zzacg zzb = new zzacg(new zzacf() { // from class: com.google.android.gms.internal.ads.zzacd
        @Override // com.google.android.gms.internal.ads.zzacf
        public final Constructor zza() {
            if (Boolean.TRUE.equals(Class.forName("androidx.media3.decoder.flac.FlacLibrary").getMethod("isAvailable", new Class[0]).invoke(null, new Object[0]))) {
                return Class.forName("androidx.media3.decoder.flac.FlacExtractor").asSubclass(zzacn.class).getConstructor(Integer.TYPE);
            }
            return null;
        }
    });
    private static final zzacg zzc = new zzacg(new zzacf() { // from class: com.google.android.gms.internal.ads.zzace
        @Override // com.google.android.gms.internal.ads.zzacf
        public final Constructor zza() {
            return Class.forName("androidx.media3.decoder.midi.MidiExtractor").asSubclass(zzacn.class).getConstructor(new Class[0]);
        }
    });
    private zzfxn zzd;
    private final zzakd zze = new zzajy();

    /* JADX WARN: Code duplicated, block: B:113:0x01c4  */
    /* JADX WARN: Code duplicated, block: B:141:0x020c  */
    @Override // com.google.android.gms.internal.ads.zzacs
    public final synchronized zzacn[] zza(Uri uri, Map map) {
        ArrayList arrayList;
        int i;
        int i2;
        arrayList = new ArrayList(21);
        List list = (List) map.get("Content-Type");
        String str = (list == null || list.isEmpty()) ? null : (String) list.get(0);
        if (str != null) {
            switch (zzbb.zze(str)) {
                case "audio/ac3":
                case "audio/eac3":
                case "audio/eac3-joc":
                    i = 0;
                    break;
                case "audio/ac4":
                    i = 1;
                    break;
                case "audio/amr":
                case "audio/3gpp":
                case "audio/amr-wb":
                    i = 3;
                    break;
                case "audio/flac":
                    i = 4;
                    break;
                case "video/x-flv":
                    i = 5;
                    break;
                case "audio/midi":
                    i = 15;
                    break;
                case "video/x-matroska":
                case "audio/x-matroska":
                case "video/webm":
                case "audio/webm":
                case "application/webm":
                    i = 6;
                    break;
                case "audio/mpeg":
                    i = 7;
                    break;
                case "video/mp4":
                case "audio/mp4":
                case "application/mp4":
                    i = 8;
                    break;
                case "audio/ogg":
                    i = 9;
                    break;
                case "video/mp2p":
                    i = 10;
                    break;
                case "video/mp2t":
                    i = 11;
                    break;
                case "audio/wav":
                    i = 12;
                    break;
                case "text/vtt":
                    i = 13;
                    break;
                case "image/jpeg":
                    i = 14;
                    break;
                case "video/x-msvideo":
                    i = 16;
                    break;
                case "image/png":
                    i = 17;
                    break;
                case "image/webp":
                    i = 18;
                    break;
                case "image/bmp":
                    i = 19;
                    break;
                case "image/heif":
                case "image/heic":
                    i = 20;
                    break;
                case "image/avif":
                    i = 21;
                    break;
                default:
                    i = -1;
                    break;
            }
        } else {
            i = -1;
        }
        if (i != -1) {
            zzb(i, arrayList);
        }
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null) {
            i2 = -1;
        } else if (lastPathSegment.endsWith(".ac3") || lastPathSegment.endsWith(".ec3")) {
            i2 = 0;
        } else if (lastPathSegment.endsWith(".ac4")) {
            i2 = 1;
        } else if (lastPathSegment.endsWith(".adts") || lastPathSegment.endsWith(".aac")) {
            i2 = 2;
        } else if (lastPathSegment.endsWith(".amr")) {
            i2 = 3;
        } else if (lastPathSegment.endsWith(".flac")) {
            i2 = 4;
        } else if (lastPathSegment.endsWith(".flv")) {
            i2 = 5;
        } else if (lastPathSegment.endsWith(".mid") || lastPathSegment.endsWith(".midi") || lastPathSegment.endsWith(".smf")) {
            i2 = 15;
        } else if (lastPathSegment.startsWith(".mk", lastPathSegment.length() - 4) || lastPathSegment.endsWith(".webm")) {
            i2 = 6;
        } else if (lastPathSegment.endsWith(".mp3")) {
            i2 = 7;
        } else if (lastPathSegment.endsWith(".mp4") || lastPathSegment.startsWith(".m4", lastPathSegment.length() - 4) || lastPathSegment.startsWith(".mp4", lastPathSegment.length() - 5) || lastPathSegment.startsWith(".cmf", lastPathSegment.length() - 5)) {
            i2 = 8;
        } else if (lastPathSegment.startsWith(".og", lastPathSegment.length() - 4) || lastPathSegment.endsWith(".opus")) {
            i2 = 9;
        } else if (lastPathSegment.endsWith(".ps") || lastPathSegment.endsWith(".mpeg") || lastPathSegment.endsWith(".mpg") || lastPathSegment.endsWith(".m2p")) {
            i2 = 10;
        } else if (lastPathSegment.endsWith(".ts") || lastPathSegment.startsWith(".ts", lastPathSegment.length() - 4)) {
            i2 = 11;
        } else if (lastPathSegment.endsWith(".wav") || lastPathSegment.endsWith(".wave")) {
            i2 = 12;
        } else if (lastPathSegment.endsWith(".vtt") || lastPathSegment.endsWith(".webvtt")) {
            i2 = 13;
        } else if (lastPathSegment.endsWith(".jpg") || lastPathSegment.endsWith(".jpeg")) {
            i2 = 14;
        } else if (lastPathSegment.endsWith(".avi")) {
            i2 = 16;
        } else if (lastPathSegment.endsWith(".png")) {
            i2 = 17;
        } else if (lastPathSegment.endsWith(".webp")) {
            i2 = 18;
        } else if (lastPathSegment.endsWith(".bmp") || lastPathSegment.endsWith(".dib")) {
            i2 = 19;
        } else if (lastPathSegment.endsWith(".heic") || lastPathSegment.endsWith(".heif")) {
            i2 = 20;
        } else if (lastPathSegment.endsWith(".avif")) {
            i2 = 21;
        } else {
            i2 = -1;
        }
        if (i2 != -1 && i2 != i) {
            zzb(i2, arrayList);
        }
        int[] iArr = zza;
        for (int i3 = 0; i3 < 21; i3++) {
            int i4 = iArr[i3];
            if (i4 != i && i4 != i2) {
                zzb(i4, arrayList);
            }
        }
        return (zzacn[]) arrayList.toArray(new zzacn[arrayList.size()]);
    }

    private final void zzb(int i, List list) {
        switch (i) {
            case 0:
                list.add(new zzama());
                break;
            case 1:
                list.add(new zzamc());
                break;
            case 2:
                list.add(new zzame(0));
                break;
            case 3:
                list.add(new zzaea(0));
                break;
            case 4:
                zzacn zzacnVarZza = zzb.zza(0);
                if (zzacnVarZza == null) {
                    list.add(new zzaes(0));
                } else {
                    list.add(zzacnVarZza);
                }
                break;
            case 5:
                list.add(new zzaeu());
                break;
            case 6:
                list.add(new zzahm(this.zze, 0));
                break;
            case 7:
                list.add(new zzahs(0));
                break;
            case 8:
                list.add(new zzaiq(this.zze, 0, null, null, zzfxn.zzn(), null));
                list.add(new zzaiv(this.zze, 0));
                break;
            case 9:
                list.add(new zzajl());
                break;
            case 10:
                list.add(new zzanj());
                break;
            case 11:
                if (this.zzd == null) {
                    this.zzd = zzfxn.zzn();
                }
                list.add(new zzant(1, 0, this.zze, new zzef(0L), new zzamg(0, this.zzd), 112800));
                break;
            case 12:
                list.add(new zzaoe());
                break;
            case 14:
                list.add(new zzafa(0));
                break;
            case 15:
                zzacn zzacnVarZza2 = zzc.zza(new Object[0]);
                if (zzacnVarZza2 != null) {
                    list.add(zzacnVarZza2);
                }
                break;
            case 16:
                list.add(new zzaef(0, this.zze));
                break;
            case 17:
                list.add(new zzajw());
                break;
            case 18:
                list.add(new zzaoj());
                break;
            case 19:
                list.add(new zzaen());
                break;
            case 20:
                list.add(new zzaez());
                break;
            case 21:
                list.add(new zzaem());
                break;
        }
    }
}
