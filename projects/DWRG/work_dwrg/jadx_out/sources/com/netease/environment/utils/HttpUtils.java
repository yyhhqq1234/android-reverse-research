package com.netease.environment.utils;

import java.net.MalformedURLException;
import java.net.URL;

/* loaded from: classes.dex */
public class HttpUtils {
    public static boolean verifyURL(String urlString) {
        if (urlString == null) {
            return false;
        }
        try {
            new URL(urlString);
            return true;
        } catch (MalformedURLException e) {
            return false;
        }
    }
}
