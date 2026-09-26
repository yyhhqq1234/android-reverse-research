.class public Lcom/netease/mpay/social/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/social/k$a;,
        Lcom/netease/mpay/social/k$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lcom/netease/mpay/social/h;

.field private d:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

.field private e:I

.field private f:Lcom/netease/mpay/social/a;

.field private g:Lcom/netease/mpay/social/a$a;

.field private h:Lcom/netease/mpay/social/k$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/mpay/social/k;->e:I

    iput-object p1, p0, Lcom/netease/mpay/social/k;->a:Landroid/content/Context;

    iput-object p4, p0, Lcom/netease/mpay/social/k;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/social/k;->a:Landroid/content/Context;

    invoke-static {v0, p2, p3}, Lcom/netease/mpay/social/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/social/k;->d:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    new-instance v0, Lcom/netease/mpay/social/h;

    iget-object v1, p0, Lcom/netease/mpay/social/k;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/mpay/social/k;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/social/k;->d:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mpay/social/h;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    iput-object v0, p0, Lcom/netease/mpay/social/k;->c:Lcom/netease/mpay/social/h;

    new-instance v0, Lcom/netease/mpay/social/a;

    iget-object v1, p0, Lcom/netease/mpay/social/k;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p3}, Lcom/netease/mpay/social/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/social/k;->f:Lcom/netease/mpay/social/a;

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

.method private a(I)I
    .locals 4

    const/16 v0, 0x1f4

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4069000000000000L    # 200.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method static synthetic a(Lcom/netease/mpay/social/k;)Lcom/netease/mpay/social/k$a;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/social/k;->h:Lcom/netease/mpay/social/k$a;

    return-object v0
.end method

.method private a(II)V
    .locals 12

    const/16 v3, 0xc8

    const/4 v10, 0x1

    move v4, v10

    :goto_0
    if-gt v4, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/netease/mpay/social/k;->c:Lcom/netease/mpay/social/h;

    iget-object v1, p0, Lcom/netease/mpay/social/k;->d:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    new-instance v5, Lcom/netease/mpay/social/k$b;

    invoke-direct {v5, p0, p1}, Lcom/netease/mpay/social/k$b;-><init>(Lcom/netease/mpay/social/k;I)V

    invoke-virtual/range {v0 .. v5}, Lcom/netease/mpay/social/h;->a(JIILcom/sina/weibo/sdk/net/RequestListener;)V

    goto :goto_1

    :pswitch_1
    iget-object v5, p0, Lcom/netease/mpay/social/k;->c:Lcom/netease/mpay/social/h;

    iget-object v0, p0, Lcom/netease/mpay/social/k;->d:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-int/lit8 v0, v4, -0x1

    mul-int/lit16 v9, v0, 0xc8

    new-instance v11, Lcom/netease/mpay/social/k$b;

    invoke-direct {v11, p0, p1}, Lcom/netease/mpay/social/k$b;-><init>(Lcom/netease/mpay/social/k;I)V

    move v8, v3

    invoke-virtual/range {v5 .. v11}, Lcom/netease/mpay/social/h;->a(JIIZLcom/sina/weibo/sdk/net/RequestListener;)V

    goto :goto_1

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lcom/netease/mpay/social/i;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/mpay/social/k;->e:I

    iget v0, p1, Lcom/netease/mpay/social/i;->F:I

    invoke-direct {p0, v0}, Lcom/netease/mpay/social/k;->a(I)I

    move-result v0

    iget v1, p0, Lcom/netease/mpay/social/k;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/netease/mpay/social/k;->e:I

    iget v1, p1, Lcom/netease/mpay/social/i;->p:I

    invoke-direct {p0, v1}, Lcom/netease/mpay/social/k;->a(I)I

    move-result v1

    iget v2, p0, Lcom/netease/mpay/social/k;->e:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/netease/mpay/social/k;->e:I

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0}, Lcom/netease/mpay/social/k;->a(II)V

    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/social/k;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/social/k;Lcom/netease/mpay/social/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/social/k;->a(Lcom/netease/mpay/social/i;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/social/k;)Lcom/netease/mpay/social/a$a;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/social/k;->g:Lcom/netease/mpay/social/a$a;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/mpay/social/k;)I
    .locals 1

    iget v0, p0, Lcom/netease/mpay/social/k;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/netease/mpay/social/k;->e:I

    return v0
