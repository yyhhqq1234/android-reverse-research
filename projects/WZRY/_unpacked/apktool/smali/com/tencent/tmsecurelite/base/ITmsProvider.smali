.class public interface abstract Lcom/tencent/tmsecurelite/base/ITmsProvider;
.super Ljava/lang/Object;
.source "ITmsProvider.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tmsecurelite/base/ITmsProvider$Stub;
    }
.end annotation


# virtual methods
.method public abstract getVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ipcCall(ILandroid/os/Bundle;Landroid/os/Bundle;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
