.class public Lcom/netease/mpay/server/response/s;
.super Lcom/netease/mpay/server/response/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/server/response/s$a;
    }
.end annotation


# instance fields
.field public b:Z

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field public e:Z

.field public f:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .locals 7

    const/4 v5, 0x0

    const/4 v2, 0x0

    const-string v3, ""

    move-object v0, p0

    move v1, p1

    move v4, v2

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/server/response/s;-><init>(IZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

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

.method public constructor <init>(IZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Z
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Z
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/netease/mpay/server/response/n;-><init>(I)V

    iput-boolean p2, p0, Lcom/netease/mpay/server/response/s;->b:Z

    iput-object p3, p0, Lcom/netease/mpay/server/response/s;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/netease/mpay/server/response/s;->e:Z

    iput-object p5, p0, Lcom/netease/mpay/server/response/s;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/netease/mpay/server/response/s;->d:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/netease/mpay/server/response/s;
    .locals 2

    new-instance v0, Lcom/netease/mpay/server/response/s;

    const/16 v1, 0x2711

    invoke-direct {v0, v1}, Lcom/netease/mpay/server/response/s;-><init>(I)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netease/mpay/server/response/s;->b:Z

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/netease/mpay/server/response/s;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netease/mpay/server/response/s;->a:I

    invoke-static {p1, v0}, Lcom/netease/mpay/server/response/t;->a(Landroid/content/Context;I)Lcom/netease/mpay/server/response/t;

    move-result-object v0

    iget v0, v0, Lcom/netease/mpay/server/response/t;->d:I

    if-lez v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/server/response/s;->c:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/server/response/s;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/server/response/s;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 8

    iget v0, p0, Lcom/netease/mpay/server/response/s;->a:I

    invoke-static {p1, v0}, Lcom/netease/mpay/server/response/t;->a(Landroid/content/Context;I)Lcom/netease/mpay/server/response/t;

    move-result-object v0

    iget v4, v0, Lcom/netease/mpay/server/response/t;->e:I

    iget-object v5, p0, Lcom/netease/mpay/server/response/s;->d:Ljava/lang/String;

    sget v6, Lcom/netease/mpay/widget/RIdentifier$e;->q:I

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/netease/mpay/server/response/s;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/ImageView;ILjava/lang/String;IZ)V

    return-void
.end method

.method b(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/netease/mpay/server/response/s;->b:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/netease/mpay/server/response/s;->a:I

    invoke-static {p1, v1}, Lcom/netease/mpay/server/response/t;->a(Landroid/content/Context;I)Lcom/netease/mpay/server/response/t;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/server/response/s;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/netease/mpay/server/response/t;->b:Z

    if-nez v2, :cond_1

    iget-boolean v1, v1, Lcom/netease/mpay/server/response/t;->c:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method
