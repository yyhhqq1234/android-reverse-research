.class Lcom/subao/common/e/ah;
.super Lcom/subao/common/e/ab;
.source "PortalScriptDownloader.java"


# instance fields
.field private final a:I


# direct methods
.method constructor <init>(Lcom/subao/common/e/ab$a;I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/subao/common/e/ab;-><init>(Lcom/subao/common/e/ab$a;)V

    .line 28
    iput p2, p0, Lcom/subao/common/e/ah;->a:I

    .line 29
    return-void
.end method

.method public static a(Lcom/subao/common/e/ab$a;I)Lcom/subao/common/e/ac;
    .locals 5
    .param p0    # Lcom/subao/common/e/ab$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 57
    new-instance v4, Lcom/subao/common/e/ah;

    invoke-direct {v4, p0, p1}, Lcom/subao/common/e/ah;-><init>(Lcom/subao/common/e/ab$a;I)V

    .line 58
    invoke-virtual {v4}, Lcom/subao/common/e/ah;->j()Lcom/subao/common/e/ac;

    move-result-object v2

    .line 60
    if-eqz v2, :cond_1

    .line 61
    invoke-static {v2}, Lcom/subao/common/e/ah;->b(Lcom/subao/common/e/ac;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    move-object v3, v2

    .line 70
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/subao/common/e/ac;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v4, v1}, Lcom/subao/common/e/ah;->b([Lcom/subao/common/e/ac;)Z

    .line 71
    return-object v0

    .line 64
    :cond_0
    invoke-virtual {v4, v2}, Lcom/subao/common/e/ah;->e(Lcom/subao/common/e/ac;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    invoke-virtual {v4}, Lcom/subao/common/e/ah;->k()V

    move-object v0, v1

    move-object v3, v1

    .line 67
    goto :goto_0

    :cond_1
    move-object v0, v2

    move-object v3, v2

    goto :goto_0
.end method

.method static b(Lcom/subao/common/e/ac;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 78
    if-nez p0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/subao/common/e/ac;->a()[B

    move-result-object v1

    .line 82
    if-eqz v1, :cond_0

    array-length v1, v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 5

    .prologue
    .line 100
    sget-object v0, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v1, "scripts/%d/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/subao/common/e/ah;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/subao/common/e/ah;->l()Lcom/subao/common/e/ab$a;

    move-result-object v4

    iget-object v4, v4, Lcom/subao/common/e/ab$a;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scripts_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/subao/common/e/ah;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c(Lcom/subao/common/e/ac;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-super {p0, p1}, Lcom/subao/common/e/ab;->c(Lcom/subao/common/e/ac;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/subao/common/e/ah;->b(Lcom/subao/common/e/ac;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/subao/common/e/ah;->e(Lcom/subao/common/e/ac;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method e(Lcom/subao/common/e/ac;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 116
    const-string v1, "SubaoData"

    invoke-static {v1}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v1

    .line 117
    if-nez p1, :cond_1

    .line 118
    if-eqz v1, :cond_0

    .line 119
    const-string v1, "SubaoData"

    const-string v2, "PortalData of script is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    :goto_0
    return v0

    .line 123
    :cond_1
    invoke-virtual {p0, p1}, Lcom/subao/common/e/ah;->d(Lcom/subao/common/e/ac;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 124
    if-eqz v1, :cond_0

    .line 125
    const-string v1, "SubaoData"

    const-string v2, "Invalid script version"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    :cond_2
    invoke-virtual {p1}, Lcom/subao/common/e/ac;->a()[B

    move-result-object v2

    .line 130
    if-nez v2, :cond_3

    .line 131
    if-eqz v1, :cond_0

    .line 132
    const-string v1, "SubaoData"

    const-string v2, "Script is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 136
    :cond_3
    invoke-virtual {p1}, Lcom/subao/common/e/ac;->c()Ljava/lang/String;

    move-result-object v3

    .line 137
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x22

    if-eq v4, v5, :cond_5

    .line 138
    :cond_4
    if-eqz v1, :cond_0

    .line 139
    const-string v1, "SubaoData"

    const-string v2, "Invalid script digest"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    :cond_5
    :try_start_0
    invoke-static {v2}, Lcom/subao/common/n/b;->a([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 152
    invoke-static {v2, v0}, Lcom/subao/common/n/h;->a([BZ)Ljava/lang/String;

    move-result-object v0

    .line 153
    const/4 v2, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 155
    if-eqz v1, :cond_0

    .line 156
    if-eqz v0, :cond_6

    .line 157
    const-string v1, "SubaoData"

    const-string v2, "Script check ok"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    :catch_0
    move-exception v2

    .line 147
    if-eqz v1, :cond_0

    .line 148
    const-string v1, "SubaoData"

    const-string v2, "Digest calc failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    :cond_6
    const-string v1, "SubaoData"

    const-string v2, "Script digest is not expected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/subao/common/j/a$a;->a:Lcom/subao/common/j/a$a;

    iget-object v0, v0, Lcom/subao/common/j/a$a;->e:Ljava/lang/String;

    return-object v0
.end method
