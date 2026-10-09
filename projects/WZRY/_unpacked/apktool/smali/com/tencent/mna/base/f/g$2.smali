.class final Lcom/tencent/mna/base/f/g$2;
.super Ljava/lang/Object;
.source "LocateUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/base/f/g;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/tencent/mna/base/f/g$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/base/f/g$2;->a:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-static {v0}, Lcom/tencent/mna/base/f/g;->a(Landroid/location/LocationManager;)Landroid/location/LocationManager;

    .line 55
    iget-object v0, p0, Lcom/tencent/mna/base/f/g$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mna/base/f/l;->a(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 56
    if-eqz v0, :cond_0

    .line 58
    :try_start_1
    new-instance v0, Lcom/tencent/mna/base/f/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/mna/base/f/g$a;-><init>(Lcom/tencent/mna/base/f/g$1;)V

    invoke-static {v0}, Lcom/tencent/mna/base/f/g;->a(Lcom/tencent/mna/base/f/g$a;)Lcom/tencent/mna/base/f/g$a;

    .line 59
    invoke-static {}, Lcom/tencent/mna/base/f/g;->c()Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "network"

    const-wide/16 v2, 0xbb8

    const/4 v4, 0x0

    invoke-static {}, Lcom/tencent/mna/base/f/g;->d()Lcom/tencent/mna/base/f/g$a;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    :try_start_2
    invoke-static {}, Lcom/tencent/mna/base/f/g;->g()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mna/base/f/g;->f()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 62
    invoke-static {}, Lcom/tencent/mna/base/f/g;->g()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mna/base/f/g;->f()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 65
    :catch_1
    move-exception v0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocateUtil, error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->c(Ljava/lang/String;)V

    goto :goto_0
.end method
