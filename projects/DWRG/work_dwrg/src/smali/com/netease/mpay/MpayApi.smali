.class public Lcom/netease/mpay/MpayApi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/MpayApi$a;
    }
.end annotation


# static fields
.field public static final LANGUAGE_AUTO:I = 0x0

.field public static final LANGUAGE_ZH_CN:I = 0x1

.field public static final LANGUAGE_ZH_HK:I = 0x2

.field public static final LANGUAGE_ZH_TW:I = 0x3

.field public static final PRODUCTION_ENVIRONMENT:Ljava/lang/String; = "Mpay_Product_Environment"

.field public static final QQ_API:Ljava/lang/String; = "qq"

.field public static final QR_LOGIN_EXTRA_KEY_JF_GAME_ID:Ljava/lang/String; = "jf_game_id"

.field public static final QR_LOGIN_EXTRA_KEY_PAY_CHANNEL:Ljava/lang/String; = "pay_channel"

.field public static final ScreenOrientation_Landscape:I = 0x2

.field public static final ScreenOrientation_Portrait:I = 0x1

.field public static final ScreenOrientation_Reverse_Landscape:I = 0x4

.field public static final ScreenOrientation_Sensor_Landscape:I = 0x3

.field public static final WEIBO_API:Ljava/lang/String; = "weibo"

.field public static final WEIXIN_API:Ljava/lang/String; = "weixin"

.field public static final WELCOME_WINDOW_TYPE_DEFAULT:I = 0x0

.field public static final WELCOME_WINDOW_TYPE_NONE:I = 0x2

.field public static final WELCOME_WINDOW_TYPE_TOAST:I = 0x1

.field public static final YIXIN_API:Ljava/lang/String; = "yixin"


# instance fields
.field a:Landroid/app/Activity;

.field b:Landroid/content/Context;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Lcom/netease/mpay/MpayConfig;

.field private final g:I

.field private final h:I

.field private i:Lcom/netease/mpay/AuthenticationCallback;

