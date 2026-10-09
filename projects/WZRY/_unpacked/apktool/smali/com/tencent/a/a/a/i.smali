.class public final enum Lcom/tencent/a/a/a/i;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/a/a/a/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/a/a/a/i;

.field public static final enum b:Lcom/tencent/a/a/a/i;

.field private static final synthetic c:[Lcom/tencent/a/a/a/i;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/tencent/a/a/a/i;

    const-string v1, "QMapLanguage_zh"

    invoke-direct {v0, v1, v2}, Lcom/tencent/a/a/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/a/a/a/i;->a:Lcom/tencent/a/a/a/i;

    new-instance v0, Lcom/tencent/a/a/a/i;

    const-string v1, "QMapLanguage_en"

    invoke-direct {v0, v1, v3}, Lcom/tencent/a/a/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/a/a/a/i;->b:Lcom/tencent/a/a/a/i;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tencent/a/a/a/i;

    sget-object v1, Lcom/tencent/a/a/a/i;->a:Lcom/tencent/a/a/a/i;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/a/a/a/i;->b:Lcom/tencent/a/a/a/i;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tencent/a/a/a/i;->c:[Lcom/tencent/a/a/a/i;

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

.method public static a(Lcom/tencent/a/a/a/i;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/a/a/a/i;->name()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/a/a/a/i;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, "en"

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/a/a/a/i;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/a/a/a/i;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/a/a/a/i;
    .locals 1

    const-class v0, Lcom/tencent/a/a/a/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/a/a/a/i;

    return-object v0
.end method

.method public static values()[Lcom/tencent/a/a/a/i;
    .locals 1

    sget-object v0, Lcom/tencent/a/a/a/i;->c:[Lcom/tencent/a/a/a/i;

    invoke-virtual {v0}, [Lcom/tencent/a/a/a/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/a/a/a/i;

    return-object v0
.end method
