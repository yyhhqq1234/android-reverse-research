.class public Lcom/netease/mpay/e/b/k;
.super Lcom/netease/mpay/e/b/o$a;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/netease/mpay/e/b/o$a;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/e/b/k;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/e/b/k;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/e/b/k;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/e/b/k;->d:Ljava/lang/String;

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

.method public static a(Lcom/netease/mpay/e/b/o;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/netease/mpay/e/b/k;->a(Lcom/netease/mpay/e/b/o;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/e/b/o;->n:Ljava/util/HashMap;

    const-string v1, "ext_uid"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Lcom/netease/mpay/server/response/m;)Ljava/util/HashMap;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method


# virtual methods
.method a()Ljava/util/HashMap;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ext_uid"

    iget-object v2, p0, Lcom/netease/mpay/e/b/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ext_email"

    iget-object v2, p0, Lcom/netease/mpay/e/b/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ext_token"

    iget-object v2, p0, Lcom/netease/mpay/e/b/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ext_cache_name"

    iget-object v2, p0, Lcom/netease/mpay/e/b/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
