.class public Lcom/standardar/common/Quaternion;
.super Ljava/lang/Object;
.source "Quaternion.java"


# instance fields
.field private w:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v0, p0, Lcom/standardar/common/Quaternion;->x:F

    .line 11
    iput v0, p0, Lcom/standardar/common/Quaternion;->y:F

    .line 12
    iput v0, p0, Lcom/standardar/common/Quaternion;->z:F

    .line 13
    iput v1, p0, Lcom/standardar/common/Quaternion;->w:F

    .line 16
    iput v0, p0, Lcom/standardar/common/Quaternion;->x:F

    .line 17
    iput v0, p0, Lcom/standardar/common/Quaternion;->y:F

    .line 18
    iput v0, p0, Lcom/standardar/common/Quaternion;->z:F

    .line 19
    iput v1, p0, Lcom/standardar/common/Quaternion;->w:F

    .line 20
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "w"    # F

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v0, p0, Lcom/standardar/common/Quaternion;->x:F

    .line 11
    iput v0, p0, Lcom/standardar/common/Quaternion;->y:F

    .line 12
    iput v0, p0, Lcom/standardar/common/Quaternion;->z:F

    .line 13
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/standardar/common/Quaternion;->w:F

    .line 30
    iput p1, p0, Lcom/standardar/common/Quaternion;->x:F

    .line 31
    iput p2, p0, Lcom/standardar/common/Quaternion;->y:F

    .line 32
    iput p3, p0, Lcom/standardar/common/Quaternion;->z:F

    .line 33
    iput p4, p0, Lcom/standardar/common/Quaternion;->w:F

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/standardar/common/Quaternion;)V
    .locals 1
    .param p1, "right"    # Lcom/standardar/common/Quaternion;

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v0, p0, Lcom/standardar/common/Quaternion;->x:F

    .line 11
    iput v0, p0, Lcom/standardar/common/Quaternion;->y:F

    .line 12
    iput v0, p0, Lcom/standardar/common/Quaternion;->z:F

    .line 13
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/standardar/common/Quaternion;->w:F

    .line 23
    iget v0, p1, Lcom/standardar/common/Quaternion;->x:F

    iput v0, p0, Lcom/standardar/common/Quaternion;->x:F

    .line 24
    iget v0, p1, Lcom/standardar/common/Quaternion;->y:F

    iput v0, p0, Lcom/standardar/common/Quaternion;->y:F

    .line 25
    iget v0, p1, Lcom/standardar/common/Quaternion;->z:F

    iput v0, p0, Lcom/standardar/common/Quaternion;->z:F

    .line 26
    iget v0, p1, Lcom/standardar/common/Quaternion;->w:F

    iput v0, p0, Lcom/standardar/common/Quaternion;->w:F

    .line 27
    return-void
.end method

