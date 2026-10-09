.class public Lcom/subao/common/e/d;
.super Lcom/subao/common/e/ab;
.source "AccelGamesDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/e/d$a;,
        Lcom/subao/common/e/d$b;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Lcom/subao/common/e/d$b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/subao/common/e/ab$a;ILcom/subao/common/e/d$b;)V
    .locals 0
    .param p3    # Lcom/subao/common/e/d$b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/subao/common/e/ab;-><init>(Lcom/subao/common/e/ab$a;)V

    .line 48
    iput p2, p0, Lcom/subao/common/e/d;->a:I

    .line 49
    iput-object p3, p0, Lcom/subao/common/e/d;->b:Lcom/subao/common/e/d$b;

    .line 50
    return-void
.end method

.method public static a(Lcom/subao/common/e/ab$a;ILcom/subao/common/e/d$b;[B)Ljava/util/List;
    .locals 4
    .param p2    # Lcom/subao/common/e/d$b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subao/common/e/ab$a;",
            "I",
            "Lcom/subao/common/e/d$b;",
            "[B)",
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/e/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcom/subao/common/e/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/subao/common/e/d;-><init>(Lcom/subao/common/e/ab$a;ILcom/subao/common/e/d$b;)V

    .line 69
    invoke-virtual {v0}, Lcom/subao/common/e/d;->j()Lcom/subao/common/e/ac;

    move-result-object v1

    .line 70
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/subao/common/e/ac;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/subao/common/e/d;->b([Lcom/subao/common/e/ac;)Z

    .line 71
    invoke-static {v1, p1}, Lcom/subao/common/e/d;->a(Lcom/subao/common/e/ac;I)Ljava/util/List;

    move-result-object v0

    .line 72
    if-nez v0, :cond_0

    .line 73
    invoke-static {p3, p1}, Lcom/subao/common/e/d;->a([BI)Ljava/util/List;

    move-result-object v0

    .line 75
    :cond_0
    return-object v0
.end method

.method private static a(Lcom/subao/common/e/ac;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subao/common/e/ac;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/e/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/subao/common/e/ac;->a()[B

    move-result-object v0

    if-nez v0, :cond_1

    .line 87
    :cond_0
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/subao/common/e/ac;->a()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/subao/common/e/d;->a([BI)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private static a([BI)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/e/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    if-eqz p0, :cond_0

    array-length v1, p0

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 102
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 104
    :try_start_0
    invoke-static {v1, p1}, Lcom/subao/common/e/d$a;->a(Ljava/io/InputStream;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 108
    :goto_0
    if-nez v0, :cond_1

    .line 109
    const-string v1, "SubaoData"

    const-string v2, "Parse accel game list fail"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    :goto_1
    return-object v0

    .line 105
    :catch_0
    move-exception v1

    .line 106
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 110
    :cond_1
    const-string v1, "SubaoData"

    invoke-static {v1}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    const-string v1, "SubaoData"

    sget-object v2, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v3, "Parse %d games from JSON"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    const-string v0, "games"

    return-object v0
.end method

.method protected a(Lcom/subao/common/e/ac;)V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/subao/common/e/ab;->a(Lcom/subao/common/e/ac;)V

    .line 120
    iget-object v0, p0, Lcom/subao/common/e/d;->b:Lcom/subao/common/e/d$b;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/subao/common/e/ac;->d:Z

    if-eqz v0, :cond_0

    .line 121
    iget v0, p0, Lcom/subao/common/e/d;->a:I

    invoke-static {p1, v0}, Lcom/subao/common/e/d;->a(Lcom/subao/common/e/ac;I)Ljava/util/List;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_0

    .line 123
    iget-object v1, p0, Lcom/subao/common/e/d;->b:Lcom/subao/common/e/d$b;

    invoke-interface {v1, v0}, Lcom/subao/common/e/d$b;->a(Ljava/util/List;)V

    .line 126
    :cond_0
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    const-string v0, "AccelGames"

    return-object v0
.end method
