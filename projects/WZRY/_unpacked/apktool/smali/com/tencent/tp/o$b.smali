.class final enum Lcom/tencent/tp/o$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tp/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/tp/o$b;

.field public static final enum b:Lcom/tencent/tp/o$b;

.field public static final enum c:Lcom/tencent/tp/o$b;

.field public static final enum d:Lcom/tencent/tp/o$b;

.field private static final synthetic e:[Lcom/tencent/tp/o$b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/tencent/tp/o$b;

    const-string v1, "ESTABLISHED"

    invoke-direct {v0, v1, v2}, Lcom/tencent/tp/o$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tp/o$b;->a:Lcom/tencent/tp/o$b;

    new-instance v0, Lcom/tencent/tp/o$b;

    const-string v1, "LISTENING"

    invoke-direct {v0, v1, v3}, Lcom/tencent/tp/o$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tp/o$b;->b:Lcom/tencent/tp/o$b;

    new-instance v0, Lcom/tencent/tp/o$b;

    const-string v1, "OTHERS"

    invoke-direct {v0, v1, v4}, Lcom/tencent/tp/o$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tp/o$b;->c:Lcom/tencent/tp/o$b;

    new-instance v0, Lcom/tencent/tp/o$b;

    const-string v1, "NOT_OPENED"

    invoke-direct {v0, v1, v5}, Lcom/tencent/tp/o$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tp/o$b;->d:Lcom/tencent/tp/o$b;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tencent/tp/o$b;

    sget-object v1, Lcom/tencent/tp/o$b;->a:Lcom/tencent/tp/o$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/tp/o$b;->b:Lcom/tencent/tp/o$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/tp/o$b;->c:Lcom/tencent/tp/o$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/tp/o$b;->d:Lcom/tencent/tp/o$b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tencent/tp/o$b;->e:[Lcom/tencent/tp/o$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/tp/o$b;
    .locals 1

    const-class v0, Lcom/tencent/tp/o$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/tp/o$b;

    return-object v0
.end method

.method public static values()[Lcom/tencent/tp/o$b;
    .locals 1

    sget-object v0, Lcom/tencent/tp/o$b;->e:[Lcom/tencent/tp/o$b;

    invoke-virtual {v0}, [Lcom/tencent/tp/o$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/tp/o$b;

    return-object v0
.end method
