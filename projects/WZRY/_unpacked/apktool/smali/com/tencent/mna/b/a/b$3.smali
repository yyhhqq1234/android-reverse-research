.class final Lcom/tencent/mna/b/a/b$3;
.super Ljava/lang/Object;
.source "AccelerateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/b/a/b;->a(Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:I

.field final synthetic h:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/tencent/mna/b/a/b$3;->a:Ljava/lang/String;

    iput p2, p0, Lcom/tencent/mna/b/a/b$3;->b:I

    iput p3, p0, Lcom/tencent/mna/b/a/b$3;->c:I

    iput-object p4, p0, Lcom/tencent/mna/b/a/b$3;->d:Ljava/lang/String;

    iput p5, p0, Lcom/tencent/mna/b/a/b$3;->e:I

    iput p6, p0, Lcom/tencent/mna/b/a/b$3;->f:I

    iput p7, p0, Lcom/tencent/mna/b/a/b$3;->g:I

    iput-object p8, p0, Lcom/tencent/mna/b/a/b$3;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 155
    new-instance v9, Lcom/tencent/mna/StartSpeedRet;

    iget-object v0, p0, Lcom/tencent/mna/b/a/b$3;->a:Ljava/lang/String;

    iget v1, p0, Lcom/tencent/mna/b/a/b$3;->b:I

    iget v2, p0, Lcom/tencent/mna/b/a/b$3;->c:I

    invoke-direct {v9, v0, v1, v2}, Lcom/tencent/mna/StartSpeedRet;-><init>(Ljava/lang/String;II)V

    .line 157
    sget-object v0, Lcom/tencent/mna/base/c/c;->a:Lcom/tencent/mna/base/c/c;

    invoke-static {v0}, Lcom/tencent/mna/base/c/f;->a(Lcom/tencent/mna/base/c/c;)Lcom/tencent/mna/base/c/d;

    move-result-object v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/tencent/mna/b/a/b$3;->a:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/mna/b/a/b$3;->b:I

    iget v3, p0, Lcom/tencent/mna/b/a/b$3;->c:I

    iget-object v4, p0, Lcom/tencent/mna/b/a/b$3;->d:Ljava/lang/String;

    iget v5, p0, Lcom/tencent/mna/b/a/b$3;->e:I

    iget v6, p0, Lcom/tencent/mna/b/a/b$3;->f:I

    iget v7, p0, Lcom/tencent/mna/b/a/b$3;->g:I

    iget-object v8, p0, Lcom/tencent/mna/b/a/b$3;->h:Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lcom/tencent/mna/b/a/b;->a(Lcom/tencent/mna/base/c/d;Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;)I

    move-result v1

    iput v1, v9, Lcom/tencent/mna/StartSpeedRet;->flag:I

    .line 163
    invoke-static {}, Lcom/tencent/mna/b/a/b;->n()V

    .line 164
    iget v1, v9, Lcom/tencent/mna/StartSpeedRet;->flag:I

    invoke-static {v1}, Lcom/tencent/mna/b/a/b;->a(I)I

    .line 165
    iget v1, v9, Lcom/tencent/mna/StartSpeedRet;->flag:I

    invoke-static {v1}, Lcom/tencent/mna/StartSpeedRet;->getSpeedDesc(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/tencent/mna/StartSpeedRet;->desc:Ljava/lang/String;

    .line 167
    iget v1, v9, Lcom/tencent/mna/StartSpeedRet;->flag:I

    if-nez v1, :cond_0

    .line 168
    const-string v1, "MNAStartSpeed succeed"

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 173
    :goto_0
    invoke-static {v9}, Lcom/tencent/mna/b/a/b;->a(Lcom/tencent/mna/StartSpeedRet;)V

    .line 175
    invoke-static {}, Lcom/tencent/mna/base/a/a;->j()I

    move-result v1

    if-nez v1, :cond_1

    .line 177
    const-string v0, "startSpeed is shut down: mna eq 0"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-static {v10}, Lcom/tencent/mna/b/a/c;->a(Z)V

    .line 225
    :goto_1
    return-void

    .line 170
    :cond_0
    :try_start_1
    const-string v1, "MNAStartSpeed fail"

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSpeed throwable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    invoke-static {v10}, Lcom/tencent/mna/b/a/c;->a(Z)V

    goto :goto_1

    .line 181
    :cond_1
    :try_start_3
    sget-boolean v1, Lcom/tencent/mna/a/b;->i:Z

    if-eqz v1, :cond_2

    .line 182
    invoke-static {}, Lcom/tencent/mna/base/a/a;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mna/base/a/a;->aN()I

    move-result v2

    invoke-static {v1, v2}, Lcom/tencent/mna/b/e/b;->a(Ljava/lang/String;I)V

    .line 186
    :cond_2
    invoke-static {}, Lcom/tencent/mna/base/a/a;->aW()I

    move-result v1

    iget v2, v9, Lcom/tencent/mna/StartSpeedRet;->flag:I

    invoke-static {v2}, Lcom/tencent/mna/StartSpeedRet;->isCanHook(I)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/tencent/mna/b/a/i;->a(IZ)I

    move-result v1

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[N]tosFlag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/tencent/mna/b/a/b;->o()Lcom/tencent/mna/base/c/a;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tencent/mna/b/a/b;->a(Lcom/tencent/mna/base/c/a;I)V

    .line 189
    if-nez v1, :cond_3

    invoke-static {}, Lcom/tencent/mna/b/a/b;->p()Lcom/tencent/mna/b/a/d;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 191
    invoke-static {}, Lcom/tencent/mna/b/a/b;->p()Lcom/tencent/mna/b/a/d;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mna/base/a/a;->aW()I

    move-result v3

    invoke-static {v3}, Lcom/tencent/mna/b/a/i;->a(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/mna/b/a/d;->a(I)V

    .line 195
    :cond_3
    iget v2, v9, Lcom/tencent/mna/StartSpeedRet;->flag:I

    iget-object v3, p0, Lcom/tencent/mna/b/a/b$3;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/mna/b/a/b;->a(ILjava/lang/String;)V

    .line 198
    invoke-static {}, Lcom/tencent/mna/base/a/a;->aU()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/tencent/mna/base/a/a;->aV()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 199
    :cond_4
    invoke-static {}, Lcom/tencent/mna/b/a/b;->o()Lcom/tencent/mna/base/c/a;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mna/b/a/j;->a(Lcom/tencent/mna/base/c/a;)V

    .line 200
    invoke-static {}, Lcom/tencent/mna/base/a/a;->aU()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 201
    invoke-static {}, Lcom/tencent/mna/a/b;->a()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/tencent/mna/b/a/b$3;->b:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mna/b/a/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_5
    invoke-static {}, Lcom/tencent/mna/b/a/b;->q()V

    .line 208
    invoke-static {v0}, Lcom/tencent/mna/b/a/b;->a(Lcom/tencent/mna/base/c/d;)V

    .line 210
    iget v2, v9, Lcom/tencent/mna/StartSpeedRet;->flag:I

    invoke-static {v2}, Lcom/tencent/mna/b/a/b;->b(I)V

    .line 212
    iget v2, v9, Lcom/tencent/mna/StartSpeedRet;->flag:I

    invoke-static {v2}, Lcom/tencent/mna/b/a/g;->a(I)Lcom/tencent/mna/b/g/d$a;

    move-result-object v2

    .line 213
    invoke-static {}, Lcom/tencent/mna/b/a/b;->o()Lcom/tencent/mna/base/c/a;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/tencent/mna/b/a/b;->a(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/b/g/d$a;)V

    .line 215
    iget v2, v9, Lcom/tencent/mna/StartSpeedRet;->flag:I

    invoke-static {}, Lcom/tencent/mna/b/a/b;->p()Lcom/tencent/mna/b/a/d;

    move-result-object v3

    invoke-static {}, Lcom/tencent/mna/b/a/b;->o()Lcom/tencent/mna/base/c/a;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/tencent/mna/b/a/b;->a(ILcom/tencent/mna/b/a/d;Lcom/tencent/mna/base/c/a;)V

    .line 217
    iget v2, v9, Lcom/tencent/mna/StartSpeedRet;->flag:I

    iget-object v3, p0, Lcom/tencent/mna/b/a/b$3;->h:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1}, Lcom/tencent/mna/b/a/b;->a(Lcom/tencent/mna/base/c/d;ILjava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 223
    invoke-static {v10}, Lcom/tencent/mna/b/a/c;->a(Z)V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v10}, Lcom/tencent/mna/b/a/c;->a(Z)V

    throw v0
.end method
