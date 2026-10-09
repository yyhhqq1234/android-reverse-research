.class public abstract Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy;
.super Ljava/lang/Object;
.source "HttpBaseUrlWithParameterProxy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Param:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static AREAID:Ljava/lang/String; = null

.field public static OPENID:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "BaseUrlWithParamProxy"

.field public static UID:Ljava/lang/String;


# instance fields
.field private client:Lcom/loopj/android/tgahttp/httputil/HttpBaseClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, ""

    sput-object v0, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy;->UID:Ljava/lang/String;

    .line 22
    const-string v0, ""

    sput-object v0, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy;->OPENID:Ljava/lang/String;

    .line 23
    const-string v0, ""

    sput-object v0, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy;->AREAID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy;, "Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy<TParam;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/loopj/android/tgahttp/httputil/HttpBaseClient;

    invoke-direct {v0}, Lcom/loopj/android/tgahttp/httputil/HttpBaseClient;-><init>()V

    iput-object v0, p0, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy;->client:Lcom/loopj/android/tgahttp/httputil/HttpBaseClient;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy;)Lcom/loopj/android/tgahttp/httputil/HttpBaseClient;
    .locals 1
    .param p0, "x0"    # Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy;->client:Lcom/loopj/android/tgahttp/httputil/HttpBaseClient;

    return-object v0
.end method

.method private getModelWithURLEncode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    .local p0, "this":Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy;, "Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy<TParam;>;"
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getToken(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParam;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy;, "Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy<TParam;>;"
    .local p1, "param":Ljava/lang/Object;, "TParam;"
    if-nez p2, :cond_0

    const-string v2, ""

    .line 92
    .local v2, "uid":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy;->convertParamToPbReqBuf(Ljava/lang/Object;)[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 93
    .local v0, "req_json":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/loopj/android/tgahttp/Configs/Configs;->HTTP_KEY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/loopj/android/tgahttp/Configs/MD5Util;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/loopj/android/tgahttp/Configs/Configs;->HTTP_SEQ:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/loopj/android/tgahttp/Configs/MD5Util;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "token":Ljava/lang/String;
    sget v3, Lcom/loopj/android/tgahttp/Configs/Configs;->HTTP_SEQ:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/loopj/android/tgahttp/Configs/Configs;->HTTP_SEQ:I

    .line 95
    return-object v1

    .end local v0    # "req_json":Ljava/lang/String;
    .end local v1    # "token":Ljava/lang/String;
    .end local v2    # "uid":Ljava/lang/String;
    :cond_0
    move-object v2, p2

    .line 91
    goto :goto_0
.end method


# virtual methods
.method protected abstract convertParamToPbReqBuf(Ljava/lang/Object;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParam;)[B"
        }
    .end annotation
.end method

.method public generateURLWithoutParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "req_key"    # Ljava/lang/String;

    .prologue
    .line 76
    .local p0, "this":Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy;, "Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy<TParam;>;"
    const-string v0, ""

    .line 77
    .local v0, "url":Ljava/lang/String;
    sget-boolean v1, Lcom/loopj/android/tgahttp/Configs/Configs;->isUseTestIP:Z

    if-eqz v1, :cond_0

    .line 78
    sget-object v0, Lcom/loopj/android/tgahttp/Configs/Configs;->URL_STR_TEST:Ljava/lang/String;

    .line 82
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 80
    :cond_0
    sget-object v0, Lcom/loopj/android/tgahttp/Configs/Configs;->URL_STR:Ljava/lang/String;

    goto :goto_0
.end method

.method public getParameter(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParam;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy;, "Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy<TParam;>;"
    .local p1, "param":Ljava/lang/Object;, "TParam;"
    const-string v0, "?client_type=%s&client_ver=%s&seq=%s&token=%s&uid=%s&model=%s&os_ver=%s&area_id=%s&openid=%s"

    .line 86
    .local v0, "param_format":Ljava/lang/String;
    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/loopj/android/tgahttp/Configs/Configs;->CLIENT_TYPE:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget v4, Lcom/loopj/android/tgahttp/Configs/Configs;->plugin_version:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget v4, Lcom/loopj/android/tgahttp/Configs/Configs;->HTTP_SEQ:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy;->UID:Ljava/lang/String;

    invoke-direct {p0, p1, v4}, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy;->getToken(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy;->UID:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-direct {p0}, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy;->getModelWithURLEncode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy;->AREAID:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy;->OPENID:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "param_result":Ljava/lang/String;
    return-object v1
.end method

.method protected abstract getUrl(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParam;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method protected abstract parsePbRspBuf([BLjava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BTParam;)I"
        }
    .end annotation
.end method

.method public postReq(Landroid/content/Context;Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$Callback;Ljava/lang/Object;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$Callback;",
            "TParam;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy;, "Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy<TParam;>;"
    .local p3, "param":Ljava/lang/Object;, "TParam;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1;-><init>(Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy;Landroid/content/Context;Ljava/lang/Object;Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$Callback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 72
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 73
    return-void
.end method
