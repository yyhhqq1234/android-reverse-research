.class public interface abstract Lcom/standardar/service/aidl/IDataFlowListener;
.super Ljava/lang/Object;
.source "IDataFlowListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/standardar/service/aidl/IDataFlowListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract OnResponse([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
