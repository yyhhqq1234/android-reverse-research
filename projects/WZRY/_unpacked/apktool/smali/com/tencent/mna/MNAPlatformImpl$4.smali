.class final Lcom/tencent/mna/MNAPlatformImpl$4;
.super Ljava/lang/Object;
.source "MNAPlatformImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/MNAPlatformImpl;->MNAQueryRouter(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/tencent/mna/RouterObserver;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mna/RouterObserver;)V
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lcom/tencent/mna/MNAPlatformImpl$4;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/mna/MNAPlatformImpl$4;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/mna/MNAPlatformImpl$4;->c:Lcom/tencent/mna/RouterObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 640
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/MNAPlatformImpl$4;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/mna/MNAPlatformImpl$4;->b:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mna/base/a/c;->D()I

    move-result v2

    invoke-static {}, Lcom/tencent/mna/base/a/c;->E()I

    move-result v3

    invoke-static {}, Lcom/tencent/mna/base/a/c;->F()D

    move-result-wide v4

    .line 641
    invoke-static {}, Lcom/tencent/mna/base/a/c;->G()Ljava/lang/String;

    move-result-object v6

    .line 640
    invoke-static/range {v0 .. v6}, Lcom/tencent/mna/b/e/c;->a(Landroid/content/Context;Ljava/lang/String;IIDLjava/lang/String;)Lcom/tencent/mna/b/e/c$a;

    move-result-object v6

    .line 642
    if-eqz v6, :cond_0

    .line 643
    iget-object v0, p0, Lcom/tencent/mna/MNAPlatformImpl$4;->c:Lcom/tencent/mna/RouterObserver;

    if-eqz v0, :cond_1

    .line 644
    iget-object v0, p0, Lcom/tencent/mna/MNAPlatformImpl$4;->c:Lcom/tencent/mna/RouterObserver;

    iget-object v1, v6, Lcom/tencent/mna/b/e/c$a;->a:Ljava/lang/String;

    iget v2, v6, Lcom/tencent/mna/b/e/c$a;->b:I

    iget-object v3, v6, Lcom/tencent/mna/b/e/c$a;->c:Ljava/lang/String;

    iget-object v4, v6, Lcom/tencent/mna/b/e/c$a;->d:Ljava/lang/String;

    iget v5, v6, Lcom/tencent/mna/b/e/c$a;->e:I

    invoke-interface/range {v0 .. v5}, Lcom/tencent/mna/RouterObserver;->OnQueryRouterNotify(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 648
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnQueryRouterNotify:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lcom/tencent/mna/b/e/c$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v6, Lcom/tencent/mna/b/e/c$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lcom/tencent/mna/b/e/c$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v6, Lcom/tencent/mna/b/e/c$a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 653
    :cond_0
    :goto_1
    return-void

    .line 646
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnQueryRouterNotify:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lcom/tencent/mna/b/e/c$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v6, Lcom/tencent/mna/b/e/c$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lcom/tencent/mna/b/e/c$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v6, Lcom/tencent/mna/b/e/c$a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->i(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 650
    :catch_0
    move-exception v0

    .line 651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MNAQueryNetwork exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
