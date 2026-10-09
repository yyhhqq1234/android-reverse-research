.class Lcom/tsf4g/tx/TXSystem$2;
.super Landroid/telephony/PhoneStateListener;
.source "TXSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tsf4g/tx/TXSystem;->GetSignalStrength(Landroid/content/Context;)I
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
    iput-object p1, p0, Lcom/tsf4g/tx/TXSystem$2;->this$0:Lcom/tsf4g/tx/TXSystem;

    .line 285
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 1
    .param p1, "location"    # Landroid/telephony/CellLocation;

    .prologue
    .line 290
    instance-of v0, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_1

    .line 292
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    .end local p1    # "location":Landroid/telephony/CellLocation;
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 294
    .restart local p1    # "location":Landroid/telephony/CellLocation;
    :cond_1
    instance-of v0, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v0, :cond_0

    .line 296
    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    .end local p1    # "location":Landroid/telephony/CellLocation;
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    goto :goto_0
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 303
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 304
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 309
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 310
    .local v0, "asu":I
    iget-object v1, p0, Lcom/tsf4g/tx/TXSystem$2;->this$0:Lcom/tsf4g/tx/TXSystem;

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, -0x71

    invoke-static {v1, v2}, Lcom/tsf4g/tx/TXSystem;->access$2(Lcom/tsf4g/tx/TXSystem;I)V

    .line 311
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 312
    return-void
.end method
