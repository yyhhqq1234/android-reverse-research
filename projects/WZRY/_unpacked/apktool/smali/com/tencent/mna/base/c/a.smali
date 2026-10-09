.class public Lcom/tencent/mna/base/c/a;
.super Lcom/tencent/mna/base/c/g;
.source "AccNormalReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/base/c/a$a;
    }
.end annotation


# instance fields
.field private c:Lcom/tencent/mna/b/a/c/f;

.field private d:Lcom/tencent/mna/b/a/c/b;

.field private e:Lcom/tencent/mna/b/a/c/e;

.field private f:Lcom/tencent/mna/b/a/c/c;

.field private g:Lcom/tencent/mna/b/a/c/c;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:J


# direct methods
.method public constructor <init>(Lcom/tencent/mna/base/c/c;)V
    .locals 3

    .prologue
    const/16 v2, 0x1f4

    .line 148
    invoke-direct {p0, p1}, Lcom/tencent/mna/base/c/g;-><init>(Lcom/tencent/mna/base/c/c;)V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mna/base/c/a;->h:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mna/base/c/a;->i:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mna/base/c/a;->j:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mna/base/c/a;->k:Ljava/lang/String;

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mna/base/c/a;->l:J

    .line 150
    new-instance v0, Lcom/tencent/mna/b/a/c/c;

    invoke-direct {v0, v2}, Lcom/tencent/mna/b/a/c/c;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mna/base/c/a;->f:Lcom/tencent/mna/b/a/c/c;

    .line 151
    new-instance v0, Lcom/tencent/mna/b/a/c/c;

    invoke-direct {v0, v2}, Lcom/tencent/mna/b/a/c/c;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mna/base/c/a;->g:Lcom/tencent/mna/b/a/c/c;

    .line 153
    new-instance v0, Lcom/tencent/mna/b/a/c/f;

    invoke-static {}, Lcom/tencent/mna/base/a/a;->v()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/tencent/mna/b/a/c/f;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mna/base/c/a;->c:Lcom/tencent/mna/b/a/c/f;

    .line 155
    new-instance v0, Lcom/tencent/mna/b/a/c/b;

    invoke-static {}, Lcom/tencent/mna/base/a/a;->v()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/tencent/mna/b/a/c/b;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mna/base/c/a;->d:Lcom/tencent/mna/b/a/c/b;

    .line 157
    new-instance v0, Lcom/tencent/mna/b/a/c/e;

    invoke-direct {v0}, Lcom/tencent/mna/b/a/c/e;-><init>()V

    iput-object v0, p0, Lcom/tencent/mna/base/c/a;->e:Lcom/tencent/mna/b/a/c/e;

    .line 158
    return-void
.end method

