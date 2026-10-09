.class public Lcom/tencent/msdk/realnameauth/ImageDialog;
.super Ljava/lang/Object;
.source "ImageDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/realnameauth/ImageDialog$EventCallback;
    }
.end annotation


# static fields
.field private static final MSG_CALLBACK:I = 0x1

.field private static final MSG_HIDEDIALOG:I = 0x3

.field private static final MSG_SHOWDIALOG:I = 0x2

.field private static final imageRation:F = 0.558f

.field private static final matchScale:F = 0.7f

.field private static final nomatchScale:F = 0.9f


# instance fields
.field private activity:Landroid/app/Activity;

.field private defaultImageId:I

.field private dialogScale:F

.field private eventCallback:Lcom/tencent/msdk/realnameauth/ImageDialog$EventCallback;

.field private imageBitmap:Landroid/graphics/Bitmap;

.field private imageDialog:Landroid/app/Dialog;

.field private imageDir:Ljava/lang/String;

.field private imageView:Landroid/widget/ImageView;

.field private initSucceed:Z

.field private mainHandler:Landroid/os/Handler;

.field private params:Lcom/tencent/msdk/realnameauth/model/CloudParameters;

.field private parentLayout:Landroid/view/ViewGroup;

.field private screenHeight:I

.field private screenWidth:I

