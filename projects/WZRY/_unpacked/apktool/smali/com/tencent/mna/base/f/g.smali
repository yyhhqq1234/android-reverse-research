.class public final Lcom/tencent/mna/base/f/g;
.super Ljava/lang/Object;
.source "LocateUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/base/f/g$a;
    }
.end annotation


# static fields
.field private static a:Landroid/location/LocationManager;

.field private static b:Lcom/tencent/mna/base/f/g$a;

.field private static c:Z

.field private static d:Landroid/os/HandlerThread;

.field private static e:Landroid/os/Handler;

.field private static f:Ljava/lang/Runnable;

.field private static g:D

.field private static h:D

.field private static i:D

.field private static j:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mna/base/f/g;->c:Z

    .line 22
    new-instance v0, Lcom/tencent/mna/base/f/g$1;

    invoke-direct {v0}, Lcom/tencent/mna/base/f/g$1;-><init>()V

    sput-object v0, Lcom/tencent/mna/base/f/g;->f:Ljava/lang/Runnable;

    .line 38
    sput-wide v2, Lcom/tencent/mna/base/f/g;->g:D

    .line 39
    sput-wide v2, Lcom/tencent/mna/base/f/g;->h:D

    .line 40
    sput-wide v2, Lcom/tencent/mna/base/f/g;->i:D

    .line 41
    sput-wide v2, Lcom/tencent/mna/base/f/g;->j:D

    return-void
.end method

.method public static a()D
    .locals 2

    .prologue
    .line 77
    sget-wide v0, Lcom/tencent/mna/base/f/g;->g:D

    return-wide v0
.end method

.method static synthetic a(D)D
    .locals 0

    .prologue
    .line 12
    sput-wide p0, Lcom/tencent/mna/base/f/g;->g:D

    return-wide p0
.end method

.method static synthetic a(Landroid/location/LocationManager;)Landroid/location/LocationManager;
    .locals 0

    .prologue
    .line 12
    sput-object p0, Lcom/tencent/mna/base/f/g;->a:Landroid/location/LocationManager;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/mna/base/f/g$a;)Lcom/tencent/mna/base/f/g$a;
    .locals 0

    .prologue
    .line 12
    sput-object p0, Lcom/tencent/mna/base/f/g;->b:Lcom/tencent/mna/base/f/g$a;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 45
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "locate"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/mna/base/f/g;->d:Landroid/os/HandlerThread;

    .line 46
    sget-object v0, Lcom/tencent/mna/base/f/g;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 47
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/tencent/mna/base/f/g;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tencent/mna/base/f/g;->e:Landroid/os/Handler;

    .line 48
    sget-object v0, Lcom/tencent/mna/base/f/g;->e:Landroid/os/Handler;

    sget-object v1, Lcom/tencent/mna/base/f/g;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    sget-object v0, Lcom/tencent/mna/base/f/g;->e:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/mna/base/f/g$2;

    invoke-direct {v1, p0}, Lcom/tencent/mna/base/f/g$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 12
    sput-boolean p0, Lcom/tencent/mna/base/f/g;->c:Z

    return p0
.end method

.method public static b()D
    .locals 2

    .prologue
    .line 81
    sget-wide v0, Lcom/tencent/mna/base/f/g;->h:D

    return-wide v0
.end method

.method static synthetic b(D)D
    .locals 0

    .prologue
    .line 12
    sput-wide p0, Lcom/tencent/mna/base/f/g;->h:D

    return-wide p0
.end method

.method static synthetic c(D)D
    .locals 0

    .prologue
    .line 12
    sput-wide p0, Lcom/tencent/mna/base/f/g;->i:D

    return-wide p0
.end method

.method static synthetic c()Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/tencent/mna/base/f/g;->a:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic d(D)D
    .locals 0

    .prologue
    .line 12
    sput-wide p0, Lcom/tencent/mna/base/f/g;->j:D

    return-wide p0
.end method

.method static synthetic d()Lcom/tencent/mna/base/f/g$a;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/tencent/mna/base/f/g;->b:Lcom/tencent/mna/base/f/g$a;

    return-object v0
.end method

.method static synthetic e()Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/tencent/mna/base/f/g;->d:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/tencent/mna/base/f/g;->f:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic g()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/tencent/mna/base/f/g;->e:Landroid/os/Handler;

    return-object v0
.end method
