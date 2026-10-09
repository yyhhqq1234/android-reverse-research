.class public interface abstract Lcom/tencent/trbt/videosdk/net/NetworkCallback;
.super Ljava/lang/Object;
.source "NetworkCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/qq/taf/jce/JceStruct;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onResponseFail(ILcom/qq/taf/jce/JceStruct;)V
.end method

.method public abstract onResponseSuccess(Lcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qq/taf/jce/JceStruct;",
            "TT;)V"
        }
    .end annotation
.end method
