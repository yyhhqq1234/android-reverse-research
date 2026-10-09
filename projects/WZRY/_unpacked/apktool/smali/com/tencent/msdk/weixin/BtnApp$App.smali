.class Lcom/tencent/msdk/weixin/BtnApp$App;
.super Ljava/lang/Object;
.source "BtnApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/weixin/BtnApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "App"
.end annotation


# instance fields
.field private mMessageExt:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/msdk/weixin/BtnApp;


# direct methods
.method private constructor <init>(Lcom/tencent/msdk/weixin/BtnApp;)V
    .locals 1

    .prologue
    .line 29
    iput-object p1, p0, Lcom/tencent/msdk/weixin/BtnApp$App;->this$0:Lcom/tencent/msdk/weixin/BtnApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/weixin/BtnApp$App;->mMessageExt:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/msdk/weixin/BtnApp;Lcom/tencent/msdk/weixin/BtnApp$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/msdk/weixin/BtnApp;
    .param p2, "x1"    # Lcom/tencent/msdk/weixin/BtnApp$1;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/tencent/msdk/weixin/BtnApp$App;-><init>(Lcom/tencent/msdk/weixin/BtnApp;)V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/msdk/weixin/BtnApp$App;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/weixin/BtnApp$App;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/msdk/weixin/BtnApp$App;->mMessageExt:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public setmMessageExt(Ljava/lang/String;)V
    .locals 0
    .param p1, "mMessageExt"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/tencent/msdk/weixin/BtnApp$App;->mMessageExt:Ljava/lang/String;

    .line 34
    return-void
.end method
