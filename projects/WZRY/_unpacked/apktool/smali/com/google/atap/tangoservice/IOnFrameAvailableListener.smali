.class public interface abstract Lcom/google/atap/tangoservice/IOnFrameAvailableListener;
.super Ljava/lang/Object;
.source "IOnFrameAvailableListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/atap/tangoservice/IOnFrameAvailableListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onFrameAvailable(IIIJDILcom/google/tango/loader/IObjectWrapper;IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
