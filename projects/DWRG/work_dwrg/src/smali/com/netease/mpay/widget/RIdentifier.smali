.class public Lcom/netease/mpay/widget/RIdentifier;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/widget/RIdentifier$i;,
        Lcom/netease/mpay/widget/RIdentifier$h;,
        Lcom/netease/mpay/widget/RIdentifier$g;,
        Lcom/netease/mpay/widget/RIdentifier$f;,
        Lcom/netease/mpay/widget/RIdentifier$e;,
        Lcom/netease/mpay/widget/RIdentifier$d;,
        Lcom/netease/mpay/widget/RIdentifier$c;,
        Lcom/netease/mpay/widget/RIdentifier$b;,
        Lcom/netease/mpay/widget/RIdentifier$a;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Ljava/lang/String;

.field private static c:Lcom/netease/mpay/widget/RIdentifier;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/netease/mpay/widget/RIdentifier;->a:Landroid/content/Context;

    sget-object v0, Lcom/netease/mpay/widget/RIdentifier;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    sput-object p1, Lcom/netease/mpay/widget/RIdentifier;->a:Landroid/content/Context;

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/mpay/widget/RIdentifier;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {p0, p1}, Lcom/netease/mpay/widget/RIdentifier;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static final b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    :try_start_0
    sget-object v0, Lcom/netease/mpay/widget/RIdentifier;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/netease/mpay/widget/RIdentifier;->b:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/netease/mpay/do;->b(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    const-class v1, Lcom/netease/mpay/widget/RIdentifier;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/netease/mpay/widget/RIdentifier;->c:Lcom/netease/mpay/widget/RIdentifier;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/widget/RIdentifier;

    invoke-direct {v0, p0}, Lcom/netease/mpay/widget/RIdentifier;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/netease/mpay/widget/RIdentifier;->c:Lcom/netease/mpay/widget/RIdentifier;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
