package im.yixin.sdk.util;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Locale;

/* loaded from: classes.dex */
class ResourceManager {
    private static final String DIALOG_BACKGROUND_IMAGE_NAME = "yixin_sdk_dialog_bg.9.png";
    public static final int DIALOG_BOTTOM_MARGIN = 10;
    private static final String DIALOG_CLOSE_BUTTON_IMAGE_NAME = "ic_im_yixin_sdk_close.png";
    public static final int DIALOG_LEFT_MARGIN = 10;
    public static final int DIALOG_RIGHT_MARGIN = 10;
    public static final int DIALOG_TOP_MARGIN = 30;
    private static final String DRAWABLE = "drawable";
    private static final String LOADING_EN = "Loading...";
    private static final String LOADING_ZH_CN = "加载中...";
    private static final String LOADING_ZH_TW = "載入中...";
    private static final String NETWORK_NOT_AVAILABLE_EN = "Network is not available";
    private static final String NETWORK_NOT_AVAILABLE_ZH_CN = "无法连接到网络，请检查网络配置";
    private static final String NETWORK_NOT_AVAILABLE_ZH_TW = "無法連接到網络，請檢查網络配置";
    public static final int dimen_dialog_bottom_margin = 4;
    public static final int dimen_dialog_left_margin = 1;
    public static final int dimen_dialog_right_margin = 3;
    public static final int dimen_dialog_top_margin = 2;
    public static final int drawable_dialog_background = 1;
    public static final int drawable_dialog_close_button = 2;
    private static final SparseArray sDrawableMap;
    private static final HashMap sLanguageMap;
    public static final int string_loading = 1;
    public static final int string_network_not_available = 2;
    private static final String DRAWABLE_XXHDPI = "drawable-xxhdpi";
    private static final String DRAWABLE_XHDPI = "drawable-xhdpi";
    private static final String DRAWABLE_HDPI = "drawable-hdpi";
    private static final String DRAWABLE_MDPI = "drawable-mdpi";
    private static final String DRAWABLE_LDPI = "drawable-ldpi";
    private static final String[] PRE_INSTALL_DRAWBLE_PATHS = {DRAWABLE_XXHDPI, DRAWABLE_XHDPI, DRAWABLE_HDPI, DRAWABLE_MDPI, DRAWABLE_LDPI, "drawable"};
    private static final SparseIntArray sLayoutMap = new SparseIntArray();

    public static String getString(Context context, int id) {
        Locale locale = getLanguage();
        SparseArray stringMap = (SparseArray) sLanguageMap.get(locale);
        return (String) stringMap.get(id, "");
    }

    public static Drawable getDrawable(Context context, int id) {
        String path = getAppropriatePathOfDrawable(context, (String) sDrawableMap.get(id, ""));
        return getDrawableFromAssert(context, path, false);
    }

    public static Drawable getNinePatchDrawable(Context context, int id) {
        String path = getAppropriatePathOfDrawable(context, (String) sDrawableMap.get(id, ""));
        return getDrawableFromAssert(context, path, true);
    }

    public static int getDimensionPixelSize(int id) {
        return sLayoutMap.get(id, 0);
    }

    public static Locale getLanguage() {
        Locale locale = Locale.getDefault();
        return (Locale.SIMPLIFIED_CHINESE.equals(locale) || Locale.TRADITIONAL_CHINESE.equals(locale)) ? locale : Locale.ENGLISH;
    }

    public static String getAppropriatePathOfDrawable(Context context, String fileName) {
        if (TextUtils.isEmpty(fileName)) {
            SDKLogger.e(ResourceManager.class, "id is NOT correct!");
            return null;
        }
        String pathPrefix = getCurrentDpiFolder(context);
        String path = String.valueOf(pathPrefix) + File.separator + fileName;
        SDKLogger.i(ResourceManager.class, "Maybe the appropriate path: " + path);
        if (!isFileExisted(context, path)) {
            SDKLogger.i(ResourceManager.class, "Not the correct path, we need to find one...");
            for (String preInstallDrawblePath : PRE_INSTALL_DRAWBLE_PATHS) {
                String path2 = String.valueOf(preInstallDrawblePath) + File.separator + fileName;
                if (isFileExisted(context, path2)) {
                    return path2;
                }
            }
            SDKLogger.e(ResourceManager.class, "Not find the appropriate path for drawable");
            return null;
        }
        return path;
    }

    public static Drawable getDrawableFromAssert(Context context, String relativePath, boolean isNinePatch) {
        Drawable drawable;
        InputStream is = null;
        try {
            AssetManager assetManager = context.getAssets();
            InputStream is2 = assetManager.open(relativePath);
            if (is2 == null) {
                drawable = null;
            } else {
                Bitmap bitmap = BitmapFactory.decodeStream(is2);
                DisplayMetrics metrics = context.getResources().getDisplayMetrics();
                if (isNinePatch) {
                    Configuration config = context.getResources().getConfiguration();
                    Resources res = new Resources(context.getAssets(), metrics, config);
                    drawable = new NinePatchDrawable(res, bitmap, bitmap.getNinePatchChunk(), new Rect(0, 0, 0, 0), null);
                } else {
                    bitmap.setDensity(metrics.densityDpi);
                    drawable = new BitmapDrawable(context.getResources(), bitmap);
                }
            }
            return drawable;
        } catch (IOException e) {
            if (0 != 0) {
                try {
                    is.close();
                } catch (IOException e2) {
                }
            }
            return null;
        }
    }

    private static boolean isFileExisted(Context context, String filePath) {
        if (context == null || TextUtils.isEmpty(filePath)) {
            return false;
        }
        try {
            AssetManager assetManager = context.getAssets();
            InputStream is = assetManager.open(filePath);
            if (is == null) {
                return false;
            }
            SDKLogger.i(ResourceManager.class, "file [" + filePath + "] existed");
            is.close();
            return true;
        } catch (IOException e) {
            return false;
        }
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

    static {
        sLayoutMap.put(1, 10);
        sLayoutMap.put(2, 30);
        sLayoutMap.put(3, 10);
        sLayoutMap.put(4, 10);
        sDrawableMap = new SparseArray();
        sDrawableMap.put(1, DIALOG_BACKGROUND_IMAGE_NAME);
        sDrawableMap.put(2, DIALOG_CLOSE_BUTTON_IMAGE_NAME);
        sLanguageMap = new HashMap();
        SparseArray stringMap = new SparseArray();
        stringMap.put(1, LOADING_ZH_CN);
        stringMap.put(2, NETWORK_NOT_AVAILABLE_ZH_CN);
        sLanguageMap.put(Locale.SIMPLIFIED_CHINESE, stringMap);
        SparseArray stringMap2 = new SparseArray();
        stringMap2.put(1, LOADING_ZH_TW);
        stringMap2.put(2, NETWORK_NOT_AVAILABLE_ZH_TW);
        sLanguageMap.put(Locale.TRADITIONAL_CHINESE, stringMap2);
        SparseArray stringMap3 = new SparseArray();
        stringMap3.put(1, LOADING_EN);
        stringMap3.put(2, NETWORK_NOT_AVAILABLE_EN);
        sLanguageMap.put(Locale.ENGLISH, stringMap3);
    }
}
