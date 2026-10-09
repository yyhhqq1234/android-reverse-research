.class final Lc/t/m/g/cw$1;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/t/m/g/cw;-><init>(Lc/t/m/g/cj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lc/t/m/g/cw;


# direct methods
.method constructor <init>(Lc/t/m/g/cw;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lc/t/m/g/cw$1;->a:Lc/t/m/g/cw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 95
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    iget-object v1, p0, Lc/t/m/g/cw$1;->a:Lc/t/m/g/cw;

    invoke-static {v1}, Lc/t/m/g/cw;->a(Lc/t/m/g/cw;)Lc/t/m/g/cj;

    move-result-object v1

    invoke-virtual {v1}, Lc/t/m/g/cj;->e()Landroid/location/LocationManager;

    move-result-object v1

    const-string v2, "gps"

    const-string v3, "force_xtra_injection"

    invoke-virtual {v1, v2, v3, v0}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 97
    iget-object v1, p0, Lc/t/m/g/cw$1;->a:Lc/t/m/g/cw;

    invoke-static {v1}, Lc/t/m/g/cw;->a(Lc/t/m/g/cw;)Lc/t/m/g/cj;

    move-result-object v1

    invoke-virtual {v1}, Lc/t/m/g/cj;->e()Landroid/location/LocationManager;

    move-result-object v1

    const-string v2, "gps"

    const-string v3, "force_time_injection"

    invoke-virtual {v1, v2, v3, v0}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    :try_start_1
    iget-object v0, p0, Lc/t/m/g/cw$1;->a:Lc/t/m/g/cw;

    invoke-static {v0}, Lc/t/m/g/cw;->a(Lc/t/m/g/cw;)Lc/t/m/g/cj;

    move-result-object v0

    invoke-virtual {v0}, Lc/t/m/g/cj;->e()Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lc/t/m/g/cw$1;->a:Lc/t/m/g/cw;

    invoke-static {v1}, Lc/t/m/g/cw;->b(Lc/t/m/g/cw;)Lc/t/m/g/cw;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    :goto_1
    :try_start_2
    iget-object v0, p0, Lc/t/m/g/cw$1;->a:Lc/t/m/g/cw;

    invoke-static {v0}, Lc/t/m/g/cw;->a(Lc/t/m/g/cw;)Lc/t/m/g/cj;

    move-result-object v0

    invoke-virtual {v0}, Lc/t/m/g/cj;->e()Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lc/t/m/g/cw$1;->a:Lc/t/m/g/cw;

    invoke-static {v1}, Lc/t/m/g/cw;->b(Lc/t/m/g/cw;)Lc/t/m/g/cw;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 109
    iget-object v0, p0, Lc/t/m/g/cw$1;->a:Lc/t/m/g/cw;

    invoke-static {v0}, Lc/t/m/g/cw;->a(Lc/t/m/g/cw;)Lc/t/m/g/cj;

    move-result-object v0

    invoke-virtual {v0}, Lc/t/m/g/cj;->e()Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lc/t/m/g/cw$1;->a:Lc/t/m/g/cw;

    .line 110
    invoke-static {v5}, Lc/t/m/g/cw;->b(Lc/t/m/g/cw;)Lc/t/m/g/cw;

    move-result-object v5

    iget-object v6, p0, Lc/t/m/g/cw$1;->a:Lc/t/m/g/cw;

    invoke-static {v6}, Lc/t/m/g/cw;->c(Lc/t/m/g/cw;)Landroid/os/HandlerThread;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    .line 109
    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 114
    :goto_2
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    const-string v1, "TxGpsProvider"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :catch_1
    move-exception v0

    .line 105
    const-string v1, "TxGpsProvider"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 111
    :catch_2
    move-exception v0

    .line 112
    const-string v1, "TxGpsProvider"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
