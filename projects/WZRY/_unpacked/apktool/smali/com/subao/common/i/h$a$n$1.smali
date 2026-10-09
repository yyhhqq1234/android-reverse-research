.class Lcom/subao/common/i/h$a$n$1;
.super Ljava/lang/Object;
.source "MessageSenderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subao/common/i/h$a$n;->a([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/subao/common/i/h$a$n;


# direct methods
.method constructor <init>(Lcom/subao/common/i/h$a$n;)V
    .locals 0

    .prologue
    .line 667
    iput-object p1, p0, Lcom/subao/common/i/h$a$n$1;->a:Lcom/subao/common/i/h$a$n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 670
    invoke-static {}, Lcom/subao/common/e/am;->b()Lcom/subao/common/e/am;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/subao/common/e/am;->b(Ljava/lang/String;)V

    .line 671
    iget-object v0, p0, Lcom/subao/common/i/h$a$n$1;->a:Lcom/subao/common/i/h$a$n;

    iget-object v0, v0, Lcom/subao/common/i/h$a$n;->d:Lcom/subao/common/i/h$a;

    iget-object v0, v0, Lcom/subao/common/i/h$a;->a:Lcom/subao/common/i/i;

    invoke-interface {v0}, Lcom/subao/common/i/i;->e()Lcom/subao/common/i/a;

    move-result-object v0

    .line 672
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-object v1, p0, Lcom/subao/common/i/h$a$n$1;->a:Lcom/subao/common/i/h$a$n;

    iget-object v1, v1, Lcom/subao/common/i/h$a$n;->d:Lcom/subao/common/i/h$a;

    iget-object v1, v1, Lcom/subao/common/i/h$a;->a:Lcom/subao/common/i/i;

    .line 673
    invoke-interface {v1}, Lcom/subao/common/i/i;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/subao/common/i/o$a;->a(Landroid/content/Context;)Lcom/subao/common/i/o$a;

    move-result-object v1

    .line 671
    invoke-virtual {v0, v2, v3, v1}, Lcom/subao/common/i/a;->a(JLcom/subao/common/i/o$a;)Lcom/subao/common/i/o;

    move-result-object v0

    .line 674
    iget-object v1, p0, Lcom/subao/common/i/h$a$n$1;->a:Lcom/subao/common/i/h$a$n;

    iget-object v1, v1, Lcom/subao/common/i/h$a$n;->d:Lcom/subao/common/i/h$a;

    new-instance v2, Lcom/subao/common/i/h$a$j;

    iget-object v3, p0, Lcom/subao/common/i/h$a$n$1;->a:Lcom/subao/common/i/h$a$n;

    iget-object v3, v3, Lcom/subao/common/i/h$a$n;->d:Lcom/subao/common/i/h$a;

    invoke-direct {v2, v3, v0}, Lcom/subao/common/i/h$a$j;-><init>(Lcom/subao/common/i/h$a;Lcom/subao/common/i/o;)V

    invoke-virtual {v1, v2}, Lcom/subao/common/i/h$a;->post(Ljava/lang/Runnable;)Z

    .line 675
    return-void
.end method
