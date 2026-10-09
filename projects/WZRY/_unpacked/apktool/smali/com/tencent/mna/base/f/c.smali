.class public final Lcom/tencent/mna/base/f/c;
.super Ljava/lang/Object;
.source "CommonUtil.java"


# static fields
.field private static a:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/tencent/mna/base/f/c;->a:Ljava/util/Random;

    return-void
.end method

.method public static a(II)I
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/tencent/mna/base/f/c;->a:Ljava/util/Random;

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static a(I)J
    .locals 4

    .prologue
    .line 18
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/tencent/mna/base/f/c;->a:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    return v0
.end method
