.class Lcom/tencent/msdk/weixin/BtnWeb$Webview;
.super Ljava/lang/Object;
.source "BtnWeb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/weixin/BtnWeb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Webview"
.end annotation


# instance fields
.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/msdk/weixin/BtnWeb;


# direct methods
.method private constructor <init>(Lcom/tencent/msdk/weixin/BtnWeb;)V
    .locals 1

    .prologue
    .line 30
    iput-object p1, p0, Lcom/tencent/msdk/weixin/BtnWeb$Webview;->this$0:Lcom/tencent/msdk/weixin/BtnWeb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/weixin/BtnWeb$Webview;->mUrl:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/msdk/weixin/BtnWeb;Lcom/tencent/msdk/weixin/BtnWeb$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/msdk/weixin/BtnWeb;
    .param p2, "x1"    # Lcom/tencent/msdk/weixin/BtnWeb$1;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/tencent/msdk/weixin/BtnWeb$Webview;-><init>(Lcom/tencent/msdk/weixin/BtnWeb;)V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/msdk/weixin/BtnWeb$Webview;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/weixin/BtnWeb$Webview;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tencent/msdk/weixin/BtnWeb$Webview;->mUrl:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public setmUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUrl"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/tencent/msdk/weixin/BtnWeb$Webview;->mUrl:Ljava/lang/String;

    .line 35
    return-void
.end method
