package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.util.JsonReader;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.google.android.gms.common.util.IOUtils;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfbz {
    public final List zza;
    public final zzfbr zzb;
    public final List zzc;
    public final zzbvk zzd;

    zzfbz(JsonReader jsonReader, zzbvk zzbvkVar) throws IllegalStateException, JSONException, IOException, NumberFormatException, AssertionError {
        Bundle bundle;
        Bundle bundle2;
        this.zzd = zzbvkVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzck)).booleanValue() && zzbvkVar != null && (bundle2 = zzbvkVar.zzm) != null) {
            bundle2.putLong(zzdre.SERVER_RESPONSE_PARSE_START.zza(), com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis());
        }
        List listEmptyList = Collections.emptyList();
        ArrayList arrayList = new ArrayList();
        jsonReader.beginObject();
        zzfbr zzfbrVar = null;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            if ("responses".equals(strNextName)) {
                jsonReader.beginArray();
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String strNextName2 = jsonReader.nextName();
                    if ("ad_configs".equals(strNextName2)) {
                        listEmptyList = new ArrayList();
                        jsonReader.beginArray();
                        while (jsonReader.hasNext()) {
                            listEmptyList.add(new zzfbo(jsonReader));
                        }
                        jsonReader.endArray();
                    } else if (strNextName2.equals("common")) {
                        zzfbrVar = new zzfbr(jsonReader);
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcl)).booleanValue() && zzbvkVar != null && (bundle = zzbvkVar.zzm) != null) {
                            bundle.putLong(zzdre.NORMALIZATION_AD_RESPONSE_START.zza(), zzfbrVar.zzs);
                            zzbvkVar.zzm.putLong(zzdre.NORMALIZATION_AD_RESPONSE_END.zza(), zzfbrVar.zzt);
                        }
                    } else {
                        jsonReader.skipValue();
                    }
                }
                jsonReader.endObject();
                jsonReader.endArray();
            } else if (strNextName.equals("actions")) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    jsonReader.beginObject();
                    String strNextString = null;
                    JSONObject jSONObjectZzi = null;
                    while (jsonReader.hasNext()) {
                        String strNextName3 = jsonReader.nextName();
                        if ("name".equals(strNextName3)) {
                            strNextString = jsonReader.nextString();
                        } else if ("info".equals(strNextName3)) {
                            jSONObjectZzi = com.google.android.gms.ads.internal.util.zzbs.zzi(jsonReader);
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    if (strNextString != null) {
                        arrayList.add(new zzfby(strNextString, jSONObjectZzi));
                    }
                    jsonReader.endObject();
                }
                jsonReader.endArray();
            }
        }
        this.zzc = arrayList;
        this.zza = listEmptyList;
        this.zzb = zzfbrVar == null ? new zzfbr(new JsonReader(new StringReader(JsonUtils.EMPTY_JSON))) : zzfbrVar;
    }

    public static zzfbz zza(Reader reader, zzbvk zzbvkVar) throws zzfbs {
        try {
            try {
                zzfbz zzfbzVar = new zzfbz(new JsonReader(reader), zzbvkVar);
                IOUtils.closeQuietly(reader);
                return zzfbzVar;
            } catch (Throwable th) {
                IOUtils.closeQuietly(reader);
                throw th;
            }
        } catch (IOException | AssertionError | IllegalStateException | NumberFormatException | JSONException e) {
            throw new zzfbs("unable to parse ServerResponse", e);
        }
    }
}
