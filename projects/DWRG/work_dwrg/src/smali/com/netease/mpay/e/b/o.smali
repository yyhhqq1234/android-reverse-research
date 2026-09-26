.class public Lcom/netease/mpay/e/b/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/e/b/o$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field protected b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:I

.field public l:Z

.field public m:Z

.field public n:Ljava/util/HashMap;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/server/response/m;ZZ)V
    .locals 16

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/netease/mpay/server/response/m;->i:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/netease/mpay/server/response/m;->j:Z

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/netease/mpay/server/response/m;->b:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/netease/mpay/server/response/m;->a:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/netease/mpay/server/response/m;->d:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/netease/mpay/server/response/m;->o:I

    move-object/from16 v0, p1

    iget v9, v0, Lcom/netease/mpay/server/response/m;->c:I

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/netease/mpay/server/response/m;->e:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/netease/mpay/server/response/m;->f:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/netease/mpay/server/response/m;->g:Z

    move-object/from16 v0, p1

    iget v13, v0, Lcom/netease/mpay/server/response/m;->h:I

    move-object/from16 v1, p0

    move/from16 v14, p2

    move/from16 v15, p3

    invoke-direct/range {v1 .. v15}, Lcom/netease/mpay/e/b/o;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZIZZ)V

    move-object/from16 v0, p1

    iget v1, v0, Lcom/netease/mpay/server/response/m;->c:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/netease/mpay/e/b/o;->n:Ljava/util/HashMap;

    :goto_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v2, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void

    :pswitch_1
    invoke-static/range {p1 .. p1}, Lcom/netease/mpay/e/b/ah;->a(Lcom/netease/mpay/server/response/m;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/netease/mpay/e/b/o;->n:Ljava/util/HashMap;

    goto :goto_1

    :pswitch_2
    invoke-static/range {p1 .. p1}, Lcom/netease/mpay/e/b/x;->a(Lcom/netease/mpay/server/response/m;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/netease/mpay/e/b/o;->n:Ljava/util/HashMap;

    goto :goto_1

    :pswitch_3
    invoke-static/range {p1 .. p1}, Lcom/netease/mpay/e/b/k;->a(Lcom/netease/mpay/server/response/m;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/netease/mpay/e/b/o;->n:Ljava/util/HashMap;

    goto :goto_1

    :pswitch_4
    invoke-static/range {p1 .. p1}, Lcom/netease/mpay/e/b/j;->a(Lcom/netease/mpay/server/response/m;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/netease/mpay/e/b/o;->n:Ljava/util/HashMap;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZIZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/mpay/e/b/o;->g:I

    iput-object p1, p0, Lcom/netease/mpay/e/b/o;->o:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/e/b/o;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/netease/mpay/e/b/o;->b:Z

    iput-object p4, p0, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/netease/mpay/e/b/o;->e:Ljava/lang/String;

    iput p7, p0, Lcom/netease/mpay/e/b/o;->g:I

    iput p8, p0, Lcom/netease/mpay/e/b/o;->f:I

    iput-object p9, p0, Lcom/netease/mpay/e/b/o;->h:Ljava/lang/String;

    iput-object p10, p0, Lcom/netease/mpay/e/b/o;->i:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/netease/mpay/e/b/o;->j:Z

    iput p12, p0, Lcom/netease/mpay/e/b/o;->k:I

    iput-boolean p13, p0, Lcom/netease/mpay/e/b/o;->l:Z

    iput-boolean p14, p0, Lcom/netease/mpay/e/b/o;->m:Z

    return-void
.end method

.method public static a([B)Lcom/netease/mpay/e/b/o;
    .locals 18

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/netease/mpay/e/a;->a([B)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-class v2, Ljava/lang/String;

    const-class v3, Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/netease/mpay/e/a;->a(Ljava/util/HashMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    const-string v1, "need_bind"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    const-string v1, "5"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    const-string v1, "realname_set"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/lang/String;

    const-string v1, "mobile_bind_status"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/lang/String;

    const-string v1, "3"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/lang/String;

    const-string v1, "4"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Ljava/lang/String;

    new-instance v1, Lcom/netease/mpay/e/b/o;

    const-string v2, "0"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "7"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "0"

    const-string v4, "need_mask"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    const-string v5, "1"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "2"

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "6"

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v8, :cond_1

    const/4 v8, 0x0

    :goto_1
    if-nez v9, :cond_2

    const/4 v9, 0x1

    :goto_2
    const-string v10, "nickname"

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "avatar_url"

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v12, :cond_3

    const-string v17, "1"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    :goto_3
    if-eqz v13, :cond_4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    :goto_4
    if-eqz v14, :cond_5

    const-string v17, "1"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    const/4 v14, 0x1

    :goto_5
    if-eqz v15, :cond_6

    const-string v17, "1"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    const/4 v15, 0x1

    :goto_6
    invoke-direct/range {v1 .. v15}, Lcom/netease/mpay/e/b/o;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZIZZ)V

    move-object/from16 v0, v16

    iput-object v0, v1, Lcom/netease/mpay/e/b/o;->n:Ljava/util/HashMap;

    :goto_7
    return-object v1

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_7

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_1

    :cond_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    goto :goto_3

    :cond_4
    const/4 v13, 0x0

    goto :goto_4

    :cond_5
    const/4 v14, 0x0

    goto :goto_5

    :cond_6
    const/4 v15, 0x0

    goto :goto_6
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-object p0

    :pswitch_1
    invoke-static {p0}, Lcom/netease/mpay/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x3

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/e/b/o;->o:Ljava/lang/String;

    return-object v0
.end method

.method public a(Z)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/netease/mpay/e/b/o;->f:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-object v0

    :sswitch_0
    if-nez p1, :cond_1

    iget-boolean v1, p0, Lcom/netease/mpay/e/b/o;->b:Z

    if-nez v1, :cond_0

    :cond_1
    invoke-static {p0}, Lcom/netease/mpay/e/b/ah;->a(Lcom/netease/mpay/e/b/o;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    if-nez p1, :cond_2

    iget-boolean v1, p0, Lcom/netease/mpay/e/b/o;->b:Z

    if-nez v1, :cond_0

    :cond_2
    invoke-static {p0}, Lcom/netease/mpay/e/b/x;->a(Lcom/netease/mpay/e/b/o;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Lcom/netease/mpay/e/b/o$a;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/e/b/o;->n:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/e/b/o;->n:Ljava/util/HashMap;

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/netease/mpay/e/b/o$a;->a()Ljava/util/HashMap;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/netease/mpay/e/b/o;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/netease/mpay/e/b/o;->f:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-static {p0, p1}, Lcom/netease/mpay/e/b/ah;->a(Lcom/netease/mpay/e/b/o;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    invoke-static {p0, p1}, Lcom/netease/mpay/e/b/x;->a(Lcom/netease/mpay/e/b/o;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public b()[B
    .locals 3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/netease/mpay/e/b/o;->n:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/e/b/o;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    const-string v0, "0"

    iget-object v2, p0, Lcom/netease/mpay/e/b/o;->o:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "7"

    iget-object v2, p0, Lcom/netease/mpay/e/b/o;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "need_mask"

    iget-boolean v0, p0, Lcom/netease/mpay/e/b/o;->b:Z

    if-eqz v0, :cond_2

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "1"

    iget-object v2, p0, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "2"

    iget-object v2, p0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "need_bind"

    iget v2, p0, Lcom/netease/mpay/e/b/o;->g:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nickname"

    iget-object v2, p0, Lcom/netease/mpay/e/b/o;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "avatar_url"

    iget-object v2, p0, Lcom/netease/mpay/e/b/o;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "realname_set"

    iget-boolean v0, p0, Lcom/netease/mpay/e/b/o;->j:Z

    if-eqz v0, :cond_3

    const-string v0, "1"

    :goto_1
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mobile_bind_status"

    iget v2, p0, Lcom/netease/mpay/e/b/o;->k:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "3"

    iget-boolean v0, p0, Lcom/netease/mpay/e/b/o;->l:Z

    if-eqz v0, :cond_4

    const-string v0, "1"

    :goto_2
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "4"

    iget-boolean v0, p0, Lcom/netease/mpay/e/b/o;->m:Z

    if-eqz v0, :cond_5

    const-string v0, "1"

    :goto_3
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "5"

    iget v2, p0, Lcom/netease/mpay/e/b/o;->f:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/netease/mpay/e/b/o;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "6"

    iget-object v2, p0, Lcom/netease/mpay/e/b/o;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {v1}, Lcom/netease/mpay/e/a;->a(Ljava/io/Serializable;)[B

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "0"

    goto :goto_0

    :cond_3
    const-string v0, "0"

    goto :goto_1

    :cond_4
    const-string v0, "0"

    goto :goto_2

    :cond_5
    const-string v0, "0"

    goto :goto_3
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget v0, p0, Lcom/netease/mpay/e/b/o;->f:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    :sswitch_0
    invoke-static {p0}, Lcom/netease/mpay/e/b/ah;->b(Lcom/netease/mpay/e/b/o;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    invoke-static {p0}, Lcom/netease/mpay/e/b/x;->a(Lcom/netease/mpay/e/b/o;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method
