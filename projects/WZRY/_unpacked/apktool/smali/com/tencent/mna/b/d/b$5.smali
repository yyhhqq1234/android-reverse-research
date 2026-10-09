.class final Lcom/tencent/mna/b/d/b$5;
.super Ljava/lang/Object;
.source "DiagnoseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/b/d/b;->b(Lcom/tencent/mna/b/d/c;Lcom/tencent/mna/KartinRet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/mna/GHObserver;

.field final synthetic b:Lcom/tencent/mna/KartinRet;


# direct methods
.method constructor <init>(Lcom/tencent/mna/GHObserver;Lcom/tencent/mna/KartinRet;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/tencent/mna/b/d/b$5;->a:Lcom/tencent/mna/GHObserver;

    iput-object p2, p0, Lcom/tencent/mna/b/d/b$5;->b:Lcom/tencent/mna/KartinRet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/b/d/b$5;->a:Lcom/tencent/mna/GHObserver;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/tencent/mna/b/d/b$5;->a:Lcom/tencent/mna/GHObserver;

    iget-object v1, p0, Lcom/tencent/mna/b/d/b$5;->b:Lcom/tencent/mna/KartinRet;

    invoke-interface {v0, v1}, Lcom/tencent/mna/GHObserver;->OnQueryKartinNotify(Lcom/tencent/mna/KartinRet;)V

    .line 248
    :goto_0
    return-void

    .line 238
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnQueryKartinNotify:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/b/d/b$5;->b:Lcom/tencent/mna/KartinRet;

    iget-object v1, v1, Lcom/tencent/mna/KartinRet;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/b/d/b$5;->b:Lcom/tencent/mna/KartinRet;

    iget v1, v1, Lcom/tencent/mna/KartinRet;->flag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/b/d/b$5;->b:Lcom/tencent/mna/KartinRet;

    iget-object v1, v1, Lcom/tencent/mna/KartinRet;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/b/d/b$5;->b:Lcom/tencent/mna/KartinRet;

    iget v1, v1, Lcom/tencent/mna/KartinRet;->jump_network:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/b/d/b$5;->b:Lcom/tencent/mna/KartinRet;

    iget v1, v1, Lcom/tencent/mna/KartinRet;->jump_signal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/b/d/b$5;->b:Lcom/tencent/mna/KartinRet;

    iget v1, v1, Lcom/tencent/mna/KartinRet;->jump_router:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/b/d/b$5;->b:Lcom/tencent/mna/KartinRet;

    iget v1, v1, Lcom/tencent/mna/KartinRet;->router_status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/b/d/b$5;->b:Lcom/tencent/mna/KartinRet;

    iget-object v1, v1, Lcom/tencent/mna/KartinRet;->router_desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/b/d/b$5;->b:Lcom/tencent/mna/KartinRet;

    iget v1, v1, Lcom/tencent/mna/KartinRet;->jump_export:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/b/d/b$5;->b:Lcom/tencent/mna/KartinRet;

    iget v1, v1, Lcom/tencent/mna/KartinRet;->export_status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/b/d/b$5;->b:Lcom/tencent/mna/KartinRet;

    iget-object v1, v1, Lcom/tencent/mna/KartinRet;->export_desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/b/d/b$5;->b:Lcom/tencent/mna/KartinRet;

    iget v1, v1, Lcom/tencent/mna/KartinRet;->jump_terminal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/b/d/b$5;->b:Lcom/tencent/mna/KartinRet;

    iget v1, v1, Lcom/tencent/mna/KartinRet;->terminal_status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/b/d/b$5;->b:Lcom/tencent/mna/KartinRet;

    iget-object v1, v1, Lcom/tencent/mna/KartinRet;->terminal_desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/b/d/b$5;->b:Lcom/tencent/mna/KartinRet;

    iget v1, v1, Lcom/tencent/mna/KartinRet;->jump_proxy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/b/d/b$5;->b:Lcom/tencent/mna/KartinRet;

    iget v1, v1, Lcom/tencent/mna/KartinRet;->jump_edge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/b/d/b$5;->b:Lcom/tencent/mna/KartinRet;

    iget-object v1, v1, Lcom/tencent/mna/KartinRet;->signal_desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/b/d/b$5;->b:Lcom/tencent/mna/KartinRet;

    iget v1, v1, Lcom/tencent/mna/KartinRet;->signal_status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/b/d/b$5;->b:Lcom/tencent/mna/KartinRet;

    iget v1, v1, Lcom/tencent/mna/KartinRet;->jump_direct:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/b/d/b$5;->b:Lcom/tencent/mna/KartinRet;

    iget v1, v1, Lcom/tencent/mna/KartinRet;->direct_status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/b/d/b$5;->b:Lcom/tencent/mna/KartinRet;

    iget-object v1, v1, Lcom/tencent/mna/KartinRet;->direct_desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/b/d/b$5;->b:Lcom/tencent/mna/KartinRet;

    iget v1, v1, Lcom/tencent/mna/KartinRet;->netinfo_status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/b/d/b$5;->b:Lcom/tencent/mna/KartinRet;

    iget-object v1, v1, Lcom/tencent/mna/KartinRet;->netinfo_desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/b/d/b$5;->b:Lcom/tencent/mna/KartinRet;

    iget v1, v1, Lcom/tencent/mna/KartinRet;->wifi_num:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->i(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 245
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method
