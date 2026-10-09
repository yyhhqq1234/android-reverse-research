.class Lcom/subao/common/i/h$a$p;
.super Ljava/lang/Object;
.source "MessageSenderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/i/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "p"
.end annotation


# instance fields
.field final synthetic a:Lcom/subao/common/i/h$a;


# direct methods
.method constructor <init>(Lcom/subao/common/i/h$a;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lcom/subao/common/i/h$a$p;->a:Lcom/subao/common/i/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 453
    iget-object v0, p0, Lcom/subao/common/i/h$a$p;->a:Lcom/subao/common/i/h$a;

    invoke-virtual {v0}, Lcom/subao/common/i/h$a;->a()Lcom/subao/common/i/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/subao/common/i/i;->f()Lcom/subao/common/i/f;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/subao/common/i/f;->a(I)Ljava/util/List;

    move-result-object v1

    .line 454
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    :cond_0
    const-string v0, "SubaoMessage"

    const-string v1, "No cached link message(s)"

    invoke-static {v0, v1}, Lcom/subao/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :goto_0
    return-void

    .line 458
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subao/common/i/f$a;

    .line 459
    new-instance v3, Lcom/subao/common/i/h$a$k;

    iget-object v4, p0, Lcom/subao/common/i/h$a$p;->a:Lcom/subao/common/i/h$a;

    iget-object v5, v0, Lcom/subao/common/i/f$a;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/subao/common/i/f$a;->b:[B

    invoke-direct {v3, v4, v5, v0}, Lcom/subao/common/i/h$a$k;-><init>(Lcom/subao/common/i/h$a;Ljava/lang/String;[B)V

    .line 460
    iget-object v0, p0, Lcom/subao/common/i/h$a$p;->a:Lcom/subao/common/i/h$a;

    invoke-virtual {v0, v3}, Lcom/subao/common/i/h$a;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 463
    :cond_2
    const-string v0, "SubaoMessage"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 464
    const-string v0, "SubaoMessage"

    sget-object v2, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v3, "There are %d missed link(s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_3
    iget-object v0, p0, Lcom/subao/common/i/h$a$p;->a:Lcom/subao/common/i/h$a;

    new-instance v2, Lcom/subao/common/i/h$a$o;

    iget-object v3, p0, Lcom/subao/common/i/h$a$p;->a:Lcom/subao/common/i/h$a;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v2, v3, v1}, Lcom/subao/common/i/h$a$o;-><init>(Lcom/subao/common/i/h$a;I)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v2, v4, v5}, Lcom/subao/common/i/h$a;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
