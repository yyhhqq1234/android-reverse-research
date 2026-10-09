.class public Lcom/tencent/msdk/webview/X5WebViewActivity;
.super Landroid/app/Activity;
.source "X5WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/webview/X5WebViewActivity$SaveImage;
    }
.end annotation


# static fields
.field private static final EXTERNAL_STORAGE_REQUEST_CODE:I = 0x7e1

.field private static final FILE_CHOOSER_ANDROID4:I = 0x6e

.field private static final FILE_CHOOSER_ANDROID5:I = 0x6f

.field private static final PROCESS_STATS_FORMAT:[I

.field static final PROCESS_STAT_STIME:I = 0x3

.field static final PROCESS_STAT_UTIME:I = 0x2

.field public static final PROC_COMBINE:I = 0x100

.field public static final PROC_OUT_FLOAT:I = 0x4000

.field public static final PROC_OUT_LONG:I = 0x2000

.field public static final PROC_PARENS:I = 0x200

.field public static final PROC_SPACE_TERM:I = 0x20

.field private static final SYSTEM_CPU_FORMAT:[I

.field private static final WEBVIEW_ID:I = 0x1

.field private static final ingameZipFile:Ljava/lang/String; = "ingame.zip"


# instance fields
.field private activityClassName:Ljava/lang/String;

.field private contentMargin:I

.field contentTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dialog:Landroid/app/ProgressDialog;

.field private filePathCallback:Lcom/tencent/smtt/sdk/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/smtt/sdk/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private fullScreenNativeVideoView:Lcom/ryg/dynamicload/internal/DLNativeView;

.field private homePage:Ljava/lang/String;

.field private homePageHost:Ljava/lang/String;

.field private hostConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private htmlMetaCharset:Ljava/lang/String;

.field private imgUrl:Ljava/lang/String;

.field private injectJsCharset:Ljava/lang/String;

.field private injectJsUrl:Ljava/lang/String;

.field private isClick:Z

.field private isWXInstalled:Ljava/lang/Boolean;

.field private layout:Landroid/widget/RelativeLayout;

.field private mockData:Lorg/json/JSONObject;

.field private nativeVideoView:Lcom/ryg/dynamicload/internal/DLNativeView;

.field private needShow:Z

.field private originalInjectJsUrl:Ljava/lang/String;

.field private platform:I

.field private qqAppid:Ljava/lang/String;

.field private setAccessControl:Ljava/lang/Boolean;

.field private uiLayer:Landroid/widget/ImageButton;

.field private uploadFile:Lcom/tencent/smtt/sdk/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/smtt/sdk/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private useVideoPlayer:Z

.field private useZipFile:Ljava/lang/Boolean;

.field private webView:Lcom/tencent/smtt/sdk/WebView;

.field private wxAppid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 272
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->PROCESS_STATS_FORMAT:[I

    .line 290
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->SYSTEM_CPU_FORMAT:[I

    return-void

    .line 272
    nop

    :array_0
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
    .end array-data

    .line 290
    :array_1
    .array-data 4
        0x120
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 246
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 252
    iput-object v1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->webView:Lcom/tencent/smtt/sdk/WebView;

    .line 253
    iput-object v1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->layout:Landroid/widget/RelativeLayout;

    .line 254
    iput-object v1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->homePage:Ljava/lang/String;

    .line 255
    iput-object v1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->homePageHost:Ljava/lang/String;

    .line 256
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->isWXInstalled:Ljava/lang/Boolean;

    .line 257
    iput v2, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->platform:I

    .line 258
    iput-object v1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->dialog:Landroid/app/ProgressDialog;

    .line 259
    iput-object v1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->uiLayer:Landroid/widget/ImageButton;

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->isClick:Z

    .line 262
    iput-boolean v2, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->needShow:Z

    .line 263
    iput-object v1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->imgUrl:Ljava/lang/String;

    .line 301
    iput-object v1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->mockData:Lorg/json/JSONObject;

    .line 303
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->useZipFile:Ljava/lang/Boolean;

    .line 304
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->htmlMetaCharset:Ljava/lang/String;

    .line 305
    new-instance v0, Lcom/tencent/msdk/webview/X5WebViewActivity$1;

    invoke-direct {v0, p0}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;-><init>(Lcom/tencent/msdk/webview/X5WebViewActivity;)V

    iput-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->contentTypeMap:Ljava/util/Map;

    .line 373
    iput-object v1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->injectJsUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->originalInjectJsUrl:Ljava/lang/String;

    .line 374
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->setAccessControl:Ljava/lang/Boolean;

    .line 375
    iput-object v1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->injectJsCharset:Ljava/lang/String;

    .line 376
    iput-object v1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->hostConfig:Ljava/util/Map;

    .line 377
    iput-object v1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->qqAppid:Ljava/lang/String;

    .line 378
    iput-object v1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->wxAppid:Ljava/lang/String;

    .line 379
    iput-object v1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->activityClassName:Ljava/lang/String;

    .line 380
    iput-object v1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->nativeVideoView:Lcom/ryg/dynamicload/internal/DLNativeView;

    .line 381
    iput-object v1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->fullScreenNativeVideoView:Lcom/ryg/dynamicload/internal/DLNativeView;

    .line 382
    iput-boolean v2, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->useVideoPlayer:Z

    .line 383
    iput v2, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->contentMargin:I

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/msdk/webview/X5WebViewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/tencent/msdk/webview/X5WebViewActivity;->requestPermission()V

    return-void
.end method

.method static synthetic access$1000(Lcom/tencent/msdk/webview/X5WebViewActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;

    .prologue
    .line 246
    iget v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->contentMargin:I

    return v0
.end method

.method static synthetic access$1100(Lcom/tencent/msdk/webview/X5WebViewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/tencent/msdk/webview/X5WebViewActivity;->releaseNativeVideoView()V

    return-void
.end method

.method static synthetic access$1202(Lcom/tencent/msdk/webview/X5WebViewActivity;Lcom/tencent/smtt/sdk/ValueCallback;)Lcom/tencent/smtt/sdk/ValueCallback;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;
    .param p1, "x1"    # Lcom/tencent/smtt/sdk/ValueCallback;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->uploadFile:Lcom/tencent/smtt/sdk/ValueCallback;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/tencent/msdk/webview/X5WebViewActivity;Lcom/tencent/smtt/sdk/ValueCallback;)Lcom/tencent/smtt/sdk/ValueCallback;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;
    .param p1, "x1"    # Lcom/tencent/smtt/sdk/ValueCallback;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->filePathCallback:Lcom/tencent/smtt/sdk/ValueCallback;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/tencent/msdk/webview/X5WebViewActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->needShow:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/tencent/msdk/webview/X5WebViewActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 246
    iput-boolean p1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->needShow:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->htmlMetaCharset:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/tencent/msdk/webview/X5WebViewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->htmlMetaCharset:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/tencent/msdk/webview/X5WebViewActivity;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->mockData:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->useZipFile:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->homePageHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->injectJsUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/msdk/webview/X5WebViewActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->isClick:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->originalInjectJsUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/tencent/msdk/webview/X5WebViewActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 246
    iput-boolean p1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->isClick:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->injectJsCharset:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->hostConfig:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->setAccessControl:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/tencent/msdk/webview/X5WebViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 246
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/msdk/webview/X5WebViewActivity;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/msdk/webview/X5WebViewActivity;)Lcom/tencent/smtt/sdk/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->webView:Lcom/tencent/smtt/sdk/WebView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tencent/msdk/webview/X5WebViewActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/tencent/msdk/webview/X5WebViewActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->dialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->qqAppid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->wxAppid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->activityClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tencent/msdk/webview/X5WebViewActivity;)Lcom/ryg/dynamicload/internal/DLNativeView;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->fullScreenNativeVideoView:Lcom/ryg/dynamicload/internal/DLNativeView;

    return-object v0
.end method

.method static synthetic access$802(Lcom/tencent/msdk/webview/X5WebViewActivity;Lcom/ryg/dynamicload/internal/DLNativeView;)Lcom/ryg/dynamicload/internal/DLNativeView;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;
    .param p1, "x1"    # Lcom/ryg/dynamicload/internal/DLNativeView;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->fullScreenNativeVideoView:Lcom/ryg/dynamicload/internal/DLNativeView;

    return-object p1
.end method

.method static synthetic access$900(Lcom/tencent/msdk/webview/X5WebViewActivity;)Lcom/ryg/dynamicload/internal/DLNativeView;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->nativeVideoView:Lcom/ryg/dynamicload/internal/DLNativeView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/tencent/msdk/webview/X5WebViewActivity;Lcom/ryg/dynamicload/internal/DLNativeView;)Lcom/ryg/dynamicload/internal/DLNativeView;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;
    .param p1, "x1"    # Lcom/ryg/dynamicload/internal/DLNativeView;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->nativeVideoView:Lcom/ryg/dynamicload/internal/DLNativeView;

    return-object p1
.end method

.method private dispatchEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "flag"    # Ljava/lang/String;
    .param p3, "response"    # Ljava/lang/String;

    .prologue
    .line 1941
    :try_start_0
    const-string v1, "(function() { var event = document.createEvent(\'Event\'); "

    .line 1942
    .local v1, "jsCode":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "event.flag = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1943
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "event.response = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1944
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "event.initEvent(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'); document.dispatchEvent(event); })();"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1945
    iget-object v2, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->webView:Lcom/tencent/smtt/sdk/WebView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1951
    .end local v1    # "jsCode":Ljava/lang/String;
    :goto_0
    return-void

    .line 1947
    :catch_0
    move-exception v0

    .line 1949
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "--Exception--"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private downloadZipFile(Ljava/lang/String;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1842
    :try_start_0
    const-string v5, "ingame_tmp.zip"

    .line 1843
    .local v5, "tmpZipFile":Ljava/lang/String;
    const-string v6, "download"

    invoke-virtual {p0, v6}, Lcom/tencent/msdk/webview/X5WebViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 1844
    .local v0, "downloadManager":Landroid/app/DownloadManager;
    new-instance v4, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 1845
    .local v4, "request":Landroid/app/DownloadManager$Request;
    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    .line 1846
    sget-object v6, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    const-string v7, "ingame_tmp.zip"

    invoke-virtual {v4, p0, v6, v7}, Landroid/app/DownloadManager$Request;->setDestinationInExternalFilesDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 1847
    invoke-virtual {v0, v4}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v2

    .line 1848
    .local v2, "ref":J
    new-instance v6, Lcom/tencent/msdk/webview/X5WebViewActivity$8;

    invoke-direct {v6, p0, v2, v3, v0}, Lcom/tencent/msdk/webview/X5WebViewActivity$8;-><init>(Lcom/tencent/msdk/webview/X5WebViewActivity;JLandroid/app/DownloadManager;)V

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6, v7}, Lcom/tencent/msdk/webview/X5WebViewActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1877
    .end local v0    # "downloadManager":Landroid/app/DownloadManager;
    .end local v2    # "ref":J
    .end local v4    # "request":Landroid/app/DownloadManager$Request;
    .end local v5    # "tmpZipFile":Ljava/lang/String;
    :goto_0
    return-void

    .line 1873
    :catch_0
    move-exception v1

    .line 1875
    .local v1, "ex":Ljava/lang/Exception;
    const-string v6, "--Exception--"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getCpuTimeForPid(I)J
    .locals 12
    .param p0, "pid"    # I

    .prologue
    const/4 v9, 0x4

    .line 2165
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/proc/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/stat"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2166
    .local v3, "statFile":Ljava/lang/String;
    new-array v4, v9, [J

    .line 2169
    .local v4, "statsData":[J
    :try_start_0
    const-string v5, "android.os.Process"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2170
    .local v1, "process":Ljava/lang/Class;
    const-string v5, "readProcFile"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, [I

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-class v10, [Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-class v10, [J

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-class v10, [F

    aput-object v10, v8, v9

    invoke-virtual {v1, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2171
    .local v2, "read":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    sget-object v10, Lcom/tencent/msdk/webview/X5WebViewActivity;->PROCESS_STATS_FORMAT:[I

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v4, v8, v9

    const/4 v9, 0x4

    const/4 v10, 0x0

    aput-object v10, v8, v9

    invoke-virtual {v2, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2173
    const/4 v5, 0x2

    aget-wide v8, v4, v5

    const/4 v5, 0x3

    aget-wide v10, v4, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long v6, v8, v10

    .line 2181
    .end local v1    # "process":Ljava/lang/Class;
    .end local v2    # "read":Ljava/lang/reflect/Method;
    :goto_0
    return-wide v6

    .line 2177
    :catch_0
    move-exception v0

    .line 2179
    .local v0, "ex":Ljava/lang/Exception;
    const-string v5, "--Exception--"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2181
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0
.end method

.method private static getCpuTotalTime()J
    .locals 26

    .prologue
    .line 2186
    const/4 v15, 0x7

    new-array v14, v15, [J

    .line 2189
    .local v14, "sysCpu":[J
    :try_start_0
    const-string v15, "android.os.Process"

    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 2190
    .local v10, "process":Ljava/lang/Class;
    invoke-virtual {v10}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2191
    .local v3, "methods":[Ljava/lang/reflect/Method;
    const-string v15, "readProcFile"

    const/16 v22, 0x5

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-class v24, Ljava/lang/String;

    aput-object v24, v22, v23

    const/16 v23, 0x1

    const-class v24, [I

    aput-object v24, v22, v23

    const/16 v23, 0x2

    const-class v24, [Ljava/lang/String;

    aput-object v24, v22, v23

    const/16 v23, 0x3

    const-class v24, [J

    aput-object v24, v22, v23

    const/16 v23, 0x4

    const-class v24, [F

    aput-object v24, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v10, v15, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 2192
    .local v11, "read":Ljava/lang/reflect/Method;
    invoke-virtual {v10}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v15

    const/16 v22, 0x5

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "/proc/stat"

    aput-object v24, v22, v23

    const/16 v23, 0x1

    sget-object v24, Lcom/tencent/msdk/webview/X5WebViewActivity;->SYSTEM_CPU_FORMAT:[I

    aput-object v24, v22, v23

    const/16 v23, 0x2

    const/16 v24, 0x0

    aput-object v24, v22, v23

    const/16 v23, 0x3

    aput-object v14, v22, v23

    const/16 v23, 0x4

    const/16 v24, 0x0

    aput-object v24, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v11, v15, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 2195
    const/4 v15, 0x0

    aget-wide v22, v14, v15

    const/4 v15, 0x1

    aget-wide v24, v14, v15

    add-long v20, v22, v24

    .line 2197
    .local v20, "usertime":J
    const/4 v15, 0x2

    aget-wide v16, v14, v15

    .line 2199
    .local v16, "systemtime":J
    const/4 v15, 0x3

    aget-wide v4, v14, v15

    .line 2201
    .local v4, "idletime":J
    const/4 v15, 0x4

    aget-wide v6, v14, v15

    .line 2202
    .local v6, "iowaittime":J
    const/4 v15, 0x5

    aget-wide v8, v14, v15

    .line 2203
    .local v8, "irqtime":J
    const/4 v15, 0x6

    aget-wide v12, v14, v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2204
    .local v12, "softirqtime":J
    add-long v22, v20, v16

    add-long v22, v22, v4

    add-long v22, v22, v8

    add-long v18, v22, v12

    .line 2212
    .end local v3    # "methods":[Ljava/lang/reflect/Method;
    .end local v4    # "idletime":J
    .end local v6    # "iowaittime":J
    .end local v8    # "irqtime":J
    .end local v10    # "process":Ljava/lang/Class;
    .end local v11    # "read":Ljava/lang/reflect/Method;
    .end local v12    # "softirqtime":J
    .end local v16    # "systemtime":J
    .end local v20    # "usertime":J
    :goto_0
    return-wide v18

    .line 2208
    :catch_0
    move-exception v2

    .line 2210
    .local v2, "ex":Ljava/lang/Exception;
    const-string v15, "--Exception--"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v15, v0}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2212
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_0
    const-wide/16 v18, 0x0

    goto :goto_0
.end method

.method private releaseNativeVideoView()V
    .locals 4

    .prologue
    .line 1799
    :try_start_0
    iget-object v1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->nativeVideoView:Lcom/ryg/dynamicload/internal/DLNativeView;

    if-eqz v1, :cond_0

    .line 1801
    iget-object v1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->nativeVideoView:Lcom/ryg/dynamicload/internal/DLNativeView;

    invoke-interface {v1}, Lcom/ryg/dynamicload/internal/DLNativeView;->finish()V

    .line 1802
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->nativeVideoView:Lcom/ryg/dynamicload/internal/DLNativeView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1812
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->fullScreenNativeVideoView:Lcom/ryg/dynamicload/internal/DLNativeView;

    if-eqz v1, :cond_1

    .line 1814
    iget-object v1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->fullScreenNativeVideoView:Lcom/ryg/dynamicload/internal/DLNativeView;

    invoke-interface {v1}, Lcom/ryg/dynamicload/internal/DLNativeView;->finish()V

    .line 1815
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->fullScreenNativeVideoView:Lcom/ryg/dynamicload/internal/DLNativeView;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1822
    :cond_1
    :goto_1
    return-void

    .line 1805
    :catch_0
    move-exception v0

    .line 1807
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "--Exception--"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideVideoPlayer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1818
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1820
    .restart local v0    # "ex":Ljava/lang/Exception;
    const-string v1, "--Exception--"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideVideoPlayer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private reloadWebView()V
    .locals 3

    .prologue
    .line 582
    :try_start_0
    iget-object v1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->webView:Lcom/tencent/smtt/sdk/WebView;

    if-eqz v1, :cond_0

    .line 583
    iget-object v1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->reload()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 585
    :catch_0
    move-exception v0

    .line 587
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "--Exception--"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestPermission()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 398
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 404
    .local v0, "permission":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 406
    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    const-string/jumbo v1, "\u5b58\u50a8\u56fe\u50cf\u65f6\u9700\u8981\u8bbf\u95eeSD\u5361"

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 408
    :cond_0
    new-array v1, v3, [Ljava/lang/String;

    aput-object v0, v1, v4

    const/16 v2, 0x7e1

    invoke-static {p0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 412
    :goto_0
    return-void

    .line 411
    :cond_1
    new-instance v1, Lcom/tencent/msdk/webview/X5WebViewActivity$SaveImage;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tencent/msdk/webview/X5WebViewActivity$SaveImage;-><init>(Lcom/tencent/msdk/webview/X5WebViewActivity;Lcom/tencent/msdk/webview/X5WebViewActivity$1;)V

    new-array v2, v3, [Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->imgUrl:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/tencent/msdk/webview/X5WebViewActivity$SaveImage;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private setWebViewProxy(Ljava/lang/String;I)V
    .locals 21
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 1890
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x13

    move/from16 v0, v16

    if-ge v15, v0, :cond_1

    .line 1926
    :cond_0
    :goto_0
    return-void

    .line 1894
    :cond_1
    :try_start_0
    const-string v15, "http.proxyHost"

    move-object/from16 v0, p1

    invoke-static {v15, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1895
    const-string v15, "http.proxyPort"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1896
    const-string v15, "https.proxyHost"

    move-object/from16 v0, p1

    invoke-static {v15, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1897
    const-string v15, "https.proxyPort"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1899
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/msdk/webview/X5WebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1900
    .local v4, "context":Landroid/content/Context;
    const-string v15, "android.app.Application"

    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1901
    .local v2, "applictionCls":Ljava/lang/Class;
    const-string v15, "mLoadedApk"

    invoke-virtual {v2, v15}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 1902
    .local v9, "loadedApkField":Ljava/lang/reflect/Field;
    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1903
    invoke-virtual {v9, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1904
    .local v7, "loadedApk":Ljava/lang/Object;
    const-string v15, "android.app.LoadedApk"

    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 1905
    .local v8, "loadedApkCls":Ljava/lang/Class;
    const-string v15, "mReceivers"

    invoke-virtual {v8, v15}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    .line 1906
    .local v14, "receiversField":Ljava/lang/reflect/Field;
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1907
    invoke-virtual {v14, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArrayMap;

    .line 1908
    .local v13, "receivers":Landroid/util/ArrayMap;
    invoke-virtual {v13}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 1910
    .local v12, "receiverMap":Ljava/lang/Object;
    check-cast v12, Landroid/util/ArrayMap;

    .end local v12    # "receiverMap":Ljava/lang/Object;
    invoke-virtual {v12}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_3
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 1912
    .local v11, "rec":Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 1913
    .local v3, "clazz":Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "ProxyChangeListener"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1915
    const-string v17, "onReceive"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-class v20, Landroid/content/Context;

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-class v20, Landroid/content/Intent;

    aput-object v20, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 1916
    .local v10, "onReceiveMethod":Ljava/lang/reflect/Method;
    new-instance v6, Landroid/content/Intent;

    const-string v17, "android.intent.action.PROXY_CHANGE"

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1917
    .local v6, "intent":Landroid/content/Intent;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v4, v17, v18

    const/16 v18, 0x1

    aput-object v6, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v10, v11, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1922
    .end local v2    # "applictionCls":Ljava/lang/Class;
    .end local v3    # "clazz":Ljava/lang/Class;
    .end local v4    # "context":Landroid/content/Context;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "loadedApk":Ljava/lang/Object;
    .end local v8    # "loadedApkCls":Ljava/lang/Class;
    .end local v9    # "loadedApkField":Ljava/lang/reflect/Field;
    .end local v10    # "onReceiveMethod":Ljava/lang/reflect/Method;
    .end local v11    # "rec":Ljava/lang/Object;
    .end local v13    # "receivers":Landroid/util/ArrayMap;
    .end local v14    # "receiversField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v5

    .line 1924
    .local v5, "ex":Ljava/lang/Exception;
    const-string v15, "--Exception--"

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static writeSystemDnsCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p0, "hostName"    # Ljava/lang/String;
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x4

    .line 616
    :try_start_0
    const-class v4, Ljava/net/InetAddress;

    .line 617
    .local v4, "inetAddressClass":Ljava/lang/Class;
    const-string v9, "addressCache"

    invoke-virtual {v4, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 618
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 619
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 620
    .local v7, "object":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 621
    .local v0, "cacheClass":Ljava/lang/Class;
    const/4 v8, 0x0

    .line 622
    .local v8, "putMethod":Ljava/lang/reflect/Method;
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v9, v10, :cond_0

    .line 623
    const-string v9, "put"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-class v12, [Ljava/net/InetAddress;

    aput-object v12, v10, v11

    invoke-virtual {v0, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 626
    :goto_0
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 627
    const-string v9, "\\."

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 628
    .local v6, "ipStr":[Ljava/lang/String;
    const/4 v9, 0x4

    new-array v5, v9, [B

    .line 629
    .local v5, "ipBuf":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v13, :cond_1

    .line 630
    aget-object v9, v6, v3

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v5, v3

    .line 629
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 625
    .end local v3    # "i":I
    .end local v5    # "ipBuf":[B
    .end local v6    # "ipStr":[Ljava/lang/String;
    :cond_0
    const-string v9, "put"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, [Ljava/net/InetAddress;

    aput-object v12, v10, v11

    invoke-virtual {v0, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    goto :goto_0

    .line 631
    .restart local v3    # "i":I
    .restart local v5    # "ipBuf":[B
    .restart local v6    # "ipStr":[Ljava/lang/String;
    :cond_1
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v9, v10, :cond_2

    .line 632
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/net/InetAddress;

    const/4 v12, 0x0

    invoke-static {v5}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v13

    aput-object v13, v11, v12

    aput-object v11, v9, v10

    invoke-virtual {v8, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    .end local v0    # "cacheClass":Ljava/lang/Class;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "i":I
    .end local v4    # "inetAddressClass":Ljava/lang/Class;
    .end local v5    # "ipBuf":[B
    .end local v6    # "ipStr":[Ljava/lang/String;
    .end local v7    # "object":Ljava/lang/Object;
    .end local v8    # "putMethod":Ljava/lang/reflect/Method;
    :goto_2
    return-void

    .line 634
    .restart local v0    # "cacheClass":Ljava/lang/Class;
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    .restart local v3    # "i":I
    .restart local v4    # "inetAddressClass":Ljava/lang/Class;
    .restart local v5    # "ipBuf":[B
    .restart local v6    # "ipStr":[Ljava/lang/String;
    .restart local v7    # "object":Ljava/lang/Object;
    .restart local v8    # "putMethod":Ljava/lang/reflect/Method;
    :cond_2
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/net/InetAddress;

    const/4 v12, 0x0

    invoke-static {v5}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v13

    aput-object v13, v11, v12

    aput-object v11, v9, v10

    invoke-virtual {v8, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 636
    .end local v0    # "cacheClass":Ljava/lang/Class;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "i":I
    .end local v4    # "inetAddressClass":Ljava/lang/Class;
    .end local v5    # "ipBuf":[B
    .end local v6    # "ipStr":[Ljava/lang/String;
    .end local v7    # "object":Ljava/lang/Object;
    .end local v8    # "putMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 638
    .local v1, "ex":Ljava/lang/Exception;
    const-string v9, "--Exception--"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public addShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "imgUrl"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 2302
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 2303
    :cond_0
    const/4 v0, 0x1

    .line 2333
    :goto_0
    return v0

    .line 2304
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/msdk/webview/X5WebViewActivity$12;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/tencent/msdk/webview/X5WebViewActivity$12;-><init>(Lcom/tencent/msdk/webview/X5WebViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2332
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2333
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closeWebview()V
    .locals 0

    .prologue
    .line 2115
    invoke-virtual {p0}, Lcom/tencent/msdk/webview/X5WebViewActivity;->finish()V

    .line 2116
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 2417
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2418
    invoke-direct {p0}, Lcom/tencent/msdk/webview/X5WebViewActivity;->releaseNativeVideoView()V

    .line 2419
    return-void
.end method

.method public getAccountType()I
    .locals 1

    .prologue
    .line 2339
    iget v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->platform:I

    return v0
.end method

.method public getDeviceInfo()Ljava/lang/String;
    .locals 14

    .prologue
    .line 2218
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2221
    .local v2, "deviceInfo":Lorg/json/JSONObject;
    :try_start_0
    const-string v10, "osSystem"

    const-string v11, "android"

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2222
    const-string v10, "osVersion"

    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2223
    const-string v10, "deviceModel"

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2224
    const-string v10, "deviceName"

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2225
    const-string v10, "deviceTradeMark"

    sget-object v11, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2226
    const-string v10, "deviceManufacturer"

    sget-object v11, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2227
    const-string v10, "activity"

    invoke-virtual {p0, v10}, Lcom/tencent/msdk/webview/X5WebViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2236
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const-string v10, "memoryUpperLimit"

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v11

    mul-int/lit16 v11, v11, 0x400

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2238
    const-string v10, "processCpuTime"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-static {v11}, Lcom/tencent/msdk/webview/X5WebViewActivity;->getCpuTimeForPid(I)J

    move-result-wide v12

    invoke-virtual {v2, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2239
    const-string/jumbo v10, "totalCpuTime"

    invoke-static {}, Lcom/tencent/msdk/webview/X5WebViewActivity;->getCpuTotalTime()J

    move-result-wide v12

    invoke-virtual {v2, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2242
    :try_start_1
    const-string/jumbo v11, "uid"

    const-string v10, "phone"

    invoke-virtual {p0, v10}, Lcom/tencent/msdk/webview/X5WebViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2250
    :goto_0
    const/4 v9, 0x0

    .local v9, "usedMemory":I
    const/4 v1, 0x0

    .local v1, "dalvikMemory":I
    const/4 v5, 0x0

    .local v5, "nativeMemory":I
    const/4 v6, 0x0

    .line 2252
    .local v6, "otherMemory":I
    :try_start_2
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v8

    .line 2253
    .local v8, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2261
    .local v7, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v11, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/msdk/webview/X5WebViewActivity;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":ingame_inner_webview"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2263
    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    iget v13, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    aput v13, v11, v12

    invoke-virtual {v0, v11}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v4

    .line 2275
    .local v4, "memoryInfo":[Landroid/os/Debug$MemoryInfo;
    const/4 v11, 0x0

    aget-object v11, v4, v11

    invoke-virtual {v11}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v11

    add-int/2addr v9, v11

    .line 2276
    const/4 v11, 0x0

    aget-object v11, v4, v11

    iget v11, v11, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    add-int/2addr v1, v11

    .line 2277
    const/4 v11, 0x0

    aget-object v11, v4, v11

    iget v11, v11, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    add-int/2addr v5, v11

    .line 2278
    const/4 v11, 0x0

    aget-object v11, v4, v11

    iget v11, v11, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    add-int/2addr v6, v11

    goto :goto_1

    .line 2246
    .end local v1    # "dalvikMemory":I
    .end local v4    # "memoryInfo":[Landroid/os/Debug$MemoryInfo;
    .end local v5    # "nativeMemory":I
    .end local v6    # "otherMemory":I
    .end local v7    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v8    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v9    # "usedMemory":I
    :catch_0
    move-exception v3

    .line 2248
    .local v3, "ex":Ljava/lang/Exception;
    const-string/jumbo v10, "uid"

    const-string v11, ""

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2286
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v3    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 2288
    .restart local v3    # "ex":Ljava/lang/Exception;
    const-string v10, "--Exception--"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2290
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 2281
    .restart local v0    # "activityManager":Landroid/app/ActivityManager;
    .restart local v1    # "dalvikMemory":I
    .restart local v5    # "nativeMemory":I
    .restart local v6    # "otherMemory":I
    .restart local v8    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v9    # "usedMemory":I
    :cond_1
    :try_start_3
    const-string/jumbo v10, "usedMemory"

    invoke-virtual {v2, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2282
    const-string v10, "dalvikMemory"

    invoke-virtual {v2, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2283
    const-string v10, "nativeMemory"

    invoke-virtual {v2, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2284
    const-string v10, "otherMemory"

    invoke-virtual {v2, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 2124
    :try_start_0
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/tencent/msdk/webview/X5WebViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 2126
    .local v1, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 2128
    .local v4, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v4, :cond_0

    .line 2129
    const-string/jumbo v6, "\u6ca1\u6709\u7f51\u7edc"

    .line 2159
    .end local v1    # "manager":Landroid/net/ConnectivityManager;
    .end local v4    # "networkInfo":Landroid/net/NetworkInfo;
    :goto_0
    return-object v6

    .line 2131
    .restart local v1    # "manager":Landroid/net/ConnectivityManager;
    .restart local v4    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 2132
    .local v3, "nType":I
    if-ne v3, v7, :cond_1

    .line 2133
    const-string v6, "WIFI"

    goto :goto_0

    .line 2134
    :cond_1
    if-nez v3, :cond_7

    .line 2136
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    .line 2137
    .local v2, "nSubType":I
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Lcom/tencent/msdk/webview/X5WebViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 2138
    .local v5, "telephonyManager":Landroid/telephony/TelephonyManager;
    const/16 v6, 0xd

    if-ne v2, v6, :cond_2

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2139
    const-string v6, "4G"

    goto :goto_0

    .line 2140
    :cond_2
    const/4 v6, 0x3

    if-eq v2, v6, :cond_3

    const/16 v6, 0x8

    if-eq v2, v6, :cond_3

    const/4 v6, 0x5

    if-ne v2, v6, :cond_4

    .line 2141
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v6

    if-nez v6, :cond_4

    .line 2144
    :cond_3
    const-string v6, "3G"

    goto :goto_0

    .line 2146
    :cond_4
    if-eq v2, v7, :cond_5

    const/4 v6, 0x2

    if-eq v2, v6, :cond_5

    const/4 v6, 0x4

    if-ne v2, v6, :cond_6

    .line 2147
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v6

    if-nez v6, :cond_6

    .line 2150
    :cond_5
    const-string v6, "2G"

    goto :goto_0

    .line 2152
    :cond_6
    const-string v6, "2G"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2155
    .end local v1    # "manager":Landroid/net/ConnectivityManager;
    .end local v2    # "nSubType":I
    .end local v3    # "nType":I
    .end local v4    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v5    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 2157
    .local v0, "ex":Ljava/lang/Exception;
    const-string v6, "--Exception--"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2159
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_7
    const-string/jumbo v6, "\u672a\u77e5\u7f51\u7edc"

    goto :goto_0
.end method

.method public hideUi()V
    .locals 2

    .prologue
    .line 2351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->needShow:Z

    .line 2352
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->uiLayer:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 2353
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->uiLayer:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2354
    :cond_0
    return-void
.end method

.method public isAndroid()Z
    .locals 1

    .prologue
    .line 2345
    const/4 v0, 0x1

    return v0
.end method

.method public isPlatformInstalled(I)Z
    .locals 6
    .param p1, "platformType"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2100
    if-ne v1, p1, :cond_1

    .line 2101
    :try_start_0
    iget-object v1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->isWXInstalled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2109
    :cond_0
    :goto_0
    return v1

    .line 2102
    :cond_1
    const/4 v3, 0x2

    if-ne v3, p1, :cond_2

    .line 2103
    invoke-virtual {p0}, Lcom/tencent/msdk/webview/X5WebViewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.tencent.mobileqq"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 2105
    :catch_0
    move-exception v0

    .line 2107
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "--Exception--"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    move v1, v2

    .line 2109
    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 534
    const/16 v3, 0x6e

    if-ne v3, p1, :cond_4

    .line 536
    :try_start_0
    iget-object v3, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->uploadFile:Lcom/tencent/smtt/sdk/ValueCallback;

    if-nez v3, :cond_1

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    if-eqz p3, :cond_2

    if-eq p2, v4, :cond_3

    :cond_2
    move-object v1, v2

    .line 539
    .local v1, "result":Landroid/net/Uri;
    :goto_1
    iget-object v2, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->uploadFile:Lcom/tencent/smtt/sdk/ValueCallback;

    invoke-interface {v2, v1}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 540
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->uploadFile:Lcom/tencent/smtt/sdk/ValueCallback;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 551
    .end local v1    # "result":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 553
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "--Exception--"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 538
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    .line 542
    :cond_4
    const/16 v3, 0x6f

    if-ne v3, p1, :cond_0

    .line 544
    iget-object v3, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->filePathCallback:Lcom/tencent/smtt/sdk/ValueCallback;

    if-eqz v3, :cond_0

    .line 546
    if-eqz p3, :cond_5

    if-eq p2, v4, :cond_6

    :cond_5
    move-object v1, v2

    .line 547
    .restart local v1    # "result":Landroid/net/Uri;
    :goto_2
    iget-object v3, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->filePathCallback:Lcom/tencent/smtt/sdk/ValueCallback;

    if-nez v1, :cond_7

    :goto_3
    invoke-interface {v3, v2}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 548
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->filePathCallback:Lcom/tencent/smtt/sdk/ValueCallback;

    goto :goto_0

    .line 546
    .end local v1    # "result":Landroid/net/Uri;
    :cond_6
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    goto :goto_2

    .line 547
    .restart local v1    # "result":Landroid/net/Uri;
    :cond_7
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v4, 0x0

    aput-object v1, v2, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1829
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/msdk/webview/X5WebViewActivity;->releaseNativeVideoView()V

    .line 1830
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->uiLayer:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1831
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->uiLayer:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1836
    :cond_0
    :goto_0
    return-void

    .line 1833
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 26
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 651
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 654
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/msdk/webview/X5WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 655
    .local v8, "intent":Landroid/content/Intent;
    const-string/jumbo v19, "url"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/webview/X5WebViewActivity;->homePage:Ljava/lang/String;

    .line 656
    const-string v19, "--Exception--"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "url="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->homePage:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->homePage:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    if-eqz p1, :cond_0

    .line 658
    const-string/jumbo v19, "url"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/webview/X5WebViewActivity;->homePage:Ljava/lang/String;

    .line 659
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->homePage:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->homePage:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "file:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 661
    :cond_1
    const-string v19, "--Exception--"

    const-string/jumbo v20, "\u9996\u9875\u4e0d\u80fd\u4e3a\u7a7a\uff0c\u4e14\u4e0d\u652f\u6301file\u534f\u8bae"

    invoke-static/range {v19 .. v20}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/msdk/webview/X5WebViewActivity;->finish()V

    .line 1793
    .end local v8    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 665
    .restart local v8    # "intent":Landroid/content/Intent;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->homePage:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/webview/X5WebViewActivity;->homePageHost:Ljava/lang/String;

    .line 666
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/msdk/webview/X5WebViewActivity;->useVideoPlayer:Z

    .line 667
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/msdk/webview/X5WebViewActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "com.tencent.tga.plugin"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->homePage:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/tencent/msdk/api/WGPlatform;->WGGetEncodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/webview/X5WebViewActivity;->homePage:Ljava/lang/String;

    .line 669
    :cond_3
    const-string v19, "--Exception--"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "encodeurl="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->homePage:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const-string v19, "injectJsUrl"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/webview/X5WebViewActivity;->injectJsUrl:Ljava/lang/String;

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->injectJsUrl:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->injectJsUrl:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/webview/X5WebViewActivity;->originalInjectJsUrl:Ljava/lang/String;

    .line 674
    const-string v19, "injectJsCharset"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/webview/X5WebViewActivity;->injectJsCharset:Ljava/lang/String;

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->injectJsCharset:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    .line 676
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "<script type=\'text/javascript\' charset=\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->injectJsCharset:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\' src=\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->injectJsUrl:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\'></script>"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/webview/X5WebViewActivity;->injectJsUrl:Ljava/lang/String;

    .line 681
    :cond_4
    :goto_1
    if-eqz p1, :cond_e

    .line 683
    const-string v19, "isWXInstalled"

    const-string v20, "isWXInstalled"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/webview/X5WebViewActivity;->isWXInstalled:Ljava/lang/Boolean;

    .line 684
    const-string v19, "platform"

    const-string v20, "platform"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/webview/X5WebViewActivity;->platform:I

    .line 701
    :goto_2
    const-string v19, "qqAppid"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/webview/X5WebViewActivity;->qqAppid:Ljava/lang/String;

    .line 702
    const-string/jumbo v19, "wxAppid"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/webview/X5WebViewActivity;->wxAppid:Ljava/lang/String;

    .line 703
    const-string/jumbo v19, "wx95a3a4d7c627e07d"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/webview/X5WebViewActivity;->wxAppid:Ljava/lang/String;

    .line 705
    const-string/jumbo v19, "supportedOrientations"

    const/16 v20, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 706
    .local v15, "supportedOrientations":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->useVideoPlayer:Z

    move/from16 v19, v0

    if-eqz v19, :cond_10

    .line 707
    const/16 v19, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity;->setRequestedOrientation(I)V

    .line 713
    :cond_5
    :goto_3
    const-string/jumbo v19, "zipFilePath"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 714
    .local v18, "zipFilePath":Ljava/lang/String;
    if-eqz v18, :cond_6

    const-string v19, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 716
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/webview/X5WebViewActivity;->useZipFile:Ljava/lang/Boolean;

    .line 717
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity;->downloadZipFile(Ljava/lang/String;)V

    .line 720
    :cond_6
    const-string v19, "setAccessControl"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/webview/X5WebViewActivity;->setAccessControl:Ljava/lang/Boolean;

    .line 721
    const-string v19, "hostConfig"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v19

    check-cast v19, Ljava/util/Map;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/webview/X5WebViewActivity;->hostConfig:Ljava/util/Map;

    .line 722
    const-string v19, "className"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/webview/X5WebViewActivity;->activityClassName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 733
    const/16 v19, 0x0

    :try_start_1
    const-string/jumbo v20, "\u9875\u9762\u52a0\u8f7d\u4e2d\uff0c\u8bf7\u7a0d\u5019..."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/webview/X5WebViewActivity;->dialog:Landroid/app/ProgressDialog;

    .line 735
    new-instance v19, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/webview/X5WebViewActivity;->layout:Landroid/widget/RelativeLayout;

    .line 736
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 737
    .local v10, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static/range {p0 .. p0}, Lcom/tencent/msdk/webview/AndroidNotchScreen;->hasNotchScreen(Landroid/app/Activity;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 739
    invoke-static/range {p0 .. p0}, Lcom/tencent/msdk/webview/AndroidNotchScreen;->getNotchHeight(Landroid/content/Context;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/webview/X5WebViewActivity;->contentMargin:I

    .line 740
    const-string v19, "--Exception--"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v21, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->contentMargin:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->contentMargin:I

    move/from16 v19, v0

    if-gtz v19, :cond_7

    .line 742
    const/16 v19, 0x5a

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/webview/X5WebViewActivity;->contentMargin:I

    .line 743
    :cond_7
    const-string v19, "--Exception--"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v21, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->contentMargin:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->contentMargin:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v10, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 745
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->contentMargin:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v10, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v19, v0

    const/16 v20, 0xff

    const/16 v21, 0xf

    const/16 v22, 0x1a

    const/16 v23, 0x2c

    invoke-static/range {v20 .. v23}, Landroid/graphics/Color;->argb(IIII)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 750
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/msdk/webview/X5WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v17

    .line 751
    .local v17, "window":Landroid/view/Window;
    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    .line 752
    .local v13, "params":Landroid/view/WindowManager$LayoutParams;
    const-class v19, Landroid/view/WindowManager$LayoutParams;

    const-string v20, "layoutInDisplayCutoutMode"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 753
    .local v9, "layoutInDisplayCutoutMode":Ljava/lang/reflect/Field;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v13, v0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 754
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 756
    const-class v19, Landroid/view/View;

    const-string v20, "setSystemUiVisibility"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    sget-object v23, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 757
    .local v14, "setSystemUiVisibility":Ljava/lang/reflect/Method;
    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x406

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 763
    .end local v9    # "layoutInDisplayCutoutMode":Ljava/lang/reflect/Field;
    .end local v13    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v14    # "setSystemUiVisibility":Ljava/lang/reflect/Method;
    .end local v17    # "window":Landroid/view/Window;
    :cond_8
    :goto_4
    :try_start_3
    new-instance v19, Lcom/tencent/smtt/sdk/WebView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tencent/smtt/sdk/WebView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/webview/X5WebViewActivity;->webView:Lcom/tencent/smtt/sdk/WebView;

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->webView:Lcom/tencent/smtt/sdk/WebView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/tencent/smtt/sdk/WebView;->setId(I)V

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->webView:Lcom/tencent/smtt/sdk/WebView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/tencent/smtt/sdk/WebView;->setBackgroundColor(I)V

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->webView:Lcom/tencent/smtt/sdk/WebView;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->webView:Lcom/tencent/smtt/sdk/WebView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 770
    new-instance v19, Landroid/widget/ImageButton;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/webview/X5WebViewActivity;->uiLayer:Landroid/widget/ImageButton;

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->uiLayer:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 772
    const/4 v4, 0x0

    .line 773
    .local v4, "base64Img":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->useVideoPlayer:Z

    move/from16 v19, v0

    if-eqz v19, :cond_12

    .line 774
    const-string v4, "iVBORw0KGgoAAAANSUhEUgAAAE4AAABOCAYAAACOqiAdAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA4RpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTQyIDc5LjE2MDkyNCwgMjAxNy8wNy8xMy0wMTowNjozOSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDo4ODkzMmIzNS1iMzMyLTg4NGUtYjhiNy02NDM3Yzg5NDVkNDIiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6MEJCRjY0OTlFRjAzMTFFODkyODhCMjRDMDEwMEFEMkUiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6MEJCRjY0OThFRjAzMTFFODkyODhCMjRDMDEwMEFEMkUiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTggKFdpbmRvd3MpIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6YjI2NjMwYzUtOGQxOS1iMzRmLWE4ZDYtNjZlMjNjZjBiZDQ4IiBzdFJlZjpkb2N1bWVudElEPSJhZG9iZTpkb2NpZDpwaG90b3Nob3A6ZDUxZWYyZDMtZGVmYi0xMzRiLWJhYWYt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"

    .line 777
    :goto_5
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v4, v0}, Lcom/tencent/msdk/tools/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    .line 778
    .local v5, "buf":[B
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/msdk/webview/X5WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    const/high16 v20, 0x40400000    # 3.0f

    div-float v6, v19, v20

    .line 779
    .local v6, "density":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->uiLayer:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    array-length v0, v5

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v5, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v20

    const/high16 v21, 0x42c80000    # 100.0f

    mul-float v21, v21, v6

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x42c80000    # 100.0f

    mul-float v22, v22, v6

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    invoke-static/range {v20 .. v23}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 780
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v10    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v19, -0x2

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 781
    .restart local v10    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v19, 0x8

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 782
    const/16 v19, 0x7

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->uiLayer:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    new-instance v20, Lcom/tencent/msdk/webview/X5WebViewActivity$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$3;-><init>(Lcom/tencent/msdk/webview/X5WebViewActivity;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->uiLayer:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    new-instance v20, Lcom/tencent/msdk/webview/X5WebViewActivity$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$4;-><init>(Lcom/tencent/msdk/webview/X5WebViewActivity;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->uiLayer:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->uiLayer:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Lcom/tencent/msdk/webview/X5WebViewActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->webView:Lcom/tencent/smtt/sdk/WebView;

    move-object/from16 v19, v0

    new-instance v20, Lcom/tencent/msdk/webview/X5WebViewActivity$5;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$5;-><init>(Lcom/tencent/msdk/webview/X5WebViewActivity;)V

    invoke-virtual/range {v19 .. v20}, Lcom/tencent/smtt/sdk/WebView;->setWebChromeClient(Lcom/tencent/smtt/sdk/WebChromeClient;)V

    .line 1274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->webView:Lcom/tencent/smtt/sdk/WebView;

    move-object/from16 v19, v0

    new-instance v20, Lcom/tencent/msdk/webview/X5WebViewActivity$6;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$6;-><init>(Lcom/tencent/msdk/webview/X5WebViewActivity;)V

    invoke-virtual/range {v19 .. v20}, Lcom/tencent/smtt/sdk/WebView;->setWebViewClient(Lcom/tencent/smtt/sdk/WebViewClient;)V

    .line 1716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->webView:Lcom/tencent/smtt/sdk/WebView;

    move-object/from16 v19, v0

    new-instance v20, Lcom/tencent/msdk/webview/X5WebViewActivity$7;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$7;-><init>(Lcom/tencent/msdk/webview/X5WebViewActivity;)V

    invoke-virtual/range {v19 .. v20}, Lcom/tencent/smtt/sdk/WebView;->setDownloadListener(Lcom/tencent/smtt/sdk/DownloadListener;)V

    .line 1733
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0xb

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_9

    .line 1735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->webView:Lcom/tencent/smtt/sdk/WebView;

    move-object/from16 v19, v0

    const-string v20, "searchBoxJavaBridge_"

    invoke-virtual/range {v19 .. v20}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 1736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->webView:Lcom/tencent/smtt/sdk/WebView;

    move-object/from16 v19, v0

    const-string v20, "accessibility"

    invoke-virtual/range {v19 .. v20}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 1737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->webView:Lcom/tencent/smtt/sdk/WebView;

    move-object/from16 v19, v0

    const-string v20, "accessibilityTraversal"

    invoke-virtual/range {v19 .. v20}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 1740
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->webView:Lcom/tencent/smtt/sdk/WebView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v16

    .line 1741
    .local v16, "webSetting":Lcom/tencent/smtt/sdk/WebSettings;
    const-string v19, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/ConnectivityManager;

    .line 1742
    .local v12, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v12}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v19

    if-nez v19, :cond_13

    .line 1744
    const-string v19, "--Exception--"

    const-string/jumbo v20, "\u6ca1\u6709\u7f51\u7edc\uff0c\u4ece\u7f13\u5b58\u91cc\u53d6\u6570\u636e"

    invoke-static/range {v19 .. v20}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setCacheMode(I)V

    .line 1756
    :goto_6
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lcom/tencent/smtt/sdk/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Android TIEM Ingame Browser/0.7"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 1757
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1758
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowFileAccess(Z)V

    .line 1759
    sget-object v19, Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setLayoutAlgorithm(Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;)V

    .line 1760
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setSupportZoom(Z)V

    .line 1761
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setBuiltInZoomControls(Z)V

    .line 1762
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setUseWideViewPort(Z)V

    .line 1763
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setSupportMultipleWindows(Z)V

    .line 1764
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0xb

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_a

    .line 1765
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDisplayZoomControls(Z)V

    .line 1766
    :cond_a
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 1767
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAppCacheEnabled(Z)V

    .line 1768
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDatabaseEnabled(Z)V

    .line 1769
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDomStorageEnabled(Z)V

    .line 1770
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setGeolocationEnabled(Z)V

    .line 1771
    const-wide v20, 0x7fffffffffffffffL

    move-object/from16 v0, v16

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setAppCacheMaxSize(J)V

    .line 1772
    const-string v19, "appcache"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/tencent/msdk/webview/X5WebViewActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 1773
    const-string v19, "databases"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/tencent/msdk/webview/X5WebViewActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 1774
    const-string v19, "geolocation"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/tencent/msdk/webview/X5WebViewActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 1775
    sget-object v19, Lcom/tencent/smtt/sdk/WebSettings$PluginState;->ON_DEMAND:Lcom/tencent/smtt/sdk/WebSettings$PluginState;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setPluginState(Lcom/tencent/smtt/sdk/WebSettings$PluginState;)V

    .line 1776
    sget-object v19, Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;->HIGH:Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setRenderPriority(Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;)V

    .line 1777
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setSavePassword(Z)V

    .line 1778
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0x13

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_b

    .line 1779
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Lcom/tencent/smtt/sdk/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 1780
    :cond_b
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0x15

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_c

    .line 1781
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setMixedContentMode(I)V

    .line 1783
    :cond_c
    invoke-static/range {p0 .. p0}, Lcom/tencent/smtt/sdk/CookieSyncManager;->createInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/CookieSyncManager;

    .line 1784
    invoke-static {}, Lcom/tencent/smtt/sdk/CookieSyncManager;->getInstance()Lcom/tencent/smtt/sdk/CookieSyncManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/tencent/smtt/sdk/CookieSyncManager;->sync()V

    .line 1786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->webView:Lcom/tencent/smtt/sdk/WebView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->homePage:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1788
    .end local v4    # "base64Img":Ljava/lang/String;
    .end local v5    # "buf":[B
    .end local v6    # "density":F
    .end local v10    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12    # "manager":Landroid/net/ConnectivityManager;
    .end local v16    # "webSetting":Lcom/tencent/smtt/sdk/WebSettings;
    :catch_0
    move-exception v7

    .line 1790
    .local v7, "ex":Ljava/lang/Exception;
    const-string v19, "--Exception--"

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1791
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/msdk/webview/X5WebViewActivity;->finish()V

    goto/16 :goto_0

    .line 678
    .end local v7    # "ex":Ljava/lang/Exception;
    .end local v15    # "supportedOrientations":I
    .end local v18    # "zipFilePath":Ljava/lang/String;
    :cond_d
    :try_start_4
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "<script type=\'text/javascript\' src=\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->injectJsUrl:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\'></script>"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/webview/X5WebViewActivity;->injectJsUrl:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 724
    .end local v8    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v7

    .line 726
    .restart local v7    # "ex":Ljava/lang/Exception;
    const-string v19, "--Exception--"

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/msdk/webview/X5WebViewActivity;->finish()V

    goto/16 :goto_0

    .line 688
    .end local v7    # "ex":Ljava/lang/Exception;
    .restart local v8    # "intent":Landroid/content/Intent;
    :cond_e
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity;->useVideoPlayer:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    .line 690
    sget-object v19, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_Weixin:Lcom/tencent/msdk/consts/EPlatform;

    invoke-static/range {v19 .. v19}, Lcom/tencent/msdk/api/WGPlatform;->WGIsPlatformInstalled(Lcom/tencent/msdk/consts/EPlatform;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/webview/X5WebViewActivity;->isWXInstalled:Ljava/lang/Boolean;

    .line 691
    new-instance v11, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v11}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    .line 692
    .local v11, "loginRet":Lcom/tencent/msdk/api/LoginRet;
    invoke-static {v11}, Lcom/tencent/msdk/api/WGPlatform;->WGGetLoginRecord(Lcom/tencent/msdk/api/LoginRet;)I

    .line 693
    iget v0, v11, Lcom/tencent/msdk/api/LoginRet;->platform:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/webview/X5WebViewActivity;->platform:I

    goto/16 :goto_2

    .line 697
    .end local v11    # "loginRet":Lcom/tencent/msdk/api/LoginRet;
    :cond_f
    const-string v19, "isWXInstalled"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/webview/X5WebViewActivity;->isWXInstalled:Ljava/lang/Boolean;

    .line 698
    const-string v19, "platform"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/webview/X5WebViewActivity;->platform:I

    goto/16 :goto_2

    .line 708
    .restart local v15    # "supportedOrientations":I
    :cond_10
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v0, v15, :cond_11

    .line 709
    const/16 v19, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity;->setRequestedOrientation(I)V

    goto/16 :goto_3

    .line 710
    :cond_11
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v0, v15, :cond_5

    .line 711
    const/16 v19, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity;->setRequestedOrientation(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_3

    .line 776
    .restart local v4    # "base64Img":Ljava/lang/String;
    .restart local v10    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v18    # "zipFilePath":Ljava/lang/String;
    :cond_12
    :try_start_6
    const-string v4, "iVBORw0KGgoAAAANSUhEUgAAAGQAAABkCAYAAABw4pVUAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyFpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNS1jMDE0IDc5LjE1MTQ4MSwgMjAxMy8wMy8xMy0xMjowOToxNSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIChXaW5kb3dzKSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDoyODI2NjcyNUZFM0UxMUU2OTQ0Q0UyMjk2RDY3ODBDMSIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDoyODI2NjcyNkZFM0UxMUU2OTQ0Q0UyMjk2RDY3ODBDMSI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjI4MjY2NzIzRkUzRTExRTY5NDRDRTIyOTZENjc4MEMxIiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOjI4MjY2NzI0RkUzRTExRTY5NDRDRTIyOTZENjc4MEMxIi8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+jCVhnAAABENJREFUeNrsndtLk2Ecx99tzhllamQGRe6m6ZVBk4QUNEHvqtGFoHfd1N8U3XS4GF1Z86IhoS9lwSAvRKJ0QdqFzIxU8sCabv1+9Wys2MHNHZ7D9wNfeDcdjN+H533e33vY47DKw0HxUroonZQOSivFQ2mwzOKAEqdsUdYpq5QlygolVU5hS6GNMkTpE9sgP5uUCMUW2xUVcpJyizJg4AioxAiao4Qou5UQ0ksZp5xCbY/FDiVIeV/on1wF/uakTFDuUBpRz2PDNfRTWigf8s0vrgIfvk+5hjpWHD4IukRZoBweRQiPjHuUK6hd1eCj0guU+f9HSi4hE+IoClSX85TTlMVCQnrFnAFqt/vi3mUte/eUfWg7jhrVHK55cy4hARza1oV0j/ePkDOUftSmbvQLBxkhg0V6ElBdXMLBHyEOHFVJATtwsBCvhROFMsAOvCykG7WQhi6naOOBJH2JU3SMQJLunYW0oA7S0MJCPKiDNHhYCK4AykODEzWQCwiBEAAhEAIgBEIAhJSB2+12hEKhgeXl5UBPT4/0V0T5WsgDnWWEw+HB4eFhH7+ORqPffD7fc4wQCWQIId+lb9U1ljFEMi6n37NtOxoIBN5iDpFExujoqJ1IJFIQAhlmCtFBhjZCdJGhhRCdZCgvRDcZSgvRUYayQnSVoaQQnWUoJ0R3GUoJMUGGMkJMkcE0qCBjenp6iNBehvQjxDQZUgsxUYa0QkyVIa0QU2UwUl5T39/fv9vU1OTm7Y2NjZ9er/fZ3t5e0jIAKUdIJBJZSW+3t7c3T01NDfJuDELqxMjICO2l7M/p19x/cB9ighQphfBcQXPGrIlSpD3sNVWK1I2hiVKkP5dlmhQlTi5mSYnqLkWZ0+9Ciq27FKUuUJkgRblLuLpLUfImB52lKHsbkK5SlL5RTkcpyt9KqpsULW621kmKNo8j6CJFqwd2dJCi3SNtqkvR8incfFImJyf7IaTOUmZmZjJSfD7fWdm/N/+i8k1dpSSTSSsYDK76/f4T9DI1Njb2KhaL/ZL5O2v9Sw5oDAGEQAiAEAgBEAIgBELA0YQcoAzScMBC4qiDNMRZyDbqIA3bLCSGOkhDjIV8RR2kYZWFLKEO0rDEQr5QNlGLusMOVlgIP2ocQT3qDjtIpRtDG/1IffsP4SDTqfNwmUNd6sa79LSRfeokRNlFbWoO1zyzQED2kt0Jyg/KVdSopjzlyTyXEGbN+rvyZyfqVBPeUF5mv5FrUfuPlIsW1sitNguUx5RkMSFJ8c+8ivQ51K0qLFIeimnCKiaEOaTMU5qx+6o4rymP8rUZrgIfTAmT6xRepaYRtTwWO5QnlLCobU6Oejc4L6Z1m3LdwmLG5TR93Ge8EFIKUurt+W2UG5Q+SitqXZAt6+/pkFmrhHOF5T4vwZ/zUrrF5N8hZHmK7AZ1hOfbuCg67975csYn0VuU/JOEvwUYAIuLUB1MJrntAAAAAElFTkSuQmCC"

    goto/16 :goto_5

    .line 1748
    .restart local v5    # "buf":[B
    .restart local v6    # "density":F
    .restart local v12    # "manager":Landroid/net/ConnectivityManager;
    .restart local v16    # "webSetting":Lcom/tencent/smtt/sdk/WebSettings;
    :cond_13
    const/16 v19, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setCacheMode(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_6

    .line 759
    .end local v4    # "base64Img":Ljava/lang/String;
    .end local v5    # "buf":[B
    .end local v6    # "density":F
    .end local v12    # "manager":Landroid/net/ConnectivityManager;
    .end local v16    # "webSetting":Lcom/tencent/smtt/sdk/WebSettings;
    :catch_2
    move-exception v19

    goto/16 :goto_4
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 464
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 468
    :try_start_0
    const-string/jumbo v3, "\u5b58\u50a8\u56fe\u50cf"

    .line 469
    .local v3, "menuItemTitle":Ljava/lang/String;
    new-instance v2, Lcom/tencent/msdk/webview/X5WebViewActivity$2;

    invoke-direct {v2, p0}, Lcom/tencent/msdk/webview/X5WebViewActivity$2;-><init>(Lcom/tencent/msdk/webview/X5WebViewActivity;)V

    .line 481
    .local v2, "handler":Landroid/view/MenuItem$OnMenuItemClickListener;
    instance-of v6, p2, Lcom/tencent/smtt/sdk/WebView;

    if-eqz v6, :cond_1

    .line 483
    move-object v0, p2

    check-cast v0, Lcom/tencent/smtt/sdk/WebView;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/tencent/smtt/sdk/WebView;->getHitTestResult()Lcom/tencent/smtt/sdk/WebView$HitTestResult;

    move-result-object v4

    .line 484
    .local v4, "result":Lcom/tencent/smtt/sdk/WebView$HitTestResult;
    if-eqz v4, :cond_1

    .line 486
    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/WebView$HitTestResult;->getType()I

    move-result v5

    .line 487
    .local v5, "type":I
    const/4 v6, 0x5

    if-eq v6, v5, :cond_0

    const/16 v6, 0x8

    if-ne v6, v5, :cond_1

    .line 489
    :cond_0
    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->imgUrl:Ljava/lang/String;

    .line 490
    const-string/jumbo v6, "\u63d0\u793a"

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 491
    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v7

    const/4 v8, 0x0

    const-string/jumbo v9, "\u5b58\u50a8\u56fe\u50cf"

    invoke-interface {p1, v6, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 492
    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "\u53d6\u6d88"

    invoke-interface {p1, v6, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    .end local v2    # "handler":Landroid/view/MenuItem$OnMenuItemClickListener;
    .end local v3    # "menuItemTitle":Ljava/lang/String;
    .end local v4    # "result":Lcom/tencent/smtt/sdk/WebView$HitTestResult;
    .end local v5    # "type":I
    :cond_1
    :goto_0
    return-void

    .line 497
    :catch_0
    move-exception v1

    .line 499
    .local v1, "ex":Ljava/lang/Exception;
    const-string v6, "--Exception--"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 7

    .prologue
    .line 506
    iget-object v5, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->webView:Lcom/tencent/smtt/sdk/WebView;

    if-eqz v5, :cond_1

    .line 508
    iget-object v5, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v5}, Lcom/tencent/smtt/sdk/WebView;->removeAllViews()V

    .line 509
    iget-object v5, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->layout:Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_0

    .line 510
    iget-object v5, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->layout:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 511
    :cond_0
    iget-object v5, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v5}, Lcom/tencent/smtt/sdk/WebView;->destroy()V

    .line 514
    :try_start_0
    const-class v3, Ljava/net/InetAddress;

    .line 515
    .local v3, "inetAddressClass":Ljava/lang/Class;
    const-string v5, "addressCache"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 516
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 517
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 518
    .local v4, "object":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 519
    .local v0, "cacheClass":Ljava/lang/Class;
    const-string v5, "clear"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    .end local v0    # "cacheClass":Ljava/lang/Class;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "inetAddressClass":Ljava/lang/Class;
    .end local v4    # "object":Ljava/lang/Object;
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 527
    return-void

    .line 521
    :catch_0
    move-exception v1

    .line 523
    .local v1, "ex":Ljava/lang/Exception;
    const-string v5, "--Exception--"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 594
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 595
    invoke-direct {p0}, Lcom/tencent/msdk/webview/X5WebViewActivity;->reloadWebView()V

    .line 596
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 2
    .param p1, "isInPictureInPictureMode"    # Z

    .prologue
    .line 644
    if-nez p1, :cond_0

    .line 645
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->webView:Lcom/tencent/smtt/sdk/WebView;

    const-string v1, "javascript:exitPictureInPictureModeCallback();"

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    .line 646
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 387
    const/16 v0, 0x7e1

    if-ne v0, p1, :cond_0

    .line 389
    array-length v0, p3

    if-lez v0, :cond_1

    aget v0, p3, v3

    if-nez v0, :cond_1

    .line 390
    new-instance v0, Lcom/tencent/msdk/webview/X5WebViewActivity$SaveImage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$SaveImage;-><init>(Lcom/tencent/msdk/webview/X5WebViewActivity;Lcom/tencent/msdk/webview/X5WebViewActivity$1;)V

    new-array v1, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->imgUrl:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$SaveImage;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/msdk/webview/X5WebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u6ca1\u6709\u6743\u9650\u5b58\u50a8\u56fe\u50cf\uff0c\u53ef\u5728\"\u8bbe\u7f6e->\u5e94\u7528\u7ba1\u7406\"\u4e2d\u6253\u5f00\u5b58\u50a8\u6743\u9650"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 2447
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 2450
    :try_start_0
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->nativeVideoView:Lcom/ryg/dynamicload/internal/DLNativeView;

    if-eqz v0, :cond_0

    .line 2451
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->nativeVideoView:Lcom/ryg/dynamicload/internal/DLNativeView;

    invoke-interface {v0}, Lcom/ryg/dynamicload/internal/DLNativeView;->onRestart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2459
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->fullScreenNativeVideoView:Lcom/ryg/dynamicload/internal/DLNativeView;

    if-eqz v0, :cond_1

    .line 2460
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->fullScreenNativeVideoView:Lcom/ryg/dynamicload/internal/DLNativeView;

    invoke-interface {v0}, Lcom/ryg/dynamicload/internal/DLNativeView;->onRestart()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2465
    :cond_1
    :goto_1
    return-void

    .line 2462
    :catch_0
    move-exception v0

    goto :goto_1

    .line 2453
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 561
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 565
    if-eqz p1, :cond_0

    .line 567
    :try_start_0
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->homePage:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string v1, "isWXInstalled"

    iget-object v2, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->isWXInstalled:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 569
    const-string v1, "platform"

    iget v2, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->platform:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 572
    :catch_0
    move-exception v0

    .line 574
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "--Exception--"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 2424
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2427
    :try_start_0
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->nativeVideoView:Lcom/ryg/dynamicload/internal/DLNativeView;

    if-eqz v0, :cond_0

    .line 2428
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->nativeVideoView:Lcom/ryg/dynamicload/internal/DLNativeView;

    invoke-interface {v0}, Lcom/ryg/dynamicload/internal/DLNativeView;->onStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2436
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->fullScreenNativeVideoView:Lcom/ryg/dynamicload/internal/DLNativeView;

    if-eqz v0, :cond_1

    .line 2437
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->fullScreenNativeVideoView:Lcom/ryg/dynamicload/internal/DLNativeView;

    invoke-interface {v0}, Lcom/ryg/dynamicload/internal/DLNativeView;->onStop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2442
    :cond_1
    :goto_1
    return-void

    .line 2439
    :catch_0
    move-exception v0

    goto :goto_1

    .line 2430
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 601
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    .line 602
    const/16 v0, 0x50

    if-ne v0, p1, :cond_0

    .line 603
    invoke-direct {p0}, Lcom/tencent/msdk/webview/X5WebViewActivity;->reloadWebView()V

    .line 604
    :cond_0
    return-void
.end method

.method public sendRequestToHost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "cookies"    # Ljava/lang/String;
    .param p5, "referer"    # Ljava/lang/String;
    .param p6, "method"    # Ljava/lang/String;
    .param p7, "encoding"    # Ljava/lang/String;
    .param p8, "eventName"    # Ljava/lang/String;
    .param p9, "flag"    # Ljava/lang/String;

    .prologue
    .line 2377
    new-instance v11, Ljava/lang/Thread;

    new-instance v0, Lcom/tencent/msdk/webview/X5WebViewActivity$13;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, p3

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/tencent/msdk/webview/X5WebViewActivity$13;-><init>(Lcom/tencent/msdk/webview/X5WebViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v11, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2411
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    .line 2412
    return-void
.end method

.method public sendToQQ(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "scene"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "targetUrl"    # Ljava/lang/String;
    .param p5, "imgUrl"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1956
    if-eq v1, p1, :cond_0

    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 1960
    :cond_0
    if-ne v1, p1, :cond_2

    :try_start_0
    sget-object v0, Lcom/tencent/msdk/api/eQQScene;->QQScene_QZone:Lcom/tencent/msdk/api/eQQScene;

    :goto_0
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v5

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lcom/tencent/msdk/api/WGPlatform;->WGSendToQQ(Lcom/tencent/msdk/api/eQQScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1967
    :cond_1
    :goto_1
    return-void

    .line 1960
    :cond_2
    sget-object v0, Lcom/tencent/msdk/api/eQQScene;->QQScene_Session:Lcom/tencent/msdk/api/eQQScene;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1962
    :catch_0
    move-exception v6

    .line 1964
    .local v6, "ex":Ljava/lang/Exception;
    const-string v0, "--Exception--"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public sendToQQ(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "qqAppid"    # Ljava/lang/String;
    .param p2, "scene"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "summary"    # Ljava/lang/String;
    .param p5, "targetUrl"    # Ljava/lang/String;
    .param p6, "imageUrl"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 2015
    if-eq v5, p2, :cond_0

    const/4 v3, 0x2

    if-ne v3, p2, :cond_1

    .line 2019
    :cond_0
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2020
    .local v1, "params":Landroid/os/Bundle;
    const-string v3, "req_type"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2021
    const-string/jumbo v3, "title"

    invoke-virtual {v1, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2022
    const-string/jumbo v3, "summary"

    invoke-virtual {v1, v3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    const-string/jumbo v3, "targetUrl"

    invoke-virtual {v1, v3, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2024
    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2025
    const-string v3, "imageUrl"

    new-instance v4, Lcom/tencent/msdk/webview/X5WebViewActivity$10;

    invoke-direct {v4, p0, p6}, Lcom/tencent/msdk/webview/X5WebViewActivity$10;-><init>(Lcom/tencent/msdk/webview/X5WebViewActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2028
    :goto_0
    invoke-static {p1, p0}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v2

    .line 2029
    .local v2, "tencent":Lcom/tencent/tauth/Tencent;
    if-ne v5, p2, :cond_3

    .line 2030
    const/4 v3, 0x0

    invoke-virtual {v2, p0, v1, v3}, Lcom/tencent/tauth/Tencent;->shareToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    .line 2039
    .end local v1    # "params":Landroid/os/Bundle;
    .end local v2    # "tencent":Lcom/tencent/tauth/Tencent;
    :cond_1
    :goto_1
    return-void

    .line 2027
    .restart local v1    # "params":Landroid/os/Bundle;
    :cond_2
    const-string v3, "imageUrl"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2034
    .end local v1    # "params":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 2036
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "--Exception--"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2032
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "params":Landroid/os/Bundle;
    .restart local v2    # "tencent":Lcom/tencent/tauth/Tencent;
    :cond_3
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v2, p0, v1, v3}, Lcom/tencent/tauth/Tencent;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public sendToWeixinWithUrl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "scene"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "targetUrl"    # Ljava/lang/String;
    .param p5, "imgUrl"    # Ljava/lang/String;

    .prologue
    .line 1972
    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 1974
    :cond_0
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/tencent/msdk/webview/X5WebViewActivity$9;

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/tencent/msdk/webview/X5WebViewActivity$9;-><init>(Lcom/tencent/msdk/webview/X5WebViewActivity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2008
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 2010
    :cond_1
    return-void
.end method

.method public sendToWeixinWithUrl(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "wxAppid"    # Ljava/lang/String;
    .param p2, "scene"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "summary"    # Ljava/lang/String;
    .param p5, "targetUrl"    # Ljava/lang/String;
    .param p6, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 2044
    const/4 v0, 0x1

    if-eq v0, p2, :cond_0

    const/4 v0, 0x2

    if-ne v0, p2, :cond_1

    .line 2046
    :cond_0
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/tencent/msdk/webview/X5WebViewActivity$11;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    move v6, p2

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/tencent/msdk/webview/X5WebViewActivity$11;-><init>(Lcom/tencent/msdk/webview/X5WebViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2091
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 2093
    :cond_1
    return-void
.end method

.method public showUi()V
    .locals 2

    .prologue
    .line 2360
    iget-boolean v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->needShow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->uiLayer:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 2361
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity;->uiLayer:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2362
    :cond_0
    return-void
.end method
