.class public Lcom/tencent/tp/MainThreadDispatcher;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tp/MainThreadDispatcher$a;,
        Lcom/tencent/tp/MainThreadDispatcher$NativeRunnable;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TssSDK"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/tp/MainThreadDispatcher;->handleNativeFuncCallback(JJ)V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/tp/MainThreadDispatcher$NativeRunnable;)V
    .locals 0

    invoke-static {p0}, Lcom/tencent/tp/MainThreadDispatcher;->handleNativeCallBack(Lcom/tencent/tp/MainThreadDispatcher$NativeRunnable;)V

    return-void
.end method

.method private static native handleNativeCallBack(Lcom/tencent/tp/MainThreadDispatcher$NativeRunnable;)V
.end method

.method private static native handleNativeFuncCallback(JJ)V
.end method

.method private static parseNativeRunnable(Lcom/tencent/tp/MainThreadDispatcher$NativeRunnable;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/tp/MainThreadDispatcher$a;

    invoke-direct {v0, p0}, Lcom/tencent/tp/MainThreadDispatcher$a;-><init>(Lcom/tencent/tp/MainThreadDispatcher$NativeRunnable;)V

    return-object v0
.end method

.method public static post(Lcom/tencent/tp/MainThreadDispatcher$NativeRunnable;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {p0}, Lcom/tencent/tp/MainThreadDispatcher;->parseNativeRunnable(Lcom/tencent/tp/MainThreadDispatcher$NativeRunnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static postAtTime(Lcom/tencent/tp/MainThreadDispatcher$NativeRunnable;J)V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {p0}, Lcom/tencent/tp/MainThreadDispatcher;->parseNativeRunnable(Lcom/tencent/tp/MainThreadDispatcher$NativeRunnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static postDelayed(Lcom/tencent/tp/MainThreadDispatcher$NativeRunnable;J)V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {p0}, Lcom/tencent/tp/MainThreadDispatcher;->parseNativeRunnable(Lcom/tencent/tp/MainThreadDispatcher$NativeRunnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
