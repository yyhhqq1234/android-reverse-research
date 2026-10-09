.class public interface abstract Lcom/tencent/component/plugin/PluginManageHandler;
.super Ljava/lang/Object;
.source "PluginManageHandler.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/plugin/PluginManageHandler$Stub;
    }
.end annotation


# virtual methods
.method public abstract onInterceptPluginUri(Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
