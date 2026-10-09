.class final Lcom/tencent/mna/base/f/g$1;
.super Ljava/lang/Object;
.source "LocateUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/base/f/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 26
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/f/g;->c()Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mna/base/f/g;->d()Lcom/tencent/mna/base/f/g$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    invoke-static {}, Lcom/tencent/mna/base/f/g;->c()Landroid/location/LocationManager;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mna/base/f/g;->d()Lcom/tencent/mna/base/f/g$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 29
    :cond_0
    invoke-static {}, Lcom/tencent/mna/base/f/g;->e()Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 30
    invoke-static {}, Lcom/tencent/mna/base/f/g;->e()Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :cond_1
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    goto :goto_0
.end method
