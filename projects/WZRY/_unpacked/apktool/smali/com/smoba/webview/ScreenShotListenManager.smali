.class public Lcom/smoba/webview/ScreenShotListenManager;
.super Ljava/lang/Object;
.source "ScreenShotListenManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smoba/webview/ScreenShotListenManager$MediaContentObserver;,
        Lcom/smoba/webview/ScreenShotListenManager$OnScreenShotListener;
    }
.end annotation


# static fields
.field private static final KEYWORDS:[Ljava/lang/String;

.field private static final MEDIA_PROJECTIONS:[Ljava/lang/String;

.field private static final MEDIA_PROJECTIONS_API_16:[Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "CaptureScreen"

.field private static final sHasCallbackPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sScreenRealSize:Landroid/graphics/Point;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExternalObserver:Lcom/smoba/webview/ScreenShotListenManager$MediaContentObserver;

.field private mInternalObserver:Landroid/database/ContentObserver;

.field private mListener:Lcom/smoba/webview/ScreenShotListenManager$OnScreenShotListener;

.field private mStartListenTime:J

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-array v0, v4, [Ljava/lang/String;

    .line 34
    const-string v1, "_data"

    aput-object v1, v0, v2

    .line 35
    const-string v1, "datetaken"

    aput-object v1, v0, v3

    .line 33
    sput-object v0, Lcom/smoba/webview/ScreenShotListenManager;->MEDIA_PROJECTIONS:[Ljava/lang/String;

    .line 41
    new-array v0, v6, [Ljava/lang/String;

    .line 42
    const-string v1, "_data"

    aput-object v1, v0, v2

    .line 43
    const-string v1, "datetaken"

    aput-object v1, v0, v3

    .line 44
    const-string/jumbo v1, "width"

    aput-object v1, v0, v4

    .line 45
    const-string v1, "height"

    aput-object v1, v0, v5

    .line 41
    sput-object v0, Lcom/smoba/webview/ScreenShotListenManager;->MEDIA_PROJECTIONS_API_16:[Ljava/lang/String;

    .line 51
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    .line 52
    const-string v1, "screenshot"

    aput-object v1, v0, v2

    const-string v1, "screen_shot"

    aput-object v1, v0, v3

    const-string v1, "screen-shot"

    aput-object v1, v0, v4

    const-string v1, "screen shot"

    aput-object v1, v0, v5

    .line 53
    const-string v1, "screencapture"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "screen_capture"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "screen-capture"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "screen capture"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 54
    const-string v2, "screencap"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "screen_cap"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "screen-cap"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "screen cap"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "\u622a\u5c4f"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Screenshots"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "screenshots"

    aput-object v2, v0, v1

    .line 51
    sput-object v0, Lcom/smoba/webview/ScreenShotListenManager;->KEYWORDS:[Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smoba/webview/ScreenShotListenManager;->sHasCallbackPaths:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/smoba/webview/ScreenShotListenManager;->mUiHandler:Landroid/os/Handler;

    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    iput-object p1, p0, Lcom/smoba/webview/ScreenShotListenManager;->mContext:Landroid/content/Context;

    .line 92
    sget-object v0, Lcom/smoba/webview/ScreenShotListenManager;->sScreenRealSize:Landroid/graphics/Point;

    if-nez v0, :cond_1

    .line 93
    invoke-direct {p0}, Lcom/smoba/webview/ScreenShotListenManager;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v0

    sput-object v0, Lcom/smoba/webview/ScreenShotListenManager;->sScreenRealSize:Landroid/graphics/Point;

    .line 97
    :cond_1
    return-void
.end method

.method static synthetic access$0(Lcom/smoba/webview/ScreenShotListenManager;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/smoba/webview/ScreenShotListenManager;->handleMediaContentChange(Landroid/net/Uri;)V

    return-void
.end method

.method private static assertInMainThread()V
    .locals 5

    .prologue
    .line 340
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 341
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 342
    .local v0, "elements":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    .line 343
    .local v1, "methodMsg":Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    .line 344
    const/4 v2, 0x3

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v1

    .line 346
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Call the method must be in main thread: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 348
    .end local v0    # "elements":[Ljava/lang/StackTraceElement;
    .end local v1    # "methodMsg":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private checkCallback(Ljava/lang/String;)Z
    .locals 4
    .param p1, "imagePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 283
    sget-object v2, Lcom/smoba/webview/ScreenShotListenManager;->sHasCallbackPaths:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 284
    const/4 v1, 0x1

    .line 293
    :goto_0
    return v1

    .line 287
    :cond_0
    sget-object v2, Lcom/smoba/webview/ScreenShotListenManager;->sHasCallbackPaths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x14

    if-lt v2, v3, :cond_1

    .line 288
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v2, 0x5

    if-lt v0, v2, :cond_2

    .line 292
    .end local v0    # "i":I
    :cond_1
    sget-object v2, Lcom/smoba/webview/ScreenShotListenManager;->sHasCallbackPaths:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 289
    .restart local v0    # "i":I
    :cond_2
    sget-object v2, Lcom/smoba/webview/ScreenShotListenManager;->sHasCallbackPaths:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private checkScreenShot(Ljava/lang/String;JII)Z
    .locals 6
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "dateTaken"    # J
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 252
    iget-wide v2, p0, Lcom/smoba/webview/ScreenShotListenManager;->mStartListenTime:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_1

    .line 275
    :cond_0
    :goto_0
    return v1

    .line 261
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 265
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 269
    sget-object v3, Lcom/smoba/webview/ScreenShotListenManager;->KEYWORDS:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 270
    .local v0, "keyWork":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 271
    const/4 v1, 0x1

    goto :goto_0

    .line 269
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getImageSize(Ljava/lang/String;)Landroid/graphics/Point;
    .locals 4
    .param p1, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 226
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 227
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 228
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 229
    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method private getRealScreenSize()Landroid/graphics/Point;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 302
    const/4 v4, 0x0

    .line 304
    .local v4, "screenSize":Landroid/graphics/Point;
    :try_start_0
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 305
    .end local v4    # "screenSize":Landroid/graphics/Point;
    .local v5, "screenSize":Landroid/graphics/Point;
    :try_start_1
    iget-object v7, p0, Lcom/smoba/webview/ScreenShotListenManager;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 306
    .local v6, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 307
    .local v0, "defaultDisplay":Landroid/view/Display;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x11

    if-lt v7, v8, :cond_0

    .line 308
    invoke-virtual {v0, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v5

    .line 325
    .end local v0    # "defaultDisplay":Landroid/view/Display;
    .end local v5    # "screenSize":Landroid/graphics/Point;
    .end local v6    # "windowManager":Landroid/view/WindowManager;
    .restart local v4    # "screenSize":Landroid/graphics/Point;
    :goto_0
    return-object v4

    .line 311
    .end local v4    # "screenSize":Landroid/graphics/Point;
    .restart local v0    # "defaultDisplay":Landroid/view/Display;
    .restart local v5    # "screenSize":Landroid/graphics/Point;
    .restart local v6    # "windowManager":Landroid/view/WindowManager;
    :cond_0
    :try_start_2
    const-class v7, Landroid/view/Display;

    const-string v8, "getRawWidth"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 312
    .local v3, "mGetRawW":Ljava/lang/reflect/Method;
    const-class v7, Landroid/view/Display;

    const-string v8, "getRawHeight"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 314
    .local v2, "mGetRawH":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 315
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 313
    invoke-virtual {v5, v8, v7}, Landroid/graphics/Point;->set(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .line 317
    .end local v5    # "screenSize":Landroid/graphics/Point;
    .restart local v4    # "screenSize":Landroid/graphics/Point;
    goto :goto_0

    .end local v2    # "mGetRawH":Ljava/lang/reflect/Method;
    .end local v3    # "mGetRawW":Ljava/lang/reflect/Method;
    .end local v4    # "screenSize":Landroid/graphics/Point;
    .restart local v5    # "screenSize":Landroid/graphics/Point;
    :catch_0
    move-exception v1

    .line 318
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Point;->set(II)V

    .line 319
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v4, v5

    .line 322
    .end local v5    # "screenSize":Landroid/graphics/Point;
    .restart local v4    # "screenSize":Landroid/graphics/Point;
    goto :goto_0

    .end local v0    # "defaultDisplay":Landroid/view/Display;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v6    # "windowManager":Landroid/view/WindowManager;
    :catch_1
    move-exception v1

    .line 323
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 322
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "screenSize":Landroid/graphics/Point;
    .restart local v5    # "screenSize":Landroid/graphics/Point;
    :catch_2
    move-exception v1

    move-object v4, v5

    .end local v5    # "screenSize":Landroid/graphics/Point;
    .restart local v4    # "screenSize":Landroid/graphics/Point;
    goto :goto_1
.end method

.method private handleMediaContentChange(Landroid/net/Uri;)V
    .locals 15
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 168
    const/4 v6, 0x0

    .line 173
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/smoba/webview/ScreenShotListenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 175
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x10

    if-ge v13, v14, :cond_1

    sget-object v2, Lcom/smoba/webview/ScreenShotListenManager;->MEDIA_PROJECTIONS:[Ljava/lang/String;

    .line 176
    :goto_0
    const/4 v3, 0x0

    .line 177
    const/4 v4, 0x0

    .line 178
    const-string v5, "date_added desc limit 1"

    move-object/from16 v1, p1

    .line 173
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 181
    if-nez v6, :cond_2

    .line 219
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 223
    :cond_0
    :goto_1
    return-void

    .line 175
    :cond_1
    :try_start_1
    sget-object v2, Lcom/smoba/webview/ScreenShotListenManager;->MEDIA_PROJECTIONS_API_16:[Ljava/lang/String;

    goto :goto_0

    .line 184
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 219
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 189
    :cond_3
    :try_start_2
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 190
    .local v7, "dataIndex":I
    const-string v0, "datetaken"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 191
    .local v8, "dateTakenIndex":I
    const/4 v12, -0x1

    .line 192
    .local v12, "widthIndex":I
    const/4 v10, -0x1

    .line 193
    .local v10, "heightIndex":I
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x10

    if-lt v0, v13, :cond_4

    .line 194
    const-string/jumbo v0, "width"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 195
    const-string v0, "height"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 199
    :cond_4
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "data":Ljava/lang/String;
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 201
    .local v2, "dateTaken":J
    const/4 v4, 0x0

    .line 202
    .local v4, "width":I
    const/4 v5, 0x0

    .line 203
    .local v5, "height":I
    if-ltz v12, :cond_5

    if-ltz v10, :cond_5

    .line 204
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 205
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 212
    :goto_2
    const-string v0, "CaptureScreen"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "handleMediaContentChange "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    .line 213
    invoke-direct/range {v0 .. v5}, Lcom/smoba/webview/ScreenShotListenManager;->handleMediaRowData(Ljava/lang/String;JII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 208
    :cond_5
    :try_start_3
    invoke-direct {p0, v1}, Lcom/smoba/webview/ScreenShotListenManager;->getImageSize(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v11

    .line 209
    .local v11, "size":Landroid/graphics/Point;
    iget v4, v11, Landroid/graphics/Point;->x:I

    .line 210
    iget v5, v11, Landroid/graphics/Point;->y:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 215
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "dateTaken":J
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v7    # "dataIndex":I
    .end local v8    # "dateTakenIndex":I
    .end local v10    # "heightIndex":I
    .end local v11    # "size":Landroid/graphics/Point;
    .end local v12    # "widthIndex":I
    :catch_0
    move-exception v9

    .line 216
    .local v9, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 219
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 218
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 219
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v13

    if-nez v13, :cond_6

    .line 220
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_6
    throw v0
.end method

.method private handleMediaRowData(Ljava/lang/String;JII)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "dateTaken"    # J
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 234
    invoke-direct/range {p0 .. p5}, Lcom/smoba/webview/ScreenShotListenManager;->checkScreenShot(Ljava/lang/String;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/smoba/webview/ScreenShotListenManager;->mListener:Lcom/smoba/webview/ScreenShotListenManager$OnScreenShotListener;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/smoba/webview/ScreenShotListenManager;->checkCallback(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/smoba/webview/ScreenShotListenManager;->mListener:Lcom/smoba/webview/ScreenShotListenManager$OnScreenShotListener;

    invoke-interface {v0, p1}, Lcom/smoba/webview/ScreenShotListenManager$OnScreenShotListener;->onShot(Ljava/lang/String;)V

    .line 241
    :cond_0
    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/smoba/webview/ScreenShotListenManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    invoke-static {}, Lcom/smoba/webview/ScreenShotListenManager;->assertInMainThread()V

    .line 101
    new-instance v0, Lcom/smoba/webview/ScreenShotListenManager;

    invoke-direct {v0, p0}, Lcom/smoba/webview/ScreenShotListenManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public setListener(Lcom/smoba/webview/ScreenShotListenManager$OnScreenShotListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/smoba/webview/ScreenShotListenManager$OnScreenShotListener;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/smoba/webview/ScreenShotListenManager;->mListener:Lcom/smoba/webview/ScreenShotListenManager$OnScreenShotListener;

    .line 333
    return-void
.end method

.method public startListen()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 108
    invoke-static {}, Lcom/smoba/webview/ScreenShotListenManager;->assertInMainThread()V

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smoba/webview/ScreenShotListenManager;->mStartListenTime:J

    .line 116
    new-instance v0, Lcom/smoba/webview/ScreenShotListenManager$MediaContentObserver;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/smoba/webview/ScreenShotListenManager;->mUiHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/smoba/webview/ScreenShotListenManager$MediaContentObserver;-><init>(Lcom/smoba/webview/ScreenShotListenManager;Landroid/net/Uri;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/smoba/webview/ScreenShotListenManager;->mInternalObserver:Landroid/database/ContentObserver;

    .line 117
    new-instance v0, Lcom/smoba/webview/ScreenShotListenManager$MediaContentObserver;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/smoba/webview/ScreenShotListenManager;->mUiHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/smoba/webview/ScreenShotListenManager$MediaContentObserver;-><init>(Lcom/smoba/webview/ScreenShotListenManager;Landroid/net/Uri;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/smoba/webview/ScreenShotListenManager;->mExternalObserver:Lcom/smoba/webview/ScreenShotListenManager$MediaContentObserver;

    .line 120
    iget-object v0, p0, Lcom/smoba/webview/ScreenShotListenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 121
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 123
    iget-object v2, p0, Lcom/smoba/webview/ScreenShotListenManager;->mInternalObserver:Landroid/database/ContentObserver;

    .line 120
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 125
    iget-object v0, p0, Lcom/smoba/webview/ScreenShotListenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 126
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 128
    iget-object v2, p0, Lcom/smoba/webview/ScreenShotListenManager;->mExternalObserver:Lcom/smoba/webview/ScreenShotListenManager$MediaContentObserver;

    .line 125
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 130
    return-void
.end method

.method public stopListen()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 136
    invoke-static {}, Lcom/smoba/webview/ScreenShotListenManager;->assertInMainThread()V

    .line 139
    iget-object v1, p0, Lcom/smoba/webview/ScreenShotListenManager;->mInternalObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/smoba/webview/ScreenShotListenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/smoba/webview/ScreenShotListenManager;->mInternalObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    iput-object v4, p0, Lcom/smoba/webview/ScreenShotListenManager;->mInternalObserver:Landroid/database/ContentObserver;

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/smoba/webview/ScreenShotListenManager;->mExternalObserver:Lcom/smoba/webview/ScreenShotListenManager$MediaContentObserver;

    if-eqz v1, :cond_1

    .line 149
    :try_start_1
    iget-object v1, p0, Lcom/smoba/webview/ScreenShotListenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/smoba/webview/ScreenShotListenManager;->mExternalObserver:Lcom/smoba/webview/ScreenShotListenManager$MediaContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    :goto_1
    iput-object v4, p0, Lcom/smoba/webview/ScreenShotListenManager;->mExternalObserver:Lcom/smoba/webview/ScreenShotListenManager$MediaContentObserver;

    .line 157
    :cond_1
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/smoba/webview/ScreenShotListenManager;->mStartListenTime:J

    .line 161
    iput-object v4, p0, Lcom/smoba/webview/ScreenShotListenManager;->mListener:Lcom/smoba/webview/ScreenShotListenManager$OnScreenShotListener;

    .line 162
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 150
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 151
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
