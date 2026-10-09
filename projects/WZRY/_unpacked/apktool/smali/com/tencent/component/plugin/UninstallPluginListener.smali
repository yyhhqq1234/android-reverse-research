.class public interface abstract Lcom/tencent/component/plugin/UninstallPluginListener;
.super Ljava/lang/Object;
.source "UninstallPluginListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/plugin/UninstallPluginListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onUninstallFailed(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onUninstallSuccess()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
