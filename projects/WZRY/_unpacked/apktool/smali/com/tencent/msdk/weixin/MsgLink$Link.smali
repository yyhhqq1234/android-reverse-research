.class Lcom/tencent/msdk/weixin/MsgLink$Link;
.super Ljava/lang/Object;
.source "MsgLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/weixin/MsgLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Link"
.end annotation


# instance fields
.field private mIconUrl:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/msdk/weixin/MsgLink;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/weixin/MsgLink;)V
    .locals 1
    .param p1, "this$0"    # Lcom/tencent/msdk/weixin/MsgLink;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/tencent/msdk/weixin/MsgLink$Link;->this$0:Lcom/tencent/msdk/weixin/MsgLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/weixin/MsgLink$Link;->mUrl:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/weixin/MsgLink$Link;->mIconUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/msdk/weixin/MsgLink$Link;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/weixin/MsgLink$Link;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/msdk/weixin/MsgLink$Link;->mIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/msdk/weixin/MsgLink$Link;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/weixin/MsgLink$Link;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/msdk/weixin/MsgLink$Link;->mUrl:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public setmIconUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mIconUrl"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/tencent/msdk/weixin/MsgLink$Link;->mIconUrl:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setmUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUrl"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/tencent/msdk/weixin/MsgLink$Link;->mUrl:Ljava/lang/String;

    .line 37
    return-void
.end method
