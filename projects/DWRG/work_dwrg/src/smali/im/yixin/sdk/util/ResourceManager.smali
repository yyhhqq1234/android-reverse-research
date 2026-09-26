.class Lim/yixin/sdk/util/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# static fields
.field private static final DIALOG_BACKGROUND_IMAGE_NAME:Ljava/lang/String; = "yixin_sdk_dialog_bg.9.png"

.field public static final DIALOG_BOTTOM_MARGIN:I = 0xa

.field private static final DIALOG_CLOSE_BUTTON_IMAGE_NAME:Ljava/lang/String; = "ic_im_yixin_sdk_close.png"

.field public static final DIALOG_LEFT_MARGIN:I = 0xa

.field public static final DIALOG_RIGHT_MARGIN:I = 0xa

.field public static final DIALOG_TOP_MARGIN:I = 0x1e

.field private static final DRAWABLE:Ljava/lang/String; = "drawable"

.field private static final DRAWABLE_HDPI:Ljava/lang/String; = "drawable-hdpi"

.field private static final DRAWABLE_LDPI:Ljava/lang/String; = "drawable-ldpi"

.field private static final DRAWABLE_MDPI:Ljava/lang/String; = "drawable-mdpi"

.field private static final DRAWABLE_XHDPI:Ljava/lang/String; = "drawable-xhdpi"

.field private static final DRAWABLE_XXHDPI:Ljava/lang/String; = "drawable-xxhdpi"

.field private static final LOADING_EN:Ljava/lang/String; = "Loading..."

.field private static final LOADING_ZH_CN:Ljava/lang/String; = "\u52a0\u8f7d\u4e2d..."

.field private static final LOADING_ZH_TW:Ljava/lang/String; = "\u8f09\u5165\u4e2d..."

.field private static final NETWORK_NOT_AVAILABLE_EN:Ljava/lang/String; = "Network is not available"

.field private static final NETWORK_NOT_AVAILABLE_ZH_CN:Ljava/lang/String; = "\u65e0\u6cd5\u8fde\u63a5\u5230\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u914d\u7f6e"

.field private static final NETWORK_NOT_AVAILABLE_ZH_TW:Ljava/lang/String; = "\u7121\u6cd5\u9023\u63a5\u5230\u7db2\u7edc\uff0c\u8acb\u6aa2\u67e5\u7db2\u7edc\u914d\u7f6e"

