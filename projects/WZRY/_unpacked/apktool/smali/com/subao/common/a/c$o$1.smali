.class Lcom/subao/common/a/c$o$1;
.super Ljava/lang/Object;
.source "EngineWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subao/common/a/c$o;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/subao/common/a/c$o;


# direct methods
.method constructor <init>(Lcom/subao/common/a/c$o;)V
    .locals 0

    .prologue
    .line 2218
    iput-object p1, p0, Lcom/subao/common/a/c$o$1;->a:Lcom/subao/common/a/c$o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2221
    iget-object v0, p0, Lcom/subao/common/a/c$o$1;->a:Lcom/subao/common/a/c$o;

    invoke-static {v0}, Lcom/subao/common/a/c$o;->a(Lcom/subao/common/a/c$o;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/subao/common/a/c$o$1;->a:Lcom/subao/common/a/c$o;

    invoke-static {v1}, Lcom/subao/common/a/c$o;->b(Lcom/subao/common/a/c$o;)I

    move-result v1

    iget-object v2, p0, Lcom/subao/common/a/c$o$1;->a:Lcom/subao/common/a/c$o;

    invoke-static {v2}, Lcom/subao/common/a/c$o;->c(Lcom/subao/common/a/c$o;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/subao/common/a/c$o$1;->a:Lcom/subao/common/a/c$o;

    invoke-static {v0, v1, v2, v3}, Lcom/subao/common/b/b;->a(Ljava/lang/String;ILjava/lang/String;Lcom/subao/common/j/n;)V

    .line 2222
    return-void
.end method
