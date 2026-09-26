package com.sina.weibo.sdk.utils;

import android.R;
import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.graphics.drawable.StateListDrawable;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.StateSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;
import org.apache.http.util.EncodingUtils;

/* loaded from: classes.dex */
public class ResourceManager {
    private static final String DRAWABLE = "drawable";
    private static final String TAG = ResourceManager.class.getName();
    private static final String DRAWABLE_XXHDPI = "drawable-xxhdpi";
    private static final String DRAWABLE_XHDPI = "drawable-xhdpi";
    private static final String DRAWABLE_HDPI = "drawable-hdpi";
    private static final String DRAWABLE_MDPI = "drawable-mdpi";
    private static final String DRAWABLE_LDPI = "drawable-ldpi";
    private static final String[] PRE_INSTALL_DRAWBLE_PATHS = {DRAWABLE_XXHDPI, DRAWABLE_XHDPI, DRAWABLE_HDPI, DRAWABLE_MDPI, DRAWABLE_LDPI, "drawable"};

    public static String getString(Context context, String en, String cn, String tw) {
        Locale locale = getLanguage();
        if (Locale.SIMPLIFIED_CHINESE.equals(locale)) {
            return cn;
        }
        return Locale.TRADITIONAL_CHINESE.equals(locale) ? tw : en;
    }

    public static Drawable getDrawable(Context context, String fileName) {
        String path = getAppropriatePathOfDrawable(context, fileName);
        return getDrawableFromAssert(context, path, false);
    }

    public static Drawable getNinePatchDrawable(Context context, String fileName) {
        String path = getAppropriatePathOfDrawable(context, fileName);
        return getDrawableFromAssert(context, path, true);
    }

    public static Locale getLanguage() {
        Locale locale = Locale.getDefault();
        return (Locale.SIMPLIFIED_CHINESE.equals(locale) || Locale.TRADITIONAL_CHINESE.equals(locale)) ? locale : Locale.ENGLISH;
    }

    private static String getAppropriatePathOfDrawable(Context context, String fileName) {
        int properDpi;
        if (TextUtils.isEmpty(fileName)) {
            LogUtil.e(TAG, "id is NOT correct!");
            return null;
        }
        String currentDpi = getCurrentDpiFolder(context);
        LogUtil.d(TAG, "find Appropriate path...");
        int existIndexLeftDpi = -1;
        int currentDpiIndex = -1;
        int existIndexRightDpi = -1;
        int index = 0;
        while (true) {
            if (index >= PRE_INSTALL_DRAWBLE_PATHS.length) {
                break;
            }
            if (PRE_INSTALL_DRAWBLE_PATHS[index].equals(currentDpi)) {
                currentDpiIndex = index;
            }
            String resPath = String.valueOf(PRE_INSTALL_DRAWBLE_PATHS[index]) + "/" + fileName;
            if (isFileExisted(context, resPath)) {
                if (currentDpiIndex != index) {
                    if (currentDpiIndex < 0) {
                        existIndexLeftDpi = index;
                    } else {
                        existIndexRightDpi = index;
                        break;
                    }
                } else {
                    return resPath;
                }
            }
            index++;
        }
        if (existIndexLeftDpi > 0 && existIndexRightDpi > 0) {
            properDpi = Math.abs(currentDpiIndex - existIndexRightDpi) <= Math.abs(currentDpiIndex - existIndexLeftDpi) ? existIndexRightDpi : existIndexLeftDpi;
        } else if (existIndexLeftDpi > 0 && existIndexRightDpi < 0) {
            properDpi = existIndexLeftDpi;
        } else if (existIndexLeftDpi < 0 && existIndexRightDpi > 0) {
            properDpi = existIndexRightDpi;
        } else {
            properDpi = -1;
            LogUtil.e(TAG, "Not find the appropriate path for drawable");
        }
        if (properDpi < 0) {
            LogUtil.e(TAG, "Not find the appropriate path for drawable");
            return null;
        }
        return String.valueOf(PRE_INSTALL_DRAWBLE_PATHS[properDpi]) + "/" + fileName;
    }

