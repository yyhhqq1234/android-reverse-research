.class public final enum Lcom/subao/common/l/c$a;
.super Ljava/lang/Enum;
.source "QosManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/l/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/subao/common/l/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/subao/common/l/c$a;

.field public static final enum b:Lcom/subao/common/l/c$a;

.field public static final enum c:Lcom/subao/common/l/c$a;

.field private static final synthetic e:[Lcom/subao/common/l/c$a;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    new-instance v0, Lcom/subao/common/l/c$a;

    const-string v1, "OPEN"

    const-string v2, "OPEN"

    invoke-direct {v0, v1, v3, v2}, Lcom/subao/common/l/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subao/common/l/c$a;->a:Lcom/subao/common/l/c$a;

    .line 67
    new-instance v0, Lcom/subao/common/l/c$a;

    const-string v1, "CLOSE"

    const-string v2, "CLOSE"

    invoke-direct {v0, v1, v4, v2}, Lcom/subao/common/l/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subao/common/l/c$a;->b:Lcom/subao/common/l/c$a;

    .line 68
    new-instance v0, Lcom/subao/common/l/c$a;

    const-string v1, "MODIFY"

    const-string v2, "MODIFY"

    invoke-direct {v0, v1, v5, v2}, Lcom/subao/common/l/c$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subao/common/l/c$a;->c:Lcom/subao/common/l/c$a;

    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/subao/common/l/c$a;

    sget-object v1, Lcom/subao/common/l/c$a;->a:Lcom/subao/common/l/c$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/subao/common/l/c$a;->b:Lcom/subao/common/l/c$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/subao/common/l/c$a;->c:Lcom/subao/common/l/c$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/subao/common/l/c$a;->e:[Lcom/subao/common/l/c$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    iput-object p3, p0, Lcom/subao/common/l/c$a;->d:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subao/common/l/c$a;
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/subao/common/l/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/subao/common/l/c$a;

    return-object v0
.end method

.method public static values()[Lcom/subao/common/l/c$a;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/subao/common/l/c$a;->e:[Lcom/subao/common/l/c$a;

    invoke-virtual {v0}, [Lcom/subao/common/l/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subao/common/l/c$a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/subao/common/l/c$a;->d:Ljava/lang/String;

    return-object v0
.end method
