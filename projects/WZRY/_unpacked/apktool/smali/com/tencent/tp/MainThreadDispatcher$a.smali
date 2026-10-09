.class Lcom/tencent/tp/MainThreadDispatcher$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tp/MainThreadDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/tencent/tp/MainThreadDispatcher$NativeRunnable;


# direct methods
.method public constructor <init>(Lcom/tencent/tp/MainThreadDispatcher$NativeRunnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tp/MainThreadDispatcher$a;->a:Lcom/tencent/tp/MainThreadDispatcher$NativeRunnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/tp/MainThreadDispatcher$a;->a:Lcom/tencent/tp/MainThreadDispatcher$NativeRunnable;

    iget-wide v0, v0, Lcom/tencent/tp/MainThreadDispatcher$NativeRunnable;->callbackFuncPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/MainThreadDispatcher$a;->a:Lcom/tencent/tp/MainThreadDispatcher$NativeRunnable;

    iget-wide v0, v0, Lcom/tencent/tp/MainThreadDispatcher$NativeRunnable;->callbackFuncPtr:J

    iget-object v2, p0, Lcom/tencent/tp/MainThreadDispatcher$a;->a:Lcom/tencent/tp/MainThreadDispatcher$NativeRunnable;

    iget-wide v2, v2, Lcom/tencent/tp/MainThreadDispatcher$NativeRunnable;->dataPtr:J

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/tp/MainThreadDispatcher;->access$000(JJ)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/tp/MainThreadDispatcher$a;->a:Lcom/tencent/tp/MainThreadDispatcher$NativeRunnable;

    iget-object v0, v0, Lcom/tencent/tp/MainThreadDispatcher$NativeRunnable;->clazz_name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tp/MainThreadDispatcher$a;->a:Lcom/tencent/tp/MainThreadDispatcher$NativeRunnable;

    iget-object v0, v0, Lcom/tencent/tp/MainThreadDispatcher$NativeRunnable;->method_name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tp/MainThreadDispatcher$a;->a:Lcom/tencent/tp/MainThreadDispatcher$NativeRunnable;

    iget-object v0, v0, Lcom/tencent/tp/MainThreadDispatcher$NativeRunnable;->method_signature:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tp/MainThreadDispatcher$a;->a:Lcom/tencent/tp/MainThreadDispatcher$NativeRunnable;

    invoke-static {v0}, Lcom/tencent/tp/MainThreadDispatcher;->access$100(Lcom/tencent/tp/MainThreadDispatcher$NativeRunnable;)V

    :cond_1
    return-void
.end method
