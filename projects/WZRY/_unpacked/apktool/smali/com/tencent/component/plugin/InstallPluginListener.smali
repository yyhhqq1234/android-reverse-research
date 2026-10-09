.class public interface abstract Lcom/tencent/component/plugin/InstallPluginListener;
.super Ljava/lang/Object;
.source "InstallPluginListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/plugin/InstallPluginListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onInstallFailed(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onInstallSuccess()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
