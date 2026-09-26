.class public Lcom/netease/mpay/sharer/d;
.super Ljava/lang/Object;


# static fields
.field private static c:Landroid/util/SparseArray;


# instance fields
.field a:Landroid/app/Activity;

.field b:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/netease/mpay/sharer/d;->c:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/sharer/d;->a:Landroid/app/Activity;

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

.method public static a(Lcom/netease/mpay/sharer/ShareContent;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sget-object v1, Lcom/netease/mpay/sharer/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(I)Lcom/netease/mpay/sharer/ShareContent;
    .locals 2

    sget-object v0, Lcom/netease/mpay/sharer/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/sharer/ShareContent;

    sget-object v1, Lcom/netease/mpay/sharer/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/netease/mpay/sharer/m;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/netease/mpay/sharer/l;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/netease/mpay/sharer/k;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/netease/mpay/sharer/a;->c(Landroid/content/Context;)Z

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


# virtual methods
.method public a(Lcom/netease/mpay/sharer/ShareContent;I)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/sharer/d;->b:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/sharer/d;->b:Landroid/util/SparseArray;

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/sharer/d;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/sharer/e;

    if-nez v0, :cond_2

    packed-switch p2, :pswitch_data_0

    move v0, v1

    goto :goto_0

    :pswitch_0
    :try_start_0
    new-instance v0, Lcom/netease/mpay/sharer/k;

    iget-object v2, p0, Lcom/netease/mpay/sharer/d;->a:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/netease/mpay/sharer/k;-><init>(Landroid/app/Activity;)V

    :cond_2
    :goto_1
    invoke-virtual {v0, p1, p2}, Lcom/netease/mpay/sharer/e;->a(Lcom/netease/mpay/sharer/ShareContent;I)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/netease/mpay/sharer/l;

    iget-object v2, p0, Lcom/netease/mpay/sharer/d;->a:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/netease/mpay/sharer/l;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :pswitch_2
    :try_start_1
    new-instance v0, Lcom/netease/mpay/sharer/m;

    iget-object v2, p0, Lcom/netease/mpay/sharer/d;->a:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/netease/mpay/sharer/m;-><init>(Landroid/app/Activity;)V

    goto :goto_1

    :pswitch_3
    new-instance v0, Lcom/netease/mpay/sharer/a;

    iget-object v2, p0, Lcom/netease/mpay/sharer/d;->a:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/netease/mpay/sharer/a;-><init>(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
