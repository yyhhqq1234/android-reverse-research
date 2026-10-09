.class Lcom/tsf4g/tx/TXSystem$1;
.super Ljava/lang/Object;
.source "TXSystem.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tsf4g/tx/TXSystem;->CalculateLocaiton(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tsf4g/tx/TXSystem;


# direct methods
.method constructor <init>(Lcom/tsf4g/tx/TXSystem;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tsf4g/tx/TXSystem$1;->this$0:Lcom/tsf4g/tx/TXSystem;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 238
    if-eqz p1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/tsf4g/tx/TXSystem$1;->this$0:Lcom/tsf4g/tx/TXSystem;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/tsf4g/tx/TXSystem;->access$0(Lcom/tsf4g/tx/TXSystem;D)V

    .line 241
    iget-object v0, p0, Lcom/tsf4g/tx/TXSystem$1;->this$0:Lcom/tsf4g/tx/TXSystem;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/tsf4g/tx/TXSystem;->access$1(Lcom/tsf4g/tx/TXSystem;D)V

    .line 243
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 258
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 253
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 248
    return-void
.end method
