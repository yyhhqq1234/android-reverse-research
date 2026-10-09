.class public Lcom/tencent/mna/b/a/g;
.super Ljava/lang/Object;
.source "QosManager.java"


# direct methods
.method public static a(I)Lcom/tencent/mna/b/g/d$a;
    .locals 21

    .prologue
    .line 81
    invoke-static/range {p0 .. p0}, Lcom/tencent/mna/StartSpeedRet;->isCanHook(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/tencent/mna/base/a/a;->U()I

    move-result v0

    if-lez v0, :cond_4

    .line 84
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/l;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 85
    const-string v0, "[N]\u8def\u7531\u5668-QOS: \u672a\u542f\u52a8, \u5f53\u524d\u975eWiFi\u7f51\u7edc"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x0

    .line 143
    :goto_0
    return-object v0

    .line 88
    :cond_0
    invoke-static {}, Lcom/tencent/mna/base/a/a;->U()I

    move-result v0

    invoke-static {}, Lcom/tencent/mna/base/a/a;->T()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mna/base/a/a;->R()I

    move-result v2

    .line 89
    invoke-static {}, Lcom/tencent/mna/base/a/a;->Y()I

    move-result v3

    invoke-static {}, Lcom/tencent/mna/base/a/a;->Z()I

    move-result v4

    invoke-static {}, Lcom/tencent/mna/base/a/a;->aa()I

    move-result v5

    .line 90
    invoke-static {}, Lcom/tencent/mna/base/a/a;->ab()I

    move-result v6

    invoke-static {}, Lcom/tencent/mna/base/a/a;->ac()I

    move-result v7

    invoke-static {}, Lcom/tencent/mna/base/a/a;->ad()I

    move-result v8

    .line 91
    invoke-static {}, Lcom/tencent/mna/base/a/a;->V()I

    move-result v9

    invoke-static {}, Lcom/tencent/mna/base/a/a;->W()I

    move-result v10

    invoke-static {}, Lcom/tencent/mna/base/a/a;->X()I

    move-result v11

    .line 92
    invoke-static {}, Lcom/tencent/mna/base/a/a;->S()I

    move-result v12

    invoke-static {}, Lcom/tencent/mna/base/a/a;->ae()I

    move-result v13

    invoke-static {}, Lcom/tencent/mna/base/a/a;->af()I

    move-result v14

    .line 93
    invoke-static {}, Lcom/tencent/mna/base/a/a;->ag()I

    move-result v15

    invoke-static {}, Lcom/tencent/mna/base/a/a;->ah()I

    move-result v16

    invoke-static {}, Lcom/tencent/mna/base/a/a;->ai()I

    move-result v17

    .line 94
    invoke-static {}, Lcom/tencent/mna/base/a/a;->aj()I

    move-result v18

    invoke-static {}, Lcom/tencent/mna/base/a/a;->ak()I

    move-result v19

    invoke-static {}, Lcom/tencent/mna/base/a/a;->al()I

    move-result v20

    .line 88
    invoke-static/range {v0 .. v20}, Lcom/tencent/mna/b/g/d;->a(ILjava/lang/String;IIIIIIIIIIIIIIIIIII)V

    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-static {}, Lcom/tencent/mna/a/b;->b()I

    move-result v3

    .line 100
    invoke-static {}, Lcom/tencent/mna/a/b;->c()Ljava/util/List;

    move-result-object v4

    .line 101
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 103
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 104
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v5, :cond_1

    .line 105
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 115
    :cond_1
    invoke-static {}, Lcom/tencent/mna/b/a/b;->k()Lcom/tencent/mna/b/a/f;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_2

    .line 117
    invoke-interface {v0}, Lcom/tencent/mna/b/a/f;->e()I

    move-result v1

    .line 118
    invoke-interface {v0}, Lcom/tencent/mna/b/a/f;->d()Ljava/lang/String;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_2

    const-string v4, "0.0.0.0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_2
    invoke-static {}, Lcom/tencent/mna/b/a/b;->m()Lcom/tencent/mna/b/b/b;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_3

    .line 127
    invoke-virtual {v0}, Lcom/tencent/mna/b/b/b;->e()Ljava/util/List;

    move-result-object v4

    .line 128
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 129
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 130
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v5, :cond_3

    .line 131
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 136
    :cond_3
    invoke-static {v2}, Lcom/tencent/mna/b/g/d;->a(Ljava/util/List;)Lcom/tencent/mna/b/g/d$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[N]\u8def\u7531\u5668-QOS failed, exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V

    .line 143
    :goto_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 141
    :cond_4
    const-string v0, "[N]\u8def\u7531\u5668-QOS\u672a\u5f00\u542f"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 69
    invoke-static {}, Lcom/tencent/mna/base/a/a;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/b/f/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopMobileQos exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(IILcom/tencent/mna/b/a/d$b;)V
    .locals 3

    .prologue
    .line 24
    invoke-static {}, Lcom/tencent/mna/base/a/a;->y()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 27
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/l;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 28
    const-string v0, "[N]4G-QOS: \u672a\u542f\u52a8, \u5f53\u524d\u975e4G\u7f51\u7edc"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 66
    :goto_0
    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/tencent/mna/a/b;->c()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 33
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 34
    invoke-static {}, Lcom/tencent/mna/base/a/a;->c()Ljava/lang/String;

    move-result-object v1

    .line 35
    if-eqz v1, :cond_1

    const-string v2, "0.0.0.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 36
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_1
    invoke-static {}, Lcom/tencent/mna/b/a/b;->k()Lcom/tencent/mna/b/a/f;

    move-result-object v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    invoke-interface {v1}, Lcom/tencent/mna/b/a/f;->d()Ljava/lang/String;

    move-result-object v1

    .line 42
    if-eqz v1, :cond_2

    const-string v2, "0.0.0.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 43
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_2
    invoke-static {}, Lcom/tencent/mna/b/a/b;->m()Lcom/tencent/mna/b/b/b;

    move-result-object v1

    .line 48
    if-eqz v1, :cond_3

    .line 49
    invoke-virtual {v1}, Lcom/tencent/mna/b/b/b;->e()Ljava/util/List;

    move-result-object v2

    .line 50
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 51
    invoke-virtual {v1}, Lcom/tencent/mna/b/b/b;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[N]4G-QOS\uff1a\u542f\u52a8, \u65f6\u5ef6:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u4fe1\u53f7\u5f3a\u5ea6:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u662f\u5426\u5bf9\u5c40\u4e2d:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tencent/mna/b/a/d$b;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 59
    invoke-static {p0, p1, v0, p2}, Lcom/tencent/mna/b/f/a;->a(IILjava/util/List;Lcom/tencent/mna/b/a/d$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[N]4G-QOS failed, exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 56
    :cond_4
    :try_start_1
    const-string v1, "0.0.0.0"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 64
    :cond_5
    const-string v0, "[N]4G-QOS\u672a\u5f00\u542f"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static b()I
    .locals 4

    .prologue
    .line 147
    const/16 v0, -0x64

    .line 148
    invoke-static {}, Lcom/tencent/mna/base/a/a;->U()I

    move-result v1

    if-lez v1, :cond_0

    .line 150
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/b/g/d;->d()Lcom/tencent/mna/b/g/c;

    move-result-object v1

    .line 151
    if-eqz v1, :cond_0

    .line 152
    iget v0, v1, Lcom/tencent/mna/b/g/c;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 154
    :catch_0
    move-exception v1

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopRouterQos exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
