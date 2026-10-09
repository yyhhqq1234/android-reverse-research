.class final enum Lcom/tencent/mna/b/d/d$a;
.super Ljava/lang/Enum;
.source "DiagnoseSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/b/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/mna/b/d/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/mna/b/d/d$a;

.field public static final enum b:Lcom/tencent/mna/b/d/d$a;

.field public static final enum c:Lcom/tencent/mna/b/d/d$a;

.field public static final enum d:Lcom/tencent/mna/b/d/d$a;

.field public static final enum e:Lcom/tencent/mna/b/d/d$a;

.field private static final synthetic g:[Lcom/tencent/mna/b/d/d$a;


# instance fields
.field f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 11
    new-instance v0, Lcom/tencent/mna/b/d/d$a;

    const-string v1, "Ping"

    invoke-direct {v0, v1, v6, v3}, Lcom/tencent/mna/b/d/d$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/mna/b/d/d$a;->a:Lcom/tencent/mna/b/d/d$a;

    .line 12
    new-instance v0, Lcom/tencent/mna/b/d/d$a;

    const-string v1, "RouterMacs"

    invoke-direct {v0, v1, v3, v4}, Lcom/tencent/mna/b/d/d$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/mna/b/d/d$a;->b:Lcom/tencent/mna/b/d/d$a;

    .line 13
    new-instance v0, Lcom/tencent/mna/b/d/d$a;

    const-string v1, "Export"

    invoke-direct {v0, v1, v4, v5}, Lcom/tencent/mna/b/d/d$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/mna/b/d/d$a;->c:Lcom/tencent/mna/b/d/d$a;

    .line 14
    new-instance v0, Lcom/tencent/mna/b/d/d$a;

    const-string v1, "Direct"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v7, v2}, Lcom/tencent/mna/b/d/d$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/mna/b/d/d$a;->d:Lcom/tencent/mna/b/d/d$a;

    .line 15
    new-instance v0, Lcom/tencent/mna/b/d/d$a;

    const-string v1, "NIC"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v5, v2}, Lcom/tencent/mna/b/d/d$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/mna/b/d/d$a;->e:Lcom/tencent/mna/b/d/d$a;

    .line 10
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/tencent/mna/b/d/d$a;

    sget-object v1, Lcom/tencent/mna/b/d/d$a;->a:Lcom/tencent/mna/b/d/d$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/mna/b/d/d$a;->b:Lcom/tencent/mna/b/d/d$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/mna/b/d/d$a;->c:Lcom/tencent/mna/b/d/d$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/mna/b/d/d$a;->d:Lcom/tencent/mna/b/d/d$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/tencent/mna/b/d/d$a;->e:Lcom/tencent/mna/b/d/d$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tencent/mna/b/d/d$a;->g:[Lcom/tencent/mna/b/d/d$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/tencent/mna/b/d/d$a;->f:I

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mna/b/d/d$a;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/tencent/mna/b/d/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/mna/b/d/d$a;

    return-object v0
.end method

.method public static values()[Lcom/tencent/mna/b/d/d$a;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/tencent/mna/b/d/d$a;->g:[Lcom/tencent/mna/b/d/d$a;

    invoke-virtual {v0}, [Lcom/tencent/mna/b/d/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mna/b/d/d$a;

    return-object v0
.end method