.method public constructor <init>([F)V
    .locals 1
    .param p1, "array"    # [F

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v0, p0, Lcom/standardar/common/Quaternion;->x:F

    .line 11
    iput v0, p0, Lcom/standardar/common/Quaternion;->y:F

    .line 12
    iput v0, p0, Lcom/standardar/common/Quaternion;->z:F

    .line 13
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/standardar/common/Quaternion;->w:F

    .line 37
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/standardar/common/Quaternion;->x:F

    .line 38
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/standardar/common/Quaternion;->y:F

    .line 39
    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/standardar/common/Quaternion;->z:F

    .line 40
    const/4 v0, 0x3

    aget v0, p1, v0

    iput v0, p0, Lcom/standardar/common/Quaternion;->w:F

    .line 41
    return-void
.end method

.method public static rotateVector(Lcom/standardar/common/Quaternion;[FI[FI)V
    .locals 14
    .param p0, "q"    # Lcom/standardar/common/Quaternion;
    .param p1, "inVec"    # [F
    .param p2, "inOffset"    # I
    .param p3, "outVec"    # [F
    .param p4, "outOffset"    # I

    .prologue
    .line 104
    add-int/lit8 v11, p2, 0x0

    aget v8, p1, v11

    .line 105
    .local v8, "x":F
    add-int/lit8 v11, p2, 0x1

    aget v9, p1, v11

    .line 106
    .local v9, "y":F
    add-int/lit8 v11, p2, 0x2

    aget v10, p1, v11

    .line 108
    .local v10, "z":F
    invoke-virtual {p0}, Lcom/standardar/common/Quaternion;->x()F

    move-result v5

    .line 109
    .local v5, "qx":F
    invoke-virtual {p0}, Lcom/standardar/common/Quaternion;->y()F

    move-result v6

    .line 110
    .local v6, "qy":F
    invoke-virtual {p0}, Lcom/standardar/common/Quaternion;->z()F

    move-result v7

    .line 111
    .local v7, "qz":F
    invoke-virtual {p0}, Lcom/standardar/common/Quaternion;->w()F

    move-result v4

    .line 113
    .local v4, "qw":F
    mul-float v11, v4, v8

    mul-float v12, v6, v10

    add-float/2addr v11, v12

    mul-float v12, v7, v9

    sub-float v1, v11, v12

    .line 114
    .local v1, "qvx":F
    mul-float v11, v4, v9

    mul-float v12, v7, v8

    add-float/2addr v11, v12

    mul-float v12, v5, v10

    sub-float v2, v11, v12

    .line 115
    .local v2, "qvy":F
    mul-float v11, v4, v10

    mul-float v12, v5, v9

    add-float/2addr v11, v12

    mul-float v12, v6, v8

    sub-float v3, v11, v12

    .line 116
    .local v3, "qvz":F
    neg-float v11, v5

    mul-float/2addr v11, v8

    mul-float v12, v6, v9

    sub-float/2addr v11, v12

    mul-float v12, v7, v10

    sub-float v0, v11, v12

    .line 118
    .local v0, "qvw":F
    add-int/lit8 v11, p4, 0x0

    mul-float v12, v1, v4

    neg-float v13, v5

    mul-float/2addr v13, v0

    add-float/2addr v12, v13

    neg-float v13, v7

    mul-float/2addr v13, v2

    add-float/2addr v12, v13

    neg-float v13, v6

    mul-float/2addr v13, v3

    sub-float/2addr v12, v13

    aput v12, p3, v11

    .line 119
    add-int/lit8 v11, p4, 0x1

    mul-float v12, v2, v4

    neg-float v13, v6

    mul-float/2addr v13, v0

    add-float/2addr v12, v13

    neg-float v13, v5

    mul-float/2addr v13, v3

    add-float/2addr v12, v13

    neg-float v13, v7

    mul-float/2addr v13, v1

    sub-float/2addr v12, v13

    aput v12, p3, v11

    .line 120
    add-int/lit8 v11, p4, 0x2

    mul-float v12, v3, v4

    neg-float v13, v7

    mul-float/2addr v13, v0

    add-float/2addr v12, v13

    neg-float v13, v6

    mul-float/2addr v13, v1

    add-float/2addr v12, v13

    neg-float v13, v5

    mul-float/2addr v13, v2

    sub-float/2addr v12, v13

    aput v12, p3, v11

    .line 121
    return-void
.end method


# virtual methods
.method public identify()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/standardar/common/Quaternion;->x:F

    .line 45
    iput v0, p0, Lcom/standardar/common/Quaternion;->y:F

    .line 46
    iput v0, p0, Lcom/standardar/common/Quaternion;->z:F

    .line 47
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/standardar/common/Quaternion;->w:F

    .line 48
    return-void
.end method

.method public inverse()Lcom/standardar/common/Quaternion;
    .locals 5

    .prologue
    .line 125
    new-instance v0, Lcom/standardar/common/Quaternion;

    iget v1, p0, Lcom/standardar/common/Quaternion;->x:F

    neg-float v1, v1

    iget v2, p0, Lcom/standardar/common/Quaternion;->y:F

    neg-float v2, v2

    iget v3, p0, Lcom/standardar/common/Quaternion;->z:F

    neg-float v3, v3

    iget v4, p0, Lcom/standardar/common/Quaternion;->w:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/standardar/common/Quaternion;-><init>(FFFF)V

    return-object v0
.end method

.method public toMatrix([FII)V
    .locals 13
    .param p1, "dest"    # [F
    .param p2, "offset"    # I
    .param p3, "stride"    # I

    .prologue
    .line 130
    iget v9, p0, Lcom/standardar/common/Quaternion;->x:F

    iget v10, p0, Lcom/standardar/common/Quaternion;->x:F

    mul-float v1, v9, v10

    .line 131
    .local v1, "xx":F
    iget v9, p0, Lcom/standardar/common/Quaternion;->x:F

    iget v10, p0, Lcom/standardar/common/Quaternion;->y:F

    mul-float v2, v9, v10

    .line 132
    .local v2, "xy":F
    iget v9, p0, Lcom/standardar/common/Quaternion;->x:F

    iget v10, p0, Lcom/standardar/common/Quaternion;->z:F

    mul-float v3, v9, v10

    .line 133
    .local v3, "xz":F
    iget v9, p0, Lcom/standardar/common/Quaternion;->x:F

    iget v10, p0, Lcom/standardar/common/Quaternion;->w:F

    mul-float v0, v9, v10

    .line 135
    .local v0, "xw":F
    iget v9, p0, Lcom/standardar/common/Quaternion;->y:F

    iget v10, p0, Lcom/standardar/common/Quaternion;->y:F

    mul-float v5, v9, v10

    .line 136
    .local v5, "yy":F
    iget v9, p0, Lcom/standardar/common/Quaternion;->y:F

    iget v10, p0, Lcom/standardar/common/Quaternion;->z:F

    mul-float v6, v9, v10

    .line 137
    .local v6, "yz":F
    iget v9, p0, Lcom/standardar/common/Quaternion;->y:F

    iget v10, p0, Lcom/standardar/common/Quaternion;->w:F

    mul-float v4, v9, v10

    .line 139
    .local v4, "yw":F
    iget v9, p0, Lcom/standardar/common/Quaternion;->z:F

    iget v10, p0, Lcom/standardar/common/Quaternion;->z:F

    mul-float v8, v9, v10

    .line 140
    .local v8, "zz":F
    iget v9, p0, Lcom/standardar/common/Quaternion;->z:F

    iget v10, p0, Lcom/standardar/common/Quaternion;->w:F

    mul-float v7, v9, v10

    .line 142
    .local v7, "zw":F
    add-int/lit8 v9, p2, 0x0

    mul-int/lit8 v10, p3, 0x0

    add-int/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x40000000    # 2.0f

    add-float v12, v5, v8

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    aput v10, p1, v9

    .line 143
    add-int/lit8 v9, p2, 0x0

    mul-int/lit8 v10, p3, 0x1

    add-int/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    sub-float v11, v2, v7

    mul-float/2addr v10, v11

    aput v10, p1, v9

    .line 144
    add-int/lit8 v9, p2, 0x0

    mul-int/lit8 v10, p3, 0x2

    add-int/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    add-float v11, v3, v4

    mul-float/2addr v10, v11

    aput v10, p1, v9

    .line 146
    add-int/lit8 v9, p2, 0x1

    mul-int/lit8 v10, p3, 0x0

    add-int/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    add-float v11, v2, v7

    mul-float/2addr v10, v11

    aput v10, p1, v9

    .line 147
    add-int/lit8 v9, p2, 0x1

    mul-int/lit8 v10, p3, 0x1

    add-int/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x40000000    # 2.0f

    add-float v12, v1, v8

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    aput v10, p1, v9

    .line 148
    add-int/lit8 v9, p2, 0x1

    mul-int/lit8 v10, p3, 0x2

    add-int/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    sub-float v11, v6, v0

    mul-float/2addr v10, v11

    aput v10, p1, v9

    .line 150
    add-int/lit8 v9, p2, 0x2

    mul-int/lit8 v10, p3, 0x0

    add-int/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    sub-float v11, v3, v4

    mul-float/2addr v10, v11

    aput v10, p1, v9

    .line 151
    add-int/lit8 v9, p2, 0x2

    mul-int/lit8 v10, p3, 0x1

    add-int/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    add-float v11, v6, v0

    mul-float/2addr v10, v11

    aput v10, p1, v9

    .line 152
    add-int/lit8 v9, p2, 0x2

    mul-int/lit8 v10, p3, 0x2

    add-int/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x40000000    # 2.0f

    add-float v12, v1, v5

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    aput v10, p1, v9

    .line 153
    return-void
.end method

.method public w()F
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/standardar/common/Quaternion;->w:F

    return v0
.end method

.method public x()F
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/standardar/common/Quaternion;->x:F

    return v0
.end method

.method public xAxis([FI)V
    .locals 2
    .param p1, "dest"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 67
    const/4 v1, 0x3

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 68
    .local v0, "invec":[F
    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1, p2}, Lcom/standardar/common/Quaternion;->rotateVector(Lcom/standardar/common/Quaternion;[FI[FI)V

    .line 69
    return-void

    .line 67
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data
.end method

.method public xAxis()[F
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 82
    new-array v1, v3, [F

    .line 83
    .local v1, "outvec":[F
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    .line 84
    .local v0, "invec":[F
    invoke-static {p0, v0, v2, v1, v2}, Lcom/standardar/common/Quaternion;->rotateVector(Lcom/standardar/common/Quaternion;[FI[FI)V

    .line 85
    return-object v1

    .line 83
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data
.end method

.method public y()F
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/standardar/common/Quaternion;->y:F

    return v0
.end method

.method public yAxis([FI)V
    .locals 2
    .param p1, "dest"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 72
    const/4 v1, 0x3

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 73
    .local v0, "invec":[F
    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1, p2}, Lcom/standardar/common/Quaternion;->rotateVector(Lcom/standardar/common/Quaternion;[FI[FI)V

    .line 74
    return-void

    .line 72
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public yAxis()[F
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 89
    new-array v1, v3, [F

    .line 90
    .local v1, "outvec":[F
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    .line 91
    .local v0, "invec":[F
    invoke-static {p0, v0, v2, v1, v2}, Lcom/standardar/common/Quaternion;->rotateVector(Lcom/standardar/common/Quaternion;[FI[FI)V

    .line 92
    return-object v1

    .line 90
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public z()F
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/standardar/common/Quaternion;->z:F

    return v0
.end method

.method public zAxis([FI)V
    .locals 2
    .param p1, "dest"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 77
    const/4 v1, 0x3

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 78
    .local v0, "invec":[F
    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1, p2}, Lcom/standardar/common/Quaternion;->rotateVector(Lcom/standardar/common/Quaternion;[FI[FI)V

    .line 79
    return-void

    .line 77
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public zAxis()[F
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 96
    new-array v1, v3, [F

    .line 97
    .local v1, "outvec":[F
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    .line 98
    .local v0, "invec":[F
    invoke-static {p0, v0, v2, v1, v2}, Lcom/standardar/common/Quaternion;->rotateVector(Lcom/standardar/common/Quaternion;[FI[FI)V

    .line 99
    return-object v1

    .line 97
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
