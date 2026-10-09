.class public Lcom/tencent/qqgamemi/api/model/SpeedTimePair;
.super Ljava/lang/Object;
.source "SpeedTimePair.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/qqgamemi/api/model/SpeedTimePair;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public endTime:J

.field public speed:F

.field public startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/tencent/qqgamemi/api/model/SpeedTimePair$1;

    invoke-direct {v0}, Lcom/tencent/qqgamemi/api/model/SpeedTimePair$1;-><init>()V

    sput-object v0, Lcom/tencent/qqgamemi/api/model/SpeedTimePair;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lcom/tencent/qqgamemi/api/model/SpeedTimePair;->startTime:J

    .line 18
    iput-wide p3, p0, Lcom/tencent/qqgamemi/api/model/SpeedTimePair;->endTime:J

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqgamemi/api/model/SpeedTimePair;->speed:F

    .line 20
    return-void
.end method

.method public constructor <init>(JJF)V
    .locals 1
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .param p5, "speed"    # F

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide p1, p0, Lcom/tencent/qqgamemi/api/model/SpeedTimePair;->startTime:J

    .line 24
    iput-wide p3, p0, Lcom/tencent/qqgamemi/api/model/SpeedTimePair;->endTime:J

    .line 25
    iput p5, p0, Lcom/tencent/qqgamemi/api/model/SpeedTimePair;->speed:F

    .line 26
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqgamemi/api/model/SpeedTimePair;->startTime:J

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqgamemi/api/model/SpeedTimePair;->endTime:J

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/tencent/qqgamemi/api/model/SpeedTimePair;->speed:F

    .line 32
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/tencent/qqgamemi/api/model/SpeedTimePair;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 37
    iget-wide v0, p0, Lcom/tencent/qqgamemi/api/model/SpeedTimePair;->endTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 38
    iget v0, p0, Lcom/tencent/qqgamemi/api/model/SpeedTimePair;->speed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 39
    return-void
.end method
