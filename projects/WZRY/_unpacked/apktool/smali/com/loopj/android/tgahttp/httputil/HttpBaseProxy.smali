.class public abstract Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy;
.super Ljava/lang/Object;
.source "HttpBaseProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy$Callback;
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
.field private static final TAG:Ljava/lang/String; = "HttpBaseProxy"


# instance fields
.field private client:Lcom/loopj/android/tgahttp/httputil/HttpBaseClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    .local p0, "this":Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy;, "Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy<TParam;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/loopj/android/tgahttp/httputil/HttpBaseClient;

    invoke-direct {v0}, Lcom/loopj/android/tgahttp/httputil/HttpBaseClient;-><init>()V

    iput-object v0, p0, Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy;->client:Lcom/loopj/android/tgahttp/httputil/HttpBaseClient;

    .line 28
    return-void
.end method


# virtual methods
.method protected abstract convertParamToPbReqBuf(Ljava/lang/Object;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParam;)[B"
        }
    .end annotation
.end method

.method protected abstract getCmd()I
.end method

.method protected abstract getSubcmd()I
.end method

.method protected abstract parsePbRspBuf([BLjava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BTParam;)I"
        }
    .end annotation
.end method

.method public postReq(Landroid/content/Context;Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy$Callback;Ljava/lang/Object;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy$Callback;",
            "TParam;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy;, "Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy<TParam;>;"
    .local p3, "param":Ljava/lang/Object;, "TParam;"
    iget-object v0, p0, Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy;->client:Lcom/loopj/android/tgahttp/httputil/HttpBaseClient;

    invoke-virtual {p0, p3}, Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy;->convertParamToPbReqBuf(Ljava/lang/Object;)[B

    move-result-object v2

    new-instance v3, Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy$1;

    invoke-direct {v3, p0, p3, p2}, Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy$1;-><init>(Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy;Ljava/lang/Object;Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy$Callback;)V

    .line 52
    invoke-virtual {p0}, Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy;->getCmd()I

    move-result v4

    invoke-virtual {p0}, Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy;->getSubcmd()I

    move-result v5

    move-object v1, p1

    .line 31
    invoke-virtual/range {v0 .. v5}, Lcom/loopj/android/tgahttp/httputil/HttpBaseClient;->post(Landroid/content/Context;[BLcom/loopj/android/tgahttp/ResponseHandlerInterface;II)V

    .line 53
    return-void
.end method

.method public postReqNOCMD(Landroid/content/Context;Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy$Callback;Ljava/lang/Object;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy$Callback;",
            "TParam;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy;, "Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy<TParam;>;"
    .local p3, "param":Ljava/lang/Object;, "TParam;"
    iget-object v0, p0, Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy;->client:Lcom/loopj/android/tgahttp/httputil/HttpBaseClient;

    invoke-virtual {p0, p3}, Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy;->convertParamToPbReqBuf(Ljava/lang/Object;)[B

    move-result-object v1

    new-instance v2, Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy$2;

    invoke-direct {v2, p0, p3, p2}, Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy$2;-><init>(Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy;Ljava/lang/Object;Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy$Callback;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/loopj/android/tgahttp/httputil/HttpBaseClient;->post(Landroid/content/Context;[BLcom/loopj/android/tgahttp/ResponseHandlerInterface;)V

    .line 78
    return-void
.end method
