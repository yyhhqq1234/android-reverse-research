.class public interface abstract Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallReqLevelControl;
.super Ljava/lang/Object;
.source "SsHttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/retrofit2/SsHttpCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IHttpCallReqLevelControl"
.end annotation


# virtual methods
.method public abstract getRequestLevel(Ljava/lang/String;)I
.end method

.method public abstract isReqLevelControllerEnable()Z
.end method

.method public abstract maybeAddP1AsyncRequest(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Z
.end method

.method public abstract notifyRequestBack(I)V
.end method

.method public abstract p1WaitP0Done()V
.end method