.method private a(Lcom/tencent/mna/base/c/a$a;Ljava/util/List;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/mna/base/c/a$a;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-object p2

    .line 297
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 299
    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 302
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_3

    .line 303
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    add-int/lit8 v0, v4, -0x1

    if-ge v1, v0, :cond_2

    .line 305
    invoke-static {p1}, Lcom/tencent/mna/base/c/a$a;->b(Lcom/tencent/mna/base/c/a$a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 306
    invoke-static {p1}, Lcom/tencent/mna/base/c/a$a;->b(Lcom/tencent/mna/base/c/a$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 311
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 312
    const/16 v0, 0x3b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 314
    iget-object v0, p0, Lcom/tencent/mna/base/c/a;->a:Ljava/util/Map;

    invoke-static {p1}, Lcom/tencent/mna/base/c/a$a;->a(Lcom/tencent/mna/base/c/a$a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    if-ge v4, v3, :cond_4

    .line 317
    invoke-interface {p2, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    .line 319
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method private a(J)V
    .locals 5

    .prologue
    .line 196
    sget-object v0, Lcom/tencent/mna/base/c/a$a;->a:Lcom/tencent/mna/base/c/a$a;

    iget-object v1, p0, Lcom/tencent/mna/base/c/a;->h:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/c/a;

    .line 197
    sget-object v0, Lcom/tencent/mna/base/c/a$a;->b:Lcom/tencent/mna/base/c/a$a;

    iget-object v1, p0, Lcom/tencent/mna/base/c/a;->i:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/c/a;

    .line 198
    sget-object v0, Lcom/tencent/mna/base/c/a$a;->c:Lcom/tencent/mna/base/c/a$a;

    iget-object v1, p0, Lcom/tencent/mna/base/c/a;->j:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/c/a;

    .line 199
    sget-object v0, Lcom/tencent/mna/base/c/a$a;->d:Lcom/tencent/mna/base/c/a$a;

    iget-object v1, p0, Lcom/tencent/mna/base/c/a;->k:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/c/a;

    .line 200
    sget-object v0, Lcom/tencent/mna/base/c/a$a;->e:Lcom/tencent/mna/base/c/a$a;

    iget-wide v2, p0, Lcom/tencent/mna/base/c/a;->l:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/c/a;

    .line 201
    sget-object v0, Lcom/tencent/mna/base/c/a$a;->f:Lcom/tencent/mna/base/c/a$a;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/c/a;

    .line 202
    return-void
.end method

.method private b(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 327
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 328
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 329
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 331
    :cond_0
    return-object v2
.end method

.method private i()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/tencent/mna/base/c/a;->d:Lcom/tencent/mna/b/a/c/b;

    invoke-virtual {v0}, Lcom/tencent/mna/b/a/c/b;->e()V

    .line 337
    iget-object v0, p0, Lcom/tencent/mna/base/c/a;->e:Lcom/tencent/mna/b/a/c/e;

    invoke-virtual {v0}, Lcom/tencent/mna/b/a/c/e;->e()V

    .line 338
    iget-object v0, p0, Lcom/tencent/mna/base/c/a;->c:Lcom/tencent/mna/b/a/c/f;

    invoke-virtual {v0}, Lcom/tencent/mna/b/a/c/f;->e()V

    .line 339
    iget-object v0, p0, Lcom/tencent/mna/base/c/a;->f:Lcom/tencent/mna/b/a/c/c;

    invoke-virtual {v0}, Lcom/tencent/mna/b/a/c/c;->a()V

    .line 340
    iget-object v0, p0, Lcom/tencent/mna/base/c/a;->g:Lcom/tencent/mna/b/a/c/c;

    invoke-virtual {v0}, Lcom/tencent/mna/b/a/c/c;->a()V

    .line 341
    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/c/a;
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/tencent/mna/base/c/a;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/tencent/mna/base/c/a$a;->a(Lcom/tencent/mna/base/c/a$a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 177
    if-nez p2, :cond_0

    .line 178
    const-string p2, ""

    .line 180
    :cond_0
    invoke-static {p1}, Lcom/tencent/mna/base/c/a$a;->b(Lcom/tencent/mna/base/c/a$a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 182
    invoke-static {p1}, Lcom/tencent/mna/base/c/a$a;->c(Lcom/tencent/mna/base/c/a$a;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {p1}, Lcom/tencent/mna/base/c/a$a;->d(Lcom/tencent/mna/base/c/a$a;)I

    move-result v0

    invoke-static {p1}, Lcom/tencent/mna/base/c/a$a;->c(Lcom/tencent/mna/base/c/a$a;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 183
    :cond_1
    invoke-static {p1}, Lcom/tencent/mna/base/c/a$a;->a(Lcom/tencent/mna/base/c/a$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/tencent/mna/base/c/a$a;->b(Lcom/tencent/mna/base/c/a$a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p2, v1}, Lcom/tencent/mna/base/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    .line 184
    invoke-static {p1}, Lcom/tencent/mna/base/c/a$a;->e(Lcom/tencent/mna/base/c/a$a;)I

    .line 191
    :cond_2
    :goto_0
    return-object p0

    .line 187
    :cond_3
    invoke-static {p1}, Lcom/tencent/mna/base/c/a$a;->a(Lcom/tencent/mna/base/c/a$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/tencent/mna/base/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    goto :goto_0
.end method

.method public a()V
    .locals 26

    .prologue
    .line 208
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mna/base/c/a;->a:Ljava/util/Map;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mna/base/c/a;->a:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 209
    :cond_0
    const-string v4, "[N]ino_newacc_p\u4e0a\u62a5\u5931\u8d25\uff0cmap\u4e3a\u7a7a"

    invoke-static {v4}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 291
    :goto_0
    return-void

    .line 212
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mna/base/c/a;->d:Lcom/tencent/mna/b/a/c/b;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/tencent/mna/b/a/c/b;->a(Z)V

    .line 213
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mna/base/c/a;->d:Lcom/tencent/mna/b/a/c/b;

    invoke-virtual {v4}, Lcom/tencent/mna/b/a/c/b;->b()Ljava/util/List;

    move-result-object v19

    .line 214
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mna/base/c/a;->d:Lcom/tencent/mna/b/a/c/b;

    invoke-virtual {v4}, Lcom/tencent/mna/b/a/c/b;->c()Ljava/util/List;

    move-result-object v18

    .line 215
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mna/base/c/a;->d:Lcom/tencent/mna/b/a/c/b;

    invoke-virtual {v4}, Lcom/tencent/mna/b/a/c/b;->d()Ljava/util/List;

    move-result-object v17

    .line 217
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mna/base/c/a;->c:Lcom/tencent/mna/b/a/c/f;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/tencent/mna/b/a/c/f;->a(Z)V

    .line 218
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mna/base/c/a;->c:Lcom/tencent/mna/b/a/c/f;

    invoke-virtual {v4}, Lcom/tencent/mna/b/a/c/f;->a()Ljava/util/List;

    move-result-object v16

    .line 220
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mna/base/c/a;->e:Lcom/tencent/mna/b/a/c/e;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/tencent/mna/b/a/c/e;->a(Z)V

    .line 221
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mna/base/c/a;->e:Lcom/tencent/mna/b/a/c/e;

    invoke-virtual {v4}, Lcom/tencent/mna/b/a/c/e;->a()Ljava/util/List;

    move-result-object v15

    .line 222
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mna/base/c/a;->e:Lcom/tencent/mna/b/a/c/e;

    invoke-virtual {v4}, Lcom/tencent/mna/b/a/c/e;->b()Ljava/util/List;

    move-result-object v14

    .line 223
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mna/base/c/a;->e:Lcom/tencent/mna/b/a/c/e;

    invoke-virtual {v4}, Lcom/tencent/mna/b/a/c/e;->c()Ljava/util/List;

    move-result-object v13

    .line 225
    invoke-static {}, Lcom/tencent/mna/base/a/a;->u()I

    move-result v23

    .line 226
    invoke-static {}, Lcom/tencent/mna/base/a/a;->D()I

    move-result v24

    .line 229
    if-lez v23, :cond_4

    .line 230
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    div-int v4, v4, v23

    add-int/lit8 v4, v4, 0x1

    move/from16 v22, v4

    .line 232
    :goto_1
    sget-object v4, Lcom/tencent/mna/base/c/a$a;->as:Lcom/tencent/mna/base/c/a$a;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/c/a;

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 236
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/tencent/mna/base/c/a;->a(J)V

    .line 238
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mna/base/c/a;->b:Lcom/tencent/mna/base/c/c;

    invoke-virtual {v4}, Lcom/tencent/mna/base/c/c;->b()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/mna/base/c/a;->a:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/mna/base/c/a;->b:Lcom/tencent/mna/base/c/c;

    invoke-virtual {v11}, Lcom/tencent/mna/base/c/c;->c()Z

    move-result v11

    invoke-static/range {v4 .. v11}, Lcom/tencent/mna/base/c/b;->a(Ljava/lang/String;ZJJLjava/util/Map;Z)Z

    move-result v4

    .line 239
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/mna/base/c/a;->a:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/tencent/mna/base/c/a;->a(Ljava/util/Map;)V

    .line 240
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[N]\u4e0a\u62a5ino_newacc_p\u7b2c\u4e00\u7c7b, endTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", \u7ed3\u679c: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 242
    invoke-static {}, Lcom/tencent/mna/base/a/a;->I()I

    move-result v4

    if-lez v4, :cond_2

    .line 243
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mna/base/c/a;->a:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/tencent/mna/base/c/a;->b(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v8

    .line 244
    sget-object v4, Lcom/tencent/mna/a/a;->e:Ljava/lang/String;

    sget-object v5, Lcom/tencent/mna/a/b;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/tencent/mna/base/c/a;->l:J

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    .line 245
    invoke-static {}, Lcom/tencent/mna/base/a/a;->I()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/mna/base/c/a;->k:Ljava/lang/String;

    .line 244
    invoke-static/range {v4 .. v10}, Lcom/tencent/mna/base/f/e;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    .line 249
    :cond_2
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/tencent/mna/base/c/a;->l:J

    .line 251
    const/4 v4, 0x0

    move v12, v4

    move-object v5, v13

    move-object v8, v14

    move-object v9, v15

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    move-object/from16 v20, v18

    move-object/from16 v21, v19

    :goto_2
    move/from16 v0, v22

    if-ge v12, v0, :cond_3

    .line 252
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/tencent/mna/base/c/a;->a:Ljava/util/Map;

    .line 254
    sget-object v4, Lcom/tencent/mna/base/c/a$a;->at:Lcom/tencent/mna/base/c/a$a;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v13}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/c/a;

    .line 255
    sget-object v4, Lcom/tencent/mna/base/c/a$a;->ai:Lcom/tencent/mna/base/c/a$a;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-direct {v0, v4, v1, v2}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/util/List;I)Ljava/util/List;

    move-result-object v21

    .line 256
    sget-object v4, Lcom/tencent/mna/base/c/a$a;->aj:Lcom/tencent/mna/base/c/a$a;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v23

    invoke-direct {v0, v4, v1, v2}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/util/List;I)Ljava/util/List;

    move-result-object v20

    .line 257
    sget-object v4, Lcom/tencent/mna/base/c/a$a;->an:Lcom/tencent/mna/base/c/a$a;

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v4, v11, v1}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/util/List;I)Ljava/util/List;

    move-result-object v19

    .line 259
    sget-object v4, Lcom/tencent/mna/base/c/a$a;->ak:Lcom/tencent/mna/base/c/a$a;

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v4, v9, v1}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/util/List;I)Ljava/util/List;

    move-result-object v17

    .line 260
    sget-object v4, Lcom/tencent/mna/base/c/a$a;->al:Lcom/tencent/mna/base/c/a$a;

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v4, v8, v1}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/util/List;I)Ljava/util/List;

    move-result-object v16

    .line 261
    sget-object v4, Lcom/tencent/mna/base/c/a$a;->am:Lcom/tencent/mna/base/c/a$a;

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v4, v5, v1}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/util/List;I)Ljava/util/List;

    move-result-object v13

    .line 263
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    .line 264
    sget-object v5, Lcom/tencent/mna/base/c/a$a;->ah:Lcom/tencent/mna/base/c/a$a;

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v5, v10, v1}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/util/List;I)Ljava/util/List;

    move-result-object v18

    .line 265
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v5

    .line 266
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/mna/base/c/a;->a:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 286
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/tencent/mna/base/c/a;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 288
    :catch_0
    move-exception v4

    .line 289
    const-string v4, "ino_newacc_p report exception!"

    invoke-static {v4}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 230
    :cond_4
    const/4 v4, 0x0

    move/from16 v22, v4

    goto/16 :goto_1

    .line 270
    :cond_5
    sub-int v25, v4, v5

    .line 271
    mul-int v4, v25, v24

    int-to-long v4, v4

    add-long v14, v6, v4

    .line 272
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/tencent/mna/base/c/a;->a(J)V

    .line 274
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mna/base/c/a;->b:Lcom/tencent/mna/base/c/c;

    invoke-virtual {v4}, Lcom/tencent/mna/base/c/c;->b()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/mna/base/c/a;->a:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/mna/base/c/a;->b:Lcom/tencent/mna/base/c/c;

    invoke-virtual {v11}, Lcom/tencent/mna/base/c/c;->c()Z

    move-result v11

    invoke-static/range {v4 .. v11}, Lcom/tencent/mna/base/c/b;->a(Ljava/lang/String;ZJJLjava/util/Map;Z)Z

    move-result v4

    .line 275
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/mna/base/c/a;->a:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/tencent/mna/base/c/a;->a(Ljava/util/Map;)V

    .line 276
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[N]\u4e0a\u62a5ino_newacc_p\u7b2c\u4e8c\u7c7b("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), endTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", \u6837\u70b9\u6570: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", \u7ed3\u679c: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 279
    invoke-static {}, Lcom/tencent/mna/base/a/a;->I()I

    move-result v4

    if-lez v4, :cond_6

    .line 280
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mna/base/c/a;->a:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/tencent/mna/base/c/a;->b(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v8

    .line 281
    sget-object v4, Lcom/tencent/mna/a/a;->e:Ljava/lang/String;

    sget-object v5, Lcom/tencent/mna/a/b;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/tencent/mna/base/c/a;->l:J

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    .line 282
    invoke-static {}, Lcom/tencent/mna/base/a/a;->I()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/mna/base/c/a;->k:Ljava/lang/String;

    .line 281
    invoke-static/range {v4 .. v10}, Lcom/tencent/mna/base/f/e;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 251
    :cond_6
    add-int/lit8 v4, v12, 0x1

    move v12, v4

    move-wide v6, v14

    move-object v5, v13

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    goto/16 :goto_2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/tencent/mna/base/c/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-wide v0, p0, Lcom/tencent/mna/base/c/a;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iput-object p1, p0, Lcom/tencent/mna/base/c/a;->h:Ljava/lang/String;

    .line 167
    iput-object p2, p0, Lcom/tencent/mna/base/c/a;->i:Ljava/lang/String;

    .line 168
    iput-object p3, p0, Lcom/tencent/mna/base/c/a;->j:Ljava/lang/String;

    .line 169
    iput-object p4, p0, Lcom/tencent/mna/base/c/a;->k:Ljava/lang/String;

    .line 170
    iput-wide p5, p0, Lcom/tencent/mna/base/c/a;->l:J

    goto :goto_0
.end method

.method public b()Lcom/tencent/mna/b/a/c/f;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/tencent/mna/base/c/a;->c:Lcom/tencent/mna/b/a/c/f;

    return-object v0
.end method

.method public c()Lcom/tencent/mna/b/a/c/b;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/tencent/mna/base/c/a;->d:Lcom/tencent/mna/b/a/c/b;

    return-object v0
.end method

.method public d()Lcom/tencent/mna/b/a/c/c;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/tencent/mna/base/c/a;->f:Lcom/tencent/mna/b/a/c/c;

    return-object v0
.end method

.method public e()Lcom/tencent/mna/b/a/c/c;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/tencent/mna/base/c/a;->g:Lcom/tencent/mna/b/a/c/c;

    return-object v0
.end method

.method public f()Lcom/tencent/mna/b/a/c/e;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/tencent/mna/base/c/a;->e:Lcom/tencent/mna/b/a/c/e;

    return-object v0
.end method
