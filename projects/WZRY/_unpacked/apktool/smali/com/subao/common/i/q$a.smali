.class public final enum Lcom/subao/common/i/q$a;
.super Ljava/lang/Enum;
.source "Message_Start.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/i/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/subao/common/i/q$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/subao/common/i/q$a;

.field public static final enum b:Lcom/subao/common/i/q$a;

.field public static final enum c:Lcom/subao/common/i/q$a;

.field public static final enum d:Lcom/subao/common/i/q$a;

.field public static final enum e:Lcom/subao/common/i/q$a;

.field private static final synthetic g:[Lcom/subao/common/i/q$a;


# instance fields
.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/subao/common/i/q$a;

    const-string v1, "UNKNOWN_EXCE_RESULT"

    invoke-direct {v0, v1, v2, v2}, Lcom/subao/common/i/q$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/i/q$a;->a:Lcom/subao/common/i/q$a;

    .line 19
    new-instance v0, Lcom/subao/common/i/q$a;

    const-string v1, "NO_SCRIPT"

    invoke-direct {v0, v1, v3, v3}, Lcom/subao/common/i/q$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/i/q$a;->b:Lcom/subao/common/i/q$a;

    .line 21
    new-instance v0, Lcom/subao/common/i/q$a;

    const-string v1, "SCRIPT_DOWNLOAD_FAIL"

    invoke-direct {v0, v1, v4, v4}, Lcom/subao/common/i/q$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/i/q$a;->c:Lcom/subao/common/i/q$a;

    .line 23
    new-instance v0, Lcom/subao/common/i/q$a;

    const-string v1, "SCRIPT_EXEC_SUCCESS"

    invoke-direct {v0, v1, v5, v5}, Lcom/subao/common/i/q$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/i/q$a;->d:Lcom/subao/common/i/q$a;

    .line 25
    new-instance v0, Lcom/subao/common/i/q$a;

    const-string v1, "SCRIPT_EXEC_FAIL"

    invoke-direct {v0, v1, v6, v6}, Lcom/subao/common/i/q$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/i/q$a;->e:Lcom/subao/common/i/q$a;

    .line 16
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/subao/common/i/q$a;

    sget-object v1, Lcom/subao/common/i/q$a;->a:Lcom/subao/common/i/q$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/subao/common/i/q$a;->b:Lcom/subao/common/i/q$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/subao/common/i/q$a;->c:Lcom/subao/common/i/q$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/subao/common/i/q$a;->d:Lcom/subao/common/i/q$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/subao/common/i/q$a;->e:Lcom/subao/common/i/q$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/subao/common/i/q$a;->g:[Lcom/subao/common/i/q$a;

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
    iput p3, p0, Lcom/subao/common/i/q$a;->f:I

    .line 29
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subao/common/i/q$a;
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/subao/common/i/q$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/subao/common/i/q$a;

    return-object v0
.end method

.method public static values()[Lcom/subao/common/i/q$a;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/subao/common/i/q$a;->g:[Lcom/subao/common/i/q$a;

    invoke-virtual {v0}, [Lcom/subao/common/i/q$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subao/common/i/q$a;

    return-object v0
.end method
