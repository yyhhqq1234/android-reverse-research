.class public final enum Lcom/subao/common/i/q$c;
.super Ljava/lang/Enum;
.source "Message_Start.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/i/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/subao/common/i/q$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/subao/common/i/q$c;

.field public static final enum b:Lcom/subao/common/i/q$c;

.field public static final enum c:Lcom/subao/common/i/q$c;

.field private static final synthetic e:[Lcom/subao/common/i/q$c;


# instance fields
.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/subao/common/i/q$c;

    const-string v1, "UNKNOWN_START_TYPE"

    invoke-direct {v0, v1, v2, v2}, Lcom/subao/common/i/q$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/i/q$c;->a:Lcom/subao/common/i/q$c;

    .line 40
    new-instance v0, Lcom/subao/common/i/q$c;

    const-string v1, "START"

    invoke-direct {v0, v1, v3, v3}, Lcom/subao/common/i/q$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/i/q$c;->b:Lcom/subao/common/i/q$c;

    .line 42
    new-instance v0, Lcom/subao/common/i/q$c;

    const-string v1, "DAILY"

    invoke-direct {v0, v1, v4, v4}, Lcom/subao/common/i/q$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/i/q$c;->c:Lcom/subao/common/i/q$c;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/subao/common/i/q$c;

    sget-object v1, Lcom/subao/common/i/q$c;->a:Lcom/subao/common/i/q$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/subao/common/i/q$c;->b:Lcom/subao/common/i/q$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/subao/common/i/q$c;->c:Lcom/subao/common/i/q$c;

    aput-object v1, v0, v4

    sput-object v0, Lcom/subao/common/i/q$c;->e:[Lcom/subao/common/i/q$c;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lcom/subao/common/i/q$c;->d:I

    .line 46
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subao/common/i/q$c;
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/subao/common/i/q$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/subao/common/i/q$c;

    return-object v0
.end method

.method public static values()[Lcom/subao/common/i/q$c;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/subao/common/i/q$c;->e:[Lcom/subao/common/i/q$c;

    invoke-virtual {v0}, [Lcom/subao/common/i/q$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subao/common/i/q$c;

    return-object v0
.end method
