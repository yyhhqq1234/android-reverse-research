.class public final Lcom/onesignal/Continue;
.super Ljava/lang/Object;
.source "Continue.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0000\u0010\u0005H\u0007J2\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0000\u0010\u00052\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00050\t0\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onesignal/Continue;",
        "",
        "()V",
        "none",
        "Lkotlin/coroutines/Continuation;",
        "R",
        "with",
        "onFinished",
        "Ljava/util/function/Consumer;",
        "Lcom/onesignal/ContinueResult;",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "com.onesignal.core"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onesignal/Continue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onesignal/Continue;

    invoke-direct {v0}, Lcom/onesignal/Continue;-><init>()V

    sput-object v0, Lcom/onesignal/Continue;->INSTANCE:Lcom/onesignal/Continue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final none()Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lkotlin/coroutines/Continuation<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 83
    new-instance v0, Lcom/onesignal/Continue$none$1;

    invoke-direct {v0}, Lcom/onesignal/Continue$none$1;-><init>()V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public static final with(Ljava/util/function/Consumer;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Consumer<",
            "Lcom/onesignal/ContinueResult<",
            "TR;>;>;)",
            "Lkotlin/coroutines/Continuation<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "onFinished"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, v0}, Lcom/onesignal/Continue;->with$default(Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;ILjava/lang/Object;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    return-object p0
.end method

.method public static final with(Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Consumer<",
            "Lcom/onesignal/ContinueResult<",
            "TR;>;>;",
            "Lkotlin/coroutines/CoroutineContext;",
            ")",
            "Lkotlin/coroutines/Continuation<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "onFinished"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/onesignal/Continue$with$1;

    invoke-direct {v0, p1, p0}, Lcom/onesignal/Continue$with$1;-><init>(Lkotlin/coroutines/CoroutineContext;Ljava/util/function/Consumer;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public static synthetic with$default(Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;ILjava/lang/Object;)Lkotlin/coroutines/Continuation;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    .line 64
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    .line 62
    :cond_0
    invoke-static {p0, p1}, Lcom/onesignal/Continue;->with(Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    return-object p0
.end method
