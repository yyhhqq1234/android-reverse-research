.class Lcom/subao/common/m/c$1;
.super Ljava/lang/Object;
.source "SerialExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subao/common/m/c;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/subao/common/m/c;


# direct methods
.method constructor <init>(Lcom/subao/common/m/c;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/subao/common/m/c$1;->b:Lcom/subao/common/m/c;

    iput-object p2, p0, Lcom/subao/common/m/c$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/subao/common/m/c$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object v0, p0, Lcom/subao/common/m/c$1;->b:Lcom/subao/common/m/c;

    invoke-static {v0}, Lcom/subao/common/m/c;->a(Lcom/subao/common/m/c;)V

    .line 25
    return-void

    .line 23
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/subao/common/m/c$1;->b:Lcom/subao/common/m/c;

    invoke-static {v1}, Lcom/subao/common/m/c;->a(Lcom/subao/common/m/c;)V

    throw v0
.end method
