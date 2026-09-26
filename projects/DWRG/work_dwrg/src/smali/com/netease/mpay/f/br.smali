.class public Lcom/netease/mpay/f/br;
.super Lcom/netease/mpay/f/au;


# instance fields
.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLcom/netease/mpay/f/au$a;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p7

    move v5, p8

    move-object/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/f/au;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZLcom/netease/mpay/f/au$a;)V

    iput-object p4, p0, Lcom/netease/mpay/f/br;->j:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/mpay/f/br;->k:Ljava/lang/String;

    iput p6, p0, Lcom/netease/mpay/f/br;->l:I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/f/au$a;)V
    .locals 10

    invoke-static {p5}, Lcom/netease/mpay/widget/bd;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p5}, Lcom/netease/mpay/widget/bd;->d(Ljava/lang/String;)I

    move-result v6

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v7, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/netease/mpay/f/br;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLcom/netease/mpay/f/au$a;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/netease/mpay/f/au$b;)Lcom/netease/mpay/server/response/m;
    .locals 11

    iget-boolean v0, p0, Lcom/netease/mpay/f/br;->b:Z

    if-eqz v0, :cond_0

    iget-object v10, p1, Lcom/netease/mpay/f/au$b;->b:Lcom/netease/mpay/server/d;

    new-instance v0, Lcom/netease/mpay/server/a/z;

    iget-object v1, p0, Lcom/netease/mpay/f/br;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/netease/mpay/f/au$b;->c:Lcom/netease/mpay/e/b/f;

    iget-object v2, v2, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/netease/mpay/f/au$b;->c:Lcom/netease/mpay/e/b/f;

    iget-object v3, v3, Lcom/netease/mpay/e/b/f;->i:[B

    iget-object v4, p0, Lcom/netease/mpay/f/br;->j:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/f/br;->k:Ljava/lang/String;

    iget-object v6, p1, Lcom/netease/mpay/f/au$b;->c:Lcom/netease/mpay/e/b/f;

    iget-object v6, v6, Lcom/netease/mpay/e/b/f;->l:Ljava/lang/String;

    iget v7, p0, Lcom/netease/mpay/f/br;->l:I

    iget-object v8, p1, Lcom/netease/mpay/f/au$b;->d:Lcom/netease/mpay/e/b/o;

    iget-object v8, v8, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v9, p1, Lcom/netease/mpay/f/au$b;->d:Lcom/netease/mpay/e/b/o;

    iget-object v9, v9, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-direct/range {v0 .. v9}, Lcom/netease/mpay/server/a/z;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/m;

    :goto_0
    new-instance v1, Lcom/netease/mpay/e/b/ah;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/netease/mpay/e/b/ah;-><init>(Z)V

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/netease/mpay/f/br;->a(Lcom/netease/mpay/f/au$b;Lcom/netease/mpay/server/response/m;Lcom/netease/mpay/e/b/o$a;Z)V

    return-object v0

    :cond_0
    iget-object v8, p1, Lcom/netease/mpay/f/au$b;->b:Lcom/netease/mpay/server/d;

    new-instance v0, Lcom/netease/mpay/server/a/be;

    iget-object v1, p0, Lcom/netease/mpay/f/br;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/netease/mpay/f/au$b;->c:Lcom/netease/mpay/e/b/f;

    iget-object v2, v2, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/netease/mpay/f/au$b;->c:Lcom/netease/mpay/e/b/f;

    iget-object v3, v3, Lcom/netease/mpay/e/b/f;->i:[B

    iget-object v4, p0, Lcom/netease/mpay/f/br;->j:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/f/br;->k:Ljava/lang/String;

    iget-object v6, p1, Lcom/netease/mpay/f/au$b;->c:Lcom/netease/mpay/e/b/f;

    iget-object v6, v6, Lcom/netease/mpay/e/b/f;->l:Ljava/lang/String;

    iget v7, p0, Lcom/netease/mpay/f/br;->l:I

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/server/a/be;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v0}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/m;

    goto :goto_0
.end method
