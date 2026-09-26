.class public Lcom/netease/unisdk/gmbridge/utils/SafeCastUtil;
.super Ljava/lang/Object;
.source "SafeCastUtil.java"


# static fields
.field private static final G:J = 0x40000000L

.field private static final K:J = 0x400L

.field private static final M:J = 0x100000L

.field private static final T:J = 0x10000000000L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert2UnitStr(J)Ljava/lang/String;
    .locals 8
    .param p0, "value"    # J

    .prologue
    const/4 v6, 0x5

    .line 24
    new-array v2, v6, [J

    fill-array-data v2, :array_0

    .line 25
    .local v2, "dividers":[J
    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "TB"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "GB"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "MB"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "KB"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "B"

    aput-object v7, v5, v6

    .line 26
    .local v5, "units":[Ljava/lang/String;
    const-wide/16 v6, 0x1

    cmp-long v6, p0, v6

    if-gez v6, :cond_1

    .line 27
    const-string v4, "0"

    .line 38
    :cond_0
    :goto_0
    return-object v4

    .line 30
    :cond_1
    const/4 v4, 0x0

    .line 31
    .local v4, "result":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v6, v2

    if-ge v3, v6, :cond_0

    .line 32
    aget-wide v0, v2, v3

    .line 33
    .local v0, "divider":J
    cmp-long v6, p0, v0

    if-ltz v6, :cond_2

    .line 34
    aget-object v6, v5, v3

    invoke-static {p0, p1, v0, v1, v6}, Lcom/netease/unisdk/gmbridge/utils/SafeCastUtil;->format(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 35
    goto :goto_0

    .line 31
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 24
    nop

    :array_0
    .array-data 8
        0x10000000000L
        0x40000000
        0x100000
        0x400
        0x1
    .end array-data
.end method

.method private static format(JJLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "value"    # J
    .param p2, "divider"    # J
    .param p4, "unit"    # Ljava/lang/String;

    .prologue
    .line 42
    const-wide/16 v2, 0x1

    cmp-long v2, p2, v2

    if-lez v2, :cond_0

    long-to-double v2, p0

    long-to-double v4, p2

    div-double v0, v2, v4

    .line 43
    .local v0, "result":D
    :goto_0
    const-string v2, "%.1f %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p4, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 42
    .end local v0    # "result":D
    :cond_0
    long-to-double v0, p0

    goto :goto_0
.end method

.method public static str2int(Ljava/lang/String;I)I
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 17
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 19
    .end local p1    # "defaultValue":I
    :goto_0
    return p1

    .line 18
    .restart local p1    # "defaultValue":I
    :catch_0
    move-exception v0

    .line 19
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
