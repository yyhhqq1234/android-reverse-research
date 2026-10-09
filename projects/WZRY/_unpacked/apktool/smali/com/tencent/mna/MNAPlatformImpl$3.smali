.class final Lcom/tencent/mna/MNAPlatformImpl$3;
.super Ljava/lang/Object;
.source "MNAPlatformImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/MNAPlatformImpl;->MNAQueryNetwork(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Lcom/tencent/mna/NetworkObserver;


# direct methods
.method constructor <init>(Landroid/content/Context;ZZZLcom/tencent/mna/NetworkObserver;)V
    .locals 0

    .prologue
    .line 583
    iput-object p1, p0, Lcom/tencent/mna/MNAPlatformImpl$3;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/tencent/mna/MNAPlatformImpl$3;->b:Z

    iput-boolean p3, p0, Lcom/tencent/mna/MNAPlatformImpl$3;->c:Z

    iput-boolean p4, p0, Lcom/tencent/mna/MNAPlatformImpl$3;->d:Z

    iput-object p5, p0, Lcom/tencent/mna/MNAPlatformImpl$3;->e:Lcom/tencent/mna/NetworkObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 587
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mna/MNAPlatformImpl$3;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/mna/MNAPlatformImpl$3;->b:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/tencent/mna/MNAPlatformImpl$3;->c:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tencent/mna/MNAPlatformImpl$3;->d:Z

    .line 588
    invoke-static {}, Lcom/tencent/mna/b/a/b;->l()Lcom/tencent/mna/b/a/d;

    move-result-object v5

    .line 587
    invoke-static {v1, v2, v3, v4, v5}, Lcom/tencent/mna/b/e/a;->a(Landroid/content/Context;ZZZLcom/tencent/mna/b/a/d;)Lcom/tencent/mna/b/e/a$a;

    move-result-object v19

    .line 589
    if-eqz v19, :cond_0

    .line 590
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mna/MNAPlatformImpl$3;->e:Lcom/tencent/mna/NetworkObserver;

    if-eqz v1, :cond_1

    .line 591
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mna/MNAPlatformImpl$3;->e:Lcom/tencent/mna/NetworkObserver;

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/tencent/mna/b/e/a$a;->a:Ljava/lang/String;

    move-object/from16 v0, v19

    iget v3, v0, Lcom/tencent/mna/b/e/a$a;->b:I

    move-object/from16 v0, v19

    iget v4, v0, Lcom/tencent/mna/b/e/a$a;->c:I

    move-object/from16 v0, v19

    iget v5, v0, Lcom/tencent/mna/b/e/a$a;->d:I

    move-object/from16 v0, v19

    iget v6, v0, Lcom/tencent/mna/b/e/a$a;->e:I

    move-object/from16 v0, v19

    iget v7, v0, Lcom/tencent/mna/b/e/a$a;->f:I

    move-object/from16 v0, v19

    iget v8, v0, Lcom/tencent/mna/b/e/a$a;->g:I

    move-object/from16 v0, v19

    iget v9, v0, Lcom/tencent/mna/b/e/a$a;->h:I

    move-object/from16 v0, v19

    iget v10, v0, Lcom/tencent/mna/b/e/a$a;->i:I

    move-object/from16 v0, v19

    iget v11, v0, Lcom/tencent/mna/b/e/a$a;->j:I

    move-object/from16 v0, v19

    iget v12, v0, Lcom/tencent/mna/b/e/a$a;->k:I

    move-object/from16 v0, v19

    iget v13, v0, Lcom/tencent/mna/b/e/a$a;->l:I

    move-object/from16 v0, v19

    iget v14, v0, Lcom/tencent/mna/b/e/a$a;->m:I

    move-object/from16 v0, v19

    iget v15, v0, Lcom/tencent/mna/b/e/a$a;->n:I

    move-object/from16 v0, v19

    iget v0, v0, Lcom/tencent/mna/b/e/a$a;->o:I

    move/from16 v16, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/tencent/mna/b/e/a$a;->p:I

    move/from16 v17, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/tencent/mna/b/e/a$a;->q:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/tencent/mna/b/e/a$a;->r:I

    move/from16 v19, v0

    invoke-interface/range {v1 .. v19}, Lcom/tencent/mna/NetworkObserver;->OnQueryNetworkNotify(Ljava/lang/String;IIIIIIIIIIIIIIILjava/lang/String;I)V

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnQueryNetworkNotify:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/tencent/mna/b/e/a$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v19

    iget v2, v0, Lcom/tencent/mna/b/e/a$a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v19

    iget v2, v0, Lcom/tencent/mna/b/e/a$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v19

    iget v2, v0, Lcom/tencent/mna/b/e/a$a;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v19

    iget v2, v0, Lcom/tencent/mna/b/e/a$a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v19

    iget v2, v0, Lcom/tencent/mna/b/e/a$a;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v19

    iget v2, v0, Lcom/tencent/mna/b/e/a$a;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v19

    iget v2, v0, Lcom/tencent/mna/b/e/a$a;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v19

    iget v2, v0, Lcom/tencent/mna/b/e/a$a;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v19

    iget v2, v0, Lcom/tencent/mna/b/e/a$a;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v19

    iget v2, v0, Lcom/tencent/mna/b/e/a$a;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v19

    iget v2, v0, Lcom/tencent/mna/b/e/a$a;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v19

    iget v2, v0, Lcom/tencent/mna/b/e/a$a;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v19

    iget v2, v0, Lcom/tencent/mna/b/e/a$a;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v19

    iget v2, v0, Lcom/tencent/mna/b/e/a$a;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v19

    iget v2, v0, Lcom/tencent/mna/b/e/a$a;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/tencent/mna/b/e/a$a;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v19

    iget v2, v0, Lcom/tencent/mna/b/e/a$a;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/jni/e;->i(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 603
    :catch_0
    move-exception v1

    .line 604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MNAQueryNetwork exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
