.class final enum Lcom/google/ar/core/n;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ar/core/n;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/ar/core/n;

.field public static final enum b:Lcom/google/ar/core/n;

.field public static final enum c:Lcom/google/ar/core/n;

.field private static final synthetic d:[Lcom/google/ar/core/n;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/ar/core/n;

    const-string v1, "ACCEPTED"

    invoke-direct {v0, v1, v2}, Lcom/google/ar/core/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ar/core/n;->a:Lcom/google/ar/core/n;

    new-instance v0, Lcom/google/ar/core/n;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1, v3}, Lcom/google/ar/core/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ar/core/n;->b:Lcom/google/ar/core/n;

    new-instance v0, Lcom/google/ar/core/n;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1, v4}, Lcom/google/ar/core/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ar/core/n;->c:Lcom/google/ar/core/n;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/ar/core/n;

    sget-object v1, Lcom/google/ar/core/n;->a:Lcom/google/ar/core/n;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/ar/core/n;->b:Lcom/google/ar/core/n;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ar/core/n;->c:Lcom/google/ar/core/n;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/ar/core/n;->d:[Lcom/google/ar/core/n;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
