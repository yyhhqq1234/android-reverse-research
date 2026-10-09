.class public Lcom/bytedance/retrofit2/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/retrofit2/Platform$IOS;,
        Lcom/bytedance/retrofit2/Platform$Android;
    }
.end annotation


# static fields
.field private static final PLATFORM:Lcom/bytedance/retrofit2/Platform;

.field private static final SQUARE_RETROFIT_EXISTS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    invoke-static {}, Lcom/bytedance/retrofit2/Platform;->findPlatform()Lcom/bytedance/retrofit2/Platform;

    move-result-object v0

    sput-object v0, Lcom/bytedance/retrofit2/Platform;->PLATFORM:Lcom/bytedance/retrofit2/Platform;

    .line 29
    invoke-static {}, Lcom/bytedance/retrofit2/Platform;->findSquareRetrofit()Z

    move-result v0

    sput-boolean v0, Lcom/bytedance/retrofit2/Platform;->SQUARE_RETROFIT_EXISTS:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findPlatform()Lcom/bytedance/retrofit2/Platform;
    .locals 1

    :try_start_0
    const-string v0, "android.os.Build"

    .line 41
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 43
    new-instance v0, Lcom/bytedance/retrofit2/Platform$Android;

    invoke-direct {v0}, Lcom/bytedance/retrofit2/Platform$Android;-><init>()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :try_start_1
    const-string v0, "org.robovm.apple.foundation.NSObject"

    .line 53
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 54
    new-instance v0, Lcom/bytedance/retrofit2/Platform$IOS;

    invoke-direct {v0}, Lcom/bytedance/retrofit2/Platform$IOS;-><init>()V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 57
    :catch_1
    new-instance v0, Lcom/bytedance/retrofit2/Platform;

    invoke-direct {v0}, Lcom/bytedance/retrofit2/Platform;-><init>()V

    return-object v0
.end method

.method private static findSquareRetrofit()Z
    .locals 1

    .line 62
    :try_start_0
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method static get()Lcom/bytedance/retrofit2/Platform;
    .locals 1

    .line 32
    sget-object v0, Lcom/bytedance/retrofit2/Platform;->PLATFORM:Lcom/bytedance/retrofit2/Platform;

    return-object v0
.end method

.method static squareRetrofitExists()Z
    .locals 1

    .line 36
    sget-boolean v0, Lcom/bytedance/retrofit2/Platform;->SQUARE_RETROFIT_EXISTS:Z

    return v0
.end method


# virtual methods
.method defaultCallAdapterFactory(Ljava/util/concurrent/Executor;)Lcom/bytedance/retrofit2/CallAdapter$Factory;
    .locals 1

    if-eqz p1, :cond_0

    .line 75
    new-instance v0, Lcom/bytedance/retrofit2/ExecutorCallAdapterFactory;

    invoke-direct {v0, p1}, Lcom/bytedance/retrofit2/ExecutorCallAdapterFactory;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0

    .line 77
    :cond_0
    sget-object p1, Lcom/bytedance/retrofit2/DefaultCallAdapterFactory;->INSTANCE:Lcom/bytedance/retrofit2/CallAdapter$Factory;

    return-object p1
.end method

.method defaultCallbackExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method varargs invokeDefaultMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 85
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method isDefaultMethod(Ljava/lang/reflect/Method;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
