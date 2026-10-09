.class final Lcom/tencent/mna/b/f/a$1;
.super Ljava/lang/Object;
.source "QosHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/b/f/a;->a(IILjava/util/List;Lcom/tencent/mna/b/a/d$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/tencent/mna/b/a/d$b;

.field final synthetic c:I

.field final synthetic d:Ljava/util/List;


# direct methods
.method constructor <init>(ILcom/tencent/mna/b/a/d$b;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 137
    iput p1, p0, Lcom/tencent/mna/b/f/a$1;->a:I

    iput-object p2, p0, Lcom/tencent/mna/b/f/a$1;->b:Lcom/tencent/mna/b/a/d$b;

    iput p3, p0, Lcom/tencent/mna/b/f/a$1;->c:I

    iput-object p4, p0, Lcom/tencent/mna/b/f/a$1;->d:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 141
    invoke-static {}, Lcom/tencent/mna/b/f/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/tencent/mna/b/f/a;->a(Z)Z

    .line 147
    invoke-static {}, Lcom/tencent/mna/b/f/a;->d()Lcom/tencent/mna/b/f/d$c;

    move-result-object v0

    if-nez v0, :cond_1

    .line 148
    iget v0, p0, Lcom/tencent/mna/b/f/a$1;->a:I

    iget-object v1, p0, Lcom/tencent/mna/b/f/a$1;->b:Lcom/tencent/mna/b/a/d$b;

    invoke-virtual {v1}, Lcom/tencent/mna/b/a/d$b;->a()I

    move-result v1

    iget v2, p0, Lcom/tencent/mna/b/f/a$1;->c:I

    invoke-static {v0, v1, v2}, Lcom/tencent/mna/b/f/a;->a(III)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 176
    invoke-static {v3}, Lcom/tencent/mna/b/f/a;->a(Z)Z

    goto :goto_0

    .line 153
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/tencent/mna/b/f/a;->d()Lcom/tencent/mna/b/f/d$c;

    move-result-object v0

    iget v0, v0, Lcom/tencent/mna/b/f/d$c;->h:I

    if-ne v0, v4, :cond_2

    .line 154
    invoke-static {}, Lcom/tencent/mna/b/f/a;->d()Lcom/tencent/mna/b/f/d$c;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mna/b/f/d$c;->k:Ljava/lang/String;

    sput-object v0, Lcom/tencent/mna/b/f/a;->d:Ljava/lang/String;

    .line 159
    :goto_1
    invoke-static {}, Lcom/tencent/mna/b/f/a;->d()Lcom/tencent/mna/b/f/d$c;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/f/a$1;->a:I

    iget v2, p0, Lcom/tencent/mna/b/f/a$1;->c:I

    invoke-static {v0, v1, v2}, Lcom/tencent/mna/b/f/a;->a(Lcom/tencent/mna/b/f/d$c;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    const/4 v0, 0x0

    sput v0, Lcom/tencent/mna/b/f/a;->c:I

    .line 161
    const/4 v0, -0x2

    sput v0, Lcom/tencent/mna/b/f/a;->a:I

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u4e0d\u6ee1\u8db3\u4fdd\u969c\u6761\u4ef6 curDelay["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/f/a$1;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\u5c0f\u4e8eensureAdj1["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mna/b/f/a;->d()Lcom/tencent/mna/b/f/d$c;

    move-result-object v1

    iget v1, v1, Lcom/tencent/mna/b/f/d$c;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], \u6216\u8005\u5927\u4e8eensureAdj2["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 163
    invoke-static {}, Lcom/tencent/mna/b/f/a;->d()Lcom/tencent/mna/b/f/d$c;

    move-result-object v1

    iget v1, v1, Lcom/tencent/mna/b/f/d$c;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {v0}, Lcom/tencent/mna/b/f/a;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    invoke-static {v3}, Lcom/tencent/mna/b/f/a;->a(Z)Z

    goto/16 :goto_0

    .line 156
    :cond_2
    :try_start_2
    const-string v0, "0"

    sput-object v0, Lcom/tencent/mna/b/f/a;->d:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 173
    :catch_0
    move-exception v0

    .line 176
    invoke-static {v3}, Lcom/tencent/mna/b/f/a;->a(Z)Z

    goto/16 :goto_0

    .line 167
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/tencent/mna/b/f/a;->d()Lcom/tencent/mna/b/f/d$c;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mna/b/f/d$c;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 168
    invoke-static {}, Lcom/tencent/mna/b/f/a;->e()Z

    .line 170
    :cond_4
    iget-object v0, p0, Lcom/tencent/mna/b/f/a$1;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/mna/b/f/a$1;->b:Lcom/tencent/mna/b/a/d$b;

    invoke-virtual {v1}, Lcom/tencent/mna/b/a/d$b;->c()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mna/b/f/a;->a(Ljava/util/List;Z)Z

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[N]4G-QOS\u9519\u8bef\u7801\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/tencent/mna/b/f/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 176
    invoke-static {v3}, Lcom/tencent/mna/b/f/a;->a(Z)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v3}, Lcom/tencent/mna/b/f/a;->a(Z)Z

    throw v0
.end method
