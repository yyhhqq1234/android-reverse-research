.class public interface abstract Lcom/oppo/oms/IOmsService;
.super Ljava/lang/Object;
.source "IOmsService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/oms/IOmsService$Stub;
    }
.end annotation


# virtual methods
.method public abstract requestCapacityAuth(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