.field private useLandscapeDialog:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/tencent/msdk/realnameauth/model/CloudParameters;Lcom/tencent/msdk/realnameauth/ImageDialog$EventCallback;)V
    .locals 2
    .param p1, "gameActivity"    # Landroid/app/Activity;
    .param p2, "parameters"    # Lcom/tencent/msdk/realnameauth/model/CloudParameters;
    .param p3, "callback"    # Lcom/tencent/msdk/realnameauth/ImageDialog$EventCallback;

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v0, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->initSucceed:Z

    .line 50
    iput-boolean v0, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->useLandscapeDialog:Z

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->imageBitmap:Landroid/graphics/Bitmap;

    .line 271
    new-instance v0, Lcom/tencent/msdk/realnameauth/ImageDialog$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/msdk/realnameauth/ImageDialog$3;-><init>(Lcom/tencent/msdk/realnameauth/ImageDialog;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->mainHandler:Landroid/os/Handler;

    .line 62
    iput-object p1, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->activity:Landroid/app/Activity;

    .line 63
    iput-object p2, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->params:Lcom/tencent/msdk/realnameauth/model/CloudParameters;

    .line 64
    iput-object p3, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->eventCallback:Lcom/tencent/msdk/realnameauth/ImageDialog$EventCallback;

    .line 65
    invoke-direct {p0}, Lcom/tencent/msdk/realnameauth/ImageDialog;->initView()V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/msdk/realnameauth/ImageDialog;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/realnameauth/ImageDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/tencent/msdk/realnameauth/ImageDialog;->sendCallback(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/msdk/realnameauth/ImageDialog;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/realnameauth/ImageDialog;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->imageBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/tencent/msdk/realnameauth/ImageDialog;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/realnameauth/ImageDialog;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->imageBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/tencent/msdk/realnameauth/ImageDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/realnameauth/ImageDialog;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tencent/msdk/realnameauth/ImageDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/realnameauth/ImageDialog;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->imageDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tencent/msdk/realnameauth/ImageDialog;)Lcom/tencent/msdk/realnameauth/ImageDialog$EventCallback;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/realnameauth/ImageDialog;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->eventCallback:Lcom/tencent/msdk/realnameauth/ImageDialog$EventCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tencent/msdk/realnameauth/ImageDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/realnameauth/ImageDialog;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/tencent/msdk/realnameauth/ImageDialog;->hideInMainThread()V

    return-void
.end method

.method static synthetic access$600(Lcom/tencent/msdk/realnameauth/ImageDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/realnameauth/ImageDialog;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/tencent/msdk/realnameauth/ImageDialog;->showInMainThread()V

    return-void
.end method

.method private downImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "imageName"    # Ljava/lang/String;
    .param p3, "saveDirPath"    # Ljava/lang/String;

    .prologue
    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v0, "images":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/msdk/realnameauth/model/ImageDownloadInfo;>;"
    new-instance v1, Lcom/tencent/msdk/realnameauth/model/ImageDownloadInfo;

    invoke-direct {v1, p1, p2, p3}, Lcom/tencent/msdk/realnameauth/model/ImageDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance v1, Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;

    new-instance v2, Lcom/tencent/msdk/realnameauth/ImageDialog$2;

    invoke-direct {v2, p0, p2}, Lcom/tencent/msdk/realnameauth/ImageDialog$2;-><init>(Lcom/tencent/msdk/realnameauth/ImageDialog;Ljava/lang/String;)V

    invoke-direct {v1, v0, v2}, Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;-><init>(Ljava/util/ArrayList;Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread$ImageDownloadCallback;)V

    .line 258
    invoke-virtual {v1}, Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;->start()V

    .line 259
    return-void
.end method

.method private hideInMainThread()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->imageDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->imageDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->imageDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 298
    iget-object v0, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->imageBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->imageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->imageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 302
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 171
    :try_start_0
    new-instance v4, Lcom/tencent/msdk/realnameauth/tool/ResHelper;

    iget-object v6, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->activity:Landroid/app/Activity;

    invoke-direct {v4, v6}, Lcom/tencent/msdk/realnameauth/tool/ResHelper;-><init>(Landroid/app/Activity;)V

    .line 172
    .local v4, "resHelper":Lcom/tencent/msdk/realnameauth/tool/ResHelper;
    const-string v6, "msdk_realname_highrisk"

    const-string v7, "drawable"

    invoke-virtual {v4, v6, v7}, Lcom/tencent/msdk/realnameauth/tool/ResHelper;->getResByType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->defaultImageId:I

    .line 173
    new-instance v6, Landroid/app/Dialog;

    iget-object v7, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->activity:Landroid/app/Activity;

    const-string v8, "ImageDialog"

    const-string/jumbo v9, "style"

    invoke-virtual {v4, v8, v9}, Lcom/tencent/msdk/realnameauth/tool/ResHelper;->getResByType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->imageDialog:Landroid/app/Dialog;

    .line 174
    iget-object v6, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->imageDialog:Landroid/app/Dialog;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 175
    iget-object v6, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->imageDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 176
    .local v0, "dialogWindow":Landroid/view/Window;
    iget-object v6, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v7, 0x400

    invoke-virtual {v0, v6, v7}, Landroid/view/Window;->setFlags(II)V

    .line 177
    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-virtual {v0, v6, v7}, Landroid/view/Window;->setLayout(II)V

    .line 179
    new-instance v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->imageView:Landroid/widget/ImageView;

    .line 180
    iget-object v6, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->imageView:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 181
    iget-object v6, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->imageView:Landroid/widget/ImageView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 182
    iget-object v6, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->imageView:Landroid/widget/ImageView;

    new-instance v7, Lcom/tencent/msdk/realnameauth/ImageDialog$1;

    invoke-direct {v7, p0}, Lcom/tencent/msdk/realnameauth/ImageDialog$1;-><init>(Lcom/tencent/msdk/realnameauth/ImageDialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->parentLayout:Landroid/view/ViewGroup;

    .line 190
    iget-object v6, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->parentLayout:Landroid/view/ViewGroup;

    if-nez v6, :cond_0

    .line 191
    const-string v6, "get imageDialog decorView error"

    invoke-static {v6}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->logError(Ljava/lang/String;)V

    .line 216
    .end local v0    # "dialogWindow":Landroid/view/Window;
    .end local v4    # "resHelper":Lcom/tencent/msdk/realnameauth/tool/ResHelper;
    :goto_0
    return-void

    .line 195
    .restart local v0    # "dialogWindow":Landroid/view/Window;
    .restart local v4    # "resHelper":Lcom/tencent/msdk/realnameauth/tool/ResHelper;
    :cond_0
    iget-object v6, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->activity:Landroid/app/Activity;

    const-string/jumbo v7, "window"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 196
    .local v5, "wm":Landroid/view/WindowManager;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 197
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 198
    iget v6, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v6, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->screenWidth:I

    .line 199
    iget v6, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v6, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->screenHeight:I

    .line 201
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/MSDK/realnameauth/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->imageDir:Ljava/lang/String;

    .line 202
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->imageDir:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    .local v2, "imageDirFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 204
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_1

    .line 205
    const-string v6, "create image dir error!"

    invoke-static {v6}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->logError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 211
    .end local v0    # "dialogWindow":Landroid/view/Window;
    .end local v2    # "imageDirFile":Ljava/io/File;
    .end local v3    # "metrics":Landroid/util/DisplayMetrics;
    .end local v4    # "resHelper":Lcom/tencent/msdk/realnameauth/tool/ResHelper;
    .end local v5    # "wm":Landroid/view/WindowManager;
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "get window of image dialog error!"

    invoke-static {v6}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->logError(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 214
    iput-boolean v10, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->initSucceed:Z

    goto :goto_0

    .line 210
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "dialogWindow":Landroid/view/Window;
    .restart local v2    # "imageDirFile":Ljava/io/File;
    .restart local v3    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v4    # "resHelper":Lcom/tencent/msdk/realnameauth/tool/ResHelper;
    .restart local v5    # "wm":Landroid/view/WindowManager;
    :cond_1
    const/4 v6, 0x1

    :try_start_1
    iput-boolean v6, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->initSucceed:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private sendCallback(ILjava/lang/String;)V
    .locals 2
    .param p1, "flag"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 262
    iget-object v1, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->mainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 264
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 265
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 266
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 267
    iget-object v1, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 269
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private showInMainThread()V
    .locals 5

    .prologue
    const v4, 0x3f0ed917    # 0.558f

    .line 306
    iget-boolean v1, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->useLandscapeDialog:Z

    if-eqz v1, :cond_0

    .line 307
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->screenWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->dialogScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->screenWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->dialogScale:F

    mul-float/2addr v2, v3

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 313
    .local v0, "pm":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    iget-object v1, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    iget-object v1, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->imageBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 315
    const-string/jumbo v1, "use default image"

    invoke-static {v1}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->logDebug(Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->imageView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->defaultImageId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 320
    :goto_1
    iget-object v1, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->parentLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 321
    iget-object v1, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->imageDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 322
    return-void

    .line 310
    .end local v0    # "pm":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->screenHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->dialogScale:F

    mul-float/2addr v1, v2

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iget v2, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->screenHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->dialogScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .restart local v0    # "pm":Landroid/view/ViewGroup$LayoutParams;
    goto :goto_0

    .line 318
    :cond_1
    iget-object v1, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->imageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method


# virtual methods
.method public show()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const v10, 0x3f666666    # 0.9f

    const v9, 0x3f333333    # 0.7f

    const/4 v8, 0x1

    .line 79
    iget-boolean v7, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->initSucceed:Z

    if-nez v7, :cond_1

    .line 80
    const/4 v7, -0x3

    const-string v8, "init imageDialog fail"

    invoke-direct {p0, v7, v8}, Lcom/tencent/msdk/realnameauth/ImageDialog;->sendCallback(ILjava/lang/String;)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const/4 v5, 0x0

    .line 86
    .local v5, "useDefaultImage":Z
    iget-object v7, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v11, v7, :cond_4

    .line 88
    iget-object v7, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->params:Lcom/tencent/msdk/realnameauth/model/CloudParameters;

    iget-object v7, v7, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->imageHorizontalUrl:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->params:Lcom/tencent/msdk/realnameauth/model/CloudParameters;

    iget-object v7, v7, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->imageHorizontalKey:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 90
    const-string v7, "landscape game, use landscape image"

    invoke-static {v7}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->logDebug(Ljava/lang/String;)V

    .line 91
    iput-boolean v8, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->useLandscapeDialog:Z

    .line 92
    iput v9, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->dialogScale:F

    .line 125
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dialog ration:0.558, scale:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->dialogScale:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->logDebug(Ljava/lang/String;)V

    .line 127
    if-eqz v5, :cond_7

    .line 128
    iget-object v7, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->mainHandler:Landroid/os/Handler;

    if-eqz v7, :cond_0

    .line 129
    iget-object v7, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 130
    .local v4, "msg":Landroid/os/Message;
    iput v11, v4, Landroid/os/Message;->what:I

    .line 131
    iget-object v7, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 93
    .end local v4    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v7, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->params:Lcom/tencent/msdk/realnameauth/model/CloudParameters;

    iget-object v7, v7, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->imageVerticalUrl:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->params:Lcom/tencent/msdk/realnameauth/model/CloudParameters;

    iget-object v7, v7, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->imageVerticalKey:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 95
    const-string v7, "landscape game, use portrait image"

    invoke-static {v7}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->logDebug(Ljava/lang/String;)V

    .line 96
    iput-boolean v12, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->useLandscapeDialog:Z

    .line 97
    iput v10, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->dialogScale:F

    goto :goto_1

    .line 100
    :cond_3
    const-string v7, "landscape game, use default image"

    invoke-static {v7}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->logDebug(Ljava/lang/String;)V

    .line 101
    iput-boolean v8, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->useLandscapeDialog:Z

    .line 102
    iput v9, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->dialogScale:F

    .line 103
    const/4 v5, 0x1

    goto :goto_1

    .line 107
    :cond_4
    iget-object v7, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->params:Lcom/tencent/msdk/realnameauth/model/CloudParameters;

    iget-object v7, v7, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->imageVerticalUrl:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->params:Lcom/tencent/msdk/realnameauth/model/CloudParameters;

    iget-object v7, v7, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->imageVerticalKey:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 109
    const-string v7, "portrait game, use portrait image"

    invoke-static {v7}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->logDebug(Ljava/lang/String;)V

    .line 110
    iput-boolean v12, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->useLandscapeDialog:Z

    .line 111
    iput v9, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->dialogScale:F

    goto :goto_1

    .line 112
    :cond_5
    iget-object v7, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->params:Lcom/tencent/msdk/realnameauth/model/CloudParameters;

    iget-object v7, v7, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->imageHorizontalUrl:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->params:Lcom/tencent/msdk/realnameauth/model/CloudParameters;

    iget-object v7, v7, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->imageHorizontalKey:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 114
    const-string v7, "portrait game, use landscape image"

    invoke-static {v7}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->logDebug(Ljava/lang/String;)V

    .line 115
    iput-boolean v8, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->useLandscapeDialog:Z

    .line 116
    iput v10, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->dialogScale:F

    goto/16 :goto_1

    .line 118
    :cond_6
    const-string v7, "portrait game, use default image"

    invoke-static {v7}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->logDebug(Ljava/lang/String;)V

    .line 120
    iput-boolean v8, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->useLandscapeDialog:Z

    .line 121
    iput v10, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->dialogScale:F

    .line 122
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 135
    :cond_7
    iget-boolean v7, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->useLandscapeDialog:Z

    if-eqz v7, :cond_9

    .line 136
    iget-object v7, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->params:Lcom/tencent/msdk/realnameauth/model/CloudParameters;

    iget-object v3, v7, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->imageHorizontalUrl:Ljava/lang/String;

    .line 137
    .local v3, "imageUrl":Ljava/lang/String;
    iget-object v7, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->params:Lcom/tencent/msdk/realnameauth/model/CloudParameters;

    iget-object v2, v7, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->imageHorizontalKey:Ljava/lang/String;

    .line 142
    .local v2, "imageName":Ljava/lang/String;
    :goto_2
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->imageDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    .local v1, "imageFile":Ljava/io/File;
    const/4 v6, 0x0

    .line 144
    .local v6, "useFile":Z
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 146
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->imageDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->imageBitmap:Landroid/graphics/Bitmap;

    .line 147
    iget-object v7, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->imageBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_8

    .line 149
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "image:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " have exits"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->logDebug(Ljava/lang/String;)V

    .line 150
    const/4 v6, 0x1

    .line 151
    iget-object v7, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->mainHandler:Landroid/os/Handler;

    if-eqz v7, :cond_8

    .line 152
    iget-object v7, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 153
    .restart local v4    # "msg":Landroid/os/Message;
    const/4 v7, 0x2

    iput v7, v4, Landroid/os/Message;->what:I

    .line 154
    iget-object v7, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 158
    .end local v4    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    const/4 v6, 0x0

    .line 163
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_8
    if-nez v6, :cond_0

    .line 164
    iget-object v7, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->imageDir:Ljava/lang/String;

    invoke-direct {p0, v3, v2, v7}, Lcom/tencent/msdk/realnameauth/ImageDialog;->downImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 139
    .end local v1    # "imageFile":Ljava/io/File;
    .end local v2    # "imageName":Ljava/lang/String;
    .end local v3    # "imageUrl":Ljava/lang/String;
    .end local v6    # "useFile":Z
    :cond_9
    iget-object v7, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->params:Lcom/tencent/msdk/realnameauth/model/CloudParameters;

    iget-object v3, v7, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->imageVerticalUrl:Ljava/lang/String;

    .line 140
    .restart local v3    # "imageUrl":Ljava/lang/String;
    iget-object v7, p0, Lcom/tencent/msdk/realnameauth/ImageDialog;->params:Lcom/tencent/msdk/realnameauth/model/CloudParameters;

    iget-object v2, v7, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->imageVerticalKey:Ljava/lang/String;

    .restart local v2    # "imageName":Ljava/lang/String;
    goto/16 :goto_2
.end method
