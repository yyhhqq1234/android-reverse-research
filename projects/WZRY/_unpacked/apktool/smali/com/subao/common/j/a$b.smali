.class public final enum Lcom/subao/common/j/a$b;
.super Ljava/lang/Enum;
.source "Http.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/subao/common/j/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/subao/common/j/a$b;

.field public static final enum b:Lcom/subao/common/j/a$b;

.field public static final enum c:Lcom/subao/common/j/a$b;

.field public static final enum d:Lcom/subao/common/j/a$b;

.field private static final synthetic f:[Lcom/subao/common/j/a$b;


# instance fields
.field public final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 331
    new-instance v0, Lcom/subao/common/j/a$b;

    const-string v1, "GET"

    const-string v2, "GET"

    invoke-direct {v0, v1, v3, v2}, Lcom/subao/common/j/a$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subao/common/j/a$b;->a:Lcom/subao/common/j/a$b;

    .line 332
    new-instance v0, Lcom/subao/common/j/a$b;

    const-string v1, "POST"

    const-string v2, "POST"

    invoke-direct {v0, v1, v4, v2}, Lcom/subao/common/j/a$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subao/common/j/a$b;->b:Lcom/subao/common/j/a$b;

    .line 333
    new-instance v0, Lcom/subao/common/j/a$b;

    const-string v1, "PUT"

    const-string v2, "PUT"

    invoke-direct {v0, v1, v5, v2}, Lcom/subao/common/j/a$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subao/common/j/a$b;->c:Lcom/subao/common/j/a$b;

    .line 334
    new-instance v0, Lcom/subao/common/j/a$b;

    const-string v1, "DELETE"

    const-string v2, "DELETE"

    invoke-direct {v0, v1, v6, v2}, Lcom/subao/common/j/a$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subao/common/j/a$b;->d:Lcom/subao/common/j/a$b;

    .line 330
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/subao/common/j/a$b;

    sget-object v1, Lcom/subao/common/j/a$b;->a:Lcom/subao/common/j/a$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/subao/common/j/a$b;->b:Lcom/subao/common/j/a$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/subao/common/j/a$b;->c:Lcom/subao/common/j/a$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/subao/common/j/a$b;->d:Lcom/subao/common/j/a$b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/subao/common/j/a$b;->f:[Lcom/subao/common/j/a$b;

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
    .line 338
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 339
    iput-object p3, p0, Lcom/subao/common/j/a$b;->e:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subao/common/j/a$b;
    .locals 1

    .prologue
    .line 330
    const-class v0, Lcom/subao/common/j/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/subao/common/j/a$b;

    return-object v0
.end method

.method public static values()[Lcom/subao/common/j/a$b;
    .locals 1

    .prologue
    .line 330
    sget-object v0, Lcom/subao/common/j/a$b;->f:[Lcom/subao/common/j/a$b;

    invoke-virtual {v0}, [Lcom/subao/common/j/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subao/common/j/a$b;

    return-object v0
.end method