    private static Drawable getDrawableFromAssert(Context context, String relativePath, boolean isNinePatch) {
        Drawable rtDrawable;
        AssetManager asseets = context.getAssets();
        InputStream is = null;
        try {
            try {
                InputStream is2 = asseets.open(relativePath);
                if (is2 == null) {
                    rtDrawable = null;
                } else {
                    Bitmap bitmap = BitmapFactory.decodeStream(is2);
                    DisplayMetrics metrics = context.getResources().getDisplayMetrics();
                    if (isNinePatch) {
                        Configuration config = context.getResources().getConfiguration();
                        Resources res = new Resources(context.getAssets(), metrics, config);
                        rtDrawable = new NinePatchDrawable(res, bitmap, bitmap.getNinePatchChunk(), new Rect(0, 0, 0, 0), null);
                    } else {
                        bitmap.setDensity(metrics.densityDpi);
                        rtDrawable = new BitmapDrawable(context.getResources(), bitmap);
                    }
                }
                if (is2 != null) {
                    try {
                        is2.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    return rtDrawable;
                }
                return rtDrawable;
            } catch (IOException e2) {
                e2.printStackTrace();
                if (0 == 0) {
                    return null;
                }
                try {
                    is.close();
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
                return null;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    is.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
            throw th;
        }
    }

    private static boolean isFileExisted(Context context, String filePath) {
        boolean z = false;
        if (context != null && !TextUtils.isEmpty(filePath)) {
            AssetManager asseets = context.getAssets();
            InputStream is = null;
            try {
                try {
                    is = asseets.open(filePath);
                    LogUtil.d(TAG, "file [" + filePath + "] existed");
                    if (is != null) {
                        try {
                            is.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                            is = null;
                        }
                    }
                    z = true;
                } catch (IOException e2) {
                    LogUtil.d(TAG, "file [" + filePath + "] NOT existed");
                    if (is != null) {
                        try {
                            is.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                            is = null;
                        }
                    }
                }
            } catch (Throwable th) {
                if (is != null) {
                    try {
                        is.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                }
                throw th;
            }
        }
        return z;
    }

    private static String getCurrentDpiFolder(Context context) {
        DisplayMetrics dm = context.getResources().getDisplayMetrics();
        int density = dm.densityDpi;
        if (density <= 120) {
            return DRAWABLE_LDPI;
        }
        if (density > 120 && density <= 160) {
            return DRAWABLE_MDPI;
        }
        if (density > 160 && density <= 240) {
            return DRAWABLE_HDPI;
        }
        if (density > 240 && density <= 320) {
            return DRAWABLE_XHDPI;
        }
        return DRAWABLE_XXHDPI;
    }

    private static View extractView(Context context, String fileName, ViewGroup root) throws Exception {
        XmlResourceParser parser = context.getAssets().openXmlResourceParser(fileName);
        LayoutInflater inflater = (LayoutInflater) context.getSystemService("layout_inflater");
        return inflater.inflate(parser, root);
    }

    private static Drawable extractDrawable(Context context, String fileName) throws Exception {
        InputStream inputStream = context.getAssets().open(fileName);
        DisplayMetrics dm = context.getResources().getDisplayMetrics();
        TypedValue value = new TypedValue();
        value.density = dm.densityDpi;
        Drawable drawable = Drawable.createFromResourceStream(context.getResources(), value, inputStream, fileName);
        inputStream.close();
        return drawable;
    }

    public static int dp2px(Context context, int dp) {
        DisplayMetrics dm = context.getResources().getDisplayMetrics();
        int px = (int) ((dp * dm.density) + 0.5d);
        return px;
    }

    public static ColorStateList createColorStateList(int normal, int pressed) {
        int[] colors = {pressed, pressed, pressed, normal};
        int[][] states = {new int[]{R.attr.state_pressed}, new int[]{R.attr.state_selected}, new int[]{R.attr.state_focused}, StateSet.WILD_CARD};
        return new ColorStateList(states, colors);
    }

    public static StateListDrawable createStateListDrawable(Context context, String normalPicName, String pressedPicName) {
        Drawable normalDrawable;
        Drawable pressedDrawable;
        if (normalPicName.indexOf(".9") > -1) {
            normalDrawable = getNinePatchDrawable(context, normalPicName);
        } else {
            normalDrawable = getDrawable(context, normalPicName);
        }
        if (pressedPicName.indexOf(".9") > -1) {
            pressedDrawable = getNinePatchDrawable(context, pressedPicName);
        } else {
            pressedDrawable = getDrawable(context, pressedPicName);
        }
        StateListDrawable drawable = new StateListDrawable();
        drawable.addState(new int[]{R.attr.state_pressed}, pressedDrawable);
        drawable.addState(new int[]{R.attr.state_selected}, pressedDrawable);
        drawable.addState(new int[]{R.attr.state_focused}, pressedDrawable);
        drawable.addState(StateSet.WILD_CARD, normalDrawable);
        return drawable;
    }

    public static StateListDrawable createStateListDrawable(Context context, String normalPicName, String pressedPicName, String enabledPicName) {
        Drawable normalDrawable;
        Drawable enableDrawable;
        Drawable pressedDrawable;
        if (normalPicName.indexOf(".9") > -1) {
            normalDrawable = getNinePatchDrawable(context, normalPicName);
        } else {
            normalDrawable = getDrawable(context, normalPicName);
        }
        if (enabledPicName.indexOf(".9") > -1) {
            enableDrawable = getNinePatchDrawable(context, enabledPicName);
        } else {
            enableDrawable = getDrawable(context, enabledPicName);
        }
        if (pressedPicName.indexOf(".9") > -1) {
            pressedDrawable = getNinePatchDrawable(context, pressedPicName);
        } else {
            pressedDrawable = getDrawable(context, pressedPicName);
        }
        StateListDrawable drawable = new StateListDrawable();
        drawable.addState(new int[]{R.attr.state_pressed}, pressedDrawable);
        drawable.addState(new int[]{R.attr.state_selected}, pressedDrawable);
        drawable.addState(new int[]{R.attr.state_focused}, pressedDrawable);
        drawable.addState(new int[]{R.attr.enabled}, enableDrawable);
        drawable.addState(StateSet.WILD_CARD, normalDrawable);
        return drawable;
    }

    public static String readCountryFromAsset(Context context, String assetName) {
        String content = "";
        try {
            InputStream is = context.getAssets().open(assetName);
            if (is == null) {
                return "";
            }
            DataInputStream dIs = new DataInputStream(is);
            int length = dIs.available();
            byte[] buffer = new byte[length];
            dIs.read(buffer);
            content = EncodingUtils.getString(buffer, "UTF-8");
            is.close();
            return content;
        } catch (IOException e) {
            e.printStackTrace();
            return content;
        }
    }
}
