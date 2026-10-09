.class Lcom/loopj/android/tgahttp/RequestHandle$1;
.super Ljava/lang/Object;
.source "RequestHandle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/tgahttp/RequestHandle;->cancel(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopj/android/tgahttp/RequestHandle;

.field final synthetic val$_request:Lcom/loopj/android/tgahttp/AsyncHttpRequest;

.field final synthetic val$mayInterruptIfRunning:Z


# direct methods
.method constructor <init>(Lcom/loopj/android/tgahttp/RequestHandle;Lcom/loopj/android/tgahttp/AsyncHttpRequest;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/loopj/android/tgahttp/RequestHandle;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/loopj/android/tgahttp/RequestHandle$1;->this$0:Lcom/loopj/android/tgahttp/RequestHandle;

    iput-object p2, p0, Lcom/loopj/android/tgahttp/RequestHandle$1;->val$_request:Lcom/loopj/android/tgahttp/AsyncHttpRequest;

    iput-boolean p3, p0, Lcom/loopj/android/tgahttp/RequestHandle$1;->val$mayInterruptIfRunning:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/loopj/android/tgahttp/RequestHandle$1;->val$_request:Lcom/loopj/android/tgahttp/AsyncHttpRequest;

    iget-boolean v1, p0, Lcom/loopj/android/tgahttp/RequestHandle$1;->val$mayInterruptIfRunning:Z

    invoke-virtual {v0, v1}, Lcom/loopj/android/tgahttp/AsyncHttpRequest;->cancel(Z)Z

    .line 59
    return-void
.end method
