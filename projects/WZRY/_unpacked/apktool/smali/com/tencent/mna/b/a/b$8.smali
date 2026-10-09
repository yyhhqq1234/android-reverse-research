.class final Lcom/tencent/mna/b/a/b$8;
.super Ljava/lang/Object;
.source "AccelerateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/b/a/b;->a(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 0

    .prologue
    .line 770
    iput p1, p0, Lcom/tencent/mna/b/a/b$8;->a:I

    iput-boolean p2, p0, Lcom/tencent/mna/b/a/b$8;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 774
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 776
    iget v2, p0, Lcom/tencent/mna/b/a/b$8;->a:I

    iget-boolean v3, p0, Lcom/tencent/mna/b/a/b$8;->b:Z

    invoke-static {}, Lcom/tencent/mna/b/a/b;->u()Lcom/tencent/mna/b/b/b;

    move-result-object v6

    invoke-static {}, Lcom/tencent/mna/b/a/b;->p()Lcom/tencent/mna/b/a/d;

    move-result-object v7

    invoke-static {v2, v3, v6, v7}, Lcom/tencent/mna/b/a/b;->a(IZLcom/tencent/mna/b/b/b;Lcom/tencent/mna/b/a/d;)I

    move-result v2

    .line 778
    invoke-static {}, Lcom/tencent/mna/b/a/b;->j()I

    move-result v3

    .line 779
    if-eq v3, v0, :cond_4

    move v3, v0

    .line 780
    :goto_0
    if-eq v2, v0, :cond_0

    if-nez v2, :cond_1

    .line 782
    :cond_0
    invoke-static {v3}, Lcom/tencent/mna/b/a/b;->c(Z)I

    move-result v2

    .line 785
    :cond_1
    invoke-static {}, Lcom/tencent/mna/base/a/a;->aV()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 786
    invoke-static {}, Lcom/tencent/mna/b/a/b;->j()I

    move-result v6

    invoke-static {v2, v6}, Lcom/tencent/mna/b/a/j;->a(II)V

    .line 789
    :cond_2
    invoke-static {}, Lcom/tencent/mna/b;->f()Lcom/tencent/mna/NetworkBindingListener;

    move-result-object v6

    .line 791
    if-eqz v6, :cond_5

    .line 792
    invoke-interface {v6, v2, v3}, Lcom/tencent/mna/NetworkBindingListener;->onBinding(IZ)V

    .line 796
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onBinding:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 798
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 799
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/tencent/mna/b/a/b$8;->a:I

    .line 800
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/tencent/mna/b/a/b$8;->b:Z

    if-eqz v5, :cond_6

    .line 801
    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 802
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 803
    invoke-static {}, Lcom/tencent/mna/b/a/b;->o()Lcom/tencent/mna/base/c/a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 804
    invoke-static {}, Lcom/tencent/mna/b/a/b;->o()Lcom/tencent/mna/base/c/a;

    move-result-object v0

    sget-object v1, Lcom/tencent/mna/base/c/a$a;->ap:Lcom/tencent/mna/base/c/a$a;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/c/a;

    .line 809
    :cond_3
    :goto_3
    return-void

    :cond_4
    move v3, v1

    .line 779
    goto :goto_0

    .line 794
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onBinding:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/mna/base/jni/e;->i(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 806
    :catch_0
    move-exception v0

    goto :goto_3

    :cond_6
    move v0, v1

    .line 800
    goto :goto_2
.end method
