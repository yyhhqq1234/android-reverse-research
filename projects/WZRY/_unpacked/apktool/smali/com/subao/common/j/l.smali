.class public final enum Lcom/subao/common/j/l;
.super Ljava/lang/Enum;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/subao/common/j/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/subao/common/j/l;

.field public static final enum b:Lcom/subao/common/j/l;

.field public static final enum c:Lcom/subao/common/j/l;

.field private static final synthetic f:[Lcom/subao/common/j/l;


# instance fields
.field public final d:Ljava/lang/String;

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/subao/common/j/l;

    const-string v1, "UDP"

    const-string v2, "UDP"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/subao/common/j/l;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subao/common/j/l;->a:Lcom/subao/common/j/l;

    .line 11
    new-instance v0, Lcom/subao/common/j/l;

    const-string v1, "TCP"

    const-string v2, "TCP"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/subao/common/j/l;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subao/common/j/l;->b:Lcom/subao/common/j/l;

    .line 12
    new-instance v0, Lcom/subao/common/j/l;

    const-string v1, "BOTH"

    const-string v2, "BOTH"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/subao/common/j/l;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subao/common/j/l;->c:Lcom/subao/common/j/l;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/subao/common/j/l;

    sget-object v1, Lcom/subao/common/j/l;->a:Lcom/subao/common/j/l;

    aput-object v1, v0, v3

    sget-object v1, Lcom/subao/common/j/l;->b:Lcom/subao/common/j/l;

    aput-object v1, v0, v4

    sget-object v1, Lcom/subao/common/j/l;->c:Lcom/subao/common/j/l;

    aput-object v1, v0, v5

    sput-object v0, Lcom/subao/common/j/l;->f:[Lcom/subao/common/j/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lcom/subao/common/j/l;->d:Ljava/lang/String;

    .line 19
    iput p4, p0, Lcom/subao/common/j/l;->e:I

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subao/common/j/l;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/subao/common/j/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/subao/common/j/l;

    return-object v0
.end method

.method public static values()[Lcom/subao/common/j/l;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/subao/common/j/l;->f:[Lcom/subao/common/j/l;

    invoke-virtual {v0}, [Lcom/subao/common/j/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subao/common/j/l;

    return-object v0
.end method
