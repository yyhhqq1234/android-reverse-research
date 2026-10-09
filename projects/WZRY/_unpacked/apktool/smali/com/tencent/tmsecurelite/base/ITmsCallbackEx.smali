.class public interface abstract Lcom/tencent/tmsecurelite/base/ITmsCallbackEx;
.super Ljava/lang/Object;
.source "ITmsCallbackEx.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.tmsecurelite.base.ITmsCallbackEx"

.field public static final T_onCallback:I = 0x1


# virtual methods
.method public abstract onCallback(Landroid/os/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
