.class public final Lcom/onesignal/location/internal/common/LocationPoint;
.super Ljava/lang/Object;
.source "LocationPoint.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0006\n\u0002\u0008\t\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010)\u001a\u00020*H\u0016R\u001e\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\t\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001e\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001e\u0010\u0018\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\u0008\u0019\u0010\u0014\"\u0004\u0008\u001a\u0010\u0016R\u001e\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010!\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001e\u0010\"\u001a\u0004\u0018\u00010#X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010(\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'\u00a8\u0006+"
    }
    d2 = {
        "Lcom/onesignal/location/internal/common/LocationPoint;",
        "",
        "()V",
        "accuracy",
        "",
        "getAccuracy",
        "()Ljava/lang/Float;",
        "setAccuracy",
        "(Ljava/lang/Float;)V",
        "Ljava/lang/Float;",
        "bg",
        "",
        "getBg",
        "()Ljava/lang/Boolean;",
        "setBg",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "lat",
        "",
        "getLat",
        "()Ljava/lang/Double;",
        "setLat",
        "(Ljava/lang/Double;)V",
        "Ljava/lang/Double;",
        "log",
        "getLog",
        "setLog",
        "timeStamp",
        "",
        "getTimeStamp",
        "()Ljava/lang/Long;",
        "setTimeStamp",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "type",
        "",
        "getType",
        "()Ljava/lang/Integer;",
        "setType",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "toString",
        "",
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
.field private accuracy:Ljava/lang/Float;

.field private bg:Ljava/lang/Boolean;

.field private lat:Ljava/lang/Double;

.field private log:Ljava/lang/Double;

.field private timeStamp:Ljava/lang/Long;

.field private type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAccuracy()Ljava/lang/Float;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/onesignal/location/internal/common/LocationPoint;->accuracy:Ljava/lang/Float;

    return-object v0
.end method

.method public final getBg()Ljava/lang/Boolean;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/onesignal/location/internal/common/LocationPoint;->bg:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getLat()Ljava/lang/Double;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/onesignal/location/internal/common/LocationPoint;->lat:Ljava/lang/Double;

    return-object v0
.end method

.method public final getLog()Ljava/lang/Double;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/onesignal/location/internal/common/LocationPoint;->log:Ljava/lang/Double;

    return-object v0
.end method

.method public final getTimeStamp()Ljava/lang/Long;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/onesignal/location/internal/common/LocationPoint;->timeStamp:Ljava/lang/Long;

    return-object v0
.end method

.method public final getType()Ljava/lang/Integer;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/onesignal/location/internal/common/LocationPoint;->type:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setAccuracy(Ljava/lang/Float;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/onesignal/location/internal/common/LocationPoint;->accuracy:Ljava/lang/Float;

    return-void
.end method

.method public final setBg(Ljava/lang/Boolean;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/onesignal/location/internal/common/LocationPoint;->bg:Ljava/lang/Boolean;

    return-void
.end method

.method public final setLat(Ljava/lang/Double;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/onesignal/location/internal/common/LocationPoint;->lat:Ljava/lang/Double;

    return-void
.end method

.method public final setLog(Ljava/lang/Double;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/onesignal/location/internal/common/LocationPoint;->log:Ljava/lang/Double;

    return-void
.end method

.method public final setTimeStamp(Ljava/lang/Long;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/onesignal/location/internal/common/LocationPoint;->timeStamp:Ljava/lang/Long;

    return-void
.end method

.method public final setType(Ljava/lang/Integer;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/onesignal/location/internal/common/LocationPoint;->type:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocationPoint{lat="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/onesignal/location/internal/common/LocationPoint;->lat:Ljava/lang/Double;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", log="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-object v1, p0, Lcom/onesignal/location/internal/common/LocationPoint;->log:Ljava/lang/Double;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", accuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object v1, p0, Lcom/onesignal/location/internal/common/LocationPoint;->accuracy:Ljava/lang/Float;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lcom/onesignal/location/internal/common/LocationPoint;->type:Ljava/lang/Integer;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/onesignal/location/internal/common/LocationPoint;->bg:Ljava/lang/Boolean;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v1, p0, Lcom/onesignal/location/internal/common/LocationPoint;->timeStamp:Ljava/lang/Long;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
