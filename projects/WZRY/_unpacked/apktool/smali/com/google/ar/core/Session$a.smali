.class abstract enum Lcom/google/ar/core/Session$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ar/core/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ar/core/Session$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic B:[Lcom/google/ar/core/Session$a;

.field private static final enum a:Lcom/google/ar/core/Session$a;

.field private static final enum b:Lcom/google/ar/core/Session$a;

.field private static final enum c:Lcom/google/ar/core/Session$a;

.field private static final enum d:Lcom/google/ar/core/Session$a;

.field private static final enum e:Lcom/google/ar/core/Session$a;

.field private static final enum f:Lcom/google/ar/core/Session$a;

.field private static final enum g:Lcom/google/ar/core/Session$a;

.field private static final enum h:Lcom/google/ar/core/Session$a;

.field private static final enum i:Lcom/google/ar/core/Session$a;

.field private static final enum j:Lcom/google/ar/core/Session$a;

.field private static final enum k:Lcom/google/ar/core/Session$a;

.field private static final enum l:Lcom/google/ar/core/Session$a;

.field private static final enum m:Lcom/google/ar/core/Session$a;

.field private static final enum n:Lcom/google/ar/core/Session$a;

.field private static final enum o:Lcom/google/ar/core/Session$a;

.field private static final enum p:Lcom/google/ar/core/Session$a;

.field private static final enum q:Lcom/google/ar/core/Session$a;

.field private static final enum r:Lcom/google/ar/core/Session$a;

.field private static final enum s:Lcom/google/ar/core/Session$a;

.field private static final enum t:Lcom/google/ar/core/Session$a;

.field private static final enum u:Lcom/google/ar/core/Session$a;

.field private static final enum v:Lcom/google/ar/core/Session$a;

.field private static final enum w:Lcom/google/ar/core/Session$a;

.field private static final enum x:Lcom/google/ar/core/Session$a;

.field private static final enum y:Lcom/google/ar/core/Session$a;

.field private static final enum z:Lcom/google/ar/core/Session$a;


# instance fields
.field private final A:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/google/ar/core/A;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/ar/core/A;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ar/core/Session$a;->a:Lcom/google/ar/core/Session$a;

    new-instance v0, Lcom/google/ar/core/L;

    const-string v1, "ERROR_INVALID_ARGUMENT"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/google/ar/core/L;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ar/core/Session$a;->b:Lcom/google/ar/core/Session$a;

    new-instance v0, Lcom/google/ar/core/U;

    const-string v1, "ERROR_FATAL"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v6, v2}, Lcom/google/ar/core/U;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ar/core/Session$a;->c:Lcom/google/ar/core/Session$a;

    new-instance v0, Lcom/google/ar/core/V;

    const-string v1, "ERROR_SESSION_PAUSED"

    const/4 v2, -0x3

    invoke-direct {v0, v1, v7, v2}, Lcom/google/ar/core/V;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ar/core/Session$a;->d:Lcom/google/ar/core/Session$a;

    new-instance v0, Lcom/google/ar/core/W;

    const-string v1, "ERROR_SESSION_NOT_PAUSED"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v8, v2}, Lcom/google/ar/core/W;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ar/core/Session$a;->e:Lcom/google/ar/core/Session$a;

    new-instance v0, Lcom/google/ar/core/X;

    const-string v1, "ERROR_NOT_TRACKING"

    const/4 v2, 0x5

    const/4 v3, -0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ar/core/X;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ar/core/Session$a;->f:Lcom/google/ar/core/Session$a;

    new-instance v0, Lcom/google/ar/core/Y;

    const-string v1, "ERROR_TEXTURE_NOT_SET"

    const/4 v2, 0x6

    const/4 v3, -0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ar/core/Y;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ar/core/Session$a;->g:Lcom/google/ar/core/Session$a;

    new-instance v0, Lcom/google/ar/core/Z;

    const-string v1, "ERROR_MISSING_GL_CONTEXT"

    const/4 v2, 0x7

    const/4 v3, -0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ar/core/Z;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ar/core/Session$a;->h:Lcom/google/ar/core/Session$a;

    new-instance v0, Lcom/google/ar/core/aa;

    const-string v1, "ERROR_UNSUPPORTED_CONFIGURATION"

    const/16 v2, 0x8

    const/4 v3, -0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ar/core/aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ar/core/Session$a;->i:Lcom/google/ar/core/Session$a;

    new-instance v0, Lcom/google/ar/core/B;

    const-string v1, "ERROR_CAMERA_PERMISSION_NOT_GRANTED"

    const/16 v2, 0x9

    const/16 v3, -0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ar/core/B;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ar/core/Session$a;->j:Lcom/google/ar/core/Session$a;

    new-instance v0, Lcom/google/ar/core/C;

    const-string v1, "ERROR_DEADLINE_EXCEEDED"

    const/16 v2, 0xa

    const/16 v3, -0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ar/core/C;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ar/core/Session$a;->k:Lcom/google/ar/core/Session$a;

    new-instance v0, Lcom/google/ar/core/D;

    const-string v1, "ERROR_RESOURCE_EXHAUSTED"

    const/16 v2, 0xb

    const/16 v3, -0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ar/core/D;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ar/core/Session$a;->l:Lcom/google/ar/core/Session$a;

    new-instance v0, Lcom/google/ar/core/E;

    const-string v1, "ERROR_NOT_YET_AVAILABLE"

    const/16 v2, 0xc

    const/16 v3, -0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ar/core/E;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ar/core/Session$a;->m:Lcom/google/ar/core/Session$a;

    new-instance v0, Lcom/google/ar/core/F;

    const-string v1, "ERROR_CAMERA_NOT_AVAILABLE"

    const/16 v2, 0xd

    const/16 v3, -0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ar/core/F;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ar/core/Session$a;->n:Lcom/google/ar/core/Session$a;

    new-instance v0, Lcom/google/ar/core/G;

    const-string v1, "ERROR_ANCHOR_NOT_SUPPORTED_FOR_HOSTING"

    const/16 v2, 0xe

    const/16 v3, -0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ar/core/G;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ar/core/Session$a;->o:Lcom/google/ar/core/Session$a;

    new-instance v0, Lcom/google/ar/core/H;

    const-string v1, "ERROR_IMAGE_INSUFFICIENT_QUALITY"

    const/16 v2, 0xf

    const/16 v3, -0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ar/core/H;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ar/core/Session$a;->p:Lcom/google/ar/core/Session$a;

    new-instance v0, Lcom/google/ar/core/I;

    const-string v1, "ERROR_DATA_INVALID_FORMAT"

    const/16 v2, 0x10

    const/16 v3, -0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ar/core/I;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ar/core/Session$a;->q:Lcom/google/ar/core/Session$a;

    new-instance v0, Lcom/google/ar/core/J;

    const-string v1, "ERROR_DATA_UNSUPPORTED_VERSION"

    const/16 v2, 0x11

    const/16 v3, -0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ar/core/J;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ar/core/Session$a;->r:Lcom/google/ar/core/Session$a;

    new-instance v0, Lcom/google/ar/core/K;

    const-string v1, "ERROR_ILLEGAL_STATE"

    const/16 v2, 0x12

    const/16 v3, -0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ar/core/K;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ar/core/Session$a;->s:Lcom/google/ar/core/Session$a;

    new-instance v0, Lcom/google/ar/core/M;

    const-string v1, "ERROR_CLOUD_ANCHORS_NOT_CONFIGURED"

    const/16 v2, 0x13

    const/16 v3, -0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ar/core/M;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ar/core/Session$a;->t:Lcom/google/ar/core/Session$a;

    new-instance v0, Lcom/google/ar/core/N;

    const-string v1, "ERROR_INTERNET_PERMISSION_NOT_GRANTED"

    const/16 v2, 0x14

    const/16 v3, -0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ar/core/N;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ar/core/Session$a;->u:Lcom/google/ar/core/Session$a;

    new-instance v0, Lcom/google/ar/core/O;

    const-string v1, "UNAVAILABLE_ARCORE_NOT_INSTALLED"

    const/16 v2, 0x15

    const/16 v3, -0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ar/core/O;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ar/core/Session$a;->v:Lcom/google/ar/core/Session$a;

    new-instance v0, Lcom/google/ar/core/P;

    const-string v1, "UNAVAILABLE_DEVICE_NOT_COMPATIBLE"

    const/16 v2, 0x16

    const/16 v3, -0x65

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ar/core/P;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ar/core/Session$a;->w:Lcom/google/ar/core/Session$a;

    new-instance v0, Lcom/google/ar/core/Q;

    const-string v1, "UNAVAILABLE_APK_TOO_OLD"

    const/16 v2, 0x17

    const/16 v3, -0x67

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ar/core/Q;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ar/core/Session$a;->x:Lcom/google/ar/core/Session$a;

    new-instance v0, Lcom/google/ar/core/S;

    const-string v1, "UNAVAILABLE_SDK_TOO_OLD"

    const/16 v2, 0x18

    const/16 v3, -0x68

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ar/core/S;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ar/core/Session$a;->y:Lcom/google/ar/core/Session$a;

    new-instance v0, Lcom/google/ar/core/T;

    const-string v1, "UNAVAILABLE_USER_DECLINED_INSTALLATION"

    const/16 v2, 0x19

    const/16 v3, -0x69

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ar/core/T;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ar/core/Session$a;->z:Lcom/google/ar/core/Session$a;

    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/google/ar/core/Session$a;

    sget-object v1, Lcom/google/ar/core/Session$a;->a:Lcom/google/ar/core/Session$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/ar/core/Session$a;->b:Lcom/google/ar/core/Session$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/ar/core/Session$a;->c:Lcom/google/ar/core/Session$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/ar/core/Session$a;->d:Lcom/google/ar/core/Session$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/ar/core/Session$a;->e:Lcom/google/ar/core/Session$a;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/ar/core/Session$a;->f:Lcom/google/ar/core/Session$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/ar/core/Session$a;->g:Lcom/google/ar/core/Session$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/ar/core/Session$a;->h:Lcom/google/ar/core/Session$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/ar/core/Session$a;->i:Lcom/google/ar/core/Session$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/ar/core/Session$a;->j:Lcom/google/ar/core/Session$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/ar/core/Session$a;->k:Lcom/google/ar/core/Session$a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/ar/core/Session$a;->l:Lcom/google/ar/core/Session$a;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/ar/core/Session$a;->m:Lcom/google/ar/core/Session$a;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/ar/core/Session$a;->n:Lcom/google/ar/core/Session$a;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/ar/core/Session$a;->o:Lcom/google/ar/core/Session$a;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/ar/core/Session$a;->p:Lcom/google/ar/core/Session$a;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/ar/core/Session$a;->q:Lcom/google/ar/core/Session$a;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/ar/core/Session$a;->r:Lcom/google/ar/core/Session$a;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/ar/core/Session$a;->s:Lcom/google/ar/core/Session$a;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/ar/core/Session$a;->t:Lcom/google/ar/core/Session$a;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/google/ar/core/Session$a;->u:Lcom/google/ar/core/Session$a;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/google/ar/core/Session$a;->v:Lcom/google/ar/core/Session$a;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/google/ar/core/Session$a;->w:Lcom/google/ar/core/Session$a;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/google/ar/core/Session$a;->x:Lcom/google/ar/core/Session$a;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/google/ar/core/Session$a;->y:Lcom/google/ar/core/Session$a;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/google/ar/core/Session$a;->z:Lcom/google/ar/core/Session$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/ar/core/Session$a;->B:[Lcom/google/ar/core/Session$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/ar/core/Session$a;->A:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIB)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/ar/core/Session$a;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method static a(I)Lcom/google/ar/core/Session$a;
    .locals 5

    sget-object v0, Lcom/google/ar/core/Session$a;->B:[Lcom/google/ar/core/Session$a;

    invoke-virtual {v0}, [Lcom/google/ar/core/Session$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ar/core/Session$a;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    iget v4, v3, Lcom/google/ar/core/Session$a;->A:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    const/16 v1, 0x22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected error code: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract a()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ar/core/exceptions/UnavailableException;,
            Lcom/google/ar/core/exceptions/NotYetAvailableException;,
            Lcom/google/ar/core/exceptions/CameraNotAvailableException;
        }
    .end annotation
.end method
