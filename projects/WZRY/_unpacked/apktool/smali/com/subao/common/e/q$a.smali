.class public final enum Lcom/subao/common/e/q$a;
.super Ljava/lang/Enum;
.source "Defines.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/e/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/subao/common/e/q$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/subao/common/e/q$a;

.field public static final enum b:Lcom/subao/common/e/q$a;

.field public static final enum c:Lcom/subao/common/e/q$a;

.field public static final enum d:Lcom/subao/common/e/q$a;

.field public static final enum e:Lcom/subao/common/e/q$a;

.field public static final enum f:Lcom/subao/common/e/q$a;

.field private static final synthetic h:[Lcom/subao/common/e/q$a;


# instance fields
.field public final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 49
    new-instance v0, Lcom/subao/common/e/q$a;

    const-string v1, "SDK"

    const-string v2, "SDK"

    invoke-direct {v0, v1, v4, v2}, Lcom/subao/common/e/q$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subao/common/e/q$a;->a:Lcom/subao/common/e/q$a;

    .line 54
    new-instance v0, Lcom/subao/common/e/q$a;

    const-string v1, "UI"

    const-string v2, "UI"

    invoke-direct {v0, v1, v5, v2}, Lcom/subao/common/e/q$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subao/common/e/q$a;->b:Lcom/subao/common/e/q$a;

    .line 59
    new-instance v0, Lcom/subao/common/e/q$a;

    const-string v1, "SERVICE"

    const-string v2, "SERVICE"

    invoke-direct {v0, v1, v6, v2}, Lcom/subao/common/e/q$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subao/common/e/q$a;->c:Lcom/subao/common/e/q$a;

    .line 64
    new-instance v0, Lcom/subao/common/e/q$a;

    const-string v1, "ROM"

    const-string v2, "ROM"

    invoke-direct {v0, v1, v7, v2}, Lcom/subao/common/e/q$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subao/common/e/q$a;->d:Lcom/subao/common/e/q$a;

    .line 69
    new-instance v0, Lcom/subao/common/e/q$a;

    const-string v1, "LEAK_CANARY"

    const-string v2, "LEAK_CANARY"

    invoke-direct {v0, v1, v8, v2}, Lcom/subao/common/e/q$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subao/common/e/q$a;->e:Lcom/subao/common/e/q$a;

    .line 74
    new-instance v0, Lcom/subao/common/e/q$a;

    const-string v1, "EGUAN"

    const/4 v2, 0x5

    const-string v3, "EGUAN"

    invoke-direct {v0, v1, v2, v3}, Lcom/subao/common/e/q$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subao/common/e/q$a;->f:Lcom/subao/common/e/q$a;

    .line 45
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/subao/common/e/q$a;

    sget-object v1, Lcom/subao/common/e/q$a;->a:Lcom/subao/common/e/q$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/subao/common/e/q$a;->b:Lcom/subao/common/e/q$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/subao/common/e/q$a;->c:Lcom/subao/common/e/q$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/subao/common/e/q$a;->d:Lcom/subao/common/e/q$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/subao/common/e/q$a;->e:Lcom/subao/common/e/q$a;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/subao/common/e/q$a;->f:Lcom/subao/common/e/q$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/subao/common/e/q$a;->h:[Lcom/subao/common/e/q$a;

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
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    iput-object p3, p0, Lcom/subao/common/e/q$a;->g:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subao/common/e/q$a;
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/subao/common/e/q$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/subao/common/e/q$a;

    return-object v0
.end method

.method public static values()[Lcom/subao/common/e/q$a;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/subao/common/e/q$a;->h:[Lcom/subao/common/e/q$a;

    invoke-virtual {v0}, [Lcom/subao/common/e/q$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subao/common/e/q$a;

    return-object v0
.end method
