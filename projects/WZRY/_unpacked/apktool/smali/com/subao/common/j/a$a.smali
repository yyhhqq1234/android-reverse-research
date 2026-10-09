.class public final enum Lcom/subao/common/j/a$a;
.super Ljava/lang/Enum;
.source "Http.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/subao/common/j/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/subao/common/j/a$a;

.field public static final enum b:Lcom/subao/common/j/a$a;

.field public static final enum c:Lcom/subao/common/j/a$a;

.field public static final enum d:Lcom/subao/common/j/a$a;

.field private static final synthetic f:[Lcom/subao/common/j/a$a;


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

    .line 344
    new-instance v0, Lcom/subao/common/j/a$a;

    const-string v1, "ANY"

    const-string v2, "*"

    invoke-direct {v0, v1, v3, v2}, Lcom/subao/common/j/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subao/common/j/a$a;->a:Lcom/subao/common/j/a$a;

    .line 345
    new-instance v0, Lcom/subao/common/j/a$a;

    const-string v1, "HTML"

    const-string/jumbo v2, "text/html"

    invoke-direct {v0, v1, v4, v2}, Lcom/subao/common/j/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subao/common/j/a$a;->b:Lcom/subao/common/j/a$a;

    .line 346
    new-instance v0, Lcom/subao/common/j/a$a;

    const-string v1, "JSON"

    const-string v2, "application/json"

    invoke-direct {v0, v1, v5, v2}, Lcom/subao/common/j/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subao/common/j/a$a;->c:Lcom/subao/common/j/a$a;

    .line 347
    new-instance v0, Lcom/subao/common/j/a$a;

    const-string v1, "PROTOBUF"

    const-string v2, "application/x-protobuf"

    invoke-direct {v0, v1, v6, v2}, Lcom/subao/common/j/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subao/common/j/a$a;->d:Lcom/subao/common/j/a$a;

    .line 343
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/subao/common/j/a$a;

    sget-object v1, Lcom/subao/common/j/a$a;->a:Lcom/subao/common/j/a$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/subao/common/j/a$a;->b:Lcom/subao/common/j/a$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/subao/common/j/a$a;->c:Lcom/subao/common/j/a$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/subao/common/j/a$a;->d:Lcom/subao/common/j/a$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/subao/common/j/a$a;->f:[Lcom/subao/common/j/a$a;

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
    .line 351
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 352
    iput-object p3, p0, Lcom/subao/common/j/a$a;->e:Ljava/lang/String;

    .line 353
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subao/common/j/a$a;
    .locals 1

    .prologue
    .line 343
    const-class v0, Lcom/subao/common/j/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/subao/common/j/a$a;

    return-object v0
.end method

.method public static values()[Lcom/subao/common/j/a$a;
    .locals 1

    .prologue
    .line 343
    sget-object v0, Lcom/subao/common/j/a$a;->f:[Lcom/subao/common/j/a$a;

    invoke-virtual {v0}, [Lcom/subao/common/j/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subao/common/j/a$a;

    return-object v0
.end method
