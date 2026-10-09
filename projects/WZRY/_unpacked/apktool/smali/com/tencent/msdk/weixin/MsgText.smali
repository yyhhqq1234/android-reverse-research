.class public Lcom/tencent/msdk/weixin/MsgText;
.super Lcom/tencent/msdk/weixin/MsgBase;
.source "MsgText.java"


# static fields
.field private static final MSG_TYPE:Ljava/lang/String; = "text"


# instance fields
.field private final MSG_KEY:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const-string/jumbo v0, "text"

    invoke-direct {p0, v0}, Lcom/tencent/msdk/weixin/MsgBase;-><init>(Ljava/lang/String;)V

    .line 10
    const-string/jumbo v0, "type_info"

    iput-object v0, p0, Lcom/tencent/msdk/weixin/MsgText;->MSG_KEY:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public checkParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/tencent/msdk/weixin/MsgBase;->checkParam()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "errorMsg":Ljava/lang/String;
    return-object v0
.end method

.method protected getMsgKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, "type_info"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, ""

    return-object v0
.end method
