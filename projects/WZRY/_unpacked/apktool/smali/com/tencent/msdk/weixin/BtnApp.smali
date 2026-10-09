.class public Lcom/tencent/msdk/weixin/BtnApp;
.super Lcom/tencent/msdk/weixin/BtnBase;
.source "BtnApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/weixin/BtnApp$App;
    }
.end annotation


# static fields
.field private static final sAppKey:Ljava/lang/String; = "app"


# instance fields
.field private mApp:Lcom/tencent/msdk/weixin/BtnApp$App;

.field private sDefaultMsgExt:Ljava/lang/String;

.field private sDefaultName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/tencent/msdk/weixin/BtnBase;-><init>()V

    .line 11
    new-instance v0, Lcom/tencent/msdk/weixin/BtnApp$App;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/msdk/weixin/BtnApp$App;-><init>(Lcom/tencent/msdk/weixin/BtnApp;Lcom/tencent/msdk/weixin/BtnApp$1;)V

    iput-object v0, p0, Lcom/tencent/msdk/weixin/BtnApp;->mApp:Lcom/tencent/msdk/weixin/BtnApp$App;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/weixin/BtnApp;->sDefaultName:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/weixin/BtnApp;->sDefaultMsgExt:Ljava/lang/String;

    .line 24
    const-string v0, "app"

    iput-object v0, p0, Lcom/tencent/msdk/weixin/BtnApp;->mType:Ljava/lang/String;

    .line 25
    iget-object v0, p0, Lcom/tencent/msdk/weixin/BtnApp;->sDefaultName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/weixin/BtnApp;->setmName(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/tencent/msdk/weixin/BtnApp;->sDefaultMsgExt:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/weixin/BtnApp;->setmMessageExt(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "btnName"    # Ljava/lang/String;
    .param p2, "msgExt"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/tencent/msdk/weixin/BtnBase;-><init>()V

    .line 11
    new-instance v0, Lcom/tencent/msdk/weixin/BtnApp$App;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/msdk/weixin/BtnApp$App;-><init>(Lcom/tencent/msdk/weixin/BtnApp;Lcom/tencent/msdk/weixin/BtnApp$1;)V

    iput-object v0, p0, Lcom/tencent/msdk/weixin/BtnApp;->mApp:Lcom/tencent/msdk/weixin/BtnApp$App;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/weixin/BtnApp;->sDefaultName:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/weixin/BtnApp;->sDefaultMsgExt:Ljava/lang/String;

    .line 17
    const-string v0, "app"

    iput-object v0, p0, Lcom/tencent/msdk/weixin/BtnApp;->mType:Ljava/lang/String;

    .line 18
    invoke-virtual {p0, p1}, Lcom/tencent/msdk/weixin/BtnApp;->setmName(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, p2}, Lcom/tencent/msdk/weixin/BtnApp;->setmMessageExt(Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public checkParam()Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    invoke-super {p0}, Lcom/tencent/msdk/weixin/BtnBase;->checkParam()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v1, p0, Lcom/tencent/msdk/weixin/BtnApp;->mApp:Lcom/tencent/msdk/weixin/BtnApp$App;

    invoke-static {v1}, Lcom/tencent/msdk/weixin/BtnApp$App;->access$100(Lcom/tencent/msdk/weixin/BtnApp$App;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mName cann\'t be Empty;  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_0
    return-object v0
.end method

.method public setmMessageExt(Ljava/lang/String;)V
    .locals 1
    .param p1, "mMessageExt"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/msdk/weixin/BtnApp;->mApp:Lcom/tencent/msdk/weixin/BtnApp$App;

    invoke-virtual {v0, p1}, Lcom/tencent/msdk/weixin/BtnApp$App;->setmMessageExt(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 44
    :try_start_0
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 45
    .local v1, "js":Lorg/json/JSONStringer;
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v2

    const-string/jumbo v3, "type"

    .line 46
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/msdk/weixin/BtnApp;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "name"

    .line 47
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/msdk/weixin/BtnApp;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "app"

    .line 48
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    .line 49
    invoke-virtual {v2}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "message_ext"

    .line 50
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/msdk/weixin/BtnApp;->mApp:Lcom/tencent/msdk/weixin/BtnApp$App;

    invoke-static {v3}, Lcom/tencent/msdk/weixin/BtnApp$App;->access$100(Lcom/tencent/msdk/weixin/BtnApp$App;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v2

    .line 52
    invoke-virtual {v2}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 53
    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 56
    .end local v1    # "js":Lorg/json/JSONStringer;
    :goto_0
    return-object v2

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 56
    const-string v2, ""

    goto :goto_0
.end method
