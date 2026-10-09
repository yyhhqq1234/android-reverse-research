.class public Lcom/subao/common/m/b;
.super Ljava/lang/Object;
.source "MainHandler.java"

# interfaces
.implements Lcom/subao/common/m/a;


# static fields
.field private static final a:Lcom/subao/common/m/b;


# instance fields
.field private final b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/subao/common/m/b;

    invoke-direct {v0}, Lcom/subao/common/m/b;-><init>()V

    sput-object v0, Lcom/subao/common/m/b;->a:Lcom/subao/common/m/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/subao/common/m/b;->b:Landroid/os/Handler;

    .line 18
    return-void
.end method

.method public static a()Lcom/subao/common/m/a;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/subao/common/m/b;->a:Lcom/subao/common/m/b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/subao/common/m/b;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Runnable;J)Z
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/subao/common/m/b;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/subao/common/m/b;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 37
    return-void
.end method