.end method


# virtual methods
.method protected a(Lcom/netease/mpay/social/k$a;)V
    .locals 7

    const-wide/32 v5, 0x2a300

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Null LoadDataListener!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/netease/mpay/social/k;->h:Lcom/netease/mpay/social/k$a;

    iget-object v0, p0, Lcom/netease/mpay/social/k;->f:Lcom/netease/mpay/social/a;

    invoke-virtual {v0}, Lcom/netease/mpay/social/a;->a()Lcom/netease/mpay/social/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/social/k;->g:Lcom/netease/mpay/social/a$a;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-object v2, p0, Lcom/netease/mpay/social/k;->g:Lcom/netease/mpay/social/a$a;

    if-nez v2, :cond_1

    new-instance v2, Lcom/netease/mpay/social/a$a;

    invoke-direct {v2}, Lcom/netease/mpay/social/a$a;-><init>()V

    iput-object v2, p0, Lcom/netease/mpay/social/k;->g:Lcom/netease/mpay/social/a$a;

    iget-object v2, p0, Lcom/netease/mpay/social/k;->g:Lcom/netease/mpay/social/a$a;

    add-long v3, v0, v5

    iput-wide v3, v2, Lcom/netease/mpay/social/a$a;->a:J

    :cond_1
    iget-object v2, p0, Lcom/netease/mpay/social/k;->g:Lcom/netease/mpay/social/a$a;

    iget-object v2, v2, Lcom/netease/mpay/social/a$a;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/netease/mpay/social/k;->g:Lcom/netease/mpay/social/a$a;

    iget-wide v2, v2, Lcom/netease/mpay/social/a$a;->a:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_5

    :cond_2
    iget-object v2, p0, Lcom/netease/mpay/social/k;->g:Lcom/netease/mpay/social/a$a;

    iget-object v2, v2, Lcom/netease/mpay/social/a$a;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/16 v3, 0x7d0

    if-lt v2, v3, :cond_3

    iget-object v2, p0, Lcom/netease/mpay/social/k;->f:Lcom/netease/mpay/social/a;

    invoke-virtual {v2}, Lcom/netease/mpay/social/a;->b()V

    new-instance v2, Lcom/netease/mpay/social/a$a;

    invoke-direct {v2}, Lcom/netease/mpay/social/a$a;-><init>()V

    iput-object v2, p0, Lcom/netease/mpay/social/k;->g:Lcom/netease/mpay/social/a$a;

    iget-object v2, p0, Lcom/netease/mpay/social/k;->g:Lcom/netease/mpay/social/a$a;

    add-long/2addr v0, v5

    iput-wide v0, v2, Lcom/netease/mpay/social/a$a;->a:J

    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/social/k;->d:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    invoke-static {v0}, Lcom/netease/mpay/social/g;->a(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/netease/mpay/social/k;->h:Lcom/netease/mpay/social/k$a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/netease/mpay/social/k$a;->a(I)V

    :goto_0
    return-void

    :cond_4
    new-instance v0, Lcom/netease/mpay/social/j;

    iget-object v1, p0, Lcom/netease/mpay/social/k;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/mpay/social/k;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/social/k;->d:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mpay/social/j;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    iget-object v1, p0, Lcom/netease/mpay/social/k;->d:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    new-instance v3, Lcom/netease/mpay/social/l;

    invoke-direct {v3, p0}, Lcom/netease/mpay/social/l;-><init>(Lcom/netease/mpay/social/k;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/social/j;->a(JLcom/sina/weibo/sdk/net/RequestListener;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/netease/mpay/social/k;->h:Lcom/netease/mpay/social/k$a;

    iget-object v1, p0, Lcom/netease/mpay/social/k;->g:Lcom/netease/mpay/social/a$a;

    invoke-interface {v0, v1}, Lcom/netease/mpay/social/k$a;->a(Lcom/netease/mpay/social/a$a;)V

    goto :goto_0
.end method
