.class public interface abstract Lcom/tencent/tmsecurelite/commom/ITmsCallback;
.super Ljava/lang/Object;
.source "ITmsCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.tmsecurelite.ITmsCallback"

.field public static final T_onArrayResultGot:I = 0x2

.field public static final T_onResultGot:I = 0x1


# virtual methods
.method public abstract onArrayResultGot(ILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecurelite/commom/DataEntity;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onResultGot(ILcom/tencent/tmsecurelite/commom/DataEntity;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
