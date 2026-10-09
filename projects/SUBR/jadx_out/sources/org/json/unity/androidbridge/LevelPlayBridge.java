package org.json.unity.androidbridge;

import com.unity3d.mediation.LevelPlay;
import com.unity3d.mediation.LevelPlayConfiguration;
import com.unity3d.mediation.LevelPlayInitError;
import com.unity3d.mediation.LevelPlayInitListener;
import com.unity3d.mediation.LevelPlayInitRequest;
import com.unity3d.player.UnityPlayer;
import java.util.ArrayList;
import java.util.List;
import org.json.mediationsdk.config.ConfigFile;

/* JADX INFO: loaded from: classes3.dex */
public class LevelPlayBridge implements LevelPlayInitListener {
    private static final LevelPlayBridge mInstance = new LevelPlayBridge();
    private IUnityLevelPlayInitListener mUnityLevelPlayInitListener;

    private LevelPlayBridge() {
    }

    public static synchronized LevelPlayBridge getInstance() {
        return mInstance;
    }

    public void initialize(String appKey, String userId, String[] adFormats, IUnityLevelPlayInitListener listener) {
        List<LevelPlay.AdFormat> adFormatList = getAdFormatList(adFormats);
        LevelPlayInitRequest.Builder builder = new LevelPlayInitRequest.Builder(appKey);
        if (userId != null && userId != "") {
            builder.withUserId(userId);
        }
        if (adFormatList != null) {
            builder.withLegacyAdFormats(adFormatList);
        }
        LevelPlayInitRequest levelPlayInitRequestBuild = builder.build();
        this.mUnityLevelPlayInitListener = listener;
        LevelPlay.init(UnityPlayer.currentActivity, levelPlayInitRequestBuild, this);
    }

    public void setPluginData(String pluginType, String pluginVersion, String pluginFrameworkVersion) {
        ConfigFile.getConfigFile().setPluginData(pluginType, pluginVersion, pluginFrameworkVersion);
    }

    @Override // com.unity3d.mediation.LevelPlayInitListener
    public void onInitFailed(final LevelPlayInitError initError) {
        if (this.mUnityLevelPlayInitListener != null) {
            AndroidBridgeUtilities.postBackgroundTask(new Runnable() { // from class: com.ironsource.unity.androidbridge.LevelPlayBridge.1
                @Override // java.lang.Runnable
                public void run() {
                    LevelPlayBridge.this.mUnityLevelPlayInitListener.onInitFailed(LevelPlayUtils.initErrorToString(initError));
                }
            });
        }
    }

    @Override // com.unity3d.mediation.LevelPlayInitListener
    public void onInitSuccess(final LevelPlayConfiguration configuration) {
        if (this.mUnityLevelPlayInitListener != null) {
            AndroidBridgeUtilities.postBackgroundTask(new Runnable() { // from class: com.ironsource.unity.androidbridge.LevelPlayBridge.2
                @Override // java.lang.Runnable
                public void run() {
                    LevelPlayBridge.this.mUnityLevelPlayInitListener.onInitSuccess(LevelPlayUtils.configurationToString(configuration));
                }
            });
        }
    }

    private List<LevelPlay.AdFormat> getAdFormatList(String[] adFormats) {
        if (adFormats == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : adFormats) {
            arrayList.add(LevelPlay.AdFormat.valueOf(str.toUpperCase()));
        }
        return arrayList;
    }
}
