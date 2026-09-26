package com.netease.mpay.a;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.netease.mpay.b.an;
import com.netease.mpay.f.r;
import com.netease.mpay.widget.RIdentifier;
import com.netease.unisdk.gmbridge.utils.ResIdReader;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class c implements GraphRequest.GraphJSONObjectCallback {
    final /* synthetic */ AccessToken a;
    final /* synthetic */ a b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(a aVar, AccessToken accessToken) {
        this.b = aVar;
        this.a = accessToken;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public void onCompleted(JSONObject jSONObject, GraphResponse graphResponse) {
        Activity activity;
        Activity activity2;
        Activity activity3;
        String str;
        String str2;
        String str3;
        String str4;
        boolean z;
        if (jSONObject == null) {
            activity = this.b.f;
            an anVar = new an(activity.getString(RIdentifier.h.t), false);
            activity2 = this.b.f;
            anVar.a(activity2);
            return;
        }
        this.b.i = jSONObject.optString(ResIdReader.RES_TYPE_ID);
        this.b.g = jSONObject.optString("name");
        this.b.h = jSONObject.optString("email");
        activity3 = this.b.f;
        str = this.b.j;
        str2 = this.b.l;
        str3 = this.b.i;
        str4 = this.b.h;
        AccessToken accessToken = this.a;
        z = this.b.k;
        new r(activity3, str, str2, str3, str4, accessToken, z, new d(this)).h();
    }
}
