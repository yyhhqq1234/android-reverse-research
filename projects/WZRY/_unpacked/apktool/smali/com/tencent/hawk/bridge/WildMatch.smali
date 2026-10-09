.class public Lcom/tencent/hawk/bridge/WildMatch;
.super Ljava/lang/Object;
.source "WildMatch.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x2a

    const/4 v4, 0x0

    .line 29
    const/4 v2, 0x0

    .local v2, "idxs":I
    const/4 v1, 0x0

    .local v1, "idxp":I
    const/4 v3, -0x1

    .local v3, "idxstar":I
    const/4 v0, 0x0

    .line 30
    .local v0, "idxmatch":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v2, v5, :cond_2

    .line 54
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_6

    .line 58
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v1, v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4

    .line 32
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3f

    if-ne v5, v6, :cond_4

    .line 33
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 36
    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_5

    .line 37
    move v3, v1

    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 40
    move v0, v2

    .line 42
    goto :goto_0

    :cond_5
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 44
    add-int/lit8 v1, v3, 0x1

    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 48
    move v2, v0

    .line 49
    goto :goto_0

    .line 55
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
