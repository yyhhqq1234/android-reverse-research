.class public Lcom/bytedance/retrofit2/Retrofit$1;
.super Ljava/lang/Object;
.source "Retrofit.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/retrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final platform:Lcom/bytedance/retrofit2/Platform;

.field final synthetic this$0:Lcom/bytedance/retrofit2/Retrofit;

.field final synthetic val$service:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/bytedance/retrofit2/Retrofit;Ljava/lang/Class;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/bytedance/retrofit2/Retrofit$1;->this$0:Lcom/bytedance/retrofit2/Retrofit;

    iput-object p2, p0, Lcom/bytedance/retrofit2/Retrofit$1;->val$service:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    invoke-static {}, Lcom/bytedance/retrofit2/Platform;->get()Lcom/bytedance/retrofit2/Platform;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/retrofit2/Retrofit$1;->platform:Lcom/bytedance/retrofit2/Platform;

    return-void
.end method


# virtual methods
.method public varargs invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 182
    new-instance v0, Lcom/bytedance/retrofit2/RetrofitMetrics;

    invoke-direct {v0}, Lcom/bytedance/retrofit2/RetrofitMetrics;-><init>()V

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bytedance/retrofit2/RetrofitMetrics;->appCreateRetrofitStart:J

    .line 186
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    .line 187
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/bytedance/retrofit2/Retrofit$1;->platform:Lcom/bytedance/retrofit2/Platform;

    invoke-virtual {v1, p2}, Lcom/bytedance/retrofit2/Platform;->isDefaultMethod(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    iget-object v0, p0, Lcom/bytedance/retrofit2/Retrofit$1;->platform:Lcom/bytedance/retrofit2/Platform;

    iget-object v1, p0, Lcom/bytedance/retrofit2/Retrofit$1;->val$service:Ljava/lang/Class;

    invoke-virtual {v0, p2, v1, p1, p3}, Lcom/bytedance/retrofit2/Platform;->invokeDefaultMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 193
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bytedance/retrofit2/RetrofitMetrics;->retrofitMethodInvokeTime:J

    .line 194
    iget-object p1, p0, Lcom/bytedance/retrofit2/Retrofit$1;->this$0:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {p1, p2}, Lcom/bytedance/retrofit2/Retrofit;->loadServiceMethod(Ljava/lang/reflect/Method;)Lcom/bytedance/retrofit2/ServiceMethod;

    move-result-object p1

    .line 195
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bytedance/retrofit2/RetrofitMetrics;->createSsHttpCallTime:J

    .line 196
    invoke-virtual {p1, v0}, Lcom/bytedance/retrofit2/ServiceMethod;->setRetrofitMetrics(Lcom/bytedance/retrofit2/RetrofitMetrics;)V

    .line 197
    new-instance p2, Lcom/bytedance/retrofit2/SsHttpCall;

    invoke-direct {p2, p1, p3}, Lcom/bytedance/retrofit2/SsHttpCall;-><init>(Lcom/bytedance/retrofit2/ServiceMethod;[Ljava/lang/Object;)V

    .line 198
    iget-object p1, p1, Lcom/bytedance/retrofit2/ServiceMethod;->callAdapter:Lcom/bytedance/retrofit2/CallAdapter;

    invoke-interface {p1, p2}, Lcom/bytedance/retrofit2/CallAdapter;->adapt(Lcom/bytedance/retrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
