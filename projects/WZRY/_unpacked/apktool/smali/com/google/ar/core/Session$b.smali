.class abstract enum Lcom/google/ar/core/Session$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ar/core/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ar/core/Session$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final enum a:Lcom/google/ar/core/Session$b;

.field private static final enum b:Lcom/google/ar/core/Session$b;

.field private static final enum c:Lcom/google/ar/core/Session$b;

.field private static final synthetic f:[Lcom/google/ar/core/Session$b;


# instance fields
.field private final d:I

.field private final e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/google/ar/core/ab;

    const-string v1, "PLANE"

    const v2, 0x41520101

    const-class v3, Lcom/google/ar/core/Plane;

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/ar/core/ab;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/Session$b;->a:Lcom/google/ar/core/Session$b;

    new-instance v0, Lcom/google/ar/core/ac;

    const-string v1, "POINT"

    const v2, 0x41520102

    const-class v3, Lcom/google/ar/core/Point;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/google/ar/core/ac;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/Session$b;->b:Lcom/google/ar/core/Session$b;

    new-instance v0, Lcom/google/ar/core/ad;

    const-string v1, "AUGMENTED_IMAGE"

    const v2, 0x41520104

    const-class v3, Lcom/google/ar/core/AugmentedImage;

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/google/ar/core/ad;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/Session$b;->c:Lcom/google/ar/core/Session$b;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/ar/core/Session$b;

    sget-object v1, Lcom/google/ar/core/Session$b;->a:Lcom/google/ar/core/Session$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/ar/core/Session$b;->b:Lcom/google/ar/core/Session$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/ar/core/Session$b;->c:Lcom/google/ar/core/Session$b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/ar/core/Session$b;->f:[Lcom/google/ar/core/Session$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/ar/core/Trackable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/ar/core/Session$b;->d:I

    iput-object p4, p0, Lcom/google/ar/core/Session$b;->e:Ljava/lang/Class;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILjava/lang/Class;B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/ar/core/Session$b;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    return-void
.end method

.method static synthetic a(Lcom/google/ar/core/Session$b;)I
    .locals 1

    iget v0, p0, Lcom/google/ar/core/Session$b;->d:I

    return v0
.end method

.method public static a(I)Lcom/google/ar/core/Session$b;
    .locals 5

    invoke-static {}, Lcom/google/ar/core/Session$b;->a()[Lcom/google/ar/core/Session$b;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lcom/google/ar/core/Session$b;->d:I

    if-ne v4, p0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Ljava/lang/Class;)Lcom/google/ar/core/Session$b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/ar/core/Trackable;",
            ">;)",
            "Lcom/google/ar/core/Session$b;"
        }
    .end annotation

    invoke-static {}, Lcom/google/ar/core/Session$b;->a()[Lcom/google/ar/core/Session$b;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget-object v4, v0, Lcom/google/ar/core/Session$b;->e:Ljava/lang/Class;

    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a()[Lcom/google/ar/core/Session$b;
    .locals 1

    sget-object v0, Lcom/google/ar/core/Session$b;->f:[Lcom/google/ar/core/Session$b;

    invoke-virtual {v0}, [Lcom/google/ar/core/Session$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ar/core/Session$b;

    return-object v0
.end method


# virtual methods
.method public abstract a(JLcom/google/ar/core/Session;)Lcom/google/ar/core/Trackable;
.end method
