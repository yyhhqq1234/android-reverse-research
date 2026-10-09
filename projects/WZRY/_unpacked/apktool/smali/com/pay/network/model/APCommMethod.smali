.class public Lcom/pay/network/model/APCommMethod;
.super Ljava/lang/Object;
.source "APCommMethod.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static transformStrToList(Ljava/lang/String;Ljava/util/List;)V
    .locals 9
    .param p0, "list"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "mplist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, -0x1

    .line 61
    const-string v7, "["

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 62
    .local v5, "start":I
    const-string v7, "]"

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 63
    .local v0, "end":I
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 65
    if-eq v5, v8, :cond_0

    if-eq v0, v8, :cond_0

    if-le v0, v5, :cond_0

    .line 66
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "result":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 68
    .local v3, "olen":I
    if-eqz v3, :cond_0

    .line 69
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 70
    .local v6, "strings":[Ljava/lang/String;
    array-length v2, v6

    .line 71
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 72
    aget-object v7, v6, v1

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "olen":I
    .end local v4    # "result":Ljava/lang/String;
    .end local v6    # "strings":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static transformStrToMpInfoList(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "mpvalueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "mpPrecentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, -0x1

    .line 22
    const-string v9, "["

    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 24
    .local v6, "start":I
    const-string v9, "]"

    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 27
    .local v0, "end":I
    if-eq v6, v10, :cond_0

    if-eq v0, v10, :cond_0

    if-le v0, v6, :cond_0

    .line 29
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {p0, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 30
    .local v5, "result":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .line 31
    .local v3, "olen":I
    if-nez v3, :cond_1

    .line 33
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 34
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 53
    .end local v3    # "olen":I
    .end local v5    # "result":Ljava/lang/String;
    :cond_0
    return-void

    .line 36
    .restart local v3    # "olen":I
    .restart local v5    # "result":Ljava/lang/String;
    :cond_1
    const-string v9, ","

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 37
    .local v8, "strings":[Ljava/lang/String;
    array-length v2, v8

    .line 39
    .local v2, "len":I
    if-lez v2, :cond_0

    rem-int/lit8 v9, v2, 0x2

    if-nez v9, :cond_0

    .line 40
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 41
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 42
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    div-int/lit8 v9, v2, 0x2

    if-ge v1, v9, :cond_0

    .line 43
    mul-int/lit8 v9, v1, 0x2

    aget-object v7, v8, v9

    .line 44
    .local v7, "string":Ljava/lang/String;
    mul-int/lit8 v9, v1, 0x2

    add-int/lit8 v9, v9, 0x1

    aget-object v4, v8, v9

    .line 45
    .local v4, "pminfo":Ljava/lang/String;
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
