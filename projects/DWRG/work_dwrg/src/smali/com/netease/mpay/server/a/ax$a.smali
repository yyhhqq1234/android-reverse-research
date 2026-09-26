.class public Lcom/netease/mpay/server/a/ax$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/server/a/ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation


# static fields
.field static a:Lcom/netease/mpay/server/a/ax$a;


# instance fields
.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/netease/mpay/server/a/ax$a;->b:Ljava/lang/String;

    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/mpay/server/a/ax$a;->c:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/server/a/ax$a;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

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

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/netease/mpay/server/a/ax$a;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/netease/mpay/server/a/ax$a;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/netease/mpay/server/a/ax$a;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method static a(Landroid/content/Context;)Lcom/netease/mpay/server/a/ax$a;
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/netease/mpay/server/a/ax$a;->a:Lcom/netease/mpay/server/a/ax$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/server/a/ax$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/server/a/ax$a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/netease/mpay/server/a/ax$a;->a:Lcom/netease/mpay/server/a/ax$a;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/netease/mpay/server/a/ax$a;->a:Lcom/netease/mpay/server/a/ax$a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
