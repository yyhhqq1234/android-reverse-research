.class public Lcom/netease/mpay/MpayApp;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method private static a(Landroid/content/Context;)V
    .locals 5

    invoke-static {p0}, Lcom/netease/mpay/e/b;->a(Landroid/content/Context;)Lcom/netease/mpay/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->m()Lcom/netease/mpay/e/c/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/e/c/o;->a()Lcom/netease/mpay/e/b/aa;

    move-result-object v0

    iget-object v2, v0, Lcom/netease/mpay/e/b/aa;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/netease/mpay/e/b/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, v0, Lcom/netease/mpay/e/b/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/z;

    invoke-virtual {v0, p0}, Lcom/netease/mpay/e/b/z;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/netease/mpay/e/b/z$a;->b:Lcom/netease/mpay/e/b/z$a;

    iput-object v4, v0, Lcom/netease/mpay/e/b/z;->f:Lcom/netease/mpay/e/b/z$a;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/e/c/o;->a(Lcom/netease/mpay/e/b/z;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/netease/mpay/widget/rocoofix/RocooFix;->applyPatch(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/netease/mpay/e/b/z$a;->c:Lcom/netease/mpay/e/b/z$a;

    iput-object v4, v0, Lcom/netease/mpay/e/b/z;->f:Lcom/netease/mpay/e/b/z$a;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/e/c/o;->a(Lcom/netease/mpay/e/b/z;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static attachBaseContext(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/netease/mpay/widget/RIdentifier;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/netease/mpay/widget/rocoofix/RocooFix;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/netease/mpay/MpayApp;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static onCreate(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
