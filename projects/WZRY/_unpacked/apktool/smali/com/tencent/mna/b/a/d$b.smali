.class public final enum Lcom/tencent/mna/b/a/d$b;
.super Ljava/lang/Enum;
.source "AccelerateTesterFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/b/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/mna/b/a/d$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/mna/b/a/d$b;

.field public static final enum b:Lcom/tencent/mna/b/a/d$b;

.field public static final enum c:Lcom/tencent/mna/b/a/d$b;

.field public static final enum d:Lcom/tencent/mna/b/a/d$b;

.field private static final synthetic g:[Lcom/tencent/mna/b/a/d$b;


# instance fields
.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    new-instance v0, Lcom/tencent/mna/b/a/d$b;

    const-string v1, "STAGE_CONTINUOUS_SPEED_TEST"

    const-string/jumbo v2, "\u542f\u52a8\u9636\u6bb5\u5df2\u8fde\u7eed\u6d4b\u901f"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/tencent/mna/b/a/d$b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/mna/b/a/d$b;->a:Lcom/tencent/mna/b/a/d$b;

    .line 44
    new-instance v0, Lcom/tencent/mna/b/a/d$b;

    const-string v1, "STAGE_FORWARD_CHOSEN"

    const-string/jumbo v2, "\u9009\u62e9\u8f6c\u53d1"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/tencent/mna/b/a/d$b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/mna/b/a/d$b;->b:Lcom/tencent/mna/b/a/d$b;

    .line 45
    new-instance v0, Lcom/tencent/mna/b/a/d$b;

    const-string v1, "STAGE_DIRECT_CHOSEN"

    const-string/jumbo v2, "\u9009\u62e9\u76f4\u8fde"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/tencent/mna/b/a/d$b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/mna/b/a/d$b;->c:Lcom/tencent/mna/b/a/d$b;

    .line 46
    new-instance v0, Lcom/tencent/mna/b/a/d$b;

    const-string v1, "STAGE_NOT_CONTINUOUS_SPEED_TEST"

    const-string/jumbo v2, "\u542f\u52a8\u9636\u6bb5\u672a\u8fde\u7eed\u6d4b\u901f"

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/tencent/mna/b/a/d$b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/mna/b/a/d$b;->d:Lcom/tencent/mna/b/a/d$b;

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tencent/mna/b/a/d$b;

    sget-object v1, Lcom/tencent/mna/b/a/d$b;->a:Lcom/tencent/mna/b/a/d$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/mna/b/a/d$b;->b:Lcom/tencent/mna/b/a/d$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/mna/b/a/d$b;->c:Lcom/tencent/mna/b/a/d$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/mna/b/a/d$b;->d:Lcom/tencent/mna/b/a/d$b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/tencent/mna/b/a/d$b;->g:[Lcom/tencent/mna/b/a/d$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mna/b/a/d$b;->e:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mna/b/a/d$b;->f:I

    .line 52
    iput p3, p0, Lcom/tencent/mna/b/a/d$b;->f:I

    .line 53
    iput-object p4, p0, Lcom/tencent/mna/b/a/d$b;->e:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mna/b/a/d$b;
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/tencent/mna/b/a/d$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/mna/b/a/d$b;

    return-object v0
.end method

.method public static values()[Lcom/tencent/mna/b/a/d$b;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/tencent/mna/b/a/d$b;->g:[Lcom/tencent/mna/b/a/d$b;

    invoke-virtual {v0}, [Lcom/tencent/mna/b/a/d$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mna/b/a/d$b;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/tencent/mna/b/a/d$b;->f:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/mna/b/a/d$b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/tencent/mna/b/a/d$b;->b:Lcom/tencent/mna/b/a/d$b;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/tencent/mna/b/a/d$b;->c:Lcom/tencent/mna/b/a/d$b;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
