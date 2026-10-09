.class public final enum Lcom/subao/common/c/f$a$a;
.super Ljava/lang/Enum;
.source "TrialRequester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/c/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/subao/common/c/f$a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/subao/common/c/f$a$a;

.field public static final enum b:Lcom/subao/common/c/f$a$a;

.field private static final synthetic c:[Lcom/subao/common/c/f$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    new-instance v0, Lcom/subao/common/c/f$a$a;

    const-string v1, "PRODUCTS"

    invoke-direct {v0, v1, v2}, Lcom/subao/common/c/f$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subao/common/c/f$a$a;->a:Lcom/subao/common/c/f$a$a;

    .line 91
    new-instance v0, Lcom/subao/common/c/f$a$a;

    const-string v1, "ORDER"

    invoke-direct {v0, v1, v3}, Lcom/subao/common/c/f$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subao/common/c/f$a$a;->b:Lcom/subao/common/c/f$a$a;

    .line 89
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/subao/common/c/f$a$a;

    sget-object v1, Lcom/subao/common/c/f$a$a;->a:Lcom/subao/common/c/f$a$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/subao/common/c/f$a$a;->b:Lcom/subao/common/c/f$a$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/subao/common/c/f$a$a;->c:[Lcom/subao/common/c/f$a$a;

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
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subao/common/c/f$a$a;
    .locals 1

    .prologue
    .line 89
    const-class v0, Lcom/subao/common/c/f$a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/subao/common/c/f$a$a;

    return-object v0
.end method

.method public static values()[Lcom/subao/common/c/f$a$a;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/subao/common/c/f$a$a;->c:[Lcom/subao/common/c/f$a$a;

    invoke-virtual {v0}, [Lcom/subao/common/c/f$a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subao/common/c/f$a$a;

    return-object v0
.end method
