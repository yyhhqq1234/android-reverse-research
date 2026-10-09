.class public interface abstract Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallThrottleControl;
.super Ljava/lang/Object;
.source "SsHttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/retrofit2/SsHttpCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IHttpCallThrottleControl"
.end annotation


# virtual methods
.method public abstract getDelayTimeByApp(Ljava/lang/String;)I
.end method

.method public abstract getDispatchDelayTime(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract isAppDelayHandleEnable()Z
.end method

.method public abstract isDispatchDelayEnabled()Z
.end method
