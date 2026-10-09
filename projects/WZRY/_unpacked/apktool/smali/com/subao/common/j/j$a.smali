.class public final enum Lcom/subao/common/j/j$a;
.super Ljava/lang/Enum;
.source "NetTypeDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/j/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/subao/common/j/j$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/subao/common/j/j$a;

.field public static final enum b:Lcom/subao/common/j/j$a;

.field public static final enum c:Lcom/subao/common/j/j$a;

.field public static final enum d:Lcom/subao/common/j/j$a;

.field public static final enum e:Lcom/subao/common/j/j$a;

.field public static final enum f:Lcom/subao/common/j/j$a;

.field private static final synthetic h:[Lcom/subao/common/j/j$a;


# instance fields
.field public final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/subao/common/j/j$a;

    const-string v1, "DISCONNECT"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/subao/common/j/j$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/j/j$a;->a:Lcom/subao/common/j/j$a;

    .line 7
    new-instance v0, Lcom/subao/common/j/j$a;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4, v3}, Lcom/subao/common/j/j$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/j/j$a;->b:Lcom/subao/common/j/j$a;

    .line 8
    new-instance v0, Lcom/subao/common/j/j$a;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v5, v4}, Lcom/subao/common/j/j$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/j/j$a;->c:Lcom/subao/common/j/j$a;

    .line 9
    new-instance v0, Lcom/subao/common/j/j$a;

    const-string v1, "MOBILE_2G"

    invoke-direct {v0, v1, v6, v5}, Lcom/subao/common/j/j$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/j/j$a;->d:Lcom/subao/common/j/j$a;

    .line 10
    new-instance v0, Lcom/subao/common/j/j$a;

    const-string v1, "MOBILE_3G"

    invoke-direct {v0, v1, v7, v6}, Lcom/subao/common/j/j$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/j/j$a;->e:Lcom/subao/common/j/j$a;

    .line 11
    new-instance v0, Lcom/subao/common/j/j$a;

    const-string v1, "MOBILE_4G"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v7}, Lcom/subao/common/j/j$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/subao/common/j/j$a;->f:Lcom/subao/common/j/j$a;

    .line 5
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/subao/common/j/j$a;

    sget-object v1, Lcom/subao/common/j/j$a;->a:Lcom/subao/common/j/j$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/subao/common/j/j$a;->b:Lcom/subao/common/j/j$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/subao/common/j/j$a;->c:Lcom/subao/common/j/j$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/subao/common/j/j$a;->d:Lcom/subao/common/j/j$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/subao/common/j/j$a;->e:Lcom/subao/common/j/j$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/subao/common/j/j$a;->f:Lcom/subao/common/j/j$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/subao/common/j/j$a;->h:[Lcom/subao/common/j/j$a;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Lcom/subao/common/j/j$a;->g:I

    .line 17
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subao/common/j/j$a;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/subao/common/j/j$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/subao/common/j/j$a;

    return-object v0
.end method

.method public static values()[Lcom/subao/common/j/j$a;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/subao/common/j/j$a;->h:[Lcom/subao/common/j/j$a;

    invoke-virtual {v0}, [Lcom/subao/common/j/j$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subao/common/j/j$a;

    return-object v0
.end method
