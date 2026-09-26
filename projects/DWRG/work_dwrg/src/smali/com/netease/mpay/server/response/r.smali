.class public Lcom/netease/mpay/server/response/r;
.super Lcom/netease/mpay/server/response/n;


# instance fields
.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field public d:J

.field public e:J

.field public f:Z

.field public g:Z

.field public h:Ljava/lang/String;


# direct methods
.method protected constructor <init>(I)V
    .locals 4

    const-wide/32 v2, 0x93a80

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/netease/mpay/server/response/n;-><init>(I)V

    iput-object v1, p0, Lcom/netease/mpay/server/response/r;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/netease/mpay/server/response/r;->c:Ljava/lang/String;

    iput-wide v2, p0, Lcom/netease/mpay/server/response/r;->d:J

    iput-wide v2, p0, Lcom/netease/mpay/server/response/r;->e:J

    iput-boolean v0, p0, Lcom/netease/mpay/server/response/r;->f:Z

    iput-boolean v0, p0, Lcom/netease/mpay/server/response/r;->g:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/netease/mpay/server/response/r;->h:Ljava/lang/String;

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

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;JJZZLjava/lang/String;)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # J
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # J
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Z
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Z
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/netease/mpay/server/response/n;-><init>(I)V

    iput-object p2, p0, Lcom/netease/mpay/server/response/r;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/server/response/r;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/netease/mpay/server/response/r;->d:J

    iput-wide p6, p0, Lcom/netease/mpay/server/response/r;->e:J

    iput-boolean p8, p0, Lcom/netease/mpay/server/response/r;->f:Z

    iput-boolean p9, p0, Lcom/netease/mpay/server/response/r;->g:Z

    iput-object p10, p0, Lcom/netease/mpay/server/response/r;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6

    iget v0, p0, Lcom/netease/mpay/server/response/r;->a:I

    invoke-static {p1, v0}, Lcom/netease/mpay/server/response/t;->a(Landroid/content/Context;I)Lcom/netease/mpay/server/response/t;

    move-result-object v0

    iget v3, v0, Lcom/netease/mpay/server/response/t;->g:I

    iget-object v4, p0, Lcom/netease/mpay/server/response/r;->c:Ljava/lang/String;

    sget v5, Lcom/netease/mpay/widget/RIdentifier$e;->ay:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/netease/mpay/server/response/r;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 8

    iget v0, p0, Lcom/netease/mpay/server/response/r;->a:I

    invoke-static {p1, v0}, Lcom/netease/mpay/server/response/t;->a(Landroid/content/Context;I)Lcom/netease/mpay/server/response/t;

    move-result-object v0

    iget v4, v0, Lcom/netease/mpay/server/response/t;->f:I

    iget-object v5, p0, Lcom/netease/mpay/server/response/r;->b:Ljava/lang/String;

    sget v6, Lcom/netease/mpay/widget/RIdentifier$e;->ap:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/netease/mpay/server/response/r;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/ImageView;ILjava/lang/String;IZ)V

    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6

    iget v0, p0, Lcom/netease/mpay/server/response/r;->a:I

    invoke-static {p1, v0}, Lcom/netease/mpay/server/response/t;->a(Landroid/content/Context;I)Lcom/netease/mpay/server/response/t;

    move-result-object v0

    iget v3, v0, Lcom/netease/mpay/server/response/t;->f:I

    iget-object v4, p0, Lcom/netease/mpay/server/response/r;->b:Ljava/lang/String;

    sget v5, Lcom/netease/mpay/widget/RIdentifier$e;->ap:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/netease/mpay/server/response/r;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/server/response/r;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/netease/mpay/server/response/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/server/response/r;->b:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/netease/mpay/server/response/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
