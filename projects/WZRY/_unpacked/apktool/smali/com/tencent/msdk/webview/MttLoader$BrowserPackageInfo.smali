.class Lcom/tencent/msdk/webview/MttLoader$BrowserPackageInfo;
.super Ljava/lang/Object;
.source "MttLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/webview/MttLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BrowserPackageInfo"
.end annotation


# instance fields
.field public classname:Ljava/lang/String;

.field public packagename:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/webview/MttLoader$BrowserPackageInfo;->classname:Ljava/lang/String;

    .line 162
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/webview/MttLoader$BrowserPackageInfo;->packagename:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/msdk/webview/MttLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/msdk/webview/MttLoader$1;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/tencent/msdk/webview/MttLoader$BrowserPackageInfo;-><init>()V

    return-void
.end method
