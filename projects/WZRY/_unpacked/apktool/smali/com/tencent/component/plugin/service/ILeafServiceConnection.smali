.class public interface abstract Lcom/tencent/component/plugin/service/ILeafServiceConnection;
.super Ljava/lang/Object;
.source "ILeafServiceConnection.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/plugin/service/ILeafServiceConnection$Stub;
    }
.end annotation


# virtual methods
.method public abstract connected(Ljava/lang/String;Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract disconnected(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
