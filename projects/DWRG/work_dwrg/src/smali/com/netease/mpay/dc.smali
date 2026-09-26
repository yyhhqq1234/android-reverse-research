.class public Lcom/netease/mpay/dc;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const-string v1, "ZH"

    const-string v2, "CN"

    invoke-direct {p0, v0, v1, v2}, Lcom/netease/mpay/dc;-><init>(ILjava/lang/String;Ljava/lang/String;)V

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

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/netease/mpay/dc;->a:I

    iput-object p2, p0, Lcom/netease/mpay/dc;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/dc;->c:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/netease/mpay/dc;
    .locals 1

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/netease/mpay/dc;->a(I)Lcom/netease/mpay/dc;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Lcom/netease/mpay/dc;
    .locals 4

    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lcom/netease/mpay/dc;

    invoke-direct {v0}, Lcom/netease/mpay/dc;-><init>()V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/netease/mpay/dc;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/netease/mpay/dc;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/netease/mpay/dc;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/netease/mpay/dc;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/netease/mpay/dc;

    const/4 v1, 0x2

    const-string v2, "ZH"

    const-string v3, "HK"

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mpay/dc;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/netease/mpay/dc;

    const/4 v1, 0x3

    const-string v2, "ZH"

    const-string v3, "TW"

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mpay/dc;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object p1, p2

    goto :goto_0

    :cond_2
    const-string p1, ""

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 5

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    iget v1, p0, Lcom/netease/mpay/dc;->a:I

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_4

    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, p0, Lcom/netease/mpay/dc;->a:I

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-le v3, v4, :cond_3

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    :goto_3
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/Locale;

    iget-object v3, p0, Lcom/netease/mpay/dc;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/dc;->c:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iput-object v0, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_3

    :cond_4
    move-object p1, v0

    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/netease/mpay/dc;->a:I

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/dc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, -0x1

    iget v1, p0, Lcom/netease/mpay/dc;->a:I

    if-ne v0, v1, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/dc;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/dc;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/dc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
