.class Lcom/tencent/mna/b/b/b$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/b/b/b;->d(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/mna/b/b/b;


# direct methods
.method constructor <init>(Lcom/tencent/mna/b/b/b;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/tencent/mna/b/b/b$1;->a:Lcom/tencent/mna/b/b/b;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .prologue
    .line 282
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 283
    iget-object v0, p0, Lcom/tencent/mna/b/b/b$1;->a:Lcom/tencent/mna/b/b/b;

    iget v0, v0, Lcom/tencent/mna/b/b/b;->a:I

    .line 284
    iget-object v1, p0, Lcom/tencent/mna/b/b/b$1;->a:Lcom/tencent/mna/b/b/b;

    invoke-static {v1, p1}, Lcom/tencent/mna/b/b/b;->a(Lcom/tencent/mna/b/b/b;Ljava/lang/Object;)I

    move-result v1

    .line 286
    iget-object v2, p0, Lcom/tencent/mna/b/b/b$1;->a:Lcom/tencent/mna/b/b/b;

    iget v2, v2, Lcom/tencent/mna/b/b/b;->a:I

    if-eq v2, v1, :cond_0

    .line 287
    iget-object v2, p0, Lcom/tencent/mna/b/b/b$1;->a:Lcom/tencent/mna/b/b/b;

    iput v1, v2, Lcom/tencent/mna/b/b/b;->a:I

    .line 289
    :cond_0
    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    .line 291
    new-instance v2, Lcom/tencent/mna/b/b/b$1$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/tencent/mna/b/b/b$1$1;-><init>(Lcom/tencent/mna/b/b/b$1;II)V

    invoke-static {v2}, Lcom/tencent/mna/a;->a(Ljava/lang/Runnable;)V

    .line 299
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkBinding callback, netId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 300
    return-void
.end method
