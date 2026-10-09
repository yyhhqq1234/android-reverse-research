package org.json;

import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.mediation.LevelPlayAdInfo;
import com.unity3d.mediation.rewarded.LevelPlayReward;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J\u0012\u0010\b\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H&J\b\u0010\t\u001a\u00020\u0004H&J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H&J\b\u0010\n\u001a\u00020\u0004H&J\b\u0010\u000b\u001a\u00020\u0004H&J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH&J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000fÀ\u0006\u0001"}, d2 = {"Lcom/ironsource/vc;", "", "Lcom/unity3d/mediation/LevelPlayAdInfo;", "adInfo", "", gt.j, "Lcom/unity3d/mediation/LevelPlayAdError;", "error", gt.b, "a", gt.f, gt.g, "Lcom/unity3d/mediation/rewarded/LevelPlayReward;", s.i, "onAdInfoChanged", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public interface vc {
    void a();

    void a(LevelPlayAdError error);

    void a(LevelPlayReward reward);

    void onAdClicked();

    void onAdClosed();

    void onAdInfoChanged(LevelPlayAdInfo adInfo);

    void onAdLoadFailed(LevelPlayAdError error);

    void onAdLoaded(LevelPlayAdInfo adInfo);
}
