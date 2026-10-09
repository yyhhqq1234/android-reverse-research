.class Lcom/standardar/common/Client$IMUData;
.super Ljava/lang/Object;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/standardar/common/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IMUData"
.end annotation


# instance fields
.field public mTag:I

.field public mTimestamp:J

.field public mValue:[F


# direct methods
.method public constructor <init>([FJI)V
    .locals 2
    .param p1, "value"    # [F
    .param p2, "timestamp"    # J
    .param p4, "tag"    # I

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/standardar/common/Client$IMUData;->mValue:[F

    .line 254
    iput-wide p2, p0, Lcom/standardar/common/Client$IMUData;->mTimestamp:J

    .line 255
    iput p4, p0, Lcom/standardar/common/Client$IMUData;->mTag:I

    .line 256
    return-void
.end method
