.class public final Lc/t/m/g/di;
.super Ljava/lang/Object;
.source "TL"


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lc/t/m/g/di;->a:F

    .line 45
    iput p2, p0, Lc/t/m/g/di;->b:F

    .line 46
    iput p3, p0, Lc/t/m/g/di;->c:F

    .line 47
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 95
    iget v0, p0, Lc/t/m/g/di;->a:F

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Lc/t/m/g/di;->b:F

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    iget v2, p0, Lc/t/m/g/di;->c:F

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 96
    double-to-float v0, v0

    return v0
.end method