.field private j:Lcom/netease/mpay/BackgroundAuthenticationCallback;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    new-instance v6, Lcom/netease/mpay/MpayConfig;

    invoke-direct {v6}, Lcom/netease/mpay/MpayConfig;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/MpayApi;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;)V

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

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;)V
    .locals 7

    const/16 v4, 0xc

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v5, p0, Lcom/netease/mpay/MpayApi;->g:I

    iput v4, p0, Lcom/netease/mpay/MpayApi;->h:I

    new-instance v2, Lcom/netease/mpay/ig;

    invoke-direct {v2}, Lcom/netease/mpay/ig;-><init>()V

    invoke-virtual {v2, p1}, Lcom/netease/mpay/ig;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/netease/mpay/widget/RIdentifier;->init(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/netease/mpay/do;->a(Landroid/content/Context;)V

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "2.14.1"

    aput-object v3, v2, v1

    const-string v3, "b1fbce6de7"

    aput-object v3, v2, v0

    invoke-direct {p0, v2}, Lcom/netease/mpay/MpayApi;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/mpay/do;->b(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter MpayApi : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    aput-object p3, v3, v1

    invoke-static {p2, v5, v4}, Lcom/netease/mpay/widget/bd;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    aput-object p4, v3, v6

    aput-object p5, v3, v5

    const/4 v4, 0x4

    if-eqz p6, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-direct {p0, v3}, Lcom/netease/mpay/MpayApi;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->available(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Project Assests Error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    sget-object v0, Lcom/netease/mpay/bk;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/netease/mpay/MpayApi;->a(Z)V

    :cond_2
    iput-object p1, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/netease/mpay/MpayApi;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/netease/mpay/MpayApi;->a(Ljava/lang/String;)V

    const-string v0, "login"

    iput-object v0, p0, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    const-string v0, "pay"

    iput-object v0, p0, Lcom/netease/mpay/MpayApi;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/netease/mpay/MpayApi;->f:Lcom/netease/mpay/MpayConfig;

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/hi;->b(Landroid/app/Activity;)V

    invoke-static {}, Lcom/netease/mpay/hk;->a()Lcom/netease/mpay/hk;

    move-result-object v0

    invoke-virtual {v0, p2, p6}, Lcom/netease/mpay/hk;->a(Ljava/lang/String;Lcom/netease/mpay/MpayConfig;)V

    new-instance v0, Lcom/netease/mpay/e/b;

    invoke-direct {v0, p1, p2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->l()Lcom/netease/mpay/e/c/a;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/netease/mpay/e/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/netease/mpay/MpayApi;Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/netease/mpay/MpayApi;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/Map;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v1, "\u3010"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u3011"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/netease/mpay/gv;

    invoke-direct {v1, p0}, Lcom/netease/mpay/gv;-><init>(Lcom/netease/mpay/MpayApi;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;Ljava/lang/String;Lcom/netease/mpay/BackgroundAuthenticationCallback;Ljava/lang/Integer;)V
    .locals 4

    sget-object v0, Lcom/netease/mpay/b$a;->I:Lcom/netease/mpay/b$a;

    new-instance v1, Lcom/netease/mpay/b/l;

    new-instance v2, Lcom/netease/mpay/b/a$a;

    invoke-direct {v2, p1, p3, p2}, Lcom/netease/mpay/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;)V

    const-string v3, "1"

    invoke-direct {v1, v2, v3, p4}, Lcom/netease/mpay/b/l;-><init>(Lcom/netease/mpay/b/a$a;Ljava/lang/String;Lcom/netease/mpay/BackgroundAuthenticationCallback;)V

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p5}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    return-void
.end method

.method private a(Lcom/netease/mpay/AuthenticationCallback;Lcom/netease/mpay/QrCodeScannerCallback;Lcom/netease/mpay/codescanner/QrScannerOptions;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/b;->a()Lcom/netease/mpay/e/b/af;

    move-result-object v0

    iget-boolean v1, v0, Lcom/netease/mpay/e/b/af;->h:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/netease/mpay/e/b/af;->i:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/netease/mpay/e/b/af;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/netease/mpay/e/b/af;->i:Ljava/lang/String;

    :goto_0
    new-instance v1, Lcom/netease/mpay/widget/s;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->cJ:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/hf;

    invoke-direct {v3, p0}, Lcom/netease/mpay/hf;-><init>(Lcom/netease/mpay/MpayApi;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->cU:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    sget-object v7, Lcom/netease/mpay/b$a;->F:Lcom/netease/mpay/b$a;

    new-instance v0, Lcom/netease/mpay/b/v;

    new-instance v1, Lcom/netease/mpay/b/a$a;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/MpayApi;->f:Lcom/netease/mpay/MpayConfig;

    invoke-direct {v1, v2, v8, v3}, Lcom/netease/mpay/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;)V

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/b/v;-><init>(Lcom/netease/mpay/b/a$a;Ljava/lang/String;Lcom/netease/mpay/AuthenticationCallback;Lcom/netease/mpay/QrCodeScannerCallback;Lcom/netease/mpay/codescanner/QrScannerOptions;)V

    invoke-static {v6, v7, v0, v8, v8}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    goto :goto_1
.end method

.method private a(Lcom/netease/mpay/AuthenticationCallback;Ljava/lang/Integer;)V
    .locals 7

    iget-object v0, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    sget-object v1, Lcom/netease/mpay/b$a;->N:Lcom/netease/mpay/b$a;

    new-instance v2, Lcom/netease/mpay/b/k;

    new-instance v3, Lcom/netease/mpay/b/a$a;

    iget-object v4, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/mpay/MpayApi;->f:Lcom/netease/mpay/MpayConfig;

    invoke-direct {v3, v4, v5, v6}, Lcom/netease/mpay/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;)V

    invoke-direct {v2, v3, p1}, Lcom/netease/mpay/b/k;-><init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/AuthenticationCallback;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p2}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    return-void
.end method

.method private a(Lcom/netease/mpay/MpayApi$a;Ljava/lang/Integer;)V
    .locals 5

    iget-object v0, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/mpay/cz;->a(Landroid/content/Context;)Lcom/netease/mpay/cz;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    const/4 v3, 0x1

    new-instance v4, Lcom/netease/mpay/gz;

    invoke-direct {v4, p0, p2, p1}, Lcom/netease/mpay/gz;-><init>(Lcom/netease/mpay/MpayApi;Ljava/lang/Integer;Lcom/netease/mpay/MpayApi$a;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netease/mpay/cz;->a(Landroid/app/Activity;Ljava/lang/String;ZLcom/netease/mpay/cz$a;)V

    return-void
.end method

.method private a(Lcom/netease/mpay/MpayApi$a;[Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Lcom/netease/mpay/bk;->n:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/netease/mpay/bk;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v0, Lcom/netease/mpay/bk;->n:Ljava/util/ArrayList;

    sget-object v1, Lcom/netease/mpay/bk;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v4, v0

    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/MpayApi;->f:Lcom/netease/mpay/MpayConfig;

    sget-object v5, Lcom/netease/mpay/bk;->m:[Ljava/lang/String;

    invoke-static {v5, p2}, Lcom/netease/mpay/widget/bd;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/netease/mpay/widget/bd;->b([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/netease/mpay/gx;

    invoke-direct {v5, p0, p1, p3}, Lcom/netease/mpay/gx;-><init>(Lcom/netease/mpay/MpayApi;Lcom/netease/mpay/MpayApi$a;Ljava/lang/Integer;)V

    invoke-static/range {v0 .. v5}, Lcom/netease/mpay/widget/at;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;[Ljava/lang/String;Lcom/netease/mpay/ja$b;)V

    return-void

    :cond_0
    move-object v4, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/mpay/MpayApi;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/MpayApi;->a()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/MpayApi;Lcom/netease/mpay/AuthenticationCallback;Lcom/netease/mpay/QrCodeScannerCallback;Lcom/netease/mpay/codescanner/QrScannerOptions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/mpay/MpayApi;->a(Lcom/netease/mpay/AuthenticationCallback;Lcom/netease/mpay/QrCodeScannerCallback;Lcom/netease/mpay/codescanner/QrScannerOptions;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/MpayApi;Lcom/netease/mpay/AuthenticationCallback;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/MpayApi;->a(Lcom/netease/mpay/AuthenticationCallback;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/MpayApi;Lcom/netease/mpay/MpayApi$a;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/MpayApi;->a(Lcom/netease/mpay/MpayApi$a;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/MpayApi;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/MpayApi;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/MpayApi;Ljava/lang/String;Lcom/netease/mpay/e/b/o;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/MpayApi;->a(Ljava/lang/String;Lcom/netease/mpay/e/b/o;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/MpayApi;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/e/b/o;Ljava/lang/String;Ljava/lang/Integer;Lcom/netease/mpay/PaymentCallback;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/netease/mpay/MpayApi;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/e/b/o;Ljava/lang/String;Ljava/lang/Integer;Lcom/netease/mpay/PaymentCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/MpayApi;Ljava/lang/String;ZLjava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/MpayApi;->a(Ljava/lang/String;ZLjava/lang/Integer;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/MpayApi;ZLjava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/MpayApi;->a(ZLjava/lang/Integer;)V

    return-void
.end method

.method private a(Ljava/lang/Integer;)V
    .locals 8

    const/4 v5, 0x0

    new-instance v7, Lcom/netease/mpay/e/b;

    iget-object v0, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    invoke-direct {v7, v0, v1}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v4

    invoke-virtual {v7}, Lcom/netease/mpay/e/b;->d()Lcom/netease/mpay/e/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/c;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/netease/mpay/e/b/f;->i:[B

    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    iget-boolean v0, v4, Lcom/netease/mpay/e/b/o;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, v4, Lcom/netease/mpay/e/b/o;->m:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, v5, p1}, Lcom/netease/mpay/MpayApi;->a(ZLjava/lang/Integer;)V

    :goto_0
    return-void

    :cond_1
    iget v0, v4, Lcom/netease/mpay/e/b/o;->f:I

    invoke-static {v0}, Lcom/netease/mpay/e/a/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v7}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, v4, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    invoke-direct {p0, v5, p1}, Lcom/netease/mpay/MpayApi;->a(ZLjava/lang/Integer;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/netease/mpay/f/bm;

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    new-instance v6, Lcom/netease/mpay/fs;

    invoke-direct {v6, p0, v4, p1, v7}, Lcom/netease/mpay/fs;-><init>(Lcom/netease/mpay/MpayApi;Lcom/netease/mpay/e/b/o;Ljava/lang/Integer;Lcom/netease/mpay/e/b;)V

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/f/bm;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/e/b/o;ZLcom/netease/mpay/f/au$a;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/bm;->h()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/netease/mpay/e/b/o;Ljava/lang/Integer;)V
    .locals 11

    iget-object v7, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    sget-object v8, Lcom/netease/mpay/b$a;->B:Lcom/netease/mpay/b$a;

    new-instance v9, Lcom/netease/mpay/b/t;

    new-instance v10, Lcom/netease/mpay/b/a$a;

    iget-object v0, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->f:Lcom/netease/mpay/MpayConfig;

    invoke-direct {v10, v0, v1, v2}, Lcom/netease/mpay/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;)V

    new-instance v0, Lcom/netease/mpay/b/p$a;

    iget-object v2, p2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v3, p2, Lcom/netease/mpay/e/b/o;->e:Ljava/lang/String;

    iget-object v4, p2, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    iget v5, p2, Lcom/netease/mpay/e/b/o;->f:I

    iget-object v6, p2, Lcom/netease/mpay/e/b/o;->a:Ljava/lang/String;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/b/p$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "api"

    invoke-direct {v9, v10, v0, v1}, Lcom/netease/mpay/b/t;-><init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/b/p$a;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v7, v8, v9, v0, p3}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/e/b/o;Ljava/lang/String;Ljava/lang/Integer;Lcom/netease/mpay/PaymentCallback;)V
    .locals 13

    if-nez p1, :cond_1

    const-string v1, "Order Info Error"

    invoke-static {v1}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    if-eqz p6, :cond_0

    const/4 v1, 0x1

    sget-object v2, Lcom/netease/mpay/PaymentResult;->ORDER_EMPTY:Lcom/netease/mpay/PaymentResult;

    move-object/from16 v0, p6

    invoke-interface {v0, v1, v2}, Lcom/netease/mpay/PaymentCallback;->onFinish(ILcom/netease/mpay/PaymentResult;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    const-string v2, "netease_mpay"

    const-string v3, "loading.html"

    invoke-static {v1, v2, v3}, Lcom/netease/mpay/widget/bd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Asset Files Error"

    invoke-static {v1}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    if-eqz p6, :cond_0

    const/4 v1, 0x1

    sget-object v2, Lcom/netease/mpay/PaymentResult;->ASSETS_ERROR:Lcom/netease/mpay/PaymentResult;

    move-object/from16 v0, p6

    invoke-interface {v0, v1, v2}, Lcom/netease/mpay/PaymentCallback;->onFinish(ILcom/netease/mpay/PaymentResult;)V

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v8, Lcom/netease/mpay/gn;

    move-object/from16 v0, p6

    invoke-direct {v8, p0, v1, v0}, Lcom/netease/mpay/gn;-><init>(Lcom/netease/mpay/MpayApi;Landroid/os/Handler;Lcom/netease/mpay/PaymentCallback;)V

    iget-object v9, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    sget-object v10, Lcom/netease/mpay/b$a;->r:Lcom/netease/mpay/b$a;

    new-instance v11, Lcom/netease/mpay/b/p;

    new-instance v12, Lcom/netease/mpay/b/a$a;

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/MpayApi;->f:Lcom/netease/mpay/MpayConfig;

    invoke-direct {v12, v1, v2, v3}, Lcom/netease/mpay/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;)V

    new-instance v1, Lcom/netease/mpay/b/p$a;

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/netease/mpay/e/b/o;->e:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    move-object/from16 v0, p3

    iget v6, v0, Lcom/netease/mpay/e/b/o;->f:I

    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/netease/mpay/e/b/o;->a:Ljava/lang/String;

    move-object v2, p2

    invoke-direct/range {v1 .. v7}, Lcom/netease/mpay/b/p$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lcom/netease/mpay/b/p$b;

    invoke-direct {v2, p1, v8}, Lcom/netease/mpay/b/p$b;-><init>(Ljava/lang/String;Lcom/netease/mpay/PaymentCallback;)V

    invoke-direct {v11, v12, v1, v2}, Lcom/netease/mpay/b/p;-><init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/b/p$a;Lcom/netease/mpay/b/p$b;)V

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-static {v9, v10, v11, v1, v0}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;ZLjava/lang/Integer;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/netease/mpay/MpayApi;->a(ZLjava/lang/Integer;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->K:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/ft;

    invoke-direct {v2, p0, p2, p3}, Lcom/netease/mpay/ft;-><init>(Lcom/netease/mpay/MpayApi;ZLjava/lang/Integer;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(ZLjava/lang/Integer;)V
    .locals 8

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    new-instance v2, Lcom/netease/mpay/b/a$a;

    iget-object v3, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/MpayApi;->f:Lcom/netease/mpay/MpayConfig;

    invoke-direct {v2, v3, v4, v5}, Lcom/netease/mpay/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/netease/mpay/MpayApi;->i:Lcom/netease/mpay/AuthenticationCallback;

    move v5, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ZZZLcom/netease/mpay/AuthenticationCallback;Ljava/lang/Integer;)V

    return-void
.end method

.method private a(Lcom/netease/mpay/ExitCallback;Ljava/lang/Integer;)Z
    .locals 8

    const/4 v0, 0x1

    const-string v1, "Enter exitGame"

    invoke-static {v1}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/mpay/hy;->a()V

    new-instance v1, Lcom/netease/mpay/e/b;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/e/c/b;->a()Lcom/netease/mpay/e/b/af;

    move-result-object v1

    iget-boolean v1, v1, Lcom/netease/mpay/e/b/af;->j:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/netease/mpay/ce;->a(Lcom/netease/mpay/ExitCallback;)V

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    sget-object v2, Lcom/netease/mpay/b$a;->g:Lcom/netease/mpay/b$a;

    new-instance v3, Lcom/netease/mpay/b/k;

    new-instance v4, Lcom/netease/mpay/b/a$a;

    iget-object v5, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/mpay/MpayApi;->f:Lcom/netease/mpay/MpayConfig;

    invoke-direct {v4, v5, v6, v7}, Lcom/netease/mpay/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;)V

    iget-object v5, p0, Lcom/netease/mpay/MpayApi;->i:Lcom/netease/mpay/AuthenticationCallback;

    invoke-direct {v3, v4, v5}, Lcom/netease/mpay/b/k;-><init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/AuthenticationCallback;)V

    new-instance v4, Lcom/netease/mpay/b$b;

    invoke-direct {v4, v0}, Lcom/netease/mpay/b$b;-><init>(Z)V

    invoke-static {v1, v2, v3, v4, p2}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private b()V
    .locals 11

    invoke-direct {p0}, Lcom/netease/mpay/MpayApi;->d()V

    new-instance v6, Lcom/netease/mpay/e/b;

    iget-object v0, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    invoke-direct {v6, v0, v1}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/b;->a()Lcom/netease/mpay/e/b/af;

    move-result-object v7

    invoke-virtual {v6}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v8

    iget-boolean v0, v7, Lcom/netease/mpay/e/b/af;->f:Z

    if-eqz v0, :cond_0

    iget v0, v8, Lcom/netease/mpay/e/b/o;->f:I

    invoke-static {v0}, Lcom/netease/mpay/e/a/a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v6}, Lcom/netease/mpay/e/b;->a()Lcom/netease/mpay/e/c/l;

    move-result-object v0

    iget-object v1, v8, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/l;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/b/r;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/mpay/f/y;

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    sget-object v4, Lcom/netease/mpay/f/y$a;->a:Lcom/netease/mpay/f/y$a;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/f/y;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/y$a;Lcom/netease/mpay/f/a/b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/y;->h()V

    :cond_0
    iget-boolean v0, v7, Lcom/netease/mpay/e/b/af;->e:Z

    if-eqz v0, :cond_1

    if-eqz v8, :cond_1

    iget-object v0, v8, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v6}, Lcom/netease/mpay/e/b;->a()Lcom/netease/mpay/e/c/l;

    move-result-object v0

    iget-object v1, v8, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/l;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/r;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netease/mpay/e/b/r;->c:Z

    invoke-virtual {v6}, Lcom/netease/mpay/e/b;->a()Lcom/netease/mpay/e/c/l;

    move-result-object v1

    iget-object v2, v8, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/netease/mpay/e/c/l;->a(Ljava/lang/String;Lcom/netease/mpay/e/b/r;)V

    :cond_1
    if-eqz v8, :cond_4

    iget v0, v8, Lcom/netease/mpay/e/b/o;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/server/response/u;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/server/response/u;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/netease/mpay/server/response/u;->b(I)Lcom/netease/mpay/server/response/r;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v6}, Lcom/netease/mpay/e/b;->k()Lcom/netease/mpay/e/c/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/e/c/g;->c()Lcom/netease/mpay/e/b/l;

    move-result-object v3

    iget v4, v8, Lcom/netease/mpay/e/b/o;->g:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    iget-boolean v4, v3, Lcom/netease/mpay/e/b/l;->a:Z

    if-eqz v4, :cond_7

    iget-boolean v4, v3, Lcom/netease/mpay/e/b/l;->c:Z

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lcom/netease/mpay/server/response/r;->f:Z

    if-nez v4, :cond_3

    :cond_2
    iget-wide v4, v3, Lcom/netease/mpay/e/b/l;->b:J

    sub-long v4, v1, v4

    iget-wide v9, v0, Lcom/netease/mpay/server/response/r;->e:J

    cmp-long v0, v4, v9

    if-lez v0, :cond_6

    :cond_3
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/netease/mpay/e/b/l;->a:Z

    iput-wide v1, v3, Lcom/netease/mpay/e/b/l;->b:J

    const/4 v0, 0x0

    iput-boolean v0, v3, Lcom/netease/mpay/e/b/l;->c:Z

    invoke-virtual {v6}, Lcom/netease/mpay/e/b;->k()Lcom/netease/mpay/e/c/g;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/netease/mpay/e/c/g;->a(Lcom/netease/mpay/e/b/l;)V

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->M:I

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Lcom/netease/mpay/cq;->a(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->f:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/hc;

    invoke-direct {v3, p0}, Lcom/netease/mpay/hc;-><init>(Lcom/netease/mpay/MpayApi;)V

    iget-object v4, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    sget v5, Lcom/netease/mpay/widget/RIdentifier$h;->dT:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    :cond_4
    if-nez v8, :cond_c

    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/netease/mpay/hy;->a(Ljava/lang/String;)V

    iget-boolean v0, v7, Lcom/netease/mpay/e/b/af;->F:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    sget-object v1, Lcom/netease/mpay/b$a;->L:Lcom/netease/mpay/b$a;

    new-instance v2, Lcom/netease/mpay/b/ah;

    new-instance v3, Lcom/netease/mpay/b/a$a;

    iget-object v4, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/mpay/MpayApi;->f:Lcom/netease/mpay/MpayConfig;

    invoke-direct {v3, v4, v5, v6}, Lcom/netease/mpay/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;)V

    sget-object v4, Lcom/netease/mpay/f/an$a;->t:Lcom/netease/mpay/f/an$a;

    invoke-direct {v2, v3, v4}, Lcom/netease/mpay/b/ah;-><init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/f/an$a;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    :cond_5
    return-void

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    iget-wide v4, v3, Lcom/netease/mpay/e/b/l;->b:J

    const-wide/16 v9, 0x0

    cmp-long v4, v4, v9

    if-gtz v4, :cond_8

    iput-wide v1, v3, Lcom/netease/mpay/e/b/l;->b:J

    invoke-virtual {v6}, Lcom/netease/mpay/e/b;->k()Lcom/netease/mpay/e/c/g;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/netease/mpay/e/c/g;->a(Lcom/netease/mpay/e/b/l;)V

    :cond_8
    iget-boolean v4, v3, Lcom/netease/mpay/e/b/l;->c:Z

    if-eqz v4, :cond_9

    iget-boolean v4, v0, Lcom/netease/mpay/server/response/r;->f:Z

    if-nez v4, :cond_a

    :cond_9
    iget-wide v4, v3, Lcom/netease/mpay/e/b/l;->b:J

    sub-long v4, v1, v4

    iget-wide v9, v0, Lcom/netease/mpay/server/response/r;->d:J

    cmp-long v0, v4, v9

    if-lez v0, :cond_b

    :cond_a
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_c
    iget-object v0, v8, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static b(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;Ljava/lang/String;Lcom/netease/mpay/BackgroundAuthenticationCallback;Ljava/lang/Integer;)V
    .locals 4

    sget-object v0, Lcom/netease/mpay/b$a;->I:Lcom/netease/mpay/b$a;

    new-instance v1, Lcom/netease/mpay/b/l;

    new-instance v2, Lcom/netease/mpay/b/a$a;

    invoke-direct {v2, p1, p3, p2}, Lcom/netease/mpay/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;)V

    const-string v3, "2"

    invoke-direct {v1, v2, v3, p4}, Lcom/netease/mpay/b/l;-><init>(Lcom/netease/mpay/b/a$a;Ljava/lang/String;Lcom/netease/mpay/BackgroundAuthenticationCallback;)V

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p5}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/MpayApi;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/MpayApi;->c()V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/MpayApi;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/MpayApi;->b(Ljava/lang/Integer;)V

    return-void
.end method

.method private b(Ljava/lang/Integer;)V
    .locals 7

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->bX:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->bz:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/gu;

    invoke-direct {v3, p0, p1}, Lcom/netease/mpay/gu;-><init>(Lcom/netease/mpay/MpayApi;Ljava/lang/Integer;)V

    iget-object v4, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    sget v5, Lcom/netease/mpay/widget/RIdentifier$h;->g:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/netease/mpay/gw;

    invoke-direct {v5, p0}, Lcom/netease/mpay/gw;-><init>(Lcom/netease/mpay/MpayApi;)V

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method private c()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/mpay/MpayApi;->d()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/netease/mpay/hy;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/MpayApi;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/MpayApi;->b()V

    return-void
.end method

.method public static changeENV(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static changeTrackerKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic d(Lcom/netease/mpay/MpayApi;)Lcom/netease/mpay/AuthenticationCallback;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/MpayApi;->i:Lcom/netease/mpay/AuthenticationCallback;

    return-object v0
.end method

.method private d()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/MpayApi;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/netease/mpay/MpayApi;)Lcom/netease/mpay/BackgroundAuthenticationCallback;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/MpayApi;->j:Lcom/netease/mpay/BackgroundAuthenticationCallback;

    return-object v0
.end method

.method private e()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.14.1"

    return-object v0
.end method

.method public static resetApp(Landroid/content/Context;)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/netease/mpay/bk;->c:Ljava/lang/Boolean;

    const-string v0, "Mpay_Product_Environment"

    sput-object v0, Lcom/netease/mpay/bk;->f:Ljava/lang/String;

    const-string v0, "https://service.mkey.163.com/mpay"

    sput-object v0, Lcom/netease/mpay/bk;->g:Ljava/lang/String;

    const-string v0, "https://mailbox.g.mkey.163.com/mpay/api/mailbox"

    sput-object v0, Lcom/netease/mpay/bk;->i:Ljava/lang/String;

    const-string v0, "u6uosOYKqABvK8GkMBrb1hnzk7CnS7ud"

    sput-object v0, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    const-string v0, "https://service.mkey.163.com/mpay/errors/error_id_token"

    sput-object v0, Lcom/netease/mpay/bk;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/server/d;->b(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public authenticateUser()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/MpayApi;->authenticateUser(Ljava/lang/Integer;)V

    return-void
.end method

.method public authenticateUser(Ljava/lang/Integer;)V
    .locals 2

    const-string v0, "Enter authenticateUser"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    const-string v1, "authenticateUser"

    invoke-virtual {v0, v1}, Lcom/netease/mpay/hi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/hh;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/hh;-><init>(Lcom/netease/mpay/MpayApi;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/netease/mpay/MpayApi;->a(Lcom/netease/mpay/MpayApi$a;[Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public authenticateWeiboUser()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/MpayApi;->authenticateWeiboUser(Ljava/lang/Integer;)V

    return-void
.end method

.method public authenticateWeiboUser(Ljava/lang/Integer;)V
    .locals 6

    const-string v0, "Enter authenticateWeiboUser"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    const-string v1, "authenticateWeiboUser"

    invoke-virtual {v0, v1}, Lcom/netease/mpay/hi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->f:Lcom/netease/mpay/MpayConfig;

    iget-object v3, p0, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/MpayApi;->j:Lcom/netease/mpay/BackgroundAuthenticationCallback;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/netease/mpay/MpayApi;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;Ljava/lang/String;Lcom/netease/mpay/BackgroundAuthenticationCallback;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public backgroundAuthenticateExternalUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter backgroundAuthenticateExternalUser : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-direct {p0, v1}, Lcom/netease/mpay/MpayApi;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/MpayApi;->j:Lcom/netease/mpay/BackgroundAuthenticationCallback;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/f/q;

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    new-instance v7, Lcom/netease/mpay/fv;

    invoke-direct {v7, p0}, Lcom/netease/mpay/fv;-><init>(Lcom/netease/mpay/MpayApi;)V

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/f/q;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/au$a;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/q;->h()V

    goto :goto_0
.end method

.method public backgroundAuthenticateUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v7, 0x0

    const-string v0, "Enter backgroundAuthenticateUser"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/MpayApi;->j:Lcom/netease/mpay/BackgroundAuthenticationCallback;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/f/br;

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    const/4 v6, -0x1

    new-instance v9, Lcom/netease/mpay/fu;

    invoke-direct {v9, p0}, Lcom/netease/mpay/fu;-><init>(Lcom/netease/mpay/MpayApi;)V

    move-object v4, p1

    move-object v5, p2

    move v8, v7

    invoke-direct/range {v0 .. v9}, Lcom/netease/mpay/f/br;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLcom/netease/mpay/f/au$a;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/br;->h()V

    goto :goto_0
.end method

.method public bindGuestUser()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/MpayApi;->bindGuestUser(Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public bindGuestUser(Ljava/lang/Integer;)Z
    .locals 2

    const-string v0, "Enter bindGuestUser"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    const-string v1, "bindGuestUser"

    invoke-virtual {v0, v1}, Lcom/netease/mpay/hi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/netease/mpay/gq;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/gq;-><init>(Lcom/netease/mpay/MpayApi;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/netease/mpay/MpayApi;->a(Lcom/netease/mpay/MpayApi$a;[Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public disableLogin(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter disableLogin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/netease/mpay/server/response/t;->a(I)V

    return-void
.end method

.method public enableQQSSO(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Enter enableQQSSO"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/netease/mpay/auth/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public enableSinaWeiboSSO(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Enter enableSinaWeiboSSO"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netease/mpay/hi;->l:Z

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iput-object p1, v0, Lcom/netease/mpay/hi;->m:Ljava/lang/String;

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iput-object p2, v0, Lcom/netease/mpay/hi;->n:Ljava/lang/String;

    return-void
.end method

.method public enableWeixinSSO(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Enter enableWeixinSSO"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/netease/mpay/auth/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public exitGame(Lcom/netease/mpay/ExitCallback;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/MpayApi;->a(Lcom/netease/mpay/ExitCallback;Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public externalUserPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/netease/mpay/PaymentCallback;)V
    .locals 8

    const/4 v4, 0x3

    const/4 v7, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter externalUserPay : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v7

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-direct {p0, v1}, Lcom/netease/mpay/MpayApi;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    const-string v1, "externalUserPay"

    invoke-virtual {v0, v1}, Lcom/netease/mpay/hi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->d()Lcom/netease/mpay/e/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/e/c/c;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v2, v3, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v3, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    if-nez v2, :cond_3

    :cond_2
    const-string v0, "LOGOUT"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    if-eqz p5, :cond_0

    sget-object v0, Lcom/netease/mpay/PaymentResult;->USER_ERROR:Lcom/netease/mpay/PaymentResult;

    invoke-interface {p5, v4, v0}, Lcom/netease/mpay/PaymentCallback;->onFinish(ILcom/netease/mpay/PaymentResult;)V

    goto :goto_0

    :cond_3
    invoke-static {v3}, Lcom/netease/mpay/e/b/j;->a(Lcom/netease/mpay/e/b/o;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Lcom/netease/mpay/e/b/j;->b(Lcom/netease/mpay/e/b/o;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Lcom/netease/mpay/e/b/j;->c(Lcom/netease/mpay/e/b/o;)Ljava/lang/String;

    move-result-object v4

    iget v6, v3, Lcom/netease/mpay/e/b/o;->f:I

    invoke-static {v6}, Lcom/netease/mpay/e/a/a;->a(I)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v2, :cond_4

    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    const-string v0, "User Error"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    if-eqz p5, :cond_0

    sget-object v0, Lcom/netease/mpay/PaymentResult;->USER_ERROR:Lcom/netease/mpay/PaymentResult;

    invoke-interface {p5, v7, v0}, Lcom/netease/mpay/PaymentCallback;->onFinish(ILcom/netease/mpay/PaymentResult;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v2, v3, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget v5, v3, Lcom/netease/mpay/e/b/o;->f:I

    invoke-virtual {v3, v7}, Lcom/netease/mpay/e/b/o;->a(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v2, v5, v6}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v2, v1, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/MpayApi;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/e/b/o;Ljava/lang/String;Ljava/lang/Integer;Lcom/netease/mpay/PaymentCallback;)V

    goto/16 :goto_0
.end method

.method public getApiPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getAuthenticatedUser()Lcom/netease/mpay/User;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "Enter getAuthenticatedUser"

    invoke-static {v1}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/netease/mpay/e/b;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-boolean v3, v2, Lcom/netease/mpay/e/b/o;->m:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->d()Lcom/netease/mpay/e/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/e/c/c;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v1, Lcom/netease/mpay/User;

    iget-object v3, v3, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Lcom/netease/mpay/User;-><init>(Ljava/lang/String;Lcom/netease/mpay/e/b/o;)V

    iget-object v2, v1, Lcom/netease/mpay/User;->uid:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/netease/mpay/User;->token:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/netease/mpay/User;->devId:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public getDeviceTicket(Lcom/netease/mpay/DeviceTicketCallback;)V
    .locals 5

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/f/w;

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    new-instance v4, Lcom/netease/mpay/gl;

    invoke-direct {v4, p0, p1}, Lcom/netease/mpay/gl;-><init>(Lcom/netease/mpay/MpayApi;Lcom/netease/mpay/DeviceTicketCallback;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/mpay/f/w;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/w;->h()V

    goto :goto_0
.end method

.method public getUserFriends(Lcom/netease/mpay/social/GetFriendsCallback;)V
    .locals 6

    const-string v0, "Enter getUserFriends"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Null GetFriendsCallback"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/e/c/b;->a()Lcom/netease/mpay/e/b/af;

    move-result-object v1

    iget-boolean v1, v1, Lcom/netease/mpay/e/b/af;->B:Z

    if-nez v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/netease/mpay/social/GetFriendsCallback;->onFailed(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    iget v0, v0, Lcom/netease/mpay/e/b/o;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mpay/hi;->l:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/hi;->m:Ljava/lang/String;

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/netease/mpay/social/GetFriendsCallback;->onFailed(I)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/netease/mpay/social/b;

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/hi;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/social/b;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/social/GetFriendsCallback;)V

    invoke-virtual {v0}, Lcom/netease/mpay/social/b;->a()V

    goto :goto_0
.end method

.method public getUserNickname()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "Enter getUserNickname"

    invoke-static {v1}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/netease/mpay/e/b;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/netease/mpay/e/b/o;->m:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/netease/mpay/e/b/o;->l:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, v1, Lcom/netease/mpay/e/b/o;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v1, Lcom/netease/mpay/e/b/o;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUserTicket(Lcom/netease/mpay/UserTicketCallback;)V
    .locals 5

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/f/ad;

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    new-instance v4, Lcom/netease/mpay/gk;

    invoke-direct {v4, p0, p1}, Lcom/netease/mpay/gk;-><init>(Lcom/netease/mpay/MpayApi;Lcom/netease/mpay/UserTicketCallback;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/mpay/f/ad;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/ad;->h()V

    goto :goto_0
.end method

.method public getUserWeiboInfo(Lcom/netease/mpay/social/GetFriendsCallback;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "Enter getUserWeiboInfo"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Null GetFriendsCallback"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    iget v0, v0, Lcom/netease/mpay/e/b/o;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mpay/hi;->l:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/hi;->m:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_1
    invoke-interface {p1, v3}, Lcom/netease/mpay/social/GetFriendsCallback;->onFailed(I)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/social/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/social/g;->a(Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p1, v3}, Lcom/netease/mpay/social/GetFriendsCallback;->onFailed(I)V

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/netease/mpay/social/j;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/hi;->m:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/netease/mpay/social/j;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    new-instance v0, Lcom/netease/mpay/gs;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/gs;-><init>(Lcom/netease/mpay/MpayApi;Lcom/netease/mpay/social/GetFriendsCallback;)V

    invoke-virtual {v1, v2, v3, v0}, Lcom/netease/mpay/social/j;->a(JLcom/sina/weibo/sdk/net/RequestListener;)V

    goto :goto_0
.end method

.method public hasNotification()Z
    .locals 7

    const/4 v1, 0x0

    const-string v0, "Enter hasNotification"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/e/c/b;->d()Lcom/netease/mpay/e/b/ak;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v4, v3, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->a()Lcom/netease/mpay/e/c/l;

    move-result-object v0

    iget-object v3, v3, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/netease/mpay/e/c/l;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/r;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mpay/e/b/r;->c:Z

    :goto_0
    iget-wide v3, v2, Lcom/netease/mpay/e/b/ak;->c:J

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    iget-wide v3, v2, Lcom/netease/mpay/e/b/ak;->c:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    :cond_0
    iget-boolean v2, v2, Lcom/netease/mpay/e/b/ak;->a:Z

    :goto_1
    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasNotification ? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    return v1

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public initThirdApiKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Enter initThirdApiKey"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string v0, "ApiKey Error"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "yixin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/netease/mpay/sharer/m;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "weixin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lcom/netease/mpay/sharer/l;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "weibo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Lcom/netease/mpay/sharer/k;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "qq"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/netease/mpay/sharer/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initThirdApiKeys(Ljava/util/HashMap;)V
    .locals 3

    const-string v0, "Enter initThirdApiKeys"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string v0, "ApiKeys Error"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/netease/mpay/MpayApi;->initThirdApiKey(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public logoutAuthenticatedTVUser()V
    .locals 3

    const-string v0, "Enter logoutAuthenticatedTVUser"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/e/c/k;->c(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/netease/mpay/MpayApi;->c()V

    goto :goto_0
.end method

.method public notifyOrderFinish(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyOrderFinish "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mpay/f/bo;

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/f/bo;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/bo;->h()V

    return-void
.end method

.method public openLink(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public pay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/netease/mpay/PaymentCallback;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter pay : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {p0, v1}, Lcom/netease/mpay/MpayApi;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    const-string v1, "pay"

    invoke-virtual {v0, v1}, Lcom/netease/mpay/hi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/gm;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/gm;-><init>(Lcom/netease/mpay/MpayApi;Ljava/lang/String;Lcom/netease/mpay/PaymentCallback;Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p3}, Lcom/netease/mpay/MpayApi;->a(Lcom/netease/mpay/MpayApi$a;[Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public prepareAlitvPayOrder(Ljava/lang/String;Lcom/netease/mpay/PrepareAlitvpayCallback;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter prepareAlitvPayOrder : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string v0, "PrepareAlitvpayCallback Error"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v0, v4, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v4, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v0, v4, Lcom/netease/mpay/e/b/o;->f:I

    invoke-static {v0}, Lcom/netease/mpay/e/a/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "LOGOUT"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    const-string v0, "User not logged in!"

    invoke-interface {p2, v0}, Lcom/netease/mpay/PrepareAlitvpayCallback;->onFailed(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/netease/mpay/f/b;

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    new-instance v6, Lcom/netease/mpay/gr;

    invoke-direct {v6, p0, p2}, Lcom/netease/mpay/gr;-><init>(Lcom/netease/mpay/MpayApi;Lcom/netease/mpay/PrepareAlitvpayCallback;)V

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/f/b;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/b;->h()V

    goto :goto_0
.end method

.method public prepayNeteaseCoin()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/MpayApi;->prepayNeteaseCoin(Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public prepayNeteaseCoin(Ljava/lang/Integer;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v0, 0x0

    const-string v1, "Enter prepayNeteaseCoin"

    invoke-static {v1}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v1

    const-string v2, "prepayNeteaseCoin"

    invoke-virtual {v1, v2}, Lcom/netease/mpay/hi;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v1, Lcom/netease/mpay/e/b;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/e/c/b;->a()Lcom/netease/mpay/e/b/af;

    move-result-object v2

    iget-boolean v2, v2, Lcom/netease/mpay/e/b/af;->g:Z

    if-nez v2, :cond_1

    const-string v1, "Prepay Channel Closed"

    invoke-static {v1}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v6

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->d()Lcom/netease/mpay/e/c/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/e/c/c;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v2, v7, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v7, Lcom/netease/mpay/e/b/f;->i:[B

    if-eqz v2, :cond_2

    if-eqz v6, :cond_2

    iget v2, v6, Lcom/netease/mpay/e/b/o;->f:I

    invoke-static {v2}, Lcom/netease/mpay/e/a/a;->c(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, v6, Lcom/netease/mpay/e/b/o;->l:Z

    if-eqz v2, :cond_2

    iget-boolean v2, v6, Lcom/netease/mpay/e/b/o;->m:Z

    if-nez v2, :cond_3

    :cond_2
    const-string v1, "LOGOUT"

    invoke-static {v1}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, v6, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget v2, v6, Lcom/netease/mpay/e/b/o;->f:I

    invoke-virtual {v6, v8}, Lcom/netease/mpay/e/b/o;->a(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x7

    iget v1, v6, Lcom/netease/mpay/e/b/o;->f:I

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/netease/mpay/f/ay;

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->f:Lcom/netease/mpay/MpayConfig;

    iget-object v3, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/MpayApi;->e:Ljava/lang/String;

    new-instance v5, Lcom/netease/mpay/gp;

    invoke-direct {v5, p0, v7, v6, p1}, Lcom/netease/mpay/gp;-><init>(Lcom/netease/mpay/MpayApi;Lcom/netease/mpay/e/b/f;Lcom/netease/mpay/e/b/o;Ljava/lang/Integer;)V

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/f/ay;-><init>(Landroid/app/Activity;Lcom/netease/mpay/MpayConfig;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/ay$a;Lcom/netease/mpay/e/b/o;Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/ay;->h()V

    :goto_1
    move v0, v8

    goto :goto_0

    :cond_4
    iget-object v0, v7, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    invoke-direct {p0, v0, v6, p1}, Lcom/netease/mpay/MpayApi;->a(Ljava/lang/String;Lcom/netease/mpay/e/b/o;Ljava/lang/Integer;)V

    goto :goto_1
.end method

.method public presentQRCodeScanner(Ljava/util/HashMap;Lcom/netease/mpay/QrCodeScannerCallback;Lcom/netease/mpay/codescanner/QrScannerOptions;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter scancode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter scancode ext: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    const-string v1, "presentQRCodeScanner"

    invoke-virtual {v0, v1}, Lcom/netease/mpay/hi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/netease/mpay/MpayApi;->e()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cT:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->cJ:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/hd;

    invoke-direct {v3, p0}, Lcom/netease/mpay/hd;-><init>(Lcom/netease/mpay/MpayApi;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/netease/mpay/he;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netease/mpay/he;-><init>(Lcom/netease/mpay/MpayApi;Ljava/util/HashMap;Lcom/netease/mpay/QrCodeScannerCallback;Lcom/netease/mpay/codescanner/QrScannerOptions;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.CAMERA"

    aput-object v3, v1, v2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/netease/mpay/MpayApi;->a(Lcom/netease/mpay/MpayApi$a;[Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public quickAuthenticateUser()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/MpayApi;->quickAuthenticateUser(Ljava/lang/Integer;)V

    return-void
.end method

.method public quickAuthenticateUser(Ljava/lang/Integer;)V
    .locals 2

    const-string v0, "Enter quickAuthenticateUser"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    const-string v1, "quickAuthenticateUser"

    invoke-virtual {v0, v1}, Lcom/netease/mpay/hi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/fw;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/fw;-><init>(Lcom/netease/mpay/MpayApi;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/netease/mpay/MpayApi;->a(Lcom/netease/mpay/MpayApi$a;[Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public refreshAuthenticatedUser(Lcom/netease/mpay/RefreshAuthenticatedUserCallback;)V
    .locals 7

    const-string v0, "Enter refreshAuthenticatedUser"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v4

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->d()Lcom/netease/mpay/e/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/c;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/netease/mpay/e/b/f;->i:[B

    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    iget-boolean v0, v4, Lcom/netease/mpay/e/b/o;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, v4, Lcom/netease/mpay/e/b/o;->m:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->v:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/netease/mpay/RefreshAuthenticatedUserCallback;->onFail(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/netease/mpay/f/bm;

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Lcom/netease/mpay/gg;

    invoke-direct {v6, p0, p1}, Lcom/netease/mpay/gg;-><init>(Lcom/netease/mpay/MpayApi;Lcom/netease/mpay/RefreshAuthenticatedUserCallback;)V

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/f/bm;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/e/b/o;ZLcom/netease/mpay/f/au$a;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/bm;->h()V

    goto :goto_0
.end method

.method public registEnterGame(Ljava/util/ArrayList;Lcom/netease/mpay/AuthenticationCallback;)V
    .locals 4

    const-string v0, "registEnterGame:"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/netease/mpay/MpayApi;->setAuthenticationCallback(Lcom/netease/mpay/AuthenticationCallback;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    new-instance v2, Lcom/netease/mpay/hg;

    invoke-direct {v2, p0}, Lcom/netease/mpay/hg;-><init>(Lcom/netease/mpay/MpayApi;)V

    invoke-static {v0, v1, p1, v2}, Lcom/netease/mpay/bm;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/ArrayList;Lcom/netease/mpay/bm$a;)V

    return-void
.end method

.method public setAuthenticationCallback(Lcom/netease/mpay/AuthenticationCallback;)V
    .locals 2

    const-string v0, "Enter setAuthenticationCallback"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/netease/mpay/fm;

    invoke-direct {v1, p0, v0, p1}, Lcom/netease/mpay/fm;-><init>(Lcom/netease/mpay/MpayApi;Landroid/os/Handler;Lcom/netease/mpay/AuthenticationCallback;)V

    iput-object v1, p0, Lcom/netease/mpay/MpayApi;->i:Lcom/netease/mpay/AuthenticationCallback;

    return-void
.end method

.method public setBackgroundAuthenticationCallback(Lcom/netease/mpay/BackgroundAuthenticationCallback;)V
    .locals 2

    const-string v0, "Enter setBackgroundAuthenticationCallback"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/netease/mpay/gh;

    invoke-direct {v1, p0, v0, p1}, Lcom/netease/mpay/gh;-><init>(Lcom/netease/mpay/MpayApi;Landroid/os/Handler;Lcom/netease/mpay/BackgroundAuthenticationCallback;)V

    iput-object v1, p0, Lcom/netease/mpay/MpayApi;->j:Lcom/netease/mpay/BackgroundAuthenticationCallback;

    return-void
.end method

.method public setBackgroundMode(Z)V
    .locals 0

    return-void
.end method

.method public setLanguage(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter setLanguage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/netease/mpay/dc;->a(I)Lcom/netease/mpay/dc;

    move-result-object v0

    sput-object v0, Lcom/netease/mpay/bk;->a:Lcom/netease/mpay/dc;

    sget-object v0, Lcom/netease/mpay/bk;->a:Lcom/netease/mpay/dc;

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/dc;->a(Landroid/content/Context;)V

    return-void
.end method

.method public setRoleInfo(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 7

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter setRoleInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/netease/mpay/MpayApi;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v1, Lcom/netease/mpay/e/b;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v1, v4, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "Enter setRoleInfo, user has logout"

    invoke-static {v1}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/netease/mpay/f/bp;

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    new-instance v6, Lcom/netease/mpay/gt;

    invoke-direct {v6, p0}, Lcom/netease/mpay/gt;-><init>(Lcom/netease/mpay/MpayApi;)V

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/f/bp;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/e/b/o;Ljava/util/Map;Lcom/netease/mpay/f/bp$a;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/bp;->h()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public share(Lcom/netease/mpay/sharer/ShareContent;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netease/mpay/MpayApi;->share(Lcom/netease/mpay/sharer/ShareContent;Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public share(Lcom/netease/mpay/sharer/ShareContent;Ljava/lang/Integer;)Z
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "Enter share"

    invoke-static {v2}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netease/mpay/sharer/ShareContent;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/netease/mpay/sharer/d;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v2

    const-string v3, "share"

    invoke-virtual {v2, v3}, Lcom/netease/mpay/hi;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    sget-object v3, Lcom/netease/mpay/b$a;->h:Lcom/netease/mpay/b$a;

    new-instance v4, Lcom/netease/mpay/b/ab;

    new-instance v5, Lcom/netease/mpay/b/a$a;

    iget-object v6, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    iget-object v8, p0, Lcom/netease/mpay/MpayApi;->f:Lcom/netease/mpay/MpayConfig;

    invoke-direct {v5, v6, v7, v8}, Lcom/netease/mpay/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;)V

    iget-object v6, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    invoke-static {v6}, Lcom/netease/mpay/widget/bf;->a(Landroid/app/Activity;)Z

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, p1, v7}, Lcom/netease/mpay/b/ab;-><init>(Lcom/netease/mpay/b/a$a;ZLcom/netease/mpay/sharer/ShareContent;Ljava/lang/String;)V

    new-instance v5, Lcom/netease/mpay/b$b;

    invoke-direct {v5, v0}, Lcom/netease/mpay/b$b;-><init>(Z)V

    invoke-static {v2, v3, v4, v5, p2}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$a;->f:I

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public shareTo(Lcom/netease/mpay/sharer/ShareContent;I)Z
    .locals 2

    const-string v0, "Enter shareTo"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mpay/sharer/d;

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/sharer/d;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1, p2}, Lcom/netease/mpay/sharer/d;->a(Lcom/netease/mpay/sharer/ShareContent;I)Z

    move-result v0

    return v0
.end method

.method public showForumDialog()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Enter showForumDialog"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    const-string v1, "showForumDialog"

    invoke-virtual {v0, v1}, Lcom/netease/mpay/hi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/fz;

    invoke-direct {v0, p0}, Lcom/netease/mpay/fz;-><init>(Lcom/netease/mpay/MpayApi;)V

    invoke-direct {p0, v0, v2, v2}, Lcom/netease/mpay/MpayApi;->a(Lcom/netease/mpay/MpayApi$a;[Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public showMobileBindDialog(Lcom/netease/mpay/MobileBindCallback;Ljava/lang/Integer;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "Enter showMobileBindDialog"

    invoke-static {v1}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v1

    const-string v2, "showMobileBindDialog"

    invoke-virtual {v1, v2}, Lcom/netease/mpay/hi;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v1, Lcom/netease/mpay/e/b;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v2

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->d()Lcom/netease/mpay/e/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/e/c/c;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v1, v1, Lcom/netease/mpay/e/b/f;->i:[B

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    iget-boolean v1, v2, Lcom/netease/mpay/e/b/o;->l:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v2, Lcom/netease/mpay/e/b/o;->m:Z

    if-eqz v1, :cond_1

    iget v1, v2, Lcom/netease/mpay/e/b/o;->f:I

    invoke-static {v1}, Lcom/netease/mpay/e/a/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Lcom/netease/mpay/widget/s;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->v:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/netease/mpay/gd;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/netease/mpay/gd;-><init>(Lcom/netease/mpay/MpayApi;Landroid/os/Handler;Lcom/netease/mpay/MobileBindCallback;Ljava/lang/Integer;)V

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, p2}, Lcom/netease/mpay/MpayApi;->a(Lcom/netease/mpay/MpayApi$a;[Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public showRealnameDialog(Lcom/netease/mpay/SetRealnameCallback;Ljava/lang/Integer;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "Enter showRealnameDialog"

    invoke-static {v1}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v1

    const-string v2, "showRealnameDialog"

    invoke-virtual {v1, v2}, Lcom/netease/mpay/hi;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v1, Lcom/netease/mpay/e/b;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v2

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->d()Lcom/netease/mpay/e/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/e/c/c;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v1, v1, Lcom/netease/mpay/e/b/f;->i:[B

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    iget-boolean v1, v2, Lcom/netease/mpay/e/b/o;->l:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v2, Lcom/netease/mpay/e/b/o;->m:Z

    if-eqz v1, :cond_1

    iget v1, v2, Lcom/netease/mpay/e/b/o;->f:I

    invoke-static {v1}, Lcom/netease/mpay/e/a/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Lcom/netease/mpay/widget/s;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->v:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/netease/mpay/ga;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/netease/mpay/ga;-><init>(Lcom/netease/mpay/MpayApi;Landroid/os/Handler;Lcom/netease/mpay/SetRealnameCallback;Ljava/lang/Integer;)V

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, p2}, Lcom/netease/mpay/MpayApi;->a(Lcom/netease/mpay/MpayApi$a;[Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public showUserDialog()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/MpayApi;->showUserDialog(Ljava/lang/Integer;)V

    return-void
.end method

.method public showUserDialog(Ljava/lang/Integer;)V
    .locals 3

    const-string v0, "Enter showUserDialog"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    const-string v1, "showUserDialog"

    invoke-virtual {v0, v1}, Lcom/netease/mpay/hi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->d()Lcom/netease/mpay/e/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/c;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/netease/mpay/e/b/f;->i:[B

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-boolean v0, v1, Lcom/netease/mpay/e/b/o;->l:Z

    if-eqz v0, :cond_1

    iget-boolean v0, v1, Lcom/netease/mpay/e/b/o;->m:Z

    if-eqz v0, :cond_1

    iget v0, v1, Lcom/netease/mpay/e/b/o;->f:I

    invoke-static {v0}, Lcom/netease/mpay/e/a/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/netease/mpay/MpayApi;->authenticateUser(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/netease/mpay/fy;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/fy;-><init>(Lcom/netease/mpay/MpayApi;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/netease/mpay/MpayApi;->a(Lcom/netease/mpay/MpayApi$a;[Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public unregistEnterGame()V
    .locals 1

    const-string v0, "unregistEnterGame"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/mpay/bm;->a()V

    return-void
.end method

.method public ursRegister()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/MpayApi;->ursRegister(Ljava/lang/Integer;)V

    return-void
.end method

.method public ursRegister(Ljava/lang/Integer;)V
    .locals 6

    const-string v0, "Enter ursRegister"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    const-string v1, "ursRegister"

    invoke-virtual {v0, v1}, Lcom/netease/mpay/hi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/MpayApi;->f:Lcom/netease/mpay/MpayConfig;

    iget-object v3, p0, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/MpayApi;->j:Lcom/netease/mpay/BackgroundAuthenticationCallback;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/netease/mpay/MpayApi;->b(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;Ljava/lang/String;Lcom/netease/mpay/BackgroundAuthenticationCallback;Ljava/lang/Integer;)V

    goto :goto_0
.end method
