.class public Lcom/netease/mpay/server/response/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/server/response/n$a;
    }
.end annotation


# instance fields
.field public a:I


# direct methods
.method protected constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/netease/mpay/server/response/n;->a:I

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

.method private b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)Lcom/netease/mpay/server/response/n$a;
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/netease/mpay/server/response/n$a;

    if-lez p3, :cond_0

    :goto_0
    invoke-static {v1, p3}, Lcom/netease/mpay/widget/bf;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, p0, v1, v4}, Lcom/netease/mpay/server/response/n$a;-><init>(Lcom/netease/mpay/server/response/n;Landroid/graphics/drawable/Drawable;Z)V

    :goto_1
    return-object v0

    :cond_0
    move p3, p5

    goto :goto_0

    :cond_1
    invoke-static {p1, p2, p4}, Lcom/netease/mpay/e/c/j$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v0, Lcom/netease/mpay/server/response/n$a;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {v0, p0, v3, v4}, Lcom/netease/mpay/server/response/n$a;-><init>(Lcom/netease/mpay/server/response/n;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/netease/mpay/server/response/n$a;

    if-lez p3, :cond_3

    :goto_2
    invoke-static {v1, p3}, Lcom/netease/mpay/widget/bf;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/netease/mpay/server/response/n$a;-><init>(Lcom/netease/mpay/server/response/n;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_1

    :cond_3
    move p3, p5

    goto :goto_2
.end method


# virtual methods
.method protected a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/netease/mpay/server/response/n;->b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)Lcom/netease/mpay/server/response/n$a;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/server/response/n$a;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected a(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/ImageView;ILjava/lang/String;IZ)V
    .locals 8
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Z
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/server/response/n;->b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)Lcom/netease/mpay/server/response/n$a;

    move-result-object v0

    iget-object v1, v0, Lcom/netease/mpay/server/response/n$a;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/netease/mpay/server/response/n$a;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {p3, v1, p7}, Lcom/netease/mpay/widget/bf;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    iget-boolean v0, v0, Lcom/netease/mpay/server/response/n$a;->b:Z

    if-eqz v0, :cond_1

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3, p5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/netease/mpay/server/response/p;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move-object v5, p3

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/server/response/p;-><init>(Lcom/netease/mpay/server/response/n;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Z)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/netease/mpay/e/c/j$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/mpay/server/response/o;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netease/mpay/server/response/o;-><init>(Lcom/netease/mpay/server/response/n;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
