.class public final Lcom/onesignal/location/internal/controller/impl/GmsLocationController$LocationHandlerThread;
.super Landroid/os/HandlerThread;
.source "GmsLocationController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/location/internal/controller/impl/GmsLocationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "LocationHandlerThread"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u0008\u0000\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onesignal/location/internal/controller/impl/GmsLocationController$LocationHandlerThread;",
        "Landroid/os/HandlerThread;",
        "()V",
        "mHandler",
        "Landroid/os/Handler;",
        "getMHandler",
        "()Landroid/os/Handler;",
        "setMHandler",
        "(Landroid/os/Handler;)V",
        "com.onesignal.location"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "OSH_LocationHandlerThread"

    .line 231
    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$LocationHandlerThread;->start()V

    .line 236
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$LocationHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$LocationHandlerThread;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final getMHandler()Landroid/os/Handler;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$LocationHandlerThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public final setMHandler(Landroid/os/Handler;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    iput-object p1, p0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$LocationHandlerThread;->mHandler:Landroid/os/Handler;

    return-void
.end method