.field private static final PRE_INSTALL_DRAWBLE_PATHS:[Ljava/lang/String;

.field public static final dimen_dialog_bottom_margin:I = 0x4

.field public static final dimen_dialog_left_margin:I = 0x1

.field public static final dimen_dialog_right_margin:I = 0x3

.field public static final dimen_dialog_top_margin:I = 0x2

.field public static final drawable_dialog_background:I = 0x1

.field public static final drawable_dialog_close_button:I = 0x2

.field private static final sDrawableMap:Landroid/util/SparseArray;

.field private static final sLanguageMap:Ljava/util/HashMap;

.field private static final sLayoutMap:Landroid/util/SparseIntArray;

.field public static final string_loading:I = 0x1

.field public static final string_network_not_available:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/16 v6, 0xa

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 202
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "drawable-xxhdpi"

    aput-object v3, v1, v2

    const-string v2, "drawable-xhdpi"

    aput-object v2, v1, v4

    const-string v2, "drawable-hdpi"

    aput-object v2, v1, v5

    .line 203
    const-string v2, "drawable-mdpi"

    aput-object v2, v1, v7

    const-string v2, "drawable-ldpi"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "drawable"

    aput-object v3, v1, v2

    .line 202
    sput-object v1, Lim/yixin/sdk/util/ResourceManager;->PRE_INSTALL_DRAWBLE_PATHS:[Ljava/lang/String;

    .line 226
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lim/yixin/sdk/util/ResourceManager;->sLayoutMap:Landroid/util/SparseIntArray;

    .line 227
    sget-object v1, Lim/yixin/sdk/util/ResourceManager;->sLayoutMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 228
    sget-object v1, Lim/yixin/sdk/util/ResourceManager;->sLayoutMap:Landroid/util/SparseIntArray;

    const/16 v2, 0x1e

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 229
    sget-object v1, Lim/yixin/sdk/util/ResourceManager;->sLayoutMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v7, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 230
    sget-object v1, Lim/yixin/sdk/util/ResourceManager;->sLayoutMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 231
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lim/yixin/sdk/util/ResourceManager;->sDrawableMap:Landroid/util/SparseArray;

    .line 232
    sget-object v1, Lim/yixin/sdk/util/ResourceManager;->sDrawableMap:Landroid/util/SparseArray;

    const-string v2, "yixin_sdk_dialog_bg.9.png"

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 233
    sget-object v1, Lim/yixin/sdk/util/ResourceManager;->sDrawableMap:Landroid/util/SparseArray;

    const-string v2, "ic_im_yixin_sdk_close.png"

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 234
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lim/yixin/sdk/util/ResourceManager;->sLanguageMap:Ljava/util/HashMap;

    .line 235
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 236
    .local v0, "stringMap":Landroid/util/SparseArray;
    const-string v1, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 237
    const-string v1, "\u65e0\u6cd5\u8fde\u63a5\u5230\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u914d\u7f6e"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 238
    sget-object v1, Lim/yixin/sdk/util/ResourceManager;->sLanguageMap:Ljava/util/HashMap;

    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "stringMap":Landroid/util/SparseArray;
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 240
    .restart local v0    # "stringMap":Landroid/util/SparseArray;
    const-string v1, "\u8f09\u5165\u4e2d..."

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 241
    const-string v1, "\u7121\u6cd5\u9023\u63a5\u5230\u7db2\u7edc\uff0c\u8acb\u6aa2\u67e5\u7db2\u7edc\u914d\u7f6e"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 242
    sget-object v1, Lim/yixin/sdk/util/ResourceManager;->sLanguageMap:Ljava/util/HashMap;

    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "stringMap":Landroid/util/SparseArray;
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 244
    .restart local v0    # "stringMap":Landroid/util/SparseArray;
    const-string v1, "Loading..."

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 245
    const-string v1, "Network is not available"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 246
    sget-object v1, Lim/yixin/sdk/util/ResourceManager;->sLanguageMap:Ljava/util/HashMap;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method private static extractDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 156
    .local v2, "inputStream":Ljava/io/InputStream;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 157
    .local v0, "dm":Landroid/util/DisplayMetrics;
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 158
    .local v3, "value":Landroid/util/TypedValue;
    iget v4, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v4, v3, Landroid/util/TypedValue;->density:I

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v3, v2, p1}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 160
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 161
    return-object v1
.end method

.method private static extractView(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "root"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 150
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 151
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public static getAppropriatePathOfDrawable(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 63
    const-class v5, Lim/yixin/sdk/util/ResourceManager;

    const-string v6, "id is NOT correct!"

    invoke-static {v5, v6}, Lim/yixin/sdk/util/SDKLogger;->e(Ljava/lang/Class;Ljava/lang/String;)V

    move-object v1, v4

    .line 81
    :cond_0
    :goto_0
    return-object v1

    .line 66
    :cond_1
    invoke-static {p0}, Lim/yixin/sdk/util/ResourceManager;->getCurrentDpiFolder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "pathPrefix":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "path":Ljava/lang/String;
    const-class v5, Lim/yixin/sdk/util/ResourceManager;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Maybe the appropriate path: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lim/yixin/sdk/util/SDKLogger;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 69
    invoke-static {p0, v1}, Lim/yixin/sdk/util/ResourceManager;->isFileExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 72
    const-class v5, Lim/yixin/sdk/util/ResourceManager;

    const-string v6, "Not the correct path, we need to find one..."

    invoke-static {v5, v6}, Lim/yixin/sdk/util/SDKLogger;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "bFound":Z
    sget-object v6, Lim/yixin/sdk/util/ResourceManager;->PRE_INSTALL_DRAWBLE_PATHS:[Ljava/lang/String;

    array-length v7, v6

    const/4 v5, 0x0

    :goto_1
    if-lt v5, v7, :cond_2

    .line 80
    const-class v5, Lim/yixin/sdk/util/ResourceManager;

    const-string v6, "Not find the appropriate path for drawable"

    invoke-static {v5, v6}, Lim/yixin/sdk/util/SDKLogger;->e(Ljava/lang/Class;Ljava/lang/String;)V

    move-object v1, v4

    .line 81
    goto :goto_0

    .line 74
    :cond_2
    aget-object v3, v6, v5

    .line 75
    .local v3, "preInstallDrawblePath":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {p0, v1}, Lim/yixin/sdk/util/ResourceManager;->isFileExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 74
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private static getCurrentDpiFolder(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0xf0

    const/16 v4, 0xa0

    const/16 v3, 0x78

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 135
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 136
    .local v0, "density":I
    if-gt v0, v3, :cond_0

    .line 137
    const-string v2, "drawable-ldpi"

    .line 145
    :goto_0
    return-object v2

    .line 138
    :cond_0
    if-le v0, v3, :cond_1

    if-gt v0, v4, :cond_1

    .line 139
    const-string v2, "drawable-mdpi"

    goto :goto_0

    .line 140
    :cond_1
    if-le v0, v4, :cond_2

    if-gt v0, v5, :cond_2

    .line 141
    const-string v2, "drawable-hdpi"

    goto :goto_0

    .line 142
    :cond_2
    if-le v0, v5, :cond_3

    const/16 v2, 0x140

    if-gt v0, v2, :cond_3

    .line 143
    const-string v2, "drawable-xhdpi"

    goto :goto_0

    .line 145
    :cond_3
    const-string v2, "drawable-xxhdpi"

    goto :goto_0
.end method

.method public static getDimensionPixelSize(I)I
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 52
    sget-object v0, Lim/yixin/sdk/util/ResourceManager;->sLayoutMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 42
    sget-object v1, Lim/yixin/sdk/util/ResourceManager;->sDrawableMap:Landroid/util/SparseArray;

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lim/yixin/sdk/util/ResourceManager;->getAppropriatePathOfDrawable(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "path":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lim/yixin/sdk/util/ResourceManager;->getDrawableFromAssert(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static getDrawableFromAssert(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "isNinePatch"    # Z

    .prologue
    .line 85
    const/4 v9, 0x0

    .line 86
    .local v9, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v11, 0x0

    .line 88
    .local v11, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    .line 89
    .local v7, "assetManager":Landroid/content/res/AssetManager;
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    .line 90
    if-eqz v11, :cond_2

    .line 91
    invoke-static {v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 92
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    .line 93
    .local v12, "metrics":Landroid/util/DisplayMetrics;
    if-eqz p2, :cond_0

    .line 94
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    .line 95
    .local v8, "config":Landroid/content/res/Configuration;
    new-instance v2, Landroid/content/res/Resources;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-direct {v2, v4, v12, v8}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 96
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v5, v6, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 97
    const/4 v6, 0x0

    .line 96
    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "config":Landroid/content/res/Configuration;
    .end local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v12    # "metrics":Landroid/util/DisplayMetrics;
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    move-object v9, v1

    .line 112
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v7    # "assetManager":Landroid/content/res/AssetManager;
    :goto_1
    return-object v9

    .line 99
    .restart local v3    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "metrics":Landroid/util/DisplayMetrics;
    :cond_0
    iget v4, v12, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 100
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 104
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "assetManager":Landroid/content/res/AssetManager;
    .end local v12    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v10

    .line 105
    .local v10, "e":Ljava/io/IOException;
    if-eqz v11, :cond_1

    .line 107
    :try_start_1
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_2
    move-object v1, v9

    .line 112
    .end local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 108
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v4

    goto :goto_2

    .end local v10    # "e":Ljava/io/IOException;
    .restart local v7    # "assetManager":Landroid/content/res/AssetManager;
    :cond_2
    move-object v1, v9

    .end local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public static getLanguage()Ljava/util/Locale;
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 57
    .local v0, "locale":Ljava/util/Locale;
    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .end local v0    # "locale":Ljava/util/Locale;
    :cond_0
    :goto_0
    return-object v0

    .line 58
    .restart local v0    # "locale":Ljava/util/Locale;
    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    goto :goto_0
.end method

.method public static getNinePatchDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 47
    sget-object v1, Lim/yixin/sdk/util/ResourceManager;->sDrawableMap:Landroid/util/SparseArray;

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lim/yixin/sdk/util/ResourceManager;->getAppropriatePathOfDrawable(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "path":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lim/yixin/sdk/util/ResourceManager;->getDrawableFromAssert(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 36
    invoke-static {}, Lim/yixin/sdk/util/ResourceManager;->getLanguage()Ljava/util/Locale;

    move-result-object v0

    .line 37
    .local v0, "locale":Ljava/util/Locale;
    sget-object v2, Lim/yixin/sdk/util/ResourceManager;->sLanguageMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 38
    .local v1, "stringMap":Landroid/util/SparseArray;
    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method private static isFileExisted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 116
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v3

    .line 120
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 121
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 122
    .local v2, "is":Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 123
    const-class v4, Lim/yixin/sdk/util/ResourceManager;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "file ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] existed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lim/yixin/sdk/util/SDKLogger;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    const/4 v3, 0x1

    goto :goto_0

    .line 128
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v2    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0
.end method
