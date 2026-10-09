.class public Lcom/tencent/midas/comm/APBeanUtil;
.super Ljava/lang/Object;
.source "APBeanUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyProperties(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "from"    # Ljava/lang/Object;
    .param p1, "to"    # Ljava/lang/Object;

    .prologue
    .line 20
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p0, p1, v1, v2}, Lcom/tencent/midas/comm/APBeanUtil;->copyPropertiesExclude(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :goto_0
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static copyPropertiesExclude(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;Z)V
    .locals 12
    .param p0, "from"    # Ljava/lang/Object;
    .param p1, "to"    # Ljava/lang/Object;
    .param p2, "excludsArray"    # [Ljava/lang/String;
    .param p3, "isAll"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, "excludesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    array-length v10, p2

    if-lez v10, :cond_0

    .line 39
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 42
    :cond_0
    const/4 v3, 0x0

    .line 43
    .local v3, "fromMethods":[Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    .line 45
    .local v8, "toMethods":[Ljava/lang/reflect/Method;
    if-eqz p3, :cond_2

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    .line 54
    :goto_0
    const/4 v1, 0x0

    .local v1, "fromMethod":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    .line 55
    .local v6, "toMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .local v2, "fromMethodName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 56
    .local v7, "toMethodName":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v10, v3

    if-ge v4, v10, :cond_6

    .line 57
    aget-object v1, v3, v4

    .line 58
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 59
    const-string v10, "get"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 56
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 49
    .end local v1    # "fromMethod":Ljava/lang/reflect/Method;
    .end local v2    # "fromMethodName":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v6    # "toMethod":Ljava/lang/reflect/Method;
    .end local v7    # "toMethodName":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    goto :goto_0

    .line 62
    .restart local v1    # "fromMethod":Ljava/lang/reflect/Method;
    .restart local v2    # "fromMethodName":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v6    # "toMethod":Ljava/lang/reflect/Method;
    .restart local v7    # "toMethodName":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    const/4 v10, 0x3

    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 65
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v2, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 67
    invoke-static {v8, v7}, Lcom/tencent/midas/comm/APBeanUtil;->findMethodByName([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 69
    if-eqz v6, :cond_1

    .line 71
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 72
    .local v9, "value":Ljava/lang/Object;
    if-eqz v9, :cond_1

    .line 75
    instance-of v10, v9, Ljava/util/Collection;

    if-eqz v10, :cond_5

    move-object v5, v9

    .line 76
    check-cast v5, Ljava/util/Collection;

    .line 77
    .local v5, "newValue":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 81
    .end local v5    # "newValue":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_5
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v9, v10, v11

    invoke-virtual {v6, p1, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 83
    .end local v9    # "value":Ljava/lang/Object;
    :cond_6
    return-void
.end method

.method public static copyPropertiesInclude(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;Z)V
    .locals 15
    .param p0, "from"    # Ljava/lang/Object;
    .param p1, "to"    # Ljava/lang/Object;
    .param p2, "includsArray"    # [Ljava/lang/String;
    .param p3, "isAll"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v5, 0x0

    .line 95
    .local v5, "includesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_4

    move-object/from16 v0, p2

    array-length v12, v0

    if-lez v12, :cond_4

    .line 96
    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 101
    const/4 v3, 0x0

    .line 102
    .local v3, "fromMethods":[Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    .line 104
    .local v10, "toMethods":[Ljava/lang/reflect/Method;
    if-eqz p3, :cond_1

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 106
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    .line 112
    :goto_0
    const/4 v1, 0x0

    .local v1, "fromMethod":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    .line 113
    .local v8, "toMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .local v2, "fromMethodName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 114
    .local v9, "toMethodName":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v12, v3

    if-ge v4, v12, :cond_4

    .line 115
    aget-object v1, v3, v4

    .line 116
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 117
    const-string v12, "get"

    invoke-virtual {v2, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 114
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 108
    .end local v1    # "fromMethod":Ljava/lang/reflect/Method;
    .end local v2    # "fromMethodName":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v8    # "toMethod":Ljava/lang/reflect/Method;
    .end local v9    # "toMethodName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 109
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    goto :goto_0

    .line 120
    .restart local v1    # "fromMethod":Ljava/lang/reflect/Method;
    .restart local v2    # "fromMethodName":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v8    # "toMethod":Ljava/lang/reflect/Method;
    .restart local v9    # "toMethodName":Ljava/lang/String;
    :cond_2
    const/4 v12, 0x3

    invoke-virtual {v2, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 121
    .local v7, "str":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 124
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "set"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x3

    invoke-virtual {v2, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 125
    invoke-static {v10, v9}, Lcom/tencent/midas/comm/APBeanUtil;->findMethodByName([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 126
    if-eqz v8, :cond_0

    .line 128
    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 129
    .local v11, "value":Ljava/lang/Object;
    if-eqz v11, :cond_0

    .line 132
    instance-of v12, v11, Ljava/util/Collection;

    if-eqz v12, :cond_3

    move-object v6, v11

    .line 133
    check-cast v6, Ljava/util/Collection;

    .line 134
    .local v6, "newValue":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v12

    if-lez v12, :cond_0

    .line 137
    .end local v6    # "newValue":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_3
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v11, v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 139
    .end local v1    # "fromMethod":Ljava/lang/reflect/Method;
    .end local v2    # "fromMethodName":Ljava/lang/String;
    .end local v3    # "fromMethods":[Ljava/lang/reflect/Method;
    .end local v4    # "i":I
    .end local v7    # "str":Ljava/lang/String;
    .end local v8    # "toMethod":Ljava/lang/reflect/Method;
    .end local v9    # "toMethodName":Ljava/lang/String;
    .end local v10    # "toMethods":[Ljava/lang/reflect/Method;
    .end local v11    # "value":Ljava/lang/Object;
    :cond_4
    return-void
.end method

.method public static findMethodByName([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 2
    .param p0, "methods"    # [Ljava/lang/reflect/Method;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 150
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 151
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    aget-object v1, p0, v0

    .line 154
    :goto_1
    return-object v1

    .line 150
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
