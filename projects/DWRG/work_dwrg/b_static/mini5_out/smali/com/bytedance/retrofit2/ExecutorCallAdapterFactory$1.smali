.class public Lcom/bytedance/retrofit2/ExecutorCallAdapterFactory$1;
.super Ljava/lang/Object;
.source "ExecutorCallAdapterFactory.java"

# interfaces
.implements Lcom/bytedance/retrofit2/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/retrofit2/ExecutorCallAdapterFactory;->get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lcom/bytedance/retrofit2/Retrofit;)Lcom/bytedance/retrofit2/CallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/retrofit2/CallAdapter<",
        "Lcom/bytedance/retrofit2/Call<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/retrofit2/ExecutorCallAdapterFactory;

.field final synthetic val$responseType:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/bytedance/retrofit2/ExecutorCallAdapterFactory;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/bytedance/retrofit2/ExecutorCallAdapterFactory$1;->this$0:Lcom/bytedance/retrofit2/ExecutorCallAdapterFactory;

    iput-object p2, p0, Lcom/bytedance/retrofit2/ExecutorCallAdapterFactory$1;->val$responseType:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adapt(Lcom/bytedance/retrofit2/Call;)Lcom/bytedance/retrofit2/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bytedance/retrofit2/Call<",
            "TR;>;)",
            "Lcom/bytedance/retrofit2/Call<",
            "TR;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/bytedance/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;

    iget-object v1, p0, Lcom/bytedance/retrofit2/ExecutorCallAdapterFactory$1;->this$0:Lcom/bytedance/retrofit2/ExecutorCallAdapterFactory;

    iget-object v1, v1, Lcom/bytedance/retrofit2/ExecutorCallAdapterFactory;->callbackExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p1}, Lcom/bytedance/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;-><init>(Ljava/util/concurrent/Executor;Lcom/bytedance/retrofit2/Call;)V

    return-object v0
.end method

.method public bridge synthetic adapt(Lcom/bytedance/retrofit2/Call;)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/bytedance/retrofit2/ExecutorCallAdapterFactory$1;->adapt(Lcom/bytedance/retrofit2/Call;)Lcom/bytedance/retrofit2/Call;

    move-result-object p1

    return-object p1
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/bytedance/retrofit2/ExecutorCallAdapterFactory$1;->val$responseType:Ljava/lang/reflect/Type;

    return-object v0
.end method
