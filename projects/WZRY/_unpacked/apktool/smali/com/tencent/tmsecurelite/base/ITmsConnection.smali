.class public interface abstract Lcom/tencent/tmsecurelite/base/ITmsConnection;
.super Ljava/lang/Object;
.source "ITmsConnection.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final INTERFACE:Ljava/lang/String; = "com.tencent.tmsecurelite.base.ITmsConnection"

.field public static final T_checkPermission:I = 0x1

.field public static final T_checkVersion:I = 0x2

.field public static final T_sendTmsCallback:I = 0x5

.field public static final T_sendTmsRequest:I = 0x4

.field public static final T_setProvider:I = 0x6

.field public static final T_updateTmsConfigAsync:I = 0x3

.field public static final VERSION:I = 0x3


# virtual methods
.method public abstract checkPermission(Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract checkVersion(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendTmsCallback(ILandroid/os/Bundle;Lcom/tencent/tmsecurelite/base/ITmsCallbackEx;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendTmsRequest(ILandroid/os/Bundle;Landroid/os/Bundle;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setProvider(Lcom/tencent/tmsecurelite/base/ITmsProvider;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateTmsConfigAsync(Lcom/tencent/tmsecurelite/commom/ITmsCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
