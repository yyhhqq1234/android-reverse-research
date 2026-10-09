.class public final enum Lcom/subao/common/e/j;
.super Ljava/lang/Enum;
.source "ChinaISP.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/subao/common/e/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/subao/common/e/j;

.field public static final enum b:Lcom/subao/common/e/j;

.field public static final enum c:Lcom/subao/common/e/j;

.field private static final synthetic g:[Lcom/subao/common/e/j;


# instance fields
.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/subao/common/e/j;

    const-string v1, "CHINA_TELECOM"

    const/16 v3, 0xa

    const-string/jumbo v4, "\u4e2d\u56fd\u7535\u4fe1"

    const-string v5, "CT"

    invoke-direct/range {v0 .. v5}, Lcom/subao/common/e/j;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/subao/common/e/j;->a:Lcom/subao/common/e/j;

    .line 9
    new-instance v3, Lcom/subao/common/e/j;

    const-string v4, "CHINA_UNICOM"

    const/16 v6, 0xb

    const-string/jumbo v7, "\u4e2d\u56fd\u8054\u901a"

    const-string v8, "CU"

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/subao/common/e/j;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/subao/common/e/j;->b:Lcom/subao/common/e/j;

    .line 10
    new-instance v3, Lcom/subao/common/e/j;

    const-string v4, "CHINA_MOBILE"

    const/16 v6, 0xc

    const-string/jumbo v7, "\u4e2d\u56fd\u79fb\u52a8"

    const-string v8, "CM"

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/subao/common/e/j;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/subao/common/e/j;->c:Lcom/subao/common/e/j;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/subao/common/e/j;

    sget-object v1, Lcom/subao/common/e/j;->a:Lcom/subao/common/e/j;

    aput-object v1, v0, v2

    sget-object v1, Lcom/subao/common/e/j;->b:Lcom/subao/common/e/j;

    aput-object v1, v0, v9

    sget-object v1, Lcom/subao/common/e/j;->c:Lcom/subao/common/e/j;

    aput-object v1, v0, v10

    sput-object v0, Lcom/subao/common/e/j;->g:[Lcom/subao/common/e/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/subao/common/e/j;->d:I

    .line 19
    iput-object p4, p0, Lcom/subao/common/e/j;->e:Ljava/lang/String;

    .line 20
    iput-object p5, p0, Lcom/subao/common/e/j;->f:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subao/common/e/j;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/subao/common/e/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/subao/common/e/j;

    return-object v0
.end method

.method public static values()[Lcom/subao/common/e/j;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/subao/common/e/j;->g:[Lcom/subao/common/e/j;

    invoke-virtual {v0}, [Lcom/subao/common/e/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subao/common/e/j;

    return-object v0
.end method
