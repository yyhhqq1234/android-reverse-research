.class public interface abstract Lcom/google/atap/tangoservice/IOnImageAvailableListener;
.super Ljava/lang/Object;
.source "IOnImageAvailableListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/atap/tangoservice/IOnImageAvailableListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onImageAvailable(ILcom/google/atap/tangoservice/TangoImage;Lcom/google/atap/tangoservice/TangoCameraMetadata;Lcom/google/tango/loader/IObjectWrapper;Lcom/google/tango/loader/IObjectWrapper;Lcom/google/tango/loader/IObjectWrapper;Lcom/google/tango/loader/IObjectWrapper;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
