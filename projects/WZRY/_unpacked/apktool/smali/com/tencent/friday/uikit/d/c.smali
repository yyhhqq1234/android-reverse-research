.class public Lcom/tencent/friday/uikit/d/c;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Lcom/tencent/friday/uikit/d/b;


# static fields
.field private static volatile b:Lcom/tencent/friday/uikit/d/c;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/tencent/friday/uikit/d/b/a;

.field private d:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/friday/uikit/d/c;->b:Lcom/tencent/friday/uikit/d/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/tencent/friday/uikit/d/c;)Lcom/tencent/friday/uikit/d/b/a;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/c;->c:Lcom/tencent/friday/uikit/d/b/a;

    return-object v0
.end method

.method private a([BI)Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneCallbackData_ScreenShot;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 250
    new-instance v6, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneCallbackData_ScreenShot;

    invoke-direct {v6}, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneCallbackData_ScreenShot;-><init>()V

    .line 251
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;

    new-instance v2, Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    const-string v1, "/sdcard/tencent/glory/map"

    invoke-direct {v2, v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKString;-><init>(Ljava/lang/String;)V

    move v1, p2

    move-object v3, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;-><init>(ILcom/tencent/friday/uikit/jce/UnityKit/UKString;[BLcom/tencent/friday/uikit/jce/UnityKit/UKString;Lcom/tencent/friday/uikit/jce/UnityKit/UKNinePatchConfig;)V

    invoke-virtual {v6, v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneCallbackData_ScreenShot;->setImage(Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;)V

    .line 252
    return-object v6
.end method

.method private a(Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;)V
    .locals 4

    .prologue
    .line 210
    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->getScale()Lcom/tencent/friday/uikit/jce/UnityKit/UKFloat;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/c/b;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKFloat;)F

    move-result v2

    .line 212
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 213
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->getImageType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 218
    :goto_0
    const/4 v1, 0x0

    .line 220
    :try_start_0
    iget-object v3, p0, Lcom/tencent/friday/uikit/d/c;->c:Lcom/tencent/friday/uikit/d/b/a;

    invoke-static {v3, v2, v0}, Lcom/tencent/friday/uikit/a/d;->a(Landroid/view/View;FLandroid/graphics/Bitmap$CompressFormat;)[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 228
    :goto_1
    invoke-static {}, Lcom/tencent/friday/uikit/c/b;->b()Lcom/tencent/friday/uikit/c/b;

    move-result-object v1

    invoke-direct {p0}, Lcom/tencent/friday/uikit/d/c;->g()Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;->getImageType()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/tencent/friday/uikit/d/c;->a([BI)Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneCallbackData_ScreenShot;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/friday/uikit/c/b;->a(Lcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;)V

    .line 233
    :cond_0
    return-void

    .line 215
    :pswitch_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    const-string v0, "screen shot oom"

    invoke-static {v0}, Lcom/tencent/friday/uikit/b/b/b;->a(Ljava/lang/String;)V

    move-object v0, v1

    .line 226
    goto :goto_1

    .line 223
    :catch_1
    move-exception v0

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screen shot exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/d/a;->c(Ljava/lang/String;)V

    .line 225
    const-string v0, "screen shot exception"

    invoke-static {v0}, Lcom/tencent/friday/uikit/b/b/b;->a(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static b()Lcom/tencent/friday/uikit/d/c;
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lcom/tencent/friday/uikit/d/c;->b:Lcom/tencent/friday/uikit/d/c;

    if-nez v0, :cond_0

    .line 63
    const-class v1, Lcom/tencent/friday/uikit/d/c;

    monitor-enter v1

    .line 64
    :try_start_0
    new-instance v0, Lcom/tencent/friday/uikit/d/c;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/d/c;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/d/c;->b:Lcom/tencent/friday/uikit/d/c;

    .line 65
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_0
    sget-object v0, Lcom/tencent/friday/uikit/d/c;->b:Lcom/tencent/friday/uikit/d/c;

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/c;->c:Lcom/tencent/friday/uikit/d/b/a;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/c;->c:Lcom/tencent/friday/uikit/d/b/a;

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/d/b/a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/c;->c:Lcom/tencent/friday/uikit/d/b/a;

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/d/b/a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 195
    iget-object v1, p0, Lcom/tencent/friday/uikit/d/c;->c:Lcom/tencent/friday/uikit/d/b/a;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/c;->c:Lcom/tencent/friday/uikit/d/b/a;

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/d/b/a;->a()V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/friday/uikit/d/c;->c:Lcom/tencent/friday/uikit/d/b/a;

    .line 199
    invoke-static {}, Lcom/tencent/friday/uikit/c/b;->b()Lcom/tencent/friday/uikit/c/b;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/friday/uikit/c/b;->a(I)V

    .line 202
    :cond_1
    invoke-static {}, Lcom/tencent/friday/uikit/b/a/b;->a()Lcom/tencent/friday/uikit/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/b/a/b;->b()V

    .line 203
    invoke-static {}, Lcom/tencent/friday/uikit/a/b/c;->a()V

    .line 204
    return-void
.end method

.method private g()Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;
    .locals 3

    .prologue
    .line 239
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;-><init>()V

    .line 240
    new-instance v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget-object v2, p0, Lcom/tencent/friday/uikit/d/c;->c:Lcom/tencent/friday/uikit/d/b/a;

    const v2, -0x133a256

    invoke-direct {v1, v2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->setTargetID(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V

    .line 241
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->setCallbackType(I)V

    .line 242
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;->setTargetType(I)V

    .line 243
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/tencent/friday/uikit/d/c;->f()V

    .line 261
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/c;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 263
    :cond_0
    invoke-static {}, Lcom/tencent/friday/uikit/c/b;->b()Lcom/tencent/friday/uikit/c/b;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/friday/uikit/c/b;->a(I)V

    .line 264
    invoke-static {}, Lcom/tencent/friday/uikit/d/c/c;->a()Lcom/tencent/friday/uikit/d/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/d/c/c;->b()V

    .line 265
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/friday/uikit/d/c;->a:Ljava/lang/ref/WeakReference;

    .line 78
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/b/b;->a(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method public a(Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;)V
    .locals 6

    .prologue
    .line 82
    iget-object v0, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->releaseParameter:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_release;

    if-eqz v0, :cond_1

    .line 84
    invoke-direct {p0}, Lcom/tencent/friday/uikit/d/c;->f()V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    if-eqz v0, :cond_6

    .line 87
    iget-object v0, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;->getVal()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 88
    invoke-static {}, Lcom/tencent/friday/uikit/d/c;->b()Lcom/tencent/friday/uikit/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/d/c;->d()V

    .line 115
    :cond_2
    :goto_1
    iget-object v0, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->addPage:Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/friday/uikit/d/c;->c:Lcom/tencent/friday/uikit/d/b/a;

    if-eqz v0, :cond_3

    .line 116
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/c;->c:Lcom/tencent/friday/uikit/d/b/a;

    iget-object v1, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->addPage:Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;

    invoke-virtual {v0, v1}, Lcom/tencent/friday/uikit/d/b/a;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;)V

    .line 119
    :cond_3
    iget-object v0, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->removePageByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/friday/uikit/d/c;->c:Lcom/tencent/friday/uikit/d/b/a;

    if-eqz v0, :cond_4

    .line 120
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/c;->c:Lcom/tencent/friday/uikit/d/b/a;

    iget-object v1, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->removePageByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget v1, v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->val:I

    invoke-virtual {v0, v1}, Lcom/tencent/friday/uikit/d/b/a;->a(I)V

    .line 123
    :cond_4
    iget-object v0, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->screenShot:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/friday/uikit/d/c;->c:Lcom/tencent/friday/uikit/d/b/a;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->screenShot:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;

    invoke-direct {p0, v0}, Lcom/tencent/friday/uikit/d/c;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;)V

    goto :goto_0

    .line 90
    :cond_5
    invoke-static {}, Lcom/tencent/friday/uikit/d/c;->b()Lcom/tencent/friday/uikit/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/d/c;->c()V

    goto :goto_1

    .line 92
    :cond_6
    iget-object v0, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->initParameter:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->initParameter:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;->getDatumScreenSize()Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/c;->e()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 94
    iget-object v0, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->initParameter:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;->getDatumScreenSize()Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;->getWidth()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v3

    .line 95
    iget-object v0, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->initParameter:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;->getDatumScreenSize()Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;->getHeight()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v4

    .line 97
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/c;->e()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 99
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 100
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/c;->e()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 102
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    if-le v5, v2, :cond_8

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rootView size\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/friday/uikit/a/d/a;->c(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    .line 105
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    move v2, v1

    .line 107
    :goto_2
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/c;->e()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v4, v2, v0}, Lcom/tencent/friday/uikit/a/e;->a(Landroid/content/Context;IIII)V

    .line 110
    :cond_7
    iget-object v0, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->initParameter:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;->getRect()Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/friday/uikit/d/c;->d:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    .line 112
    invoke-static {}, Lcom/tencent/friday/uikit/d/c;->b()Lcom/tencent/friday/uikit/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/d/c;->c()V

    goto/16 :goto_1

    :cond_8
    move v0, v1

    goto :goto_2
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 133
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/c;->e()Landroid/app/Activity;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_3

    .line 135
    iget-object v1, p0, Lcom/tencent/friday/uikit/d/c;->c:Lcom/tencent/friday/uikit/d/b/a;

    if-nez v1, :cond_0

    .line 136
    new-instance v1, Lcom/tencent/friday/uikit/d/b/a;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/friday/uikit/d/b/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/friday/uikit/d/c;->c:Lcom/tencent/friday/uikit/d/b/a;

    .line 138
    :cond_0
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 139
    iget-object v1, p0, Lcom/tencent/friday/uikit/d/c;->d:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/tencent/friday/uikit/d/c;->c:Lcom/tencent/friday/uikit/d/b/a;

    iget-object v3, p0, Lcom/tencent/friday/uikit/d/c;->d:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-virtual {v3}, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;->getOrigin()Lcom/tencent/friday/uikit/jce/UnityKit/UKPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPoint;->getX()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Lcom/tencent/friday/uikit/a/e;->a(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/tencent/friday/uikit/d/b/a;->setX(F)V

    .line 141
    iget-object v1, p0, Lcom/tencent/friday/uikit/d/c;->c:Lcom/tencent/friday/uikit/d/b/a;

    iget-object v3, p0, Lcom/tencent/friday/uikit/d/c;->d:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-virtual {v3}, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;->getOrigin()Lcom/tencent/friday/uikit/jce/UnityKit/UKPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPoint;->getY()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Lcom/tencent/friday/uikit/a/e;->a(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/tencent/friday/uikit/d/b/a;->setY(F)V

    .line 142
    iget-object v1, p0, Lcom/tencent/friday/uikit/d/c;->d:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;->getSize()Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;->getWidth()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/tencent/friday/uikit/a/e;->a(F)I

    move-result v1

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 143
    iget-object v1, p0, Lcom/tencent/friday/uikit/d/c;->d:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;->getSize()Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;->getHeight()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/tencent/friday/uikit/a/e;->a(F)I

    move-result v1

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 146
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 147
    iget-object v1, p0, Lcom/tencent/friday/uikit/d/c;->c:Lcom/tencent/friday/uikit/d/b/a;

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/d/b/a;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 148
    iget-object v1, p0, Lcom/tencent/friday/uikit/d/c;->c:Lcom/tencent/friday/uikit/d/b/a;

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/d/b/a;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 149
    iget-object v3, p0, Lcom/tencent/friday/uikit/d/c;->c:Lcom/tencent/friday/uikit/d/b/a;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 151
    :cond_2
    iget-object v1, p0, Lcom/tencent/friday/uikit/d/c;->c:Lcom/tencent/friday/uikit/d/b/a;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    invoke-static {}, Lcom/tencent/friday/uikit/c/b;->b()Lcom/tencent/friday/uikit/c/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/friday/uikit/c/b;->a(I)V

    .line 154
    :cond_3
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/c;->e()Landroid/app/Activity;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_0

    .line 163
    new-instance v1, Lcom/tencent/friday/uikit/d/c$1;

    invoke-direct {v1, p0, v0}, Lcom/tencent/friday/uikit/d/c$1;-><init>(Lcom/tencent/friday/uikit/d/c;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 170
    invoke-static {}, Lcom/tencent/friday/uikit/c/b;->b()Lcom/tencent/friday/uikit/c/b;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/friday/uikit/c/b;->a(I)V

    .line 173
    :cond_0
    return-void
.end method

.method public e()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/c;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 185
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
