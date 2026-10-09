.class final enum Lcom/subao/common/b/e$b;
.super Ljava/lang/Enum;
.source "AuthService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/subao/common/b/e$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/subao/common/b/e$b;

.field public static final enum b:Lcom/subao/common/b/e$b;

.field private static final synthetic c:[Lcom/subao/common/b/e$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 214
    new-instance v0, Lcom/subao/common/b/e$b;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/subao/common/b/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subao/common/b/e$b;->a:Lcom/subao/common/b/e$b;

    new-instance v0, Lcom/subao/common/b/e$b;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/subao/common/b/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subao/common/b/e$b;->b:Lcom/subao/common/b/e$b;

    .line 213
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/subao/common/b/e$b;

    sget-object v1, Lcom/subao/common/b/e$b;->a:Lcom/subao/common/b/e$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/subao/common/b/e$b;->b:Lcom/subao/common/b/e$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/subao/common/b/e$b;->c:[Lcom/subao/common/b/e$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 213
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subao/common/b/e$b;
    .locals 1

    .prologue
    .line 213
    const-class v0, Lcom/subao/common/b/e$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/subao/common/b/e$b;

    return-object v0
.end method

.method public static values()[Lcom/subao/common/b/e$b;
    .locals 1

    .prologue
    .line 213
    sget-object v0, Lcom/subao/common/b/e$b;->c:[Lcom/subao/common/b/e$b;

    invoke-virtual {v0}, [Lcom/subao/common/b/e$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subao/common/b/e$b;

    return-object v0
.end method
