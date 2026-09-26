package com.netease.environment.config;

import android.content.Context;

/* loaded from: classes.dex */
public class SdkData {
    private static Context sContext;
    private static String sGameId;
    private static String sHost;
    private static boolean sIfTest = false;
    private static String sMode = SdkConstants.MODE_NORMAL;
    private static String sRC4Key;

    public static void setGameId(String gameId) {
        sGameId = gameId;
    }

    public static Context getContext() {
        return sContext;
    }

    public static void setRC4Key(String rc4Key) {
        sRC4Key = rc4Key;
    }

    public static String getRC4Key() {
        return sRC4Key;
    }

    public static void setContext(Context context) {
        if (context != null) {
            sContext = context.getApplicationContext();
        }
    }

    public static String getGameId() {
        return sGameId;
    }

    public static void setIfTest(boolean ifTest) {
        sIfTest = ifTest;
    }

    public static boolean getIfTest() {
        return sIfTest;
    }

    public static void setMode(String mode) {
        sMode = mode;
    }

    public static String getMode() {
        return sMode;
    }

    public static void setHost(String host) {
        sHost = host;
    }

    public static String getHost() {
        return sHost;
    }
}
