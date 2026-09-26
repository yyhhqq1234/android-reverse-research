package com.netease.unisdk.gmbridge.utils;

import android.content.Context;
import android.text.TextUtils;

/* loaded from: classes.dex */
public class ResIdReader {
    private static final int ERROR_ID = 0;
    public static final String RES_TYPE_ARRAY = "array";
    public static final String RES_TYPE_COLOR = "color";
    public static final String RES_TYPE_DIMEN = "dimen";
    public static final String RES_TYPE_DRAWABLE = "drawable";
    public static final String RES_TYPE_ID = "id";
    public static final String RES_TYPE_LAYOUT = "layout";
    public static final String RES_TYPE_STRING = "string";
    public static final String RES_TYPE_STYLE = "style";

    public static int getResId(Context context, String name, String type) {
        if (context == null) {
            return 0;
        }
        return getResId(context, name, type, context.getPackageName());
    }

    public static int getResId(Context context, String name, String type, String pkg) {
        if (context == null || TextUtils.isEmpty(name) || TextUtils.isEmpty(type) || TextUtils.isEmpty(pkg)) {
            return 0;
        }
        return context.getResources().getIdentifier(name, type, pkg);
    }

    public static int getId(Context context, String name) {
        return getResId(context, name, RES_TYPE_ID);
    }

    public static int getLayoutId(Context context, String name) {
        return getResId(context, name, RES_TYPE_LAYOUT);
    }

    public static int getStyleId(Context context, String name) {
        return getResId(context, name, RES_TYPE_STYLE);
    }

    public static int getDrawableId(Context context, String name) {
        return getResId(context, name, RES_TYPE_DRAWABLE);
    }

    public static int getStringId(Context context, String name) {
        return getResId(context, name, RES_TYPE_STRING);
    }

    public static int getDimenId(Context context, String name) {
        return getResId(context, name, RES_TYPE_DIMEN);
    }

    public static int getArrayId(Context context, String name) {
        return getResId(context, name, RES_TYPE_ARRAY);
    }

    public static int getColorId(Context context, String name) {
        return getResId(context, name, RES_TYPE_COLOR);
    }
}
