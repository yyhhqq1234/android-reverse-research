.class public Lcom/standardar/common/Pose;
.super Ljava/lang/Object;
.source "Pose.java"


# instance fields
.field private final quat:Lcom/standardar/common/Quaternion;

.field private final translate:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/standardar/common/Quaternion;

    invoke-direct {v0}, Lcom/standardar/common/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/standardar/common/Pose;->quat:Lcom/standardar/common/Quaternion;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/standardar/common/Pose;->translate:[F

    .line 16
    return-void

    .line 15
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private constructor <init>(FFFFFFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "qx"    # F
    .param p5, "qy"    # F
    .param p6, "qz"    # F
    .param p7, "qw"    # F

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/standardar/common/Quaternion;

    invoke-direct {v0, p4, p5, p6, p7}, Lcom/standardar/common/Quaternion;-><init>(FFFF)V

    iput-object v0, p0, Lcom/standardar/common/Pose;->quat:Lcom/standardar/common/Quaternion;

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    iput-object v0, p0, Lcom/standardar/common/Pose;->translate:[F

    .line 30
    return-void
.end method

.method private constructor <init>([FLcom/standardar/common/Quaternion;)V
    .locals 0
    .param p1, "position"    # [F
    .param p2, "rotation"    # Lcom/standardar/common/Quaternion;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/standardar/common/Pose;->translate:[F

    .line 24
    iput-object p2, p0, Lcom/standardar/common/Pose;->quat:Lcom/standardar/common/Quaternion;

    .line 25
    return-void
.end method

.method public constructor <init>([F[F)V
    .locals 8
    .param p1, "position"    # [F
    .param p2, "rotation"    # [F

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 19
    aget v1, p1, v0

    aget v2, p1, v5

    aget v3, p1, v6

    aget v4, p2, v0

    aget v5, p2, v5

    aget v6, p2, v6

    const/4 v0, 0x3

    aget v7, p2, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/standardar/common/Pose;-><init>(FFFFFFF)V

    .line 20
    return-void
.end method


# virtual methods
.method getQuaternion()Lcom/standardar/common/Quaternion;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/standardar/common/Pose;->quat:Lcom/standardar/common/Quaternion;

    return-object v0
.end method

.method public getRotationQuaternion([FI)V
    .locals 2
    .param p1, "dest"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 71
    add-int/lit8 v0, p2, 0x0

    iget-object v1, p0, Lcom/standardar/common/Pose;->quat:Lcom/standardar/common/Quaternion;

    invoke-virtual {v1}, Lcom/standardar/common/Quaternion;->x()F

    move-result v1

    aput v1, p1, v0

    .line 72
    add-int/lit8 v0, p2, 0x1

    iget-object v1, p0, Lcom/standardar/common/Pose;->quat:Lcom/standardar/common/Quaternion;

    invoke-virtual {v1}, Lcom/standardar/common/Quaternion;->y()F

    move-result v1

    aput v1, p1, v0

    .line 73
    add-int/lit8 v0, p2, 0x2

    iget-object v1, p0, Lcom/standardar/common/Pose;->quat:Lcom/standardar/common/Quaternion;

    invoke-virtual {v1}, Lcom/standardar/common/Quaternion;->z()F

    move-result v1

    aput v1, p1, v0

    .line 74
    add-int/lit8 v0, p2, 0x3

    iget-object v1, p0, Lcom/standardar/common/Pose;->quat:Lcom/standardar/common/Quaternion;

    invoke-virtual {v1}, Lcom/standardar/common/Quaternion;->w()F

    move-result v1

    aput v1, p1, v0

    .line 75
    return-void
.end method

.method public getTransformedAxis(IF[FI)V
    .locals 2
    .param p1, "axis"    # I
    .param p2, "scale"    # F
    .param p3, "dest"    # [F
    .param p4, "offset"    # I

    .prologue
    .line 114
    packed-switch p1, :pswitch_data_0

    .line 133
    :goto_0
    add-int/lit8 v0, p4, 0x0

    add-int/lit8 v1, p4, 0x0

    aget v1, p3, v1

    mul-float/2addr v1, p2

    aput v1, p3, v0

    .line 134
    add-int/lit8 v0, p4, 0x1

    add-int/lit8 v1, p4, 0x1

    aget v1, p3, v1

    mul-float/2addr v1, p2

    aput v1, p3, v0

    .line 135
    add-int/lit8 v0, p4, 0x2

    add-int/lit8 v1, p4, 0x2

    aget v1, p3, v1

    mul-float/2addr v1, p2

    aput v1, p3, v0

    .line 136
    return-void

    .line 118
    :pswitch_0
    invoke-virtual {p0, p3, p4}, Lcom/standardar/common/Pose;->getXAxis([FI)V

    goto :goto_0

    .line 123
    :pswitch_1
    invoke-virtual {p0, p3, p4}, Lcom/standardar/common/Pose;->getYAxis([FI)V

    goto :goto_0

    .line 128
    :pswitch_2
    invoke-virtual {p0, p3, p4}, Lcom/standardar/common/Pose;->getZAxis([FI)V

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getTranslation([FI)V
    .locals 3
    .param p1, "dest"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 65
    add-int/lit8 v0, p2, 0x0

    iget-object v1, p0, Lcom/standardar/common/Pose;->translate:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, p1, v0

    .line 66
    add-int/lit8 v0, p2, 0x1

    iget-object v1, p0, Lcom/standardar/common/Pose;->translate:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    aput v1, p1, v0

    .line 67
    add-int/lit8 v0, p2, 0x2

    iget-object v1, p0, Lcom/standardar/common/Pose;->translate:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    aput v1, p1, v0

    .line 68
    return-void
.end method

.method public getXAxis([FI)V
    .locals 1
    .param p1, "dest"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/standardar/common/Pose;->quat:Lcom/standardar/common/Quaternion;

    invoke-virtual {v0, p1, p2}, Lcom/standardar/common/Quaternion;->xAxis([FI)V

    .line 79
    return-void
.end method

.method public getXAxis()[F
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/standardar/common/Pose;->quat:Lcom/standardar/common/Quaternion;

    invoke-virtual {v0}, Lcom/standardar/common/Quaternion;->xAxis()[F

    move-result-object v0

    return-object v0
.end method

.method public getYAxis([FI)V
    .locals 1
    .param p1, "dest"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/standardar/common/Pose;->quat:Lcom/standardar/common/Quaternion;

    invoke-virtual {v0, p1, p2}, Lcom/standardar/common/Quaternion;->yAxis([FI)V

    .line 83
    return-void
.end method

.method public getYAxis()[F
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/standardar/common/Pose;->quat:Lcom/standardar/common/Quaternion;

    invoke-virtual {v0}, Lcom/standardar/common/Quaternion;->yAxis()[F

    move-result-object v0

    return-object v0
.end method

.method public getZAxis([FI)V
    .locals 1
    .param p1, "dest"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/standardar/common/Pose;->quat:Lcom/standardar/common/Quaternion;

    invoke-virtual {v0, p1, p2}, Lcom/standardar/common/Quaternion;->zAxis([FI)V

    .line 87
    return-void
.end method

.method public getZAxis()[F
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/standardar/common/Pose;->quat:Lcom/standardar/common/Quaternion;

    invoke-virtual {v0}, Lcom/standardar/common/Quaternion;->zAxis()[F

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lcom/standardar/common/Pose;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 102
    const/4 v2, 0x3

    new-array v0, v2, [F

    .line 103
    .local v0, "outPos":[F
    iget-object v2, p0, Lcom/standardar/common/Pose;->quat:Lcom/standardar/common/Quaternion;

    invoke-virtual {v2}, Lcom/standardar/common/Quaternion;->inverse()Lcom/standardar/common/Quaternion;

    move-result-object v1

    .line 104
    .local v1, "outQuad":Lcom/standardar/common/Quaternion;
    iget-object v2, p0, Lcom/standardar/common/Pose;->translate:[F

    invoke-static {v1, v2, v3, v0, v3}, Lcom/standardar/common/Quaternion;->rotateVector(Lcom/standardar/common/Quaternion;[FI[FI)V

    .line 106
    aget v2, v0, v3

    neg-float v2, v2

    aput v2, v0, v3

    .line 107
    aget v2, v0, v4

    neg-float v2, v2

    aput v2, v0, v4

    .line 108
    aget v2, v0, v5

    neg-float v2, v2

    aput v2, v0, v5

    .line 110
    new-instance v2, Lcom/standardar/common/Pose;

    invoke-direct {v2, v0, v1}, Lcom/standardar/common/Pose;-><init>([FLcom/standardar/common/Quaternion;)V

    return-object v2
.end method

.method public qw()F
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/standardar/common/Pose;->quat:Lcom/standardar/common/Quaternion;

    invoke-virtual {v0}, Lcom/standardar/common/Quaternion;->w()F

    move-result v0

    return v0
.end method

.method public qx()F
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/standardar/common/Pose;->quat:Lcom/standardar/common/Quaternion;

    invoke-virtual {v0}, Lcom/standardar/common/Quaternion;->x()F

    move-result v0

    return v0
.end method

.method public qy()F
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/standardar/common/Pose;->quat:Lcom/standardar/common/Quaternion;

    invoke-virtual {v0}, Lcom/standardar/common/Quaternion;->y()F

    move-result v0

    return v0
.end method

.method public qz()F
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/standardar/common/Pose;->quat:Lcom/standardar/common/Quaternion;

    invoke-virtual {v0}, Lcom/standardar/common/Quaternion;->z()F

    move-result v0

    return v0
.end method

.method public toMatrix([FI)V
    .locals 4
    .param p1, "destMat"    # [F
    .param p2, "offset"    # I

    .prologue
    const/4 v3, 0x0

    .line 140
    iget-object v0, p0, Lcom/standardar/common/Pose;->quat:Lcom/standardar/common/Quaternion;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, p2, v1}, Lcom/standardar/common/Quaternion;->toMatrix([FII)V

    .line 142
    add-int/lit8 v0, p2, 0x0

    add-int/lit8 v0, v0, 0xc

    iget-object v1, p0, Lcom/standardar/common/Pose;->translate:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, p1, v0

    .line 143
    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v0, v0, 0xc

    iget-object v1, p0, Lcom/standardar/common/Pose;->translate:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    aput v1, p1, v0

    .line 144
    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0xc

    iget-object v1, p0, Lcom/standardar/common/Pose;->translate:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    aput v1, p1, v0

    .line 146
    add-int/lit8 v0, p2, 0x3

    aput v3, p1, v0

    .line 147
    add-int/lit8 v0, p2, 0x7

    aput v3, p1, v0

    .line 148
    add-int/lit8 v0, p2, 0xb

    aput v3, p1, v0

    .line 149
    add-int/lit8 v0, p2, 0xf

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p1, v0

    .line 150
    return-void
.end method

.method public tx()F
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/standardar/common/Pose;->translate:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public ty()F
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/standardar/common/Pose;->translate:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public tz()F
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/standardar/common/Pose;->translate:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method
