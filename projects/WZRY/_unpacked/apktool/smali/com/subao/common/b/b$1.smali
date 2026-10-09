.class final Lcom/subao/common/b/b$1;
.super Lcom/subao/common/j/n;
.source "AuthExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subao/common/b/b;->a(Lcom/subao/common/b/b$c;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/subao/common/b/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/subao/common/b/c;


# direct methods
.method constructor <init>(Lcom/subao/common/i/d$b;IILjava/lang/String;Lcom/subao/common/b/c;)V
    .locals 0

    .prologue
    .line 267
    iput-object p4, p0, Lcom/subao/common/b/b$1;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/subao/common/b/b$1;->b:Lcom/subao/common/b/c;

    invoke-direct {p0, p1, p2, p3}, Lcom/subao/common/j/n;-><init>(Lcom/subao/common/i/d$b;II)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    const-string v0, "auth_get_jwt_token"

    return-object v0
.end method

.method protected a(I[B)V
    .locals 6

    .prologue
    .line 270
    if-eqz p2, :cond_0

    array-length v0, p2

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 272
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/subao/common/b/g;->a(Ljava/io/InputStream;)Lcom/subao/common/b/g;

    move-result-object v2

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lcom/subao/common/b/h;->a(Lcom/subao/common/b/g;J)[B

    move-result-object v0

    invoke-static {v0}, Lcom/subao/common/b/b;->a([B)V

    .line 274
    invoke-static {}, Lcom/subao/common/b/b;->c()Lcom/subao/common/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/subao/common/b/b$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/subao/common/b/a;->a(Ljava/lang/String;Lcom/subao/common/b/g;)V

    .line 275
    iget v0, p0, Lcom/subao/common/b/b$1;->d:I

    iget v1, p0, Lcom/subao/common/b/b$1;->e:I

    iget-object v4, p0, Lcom/subao/common/b/b$1;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/subao/common/b/b$1;->b:Lcom/subao/common/b/c;

    move v3, p1

    invoke-static/range {v0 .. v5}, Lcom/subao/common/b/b;->a(IILcom/subao/common/b/g;ILjava/lang/String;Lcom/subao/common/b/c;)V

    .line 276
    invoke-virtual {p0}, Lcom/subao/common/b/b$1;->d()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 282
    :cond_0
    const/4 v0, -0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/subao/common/b/b$1;->d(I[B)V

    goto :goto_0
.end method

.method protected b(I[B)V
    .locals 22

    .prologue
    .line 287
    invoke-static {}, Lcom/subao/common/b/b;->c()Lcom/subao/common/b/a;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/subao/common/b/b$1;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/subao/common/b/a;->a(Ljava/lang/String;Lcom/subao/common/b/g;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/subao/common/b/b$1;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/subao/common/i/k;->b(Ljava/lang/String;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/subao/common/b/b$1;->b:Lcom/subao/common/b/c;

    if-eqz v2, :cond_0

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/subao/common/b/b$1;->b:Lcom/subao/common/b/c;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/subao/common/b/b$1;->d:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/subao/common/b/b$1;->e:I

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, -0x1

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, ""

    move/from16 v12, p1

    invoke-interface/range {v2 .. v21}, Lcom/subao/common/b/c;->a(IILjava/lang/String;JLjava/lang/String;ILjava/lang/String;ZILjava/lang/String;JIJIILjava/lang/String;)V

    .line 292
    :cond_0
    return-void
.end method
