.class public interface abstract Lcom/netease/epay/sdk/h5c/ControllerUrlMapping$PreAction;
.super Ljava/lang/Object;
.source "ControllerUrlMapping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/h5c/ControllerUrlMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PreAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/netease/epay/sdk/controller/BaseController;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract execute(Landroid/content/Context;Lcom/netease/epay/sdk/controller/BaseController;Lorg/json/JSONObject;Ljava/lang/Runnable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation
.end method
