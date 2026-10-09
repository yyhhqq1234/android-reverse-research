.class Lcom/subao/common/a/c$g;
.super Ljava/lang/Object;
.source "EngineWrapper.java"

# interfaces
.implements Lcom/subao/common/a/c$f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/subao/common/a/c;

.field private final b:Lcom/subao/common/m/a;


# direct methods
.method constructor <init>(Lcom/subao/common/a/c;Lcom/subao/common/m/a;)V
    .locals 0

    .prologue
    .line 2601
    iput-object p1, p0, Lcom/subao/common/a/c$g;->a:Lcom/subao/common/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2602
    iput-object p2, p0, Lcom/subao/common/a/c$g;->b:Lcom/subao/common/m/a;

    .line 2603
    return-void
.end method


# virtual methods
.method public a()Lcom/subao/common/j/j$a;
    .locals 1

    .prologue
    .line 2622
    iget-object v0, p0, Lcom/subao/common/a/c$g;->a:Lcom/subao/common/a/c;

    iget-object v0, v0, Lcom/subao/common/a/c;->d:Lcom/subao/common/j/h;

    invoke-virtual {v0}, Lcom/subao/common/j/h;->a()Lcom/subao/common/j/j$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 2607
    iget-object v0, p0, Lcom/subao/common/a/c$g;->b:Lcom/subao/common/m/a;

    invoke-interface {v0, p1}, Lcom/subao/common/m/a;->a(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Runnable;J)Z
    .locals 2

    .prologue
    .line 2612
    iget-object v0, p0, Lcom/subao/common/a/c$g;->b:Lcom/subao/common/m/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/subao/common/m/a;->a(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 2617
    iget-object v0, p0, Lcom/subao/common/a/c$g;->b:Lcom/subao/common/m/a;

    invoke-interface {v0, p1}, Lcom/subao/common/m/a;->b(Ljava/lang/Runnable;)V

    .line 2618
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 2627
    iget-object v0, p0, Lcom/subao/common/a/c$g;->a:Lcom/subao/common/a/c;

    invoke-virtual {v0}, Lcom/subao/common/a/c;->g()Lcom/subao/common/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/subao/common/a/c$g;->a:Lcom/subao/common/a/c;

    invoke-static {v1}, Lcom/subao/common/a/c;->c(Lcom/subao/common/a/c;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/subao/common/a/c$g;->a:Lcom/subao/common/a/c;

    invoke-static {v2}, Lcom/subao/common/a/c;->f(Lcom/subao/common/a/c;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/subao/common/e/a;->b(Landroid/content/Context;Z)Lcom/subao/common/e/ao;

    .line 2628
    return-void
.end method
