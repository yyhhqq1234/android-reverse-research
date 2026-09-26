.class public Lcom/netease/mpay/server/a/b/e;
.super Lcom/netease/mpay/server/a/b/n;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/netease/mpay/f/an$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/an$a;)V
    .locals 2

    const-string v0, "/api/users/login/mobile/user_help"

    invoke-direct {p0, v0}, Lcom/netease/mpay/server/a/b/n;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netease/mpay/server/a/b/e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/server/a/b/e;->d:Lcom/netease/mpay/f/an$a;

    iput-object p2, p0, Lcom/netease/mpay/server/a/b/e;->b:Ljava/lang/String;

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

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/an$a;)V
    .locals 1

    const-string v0, "/api/users/login/mobile/user_center"

    invoke-direct {p0, v0}, Lcom/netease/mpay/server/a/b/n;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netease/mpay/server/a/b/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/server/a/b/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/server/a/b/e;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/server/a/b/e;->d:Lcom/netease/mpay/f/an$a;

    return-void
.end method

.method private a(Lcom/netease/mpay/f/an$a;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    :pswitch_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/netease/mpay/server/a/b/f;->a:[I

    invoke-virtual {p1}, Lcom/netease/mpay/f/an$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    const-string v0, "offlinePasswordFind"

    goto :goto_0

    :pswitch_2
    const-string v0, "offAccountAppeal"

    goto :goto_0

    :pswitch_3
    const-string v0, "offAccountChange"

    goto :goto_0

    :pswitch_4
    const-string v0, "offAccountLock"

    goto :goto_0

    :pswitch_5
    const-string v0, "offAccountUnlock"

    goto :goto_0

    :pswitch_6
    const-string v0, "accountIndex"

    goto :goto_0

    :pswitch_7
    const-string v0, "accountChange"

    goto :goto_0

    :pswitch_8
    const-string v0, "passwordFind"

    goto :goto_0

    :pswitch_9
    const-string v0, "passwordSet"

    goto :goto_0

    :pswitch_a
    const-string v0, "secuEmailSet"

    goto :goto_0

    :pswitch_b
    const-string v0, "realNameSet"

    goto :goto_0

    :pswitch_c
    const-string v0, "accountAppeal"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/netease/mpay/widget/a/a;

    const-string v2, "device_id"

    iget-object v3, p0, Lcom/netease/mpay/server/a/b/e;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/netease/mpay/server/a/b/e;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/netease/mpay/widget/a/a;

    const-string v2, "token"

    iget-object v3, p0, Lcom/netease/mpay/server/a/b/e;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/netease/mpay/server/a/b/e;->d:Lcom/netease/mpay/f/an$a;

    invoke-direct {p0, v1}, Lcom/netease/mpay/server/a/b/e;->a(Lcom/netease/mpay/f/an$a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/netease/mpay/widget/a/a;

    const-string v3, "module"

    invoke-direct {v2, v3, v1}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/server/a/b/e;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/netease/mpay/widget/a/a;

    const-string v2, "urs_udid"

    iget-object v3, p0, Lcom/netease/mpay/server/a/b/e;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/widget/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method
