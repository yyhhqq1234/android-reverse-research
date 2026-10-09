.class public final enum Lcom/subao/common/h;
.super Ljava/lang/Enum;
.source "SwitchState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/subao/common/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/subao/common/h;

.field public static final enum b:Lcom/subao/common/h;

.field public static final enum c:Lcom/subao/common/h;

.field private static final synthetic e:[Lcom/subao/common/h;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/subao/common/h;

    const-string v1, "UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/subao/common/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/h;->a:Lcom/subao/common/h;

    .line 17
    new-instance v0, Lcom/subao/common/h;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v4, v3}, Lcom/subao/common/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/h;->b:Lcom/subao/common/h;

    .line 22
    new-instance v0, Lcom/subao/common/h;

    const-string v1, "ON"

    invoke-direct {v0, v1, v5, v4}, Lcom/subao/common/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/h;->c:Lcom/subao/common/h;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/subao/common/h;

    sget-object v1, Lcom/subao/common/h;->a:Lcom/subao/common/h;

    aput-object v1, v0, v3

    sget-object v1, Lcom/subao/common/h;->b:Lcom/subao/common/h;

    aput-object v1, v0, v4

    sget-object v1, Lcom/subao/common/h;->c:Lcom/subao/common/h;

    aput-object v1, v0, v5

    sput-object v0, Lcom/subao/common/h;->e:[Lcom/subao/common/h;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/subao/common/h;->d:I

    .line 29
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subao/common/h;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/subao/common/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/subao/common/h;

    return-object v0
.end method

.method public static values()[Lcom/subao/common/h;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/subao/common/h;->e:[Lcom/subao/common/h;

    invoke-virtual {v0}, [Lcom/subao/common/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subao/common/h;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/subao/common/h;->d:I

    return v0
.end method
