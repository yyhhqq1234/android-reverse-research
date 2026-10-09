.class public abstract Lcom/tencent/msdk/weixin/BtnBase;
.super Lorg/json/JSONObject;
.source "BtnBase.java"


# static fields
.field protected static final TYPE_APP:Ljava/lang/String; = "app"

.field protected static final TYPE_RANK:Ljava/lang/String; = "rank"

.field protected static final TYPE_WEB:Ljava/lang/String; = "web"

.field protected static sButtonKey:Ljava/lang/String;


# instance fields
.field protected mName:Ljava/lang/String;

.field protected mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "button"

    sput-object v0, Lcom/tencent/msdk/weixin/BtnBase;->sButtonKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/weixin/BtnBase;->mType:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/weixin/BtnBase;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkParam()Ljava/lang/String;
    .locals 3

    .prologue
    .line 30
    const-string v0, ""

    .line 31
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v1, p0, Lcom/tencent/msdk/weixin/BtnBase;->mName:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mName cann\'t be Empty;  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/tencent/msdk/weixin/BtnBase;->mType:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mType cann\'t be Empty;  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getBtnType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/tencent/msdk/weixin/BtnBase;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tencent/msdk/weixin/BtnBase;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public setmName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mName"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/tencent/msdk/weixin/BtnBase;->mName:Ljava/lang/String;

    .line 27
    return-void
.end method
