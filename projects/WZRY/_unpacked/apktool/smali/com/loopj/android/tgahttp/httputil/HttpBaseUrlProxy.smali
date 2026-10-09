.class public abstract Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy;
.super Ljava/lang/Object;
.source "HttpBaseUrlProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Param:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpBaseUrlProxy"


# instance fields
.field private client:Lcom/loopj/android/tgahttp/httputil/HttpBaseClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    .local p0, "this":Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy;, "Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy<TParam;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/loopj/android/tgahttp/httputil/HttpBaseClient;

    invoke-direct {v0}, Lcom/loopj/android/tgahttp/httputil/HttpBaseClient;-><init>()V

    iput-object v0, p0, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy;->client:Lcom/loopj/android/tgahttp/httputil/HttpBaseClient;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy;)Lcom/loopj/android/tgahttp/httputil/HttpBaseClient;
    .locals 1
    .param p0, "x0"    # Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy;->client:Lcom/loopj/android/tgahttp/httputil/HttpBaseClient;

    return-object v0
.end method


# virtual methods
.method protected abstract convertParamToPbReqBuf(Ljava/lang/Object;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParam;)[B"
        }
    .end annotation
.end method

.method protected abstract getParameter(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParam;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method protected abstract getToken(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParam;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
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
    .line 33
    .local p0, "this":Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy;, "Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy<TParam;>;"
    .local p3, "param":Ljava/lang/Object;, "TParam;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$1;-><init>(Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy;Landroid/content/Context;Ljava/lang/Object;Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$Callback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 69
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 70
    return-void
.end method
