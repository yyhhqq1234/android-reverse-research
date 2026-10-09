.class final Lc/t/m/g/cx$1;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Lcom/tencent/map/geolocation/TencentPedestrianData;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/t/m/g/cx;->f()Lcom/tencent/map/geolocation/TencentPedestrianData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:F

.field private synthetic b:J


# direct methods
.method constructor <init>(FJ)V
    .locals 0

    .prologue
    .line 556
    iput p1, p0, Lc/t/m/g/cx$1;->a:F

    iput-wide p2, p0, Lc/t/m/g/cx$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLastUpdateTimeStamp()J
    .locals 2

    .prologue
    .line 563
    iget-wide v0, p0, Lc/t/m/g/cx$1;->b:J

    return-wide v0
.end method

.method public final getPedestrianCount()F
    .locals 1

    .prologue
    .line 559
    iget v0, p0, Lc/t/m/g/cx$1;->a:F

    return v0
.end method
