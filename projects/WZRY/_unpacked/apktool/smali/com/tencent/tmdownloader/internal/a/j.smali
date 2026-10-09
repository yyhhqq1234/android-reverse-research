.class Lcom/tencent/tmdownloader/internal/a/j;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/tencent/tmdownloader/internal/a/h;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/tencent/tmdownloader/internal/a/h;I)V
    .locals 2

    .prologue
    .line 156
    iput-object p1, p0, Lcom/tencent/tmdownloader/internal/a/j;->a:Lcom/tencent/tmdownloader/internal/a/h;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tmdownloader/internal/a/j;->b:I

    .line 157
    iput p2, p0, Lcom/tencent/tmdownloader/internal/a/j;->b:I

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download_thread_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/tmdownloader/internal/a/j;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/tmdownloader/internal/a/j;->setName(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/a/j;->start()V

    .line 160
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 164
    const-string v0, "DownloadThreadPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/tencent/tmdownloader/internal/a/j;->b:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " starts running..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/j;->a:Lcom/tencent/tmdownloader/internal/a/h;

    iget-object v1, v0, Lcom/tencent/tmdownloader/internal/a/h;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 169
    :try_start_0
    const-string v0, "DownloadThreadPool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tencent/tmdownloader/internal/a/j;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is waitting..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/j;->a:Lcom/tencent/tmdownloader/internal/a/h;

    iget-object v0, v0, Lcom/tencent/tmdownloader/internal/a/h;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 179
    const-string v0, "DownloadThreadPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/tmdownloader/internal/a/j;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is interrupted..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    :try_start_2
    const-string v2, "DownloadThreadPool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tencent/tmdownloader/internal/a/j;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is interrupted..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 174
    monitor-exit v1

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 240
    :cond_1
    if-eqz v0, :cond_2

    .line 241
    const-string v1, "DownloadThreadPool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TaskThread::Run ThreadName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/a/j;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/g;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/tencent/tmdownloader/internal/a/c;->a()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 244
    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/a/j;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/tmdownloader/internal/a/g;->a(Ljava/lang/String;)V

    .line 245
    if-eqz v1, :cond_2

    .line 246
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 251
    :cond_2
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/j;->a:Lcom/tencent/tmdownloader/internal/a/h;

    iget-object v1, v1, Lcom/tencent/tmdownloader/internal/a/h;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 252
    if-eqz v0, :cond_3

    .line 253
    :try_start_3
    iget-object v3, p0, Lcom/tencent/tmdownloader/internal/a/j;->a:Lcom/tencent/tmdownloader/internal/a/h;

    iget-object v3, v3, Lcom/tencent/tmdownloader/internal/a/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 256
    :cond_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 184
    :cond_4
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/j;->a:Lcom/tencent/tmdownloader/internal/a/h;

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/j;->a:Lcom/tencent/tmdownloader/internal/a/h;

    iget-object v3, v0, Lcom/tencent/tmdownloader/internal/a/h;->g:Ljava/lang/Object;

    monitor-enter v3

    .line 194
    :try_start_4
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/j;->a:Lcom/tencent/tmdownloader/internal/a/h;

    iget-object v0, v0, Lcom/tencent/tmdownloader/internal/a/h;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 195
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/j;->a:Lcom/tencent/tmdownloader/internal/a/h;

    iget-object v0, v0, Lcom/tencent/tmdownloader/internal/a/h;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmdownloader/internal/a/g;

    .line 197
    const-string v1, "DownloadThreadPool"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "waitDt url "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/g;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " priority: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/g;->f()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 200
    :goto_1
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/j;->a:Lcom/tencent/tmdownloader/internal/a/h;

    iget-object v0, v0, Lcom/tencent/tmdownloader/internal/a/h;->d:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 201
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/j;->a:Lcom/tencent/tmdownloader/internal/a/h;

    iget-object v0, v0, Lcom/tencent/tmdownloader/internal/a/h;->d:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmdownloader/internal/a/g;

    .line 202
    const-string v4, "DownloadThreadPool"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pauseDt url "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/g;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " priority: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/g;->f()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :goto_2
    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    .line 206
    invoke-virtual {v1}, Lcom/tencent/tmdownloader/internal/a/g;->f()I

    move-result v4

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/g;->f()I

    move-result v5

    if-le v4, v5, :cond_5

    .line 207
    const-string v4, "DownloadThreadPool"

    const-string v5, " waitDt.getPriority() > pauseDt.getPriority() "

    invoke-static {v4, v5}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v4, p0, Lcom/tencent/tmdownloader/internal/a/j;->a:Lcom/tencent/tmdownloader/internal/a/h;

    iget-object v4, v4, Lcom/tencent/tmdownloader/internal/a/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v4, p0, Lcom/tencent/tmdownloader/internal/a/j;->a:Lcom/tencent/tmdownloader/internal/a/h;

    iget-object v4, v4, Lcom/tencent/tmdownloader/internal/a/h;->d:Ljava/util/PriorityQueue;

    invoke-virtual {v4, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 228
    :goto_3
    if-eqz v0, :cond_8

    .line 229
    const-string v1, "DownloadThreadPool"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get DownloadTask exe: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/g;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :goto_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 235
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    const-string v0, "DownloadThreadPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/tmdownloader/internal/a/j;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is interrupted..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 212
    :cond_5
    :try_start_5
    const-string v4, "DownloadThreadPool"

    const-string v5, " pauseDt reset StopTaskFlag...... "

    invoke-static {v4, v5}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/g;->d()V

    .line 215
    iget-object v4, p0, Lcom/tencent/tmdownloader/internal/a/j;->a:Lcom/tencent/tmdownloader/internal/a/h;

    iget-object v4, v4, Lcom/tencent/tmdownloader/internal/a/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v4, p0, Lcom/tencent/tmdownloader/internal/a/j;->a:Lcom/tencent/tmdownloader/internal/a/h;

    iget-object v4, v4, Lcom/tencent/tmdownloader/internal/a/h;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v4, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 233
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 218
    :cond_6
    if-eqz v1, :cond_7

    .line 220
    :try_start_6
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/j;->a:Lcom/tencent/tmdownloader/internal/a/h;

    iget-object v0, v0, Lcom/tencent/tmdownloader/internal/a/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_3

    .line 221
    :cond_7
    if-eqz v0, :cond_9

    .line 222
    const-string v1, "DownloadThreadPool"

    const-string v4, " pauseDt reset StopTaskFlag...... "

    invoke-static {v1, v4}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/g;->d()V

    .line 225
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/a/j;->a:Lcom/tencent/tmdownloader/internal/a/h;

    iget-object v1, v1, Lcom/tencent/tmdownloader/internal/a/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 231
    :cond_8
    const-string v1, "DownloadThreadPool"

    const-string v4, "get DownloadTask is null"

    invoke-static {v1, v4}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    .line 256
    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :cond_9
    move-object v0, v2

    goto/16 :goto_3

    :cond_a
    move-object v0, v2

    goto/16 :goto_2

    :cond_b
    move-object v1, v2

    goto/16 :goto_1
.end method
