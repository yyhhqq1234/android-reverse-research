package org.json;

import android.app.Activity;
import com.unity3d.mediation.LevelPlayAdInfo;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b`\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H&J\b\u0010\u0005\u001a\u00020\u0004H&J\u001a\u0010\n\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH&J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0016J\b\u0010\n\u001a\u00020\u000bH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000eÀ\u0006\u0001"}, d2 = {"Lcom/ironsource/dd;", "", "", "loadAd", "Lcom/ironsource/g1;", "b", "Landroid/app/Activity;", "activity", "", oo.d, "a", "Lcom/unity3d/mediation/LevelPlayAdInfo;", "adInfo", "onAdInfoChanged", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public interface dd {

    /* JADX INFO: renamed from: com.ironsource.dd$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
    }

    LevelPlayAdInfo a();

    void a(Activity activity, String placementName);

    g1 b();

    void loadAd();

    void onAdInfoChanged(LevelPlayAdInfo adInfo);
}
