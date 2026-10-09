.class public interface abstract Lcom/netease/unisdk/gmbridge5/IRemoteCallback;
.super Ljava/lang/Object;
.source "IRemoteCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/unisdk/gmbridge5/IRemoteCallback$Stub;,
        Lcom/netease/unisdk/gmbridge5/IRemoteCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract call(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
