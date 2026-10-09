.class Lcom/google/ar/core/Quaternion;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/ar/core/annotations/UsedByNative;
    value = "session_jni_wrapper.cc"
.end annotation


# static fields
.field public static final a:Lcom/google/ar/core/Quaternion;


# instance fields
.field private w:F
    .annotation build Lcom/google/ar/core/annotations/UsedByNative;
        value = "session_jni_wrapper.cc"
    .end annotation
.end field

.field private x:F
    .annotation build Lcom/google/ar/core/annotations/UsedByNative;
        value = "session_jni_wrapper.cc"
    .end annotation
.end field

.field private y:F
    .annotation build Lcom/google/ar/core/annotations/UsedByNative;
        value = "session_jni_wrapper.cc"
    .end annotation
.end field

.field private z:F
    .annotation build Lcom/google/ar/core/annotations/UsedByNative;
        value = "session_jni_wrapper.cc"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/ar/core/Quaternion;

    invoke-direct {v0}, Lcom/google/ar/core/Quaternion;-><init>()V

    sput-object v0, Lcom/google/ar/core/Quaternion;->a:Lcom/google/ar/core/Quaternion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/ar/core/Quaternion;->x:F

    iput v0, p0, Lcom/google/ar/core/Quaternion;->y:F

    iput v0, p0, Lcom/google/ar/core/Quaternion;->z:F

    iput v1, p0, Lcom/google/ar/core/Quaternion;->w:F

    invoke-direct {p0, v0, v0, v0, v1}, Lcom/google/ar/core/Quaternion;->a(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1
    .annotation build Lcom/google/ar/core/annotations/UsedByNative;
        value = "session_jni_wrapper.cc"
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/ar/core/Quaternion;->x:F

    iput v0, p0, Lcom/google/ar/core/Quaternion;->y:F

    iput v0, p0, Lcom/google/ar/core/Quaternion;->z:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/ar/core/Quaternion;->w:F

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/ar/core/Quaternion;->a(FFFF)V

    return-void
.end method

.method private constructor <init>(Lcom/google/ar/core/Quaternion;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/ar/core/Quaternion;->x:F

    iput v0, p0, Lcom/google/ar/core/Quaternion;->y:F

    iput v0, p0, Lcom/google/ar/core/Quaternion;->z:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/ar/core/Quaternion;->w:F

    iget v0, p1, Lcom/google/ar/core/Quaternion;->x:F

    iget v1, p1, Lcom/google/ar/core/Quaternion;->y:F

    iget v2, p1, Lcom/google/ar/core/Quaternion;->z:F

    iget v3, p1, Lcom/google/ar/core/Quaternion;->w:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Quaternion;->a(FFFF)V

    return-void
.end method

.method public static a(Lcom/google/ar/core/Quaternion;Lcom/google/ar/core/Quaternion;F)Lcom/google/ar/core/Quaternion;
    .locals 9

    const/high16 v8, 0x3f800000    # 1.0f

    new-instance v2, Lcom/google/ar/core/Quaternion;

    invoke-direct {v2}, Lcom/google/ar/core/Quaternion;-><init>()V

    iget v0, p0, Lcom/google/ar/core/Quaternion;->x:F

    iget v1, p1, Lcom/google/ar/core/Quaternion;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/ar/core/Quaternion;->y:F

    iget v3, p1, Lcom/google/ar/core/Quaternion;->y:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/ar/core/Quaternion;->z:F

    iget v3, p1, Lcom/google/ar/core/Quaternion;->z:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/ar/core/Quaternion;->w:F

    iget v3, p1, Lcom/google/ar/core/Quaternion;->w:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    new-instance v1, Lcom/google/ar/core/Quaternion;

    invoke-direct {v1, p1}, Lcom/google/ar/core/Quaternion;-><init>(Lcom/google/ar/core/Quaternion;)V

    neg-float v0, v0

    iget v3, v1, Lcom/google/ar/core/Quaternion;->x:F

    neg-float v3, v3

    iput v3, v1, Lcom/google/ar/core/Quaternion;->x:F

    iget v3, v1, Lcom/google/ar/core/Quaternion;->y:F

    neg-float v3, v3

    iput v3, v1, Lcom/google/ar/core/Quaternion;->y:F

    iget v3, v1, Lcom/google/ar/core/Quaternion;->z:F

    neg-float v3, v3

    iput v3, v1, Lcom/google/ar/core/Quaternion;->z:F

    iget v3, v1, Lcom/google/ar/core/Quaternion;->w:F

    neg-float v3, v3

    iput v3, v1, Lcom/google/ar/core/Quaternion;->w:F

    move-object p1, v1

    :cond_0
    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    double-to-float v1, v4

    mul-float/2addr v0, v0

    sub-float v0, v8, v0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v3, v4, v6

    if-lez v3, :cond_1

    div-float v3, v8, v0

    sub-float v0, v8, p2

    mul-float/2addr v0, v1

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v0, v4

    mul-float/2addr v0, v3

    mul-float/2addr v1, p2

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v1, v4

    mul-float p2, v1, v3

    :goto_0
    iget v1, p0, Lcom/google/ar/core/Quaternion;->x:F

    mul-float/2addr v1, v0

    iget v3, p1, Lcom/google/ar/core/Quaternion;->x:F

    mul-float/2addr v3, p2

    add-float/2addr v1, v3

    iput v1, v2, Lcom/google/ar/core/Quaternion;->x:F

    iget v1, p0, Lcom/google/ar/core/Quaternion;->y:F

    mul-float/2addr v1, v0

    iget v3, p1, Lcom/google/ar/core/Quaternion;->y:F

    mul-float/2addr v3, p2

    add-float/2addr v1, v3

    iput v1, v2, Lcom/google/ar/core/Quaternion;->y:F

    iget v1, p0, Lcom/google/ar/core/Quaternion;->z:F

    mul-float/2addr v1, v0

    iget v3, p1, Lcom/google/ar/core/Quaternion;->z:F

    mul-float/2addr v3, p2

    add-float/2addr v1, v3

    iput v1, v2, Lcom/google/ar/core/Quaternion;->z:F

    iget v1, p0, Lcom/google/ar/core/Quaternion;->w:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/google/ar/core/Quaternion;->w:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, v2, Lcom/google/ar/core/Quaternion;->w:F

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget v3, v2, Lcom/google/ar/core/Quaternion;->x:F

    iget v4, v2, Lcom/google/ar/core/Quaternion;->x:F

    mul-float/2addr v3, v4

    iget v4, v2, Lcom/google/ar/core/Quaternion;->y:F

    iget v5, v2, Lcom/google/ar/core/Quaternion;->y:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, v2, Lcom/google/ar/core/Quaternion;->z:F

    iget v5, v2, Lcom/google/ar/core/Quaternion;->z:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, v2, Lcom/google/ar/core/Quaternion;->w:F

    iget v5, v2, Lcom/google/ar/core/Quaternion;->w:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v0, v4

    double-to-float v0, v0

    iget v1, v2, Lcom/google/ar/core/Quaternion;->x:F

    mul-float/2addr v1, v0

    iput v1, v2, Lcom/google/ar/core/Quaternion;->x:F

    iget v1, v2, Lcom/google/ar/core/Quaternion;->y:F

    mul-float/2addr v1, v0

    iput v1, v2, Lcom/google/ar/core/Quaternion;->y:F

    iget v1, v2, Lcom/google/ar/core/Quaternion;->z:F

    mul-float/2addr v1, v0

    iput v1, v2, Lcom/google/ar/core/Quaternion;->z:F

    iget v1, v2, Lcom/google/ar/core/Quaternion;->w:F

    mul-float/2addr v0, v1

    iput v0, v2, Lcom/google/ar/core/Quaternion;->w:F

    return-object v2

    :cond_1
    sub-float v0, v8, p2

    goto :goto_0
.end method

.method private final a(FFFF)V
    .locals 0

    iput p1, p0, Lcom/google/ar/core/Quaternion;->x:F

    iput p2, p0, Lcom/google/ar/core/Quaternion;->y:F

    iput p3, p0, Lcom/google/ar/core/Quaternion;->z:F

    iput p4, p0, Lcom/google/ar/core/Quaternion;->w:F

    return-void
.end method

.method public static a(Lcom/google/ar/core/Quaternion;[FI[FI)V
    .locals 11

    aget v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    add-int/lit8 v2, p2, 0x2

    aget v2, p1, v2

    iget v3, p0, Lcom/google/ar/core/Quaternion;->x:F

    iget v4, p0, Lcom/google/ar/core/Quaternion;->y:F

    iget v5, p0, Lcom/google/ar/core/Quaternion;->z:F

    iget v6, p0, Lcom/google/ar/core/Quaternion;->w:F

    mul-float v7, v6, v0

    mul-float v8, v4, v2

    add-float/2addr v7, v8

    mul-float v8, v5, v1

    sub-float/2addr v7, v8

    mul-float v8, v6, v1

    mul-float v9, v5, v0

    add-float/2addr v8, v9

    mul-float v9, v3, v2

    sub-float/2addr v8, v9

    mul-float v9, v6, v2

    mul-float v10, v3, v1

    add-float/2addr v9, v10

    mul-float v10, v4, v0

    sub-float/2addr v9, v10

    neg-float v10, v3

    mul-float/2addr v0, v10

    mul-float/2addr v1, v4

    sub-float/2addr v0, v1

    mul-float v1, v5, v2

    sub-float/2addr v0, v1

    mul-float v1, v7, v6

    neg-float v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    neg-float v2, v5

    mul-float/2addr v2, v8

    add-float/2addr v1, v2

    neg-float v2, v4

    mul-float/2addr v2, v9

    sub-float/2addr v1, v2

    aput v1, p3, p4

    add-int/lit8 v1, p4, 0x1

    mul-float v2, v8, v6

    neg-float v10, v4

    mul-float/2addr v10, v0

    add-float/2addr v2, v10

    neg-float v10, v3

    mul-float/2addr v10, v9

    add-float/2addr v2, v10

    neg-float v10, v5

    mul-float/2addr v10, v7

    sub-float/2addr v2, v10

    aput v2, p3, v1

    add-int/lit8 v1, p4, 0x2

    mul-float v2, v9, v6

    neg-float v5, v5

    mul-float/2addr v0, v5

    add-float/2addr v0, v2

    neg-float v2, v4

    mul-float/2addr v2, v7

    add-float/2addr v0, v2

    neg-float v2, v3

    mul-float/2addr v2, v8

    sub-float/2addr v0, v2

    aput v0, p3, v1

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget v0, p0, Lcom/google/ar/core/Quaternion;->x:F

    return v0
.end method

.method public final a(Lcom/google/ar/core/Quaternion;)Lcom/google/ar/core/Quaternion;
    .locals 4

    new-instance v0, Lcom/google/ar/core/Quaternion;

    invoke-direct {v0}, Lcom/google/ar/core/Quaternion;-><init>()V

    iget v1, p0, Lcom/google/ar/core/Quaternion;->x:F

    iget v2, p1, Lcom/google/ar/core/Quaternion;->w:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/ar/core/Quaternion;->y:F

    iget v3, p1, Lcom/google/ar/core/Quaternion;->z:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/google/ar/core/Quaternion;->z:F

    iget v3, p1, Lcom/google/ar/core/Quaternion;->y:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/google/ar/core/Quaternion;->w:F

    iget v3, p1, Lcom/google/ar/core/Quaternion;->x:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/google/ar/core/Quaternion;->x:F

    iget v1, p0, Lcom/google/ar/core/Quaternion;->x:F

    neg-float v1, v1

    iget v2, p1, Lcom/google/ar/core/Quaternion;->z:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/ar/core/Quaternion;->y:F

    iget v3, p1, Lcom/google/ar/core/Quaternion;->w:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/google/ar/core/Quaternion;->z:F

    iget v3, p1, Lcom/google/ar/core/Quaternion;->x:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/google/ar/core/Quaternion;->w:F

    iget v3, p1, Lcom/google/ar/core/Quaternion;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/google/ar/core/Quaternion;->y:F

    iget v1, p0, Lcom/google/ar/core/Quaternion;->x:F

    iget v2, p1, Lcom/google/ar/core/Quaternion;->y:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/ar/core/Quaternion;->y:F

    iget v3, p1, Lcom/google/ar/core/Quaternion;->x:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/google/ar/core/Quaternion;->z:F

    iget v3, p1, Lcom/google/ar/core/Quaternion;->w:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/google/ar/core/Quaternion;->w:F

    iget v3, p1, Lcom/google/ar/core/Quaternion;->z:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/google/ar/core/Quaternion;->z:F

    iget v1, p0, Lcom/google/ar/core/Quaternion;->x:F

    neg-float v1, v1

    iget v2, p1, Lcom/google/ar/core/Quaternion;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/ar/core/Quaternion;->y:F

    iget v3, p1, Lcom/google/ar/core/Quaternion;->y:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/google/ar/core/Quaternion;->z:F

    iget v3, p1, Lcom/google/ar/core/Quaternion;->z:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/google/ar/core/Quaternion;->w:F

    iget v3, p1, Lcom/google/ar/core/Quaternion;->w:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/google/ar/core/Quaternion;->w:F

    return-object v0
.end method

.method public final a([FI)V
    .locals 2

    iget v0, p0, Lcom/google/ar/core/Quaternion;->x:F

    aput v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Lcom/google/ar/core/Quaternion;->y:F

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Lcom/google/ar/core/Quaternion;->z:F

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    iget v1, p0, Lcom/google/ar/core/Quaternion;->w:F

    aput v1, p1, v0

    return-void
.end method

.method public final a([FII)V
    .locals 12

    const/4 v0, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/google/ar/core/Quaternion;->x:F

    iget v2, p0, Lcom/google/ar/core/Quaternion;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/ar/core/Quaternion;->y:F

    iget v3, p0, Lcom/google/ar/core/Quaternion;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/google/ar/core/Quaternion;->z:F

    iget v3, p0, Lcom/google/ar/core/Quaternion;->z:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/google/ar/core/Quaternion;->w:F

    iget v3, p0, Lcom/google/ar/core/Quaternion;->w:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/google/ar/core/Quaternion;->x:F

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/google/ar/core/Quaternion;->y:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/google/ar/core/Quaternion;->z:F

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/google/ar/core/Quaternion;->w:F

    mul-float/2addr v3, v1

    iget v4, p0, Lcom/google/ar/core/Quaternion;->w:F

    mul-float/2addr v4, v2

    iget v5, p0, Lcom/google/ar/core/Quaternion;->w:F

    mul-float/2addr v5, v0

    iget v6, p0, Lcom/google/ar/core/Quaternion;->x:F

    mul-float/2addr v1, v6

    iget v6, p0, Lcom/google/ar/core/Quaternion;->x:F

    mul-float/2addr v6, v2

    iget v7, p0, Lcom/google/ar/core/Quaternion;->x:F

    mul-float/2addr v7, v0

    iget v8, p0, Lcom/google/ar/core/Quaternion;->y:F

    mul-float/2addr v2, v8

    iget v8, p0, Lcom/google/ar/core/Quaternion;->y:F

    mul-float/2addr v8, v0

    iget v9, p0, Lcom/google/ar/core/Quaternion;->z:F

    mul-float/2addr v0, v9

    add-float v9, v2, v0

    sub-float v9, v11, v9

    aput v9, p1, p2

    add-int/lit8 v9, p2, 0x4

    sub-float v10, v6, v5

    aput v10, p1, v9

    add-int/lit8 v9, p2, 0x8

    add-float v10, v7, v4

    aput v10, p1, v9

    add-int/lit8 v9, p2, 0x1

    add-float/2addr v5, v6

    aput v5, p1, v9

    add-int/lit8 v5, p2, 0x1

    add-int/lit8 v5, v5, 0x4

    add-float/2addr v0, v1

    sub-float v0, v11, v0

    aput v0, p1, v5

    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v0, v0, 0x8

    sub-float v5, v8, v3

    aput v5, p1, v0

    add-int/lit8 v0, p2, 0x2

    sub-float v4, v7, v4

    aput v4, p1, v0

    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x4

    add-float/2addr v3, v8

    aput v3, p1, v0

    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x8

    add-float/2addr v1, v2

    sub-float v1, v11, v1

    aput v1, p1, v0

    return-void
.end method

.method public final b()F
    .locals 1

    iget v0, p0, Lcom/google/ar/core/Quaternion;->y:F

    return v0
.end method

.method public final c()F
    .locals 1

    iget v0, p0, Lcom/google/ar/core/Quaternion;->z:F

    return v0
.end method

.method public final d()F
    .locals 1

    iget v0, p0, Lcom/google/ar/core/Quaternion;->w:F

    return v0
.end method

.method public final e()Lcom/google/ar/core/Quaternion;
    .locals 5

    new-instance v0, Lcom/google/ar/core/Quaternion;

    iget v1, p0, Lcom/google/ar/core/Quaternion;->x:F

    neg-float v1, v1

    iget v2, p0, Lcom/google/ar/core/Quaternion;->y:F

    neg-float v2, v2

    iget v3, p0, Lcom/google/ar/core/Quaternion;->z:F

    neg-float v3, v3

    iget v4, p0, Lcom/google/ar/core/Quaternion;->w:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/ar/core/Quaternion;-><init>(FFFF)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "[%.3f, %.3f, %.3f, %.3f]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/ar/core/Quaternion;->x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/ar/core/Quaternion;->y:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/google/ar/core/Quaternion;->z:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/google/ar/core/Quaternion;->w:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
