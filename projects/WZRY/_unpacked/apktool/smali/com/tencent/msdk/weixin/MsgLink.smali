.class public Lcom/tencent/msdk/weixin/MsgLink;
.super Lcom/tencent/msdk/weixin/MsgBase;
.source "MsgLink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/weixin/MsgLink$Link;
    }
.end annotation


# static fields
.field private static sDefaultIconUrl:Ljava/lang/String; = null

.field private static sDefaultUrl:Ljava/lang/String; = null

.field private static final sMSG_TYPE:Ljava/lang/String; = "link"

.field private static final sMsgKey:Ljava/lang/String; = "type_info"


# instance fields
.field private mLink:Lcom/tencent/msdk/weixin/MsgLink$Link;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, ""

    sput-object v0, Lcom/tencent/msdk/weixin/MsgLink;->sDefaultIconUrl:Ljava/lang/String;

    .line 14
    const-string v0, ""

    sput-object v0, Lcom/tencent/msdk/weixin/MsgLink;->sDefaultUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "link"

    invoke-direct {p0, v0}, Lcom/tencent/msdk/weixin/MsgBase;-><init>(Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/tencent/msdk/weixin/MsgLink$Link;

    invoke-direct {v0, p0}, Lcom/tencent/msdk/weixin/MsgLink$Link;-><init>(Lcom/tencent/msdk/weixin/MsgLink;)V

    iput-object v0, p0, Lcom/tencent/msdk/weixin/MsgLink;->mLink:Lcom/tencent/msdk/weixin/MsgLink$Link;

    .line 27
    sget-object v0, Lcom/tencent/msdk/weixin/MsgLink;->sDefaultUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/weixin/MsgLink;->setmUrl(Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/tencent/msdk/weixin/MsgLink;->sDefaultIconUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/weixin/MsgLink;->setmIconUrl(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "picUrl"    # Ljava/lang/String;
    .param p2, "targetUrl"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/tencent/msdk/weixin/MsgLink;-><init>()V

    .line 18
    invoke-virtual {p0, p1}, Lcom/tencent/msdk/weixin/MsgLink;->setmIconUrl(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, p2}, Lcom/tencent/msdk/weixin/MsgLink;->setmUrl(Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public checkParam()Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    invoke-super {p0}, Lcom/tencent/msdk/weixin/MsgBase;->checkParam()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/tencent/msdk/weixin/MsgLink;->mLink:Lcom/tencent/msdk/weixin/MsgLink$Link;

    invoke-static {v1}, Lcom/tencent/msdk/weixin/MsgLink$Link;->access$000(Lcom/tencent/msdk/weixin/MsgLink$Link;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mIconUrl cann\'t be Empty;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/tencent/msdk/weixin/MsgLink;->mLink:Lcom/tencent/msdk/weixin/MsgLink$Link;

    invoke-static {v1}, Lcom/tencent/msdk/weixin/MsgLink$Link;->access$100(Lcom/tencent/msdk/weixin/MsgLink$Link;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mUrl cann\'t be Empty;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getMsgKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string/jumbo v0, "type_info"

    return-object v0
.end method

.method public setmIconUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "mIconUrl"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tencent/msdk/weixin/MsgLink;->mLink:Lcom/tencent/msdk/weixin/MsgLink$Link;

    invoke-virtual {v0, p1}, Lcom/tencent/msdk/weixin/MsgLink$Link;->setmIconUrl(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public setmUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "mUrl"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tencent/msdk/weixin/MsgLink;->mLink:Lcom/tencent/msdk/weixin/MsgLink$Link;

    invoke-virtual {v0, p1}, Lcom/tencent/msdk/weixin/MsgLink$Link;->setmUrl(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 54
    :try_start_0
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 55
    .local v1, "js":Lorg/json/JSONStringer;
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v2

    const-string/jumbo v3, "url"

    .line 56
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/msdk/weixin/MsgLink;->mLink:Lcom/tencent/msdk/weixin/MsgLink$Link;

    invoke-static {v3}, Lcom/tencent/msdk/weixin/MsgLink$Link;->access$100(Lcom/tencent/msdk/weixin/MsgLink$Link;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "iconurl"

    .line 57
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/msdk/weixin/MsgLink;->mLink:Lcom/tencent/msdk/weixin/MsgLink$Link;

    invoke-static {v3}, Lcom/tencent/msdk/weixin/MsgLink$Link;->access$000(Lcom/tencent/msdk/weixin/MsgLink$Link;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    .line 58
    invoke-virtual {v2}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 59
    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 62
    .end local v1    # "js":Lorg/json/JSONStringer;
    :goto_0
    return-object v2

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 62
    const-string v2, ""

    goto :goto_0
.end method
