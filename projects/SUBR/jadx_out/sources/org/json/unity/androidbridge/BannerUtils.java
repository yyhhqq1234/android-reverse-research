package org.json.unity.androidbridge;

import android.app.Activity;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.unity3d.mediation.LevelPlayAdSize;
import com.unity3d.player.UnityPlayer;

/* JADX INFO: loaded from: classes3.dex */
public class BannerUtils {
    public static LevelPlayAdSize getAdSize(String description, int width, int height, int customWidth) {
        if (description.equalsIgnoreCase("CUSTOM")) {
            return LevelPlayAdSize.createCustomSize(width, height);
        }
        if (description.equalsIgnoreCase("BANNER")) {
            return LevelPlayAdSize.BANNER;
        }
        if (description.equalsIgnoreCase("MEDIUM_RECTANGLE")) {
            return LevelPlayAdSize.MEDIUM_RECTANGLE;
        }
        if (description.equalsIgnoreCase("LARGE")) {
            return LevelPlayAdSize.LARGE;
        }
        if (description.equalsIgnoreCase("LEADERBOARD")) {
            return LevelPlayAdSize.LEADERBOARD;
        }
        if (!description.equalsIgnoreCase(AndroidBridgeConstants.BANNER_SIZE_ADAPTIVE)) {
            return null;
        }
        if (customWidth <= 0) {
            customWidth = (int) getDeviceScreenWidth();
        }
        return LevelPlayAdSize.createAdaptiveAdSize(UnityPlayer.currentActivity, Integer.valueOf(customWidth));
    }

    private static float getDeviceScreenWidth() {
        WindowManager windowManager;
        Display defaultDisplay;
        Activity activity = UnityPlayer.currentActivity;
        if (activity == null || (windowManager = activity.getWindowManager()) == null || (defaultDisplay = windowManager.getDefaultDisplay()) == null) {
            return 0.0f;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        return displayMetrics.widthPixels / displayMetrics.density;
    }
}
