.class public Lcom/subao/common/e/aj;
.super Ljava/lang/Object;
.source "RegionAndISP.java"


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/subao/common/e/aj;->a:I

    .line 11
    iput p2, p0, Lcom/subao/common/e/aj;->b:I

    .line 12
    return-void
.end method

.method public static a(Lcom/subao/common/e/aj;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    if-nez p0, :cond_0

    .line 22
    const/4 v0, 0x0

    .line 24
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/subao/common/e/aj;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/subao/common/e/aj;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/subao/common/e/aj;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 36
    .line 37
    invoke-static {}, Lcom/subao/common/e/k;->values()[Lcom/subao/common/e/k;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_5

    aget-object v0, v4, v3

    .line 38
    iget v6, p0, Lcom/subao/common/e/aj;->a:I

    iget v7, v0, Lcom/subao/common/e/k;->H:I

    if-ne v6, v7, :cond_1

    .line 44
    :goto_1
    invoke-static {}, Lcom/subao/common/e/j;->values()[Lcom/subao/common/e/j;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_2
    if-ge v3, v5, :cond_0

    aget-object v2, v4, v3

    .line 45
    iget v6, p0, Lcom/subao/common/e/aj;->b:I

    iget v7, v2, Lcom/subao/common/e/j;->d:I

    if-ne v6, v7, :cond_2

    move-object v1, v2

    .line 50
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 51
    if-nez v0, :cond_3

    .line 52
    iget v0, p0, Lcom/subao/common/e/aj;->a:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    :goto_3
    const/16 v0, 0x2e

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    if-nez v1, :cond_4

    .line 58
    iget v0, p0, Lcom/subao/common/e/aj;->b:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    :goto_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 37
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 44
    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    .line 54
    :cond_3
    iget-object v0, v0, Lcom/subao/common/e/k;->K:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 60
    :cond_4
    iget-object v0, v1, Lcom/subao/common/e/j;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 72
    if-nez p1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v1

    .line 75
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v0

    .line 76
    goto :goto_0

    .line 78
    :cond_2
    instance-of v2, p1, Lcom/subao/common/e/aj;

    if-eqz v2, :cond_0

    .line 81
    check-cast p1, Lcom/subao/common/e/aj;

    .line 82
    iget v2, p0, Lcom/subao/common/e/aj;->a:I

    iget v3, p1, Lcom/subao/common/e/aj;->a:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/subao/common/e/aj;->b:I

    iget v3, p1, Lcom/subao/common/e/aj;->b:I

    if-ne v2, v3, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Lcom/subao/common/e/aj;->a:I

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/subao/common/e/aj;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 67
    sget-object v0, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v1, "[region=%d, isp=%d]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/subao/common/e/aj;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/subao/common/e/aj;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
