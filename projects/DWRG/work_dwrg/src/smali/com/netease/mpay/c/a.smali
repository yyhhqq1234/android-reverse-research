.class public Lcom/netease/mpay/c/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/c/a$a;,
        Lcom/netease/mpay/c/a$c;,
        Lcom/netease/mpay/c/a$b;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Lcom/netease/mpay/c/b;

.field private g:Ljava/util/Map;

.field private h:Ljava/util/concurrent/ExecutorService;

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6

    const/16 v4, 0x46

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;III)V

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

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/netease/mpay/c/a;->a:I

    iput p4, p0, Lcom/netease/mpay/c/a;->b:I

    iput p5, p0, Lcom/netease/mpay/c/a;->c:I

    iput-object p1, p0, Lcom/netease/mpay/c/a;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/mpay/c/a;->e:Ljava/lang/String;

    new-instance v0, Lcom/netease/mpay/c/b;

    invoke-direct {v0}, Lcom/netease/mpay/c/b;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/c/a;->f:Lcom/netease/mpay/c/b;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/c/a;->g:Ljava/util/Map;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/c/a;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/c/a;->i:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/c/a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/c/a;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/mpay/c/a;)I
    .locals 1

    iget v0, p0, Lcom/netease/mpay/c/a;->a:I

    return v0
.end method

.method private b(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3

    new-instance v0, Lcom/netease/mpay/c/a$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/mpay/c/a$b;-><init>(Lcom/netease/mpay/c/a;Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object v1, p0, Lcom/netease/mpay/c/a;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/netease/mpay/c/a$c;

    invoke-direct {v2, p0, v0}, Lcom/netease/mpay/c/a$c;-><init>(Lcom/netease/mpay/c/a;Lcom/netease/mpay/c/a$b;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/c/a;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/netease/mpay/c/a;->a:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/c/a;->f:Lcom/netease/mpay/c/b;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/c/b;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/c/a;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/mpay/c/a;->e:Ljava/lang/String;

    iget v2, p0, Lcom/netease/mpay/c/a;->b:I

    iget v3, p0, Lcom/netease/mpay/c/a;->c:I

    invoke-static {v0, v1, p1, v2, v3}, Lcom/netease/mpay/e/c/j$a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/netease/mpay/c/a;->f:Lcom/netease/mpay/c/b;

    invoke-virtual {v1, p1, v0}, Lcom/netease/mpay/c/b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/c/a;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/netease/mpay/c/a;->a:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/netease/mpay/c/a;->a:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/c/a;->g:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/netease/mpay/c/a;->f:Lcom/netease/mpay/c/b;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/c/b;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/c/a;->b(Ljava/lang/String;Landroid/widget/ImageView;)V

    iget v0, p0, Lcom/netease/mpay/c/a;->a:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method a(Lcom/netease/mpay/c/a$b;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netease/mpay/c/a$b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
