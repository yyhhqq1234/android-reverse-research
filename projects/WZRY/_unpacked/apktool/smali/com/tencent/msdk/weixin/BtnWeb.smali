.class public Lcom/tencent/msdk/weixin/BtnWeb;
.super Lcom/tencent/msdk/weixin/BtnBase;
.source "BtnWeb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/weixin/BtnWeb$Webview;
    }
.end annotation


# static fields
.field private static final sWebKey:Ljava/lang/String; = "webview"


# instance fields
.field private mType:Ljava/lang/String;

.field private mWebview:Lcom/tencent/msdk/weixin/BtnWeb$Webview;

.field private sDefaultName:Ljava/lang/String;

.field private sDefaultUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/tencent/msdk/weixin/BtnBase;-><init>()V

    .line 10
    new-instance v0, Lcom/tencent/msdk/weixin/BtnWeb$Webview;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/msdk/weixin/BtnWeb$Webview;-><init>(Lcom/tencent/msdk/weixin/BtnWeb;Lcom/tencent/msdk/weixin/BtnWeb$1;)V

    iput-object v0, p0, Lcom/tencent/msdk/weixin/BtnWeb;->mWebview:Lcom/tencent/msdk/weixin/BtnWeb$Webview;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/weixin/BtnWeb;->sDefaultUrl:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/weixin/BtnWeb;->sDefaultName:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/weixin/BtnWeb;->mType:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, "web"

    iput-object v0, p0, Lcom/tencent/msdk/weixin/BtnWeb;->mType:Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lcom/tencent/msdk/weixin/BtnWeb;->sDefaultName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/weixin/BtnWeb;->setmName(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/tencent/msdk/weixin/BtnWeb;->sDefaultUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/weixin/BtnWeb;->setmUrl(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/tencent/msdk/weixin/BtnBase;-><init>()V

    .line 10
    new-instance v0, Lcom/tencent/msdk/weixin/BtnWeb$Webview;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/msdk/weixin/BtnWeb$Webview;-><init>(Lcom/tencent/msdk/weixin/BtnWeb;Lcom/tencent/msdk/weixin/BtnWeb$1;)V

    iput-object v0, p0, Lcom/tencent/msdk/weixin/BtnWeb;->mWebview:Lcom/tencent/msdk/weixin/BtnWeb$Webview;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/weixin/BtnWeb;->sDefaultUrl:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/weixin/BtnWeb;->sDefaultName:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/weixin/BtnWeb;->mType:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "web"

    iput-object v0, p0, Lcom/tencent/msdk/weixin/BtnWeb;->mType:Ljava/lang/String;

    .line 19
    invoke-virtual {p0, p1}, Lcom/tencent/msdk/weixin/BtnWeb;->setmName(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p2}, Lcom/tencent/msdk/weixin/BtnWeb;->setmUrl(Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public checkParam()Ljava/lang/String;
    .locals 3

    .prologue
    .line 64
    invoke-super {p0}, Lcom/tencent/msdk/weixin/BtnBase;->checkParam()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v1, p0, Lcom/tencent/msdk/weixin/BtnWeb;->mWebview:Lcom/tencent/msdk/weixin/BtnWeb$Webview;

    invoke-static {v1}, Lcom/tencent/msdk/weixin/BtnWeb$Webview;->access$100(Lcom/tencent/msdk/weixin/BtnWeb$Webview;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mWebview.mUrl cann\'t be Empty;  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setmUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "mUrl"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tencent/msdk/weixin/BtnWeb;->mWebview:Lcom/tencent/msdk/weixin/BtnWeb$Webview;

    invoke-virtual {v0, p1}, Lcom/tencent/msdk/weixin/BtnWeb$Webview;->setmUrl(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 46
    :try_start_0
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 47
    .local v1, "js":Lorg/json/JSONStringer;
    invoke-virtual {v1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v2

    const-string/jumbo v3, "type"

    .line 48
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/msdk/weixin/BtnWeb;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "name"

    .line 49
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/msdk/weixin/BtnWeb;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    const-string/jumbo v3, "webview"

    .line 50
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v2

    const-string/jumbo v3, "url"

    .line 52
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/msdk/weixin/BtnWeb;->mWebview:Lcom/tencent/msdk/weixin/BtnWeb$Webview;

    invoke-static {v3}, Lcom/tencent/msdk/weixin/BtnWeb$Webview;->access$100(Lcom/tencent/msdk/weixin/BtnWeb$Webview;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v2

    .line 54
    invoke-virtual {v2}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 55
    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 58
    .end local v1    # "js":Lorg/json/JSONStringer;
    :goto_0
    return-object v2

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 58
    const-string v2, ""

    goto :goto_0
.end method
