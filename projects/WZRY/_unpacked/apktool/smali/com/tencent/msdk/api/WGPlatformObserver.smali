.class public interface abstract Lcom/tencent/msdk/api/WGPlatformObserver;
.super Ljava/lang/Object;
.source "WGPlatformObserver.java"


# virtual methods
.method public abstract OnAddWXCardNotify(Lcom/tencent/msdk/api/CardRet;)V
.end method

.method public abstract OnCrashExtDataNotify()[B
.end method

.method public abstract OnCrashExtMessageNotify()Ljava/lang/String;
.end method

.method public abstract OnFeedbackNotify(ILjava/lang/String;)V
.end method

.method public abstract OnLocationGotNotify(Lcom/tencent/msdk/api/LocationRet;)V
.end method

.method public abstract OnLocationNotify(Lcom/tencent/msdk/remote/api/RelationRet;)V
.end method

.method public abstract OnLoginNotify(Lcom/tencent/msdk/api/LoginRet;)V
.end method

.method public abstract OnRelationNotify(Lcom/tencent/msdk/remote/api/RelationRet;)V
.end method

.method public abstract OnShareNotify(Lcom/tencent/msdk/api/ShareRet;)V
.end method

.method public abstract OnWakeupNotify(Lcom/tencent/msdk/api/WakeupRet;)V
.end method
