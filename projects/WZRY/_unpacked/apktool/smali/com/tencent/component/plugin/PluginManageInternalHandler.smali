.class public interface abstract Lcom/tencent/component/plugin/PluginManageInternalHandler;
.super Ljava/lang/Object;
.source "PluginManageInternalHandler.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/plugin/PluginManageInternalHandler$Stub;
    }
.end annotation


# virtual methods
.method public abstract onPluginNotFound(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
