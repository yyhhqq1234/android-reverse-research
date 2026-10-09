.class Lcom/netease/cc/videoedit/TrimVideo$1;
.super Ljava/lang/Object;
.source "TrimVideo.java"

# interfaces
.implements Lcom/netease/cc/videoedit/transcoder/TranscoderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/cc/videoedit/TrimVideo;->transcodeVideoByMediaCodec(Lorg/json/JSONObject;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/cc/videoedit/TrimVideo;

.field final synthetic val$transcoded:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/netease/cc/videoedit/TrimVideo;Ljava/lang/Object;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/netease/cc/videoedit/TrimVideo$1;->this$0:Lcom/netease/cc/videoedit/TrimVideo;

    iput-object p2, p0, Lcom/netease/cc/videoedit/TrimVideo$1;->val$transcoded:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTranscodeCanceled()V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/netease/cc/videoedit/TrimVideo$1;->val$transcoded:Ljava/lang/Object;

    monitor-enter v0

    .line 380
    :try_start_0
    iget-object v1, p0, Lcom/netease/cc/videoedit/TrimVideo$1;->val$transcoded:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 381
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "TrimVideo"

    const-string v1, "[Transcode] canceled transcoding."

    .line 382
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/netease/cc/videoedit/TrimVideo$1;->this$0:Lcom/netease/cc/videoedit/TrimVideo;

    invoke-static {v0}, Lcom/netease/cc/videoedit/TrimVideo;->access$000(Lcom/netease/cc/videoedit/TrimVideo;)Lcom/netease/cc/videoedit/TrimVideo$TrimVideoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/cc/videoedit/TrimVideo$TrimVideoListener;->onTranscodeCanceled()V

    return-void

    :catchall_0
    move-exception v1

    .line 381
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onTranscodeCompleted(I)V
    .locals 2

    const-string v0, "TrimVideo"

    const-string v1, "[Transcode] completed transcoding."

    .line 370
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lcom/netease/cc/videoedit/TrimVideo$1;->val$transcoded:Ljava/lang/Object;

    monitor-enter v0

    .line 372
    :try_start_0
    iget-object v1, p0, Lcom/netease/cc/videoedit/TrimVideo$1;->val$transcoded:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 373
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    iget-object v0, p0, Lcom/netease/cc/videoedit/TrimVideo$1;->this$0:Lcom/netease/cc/videoedit/TrimVideo;

    invoke-static {v0}, Lcom/netease/cc/videoedit/TrimVideo;->access$000(Lcom/netease/cc/videoedit/TrimVideo;)Lcom/netease/cc/videoedit/TrimVideo$TrimVideoListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/cc/videoedit/TrimVideo$TrimVideoListener;->onTranscodeCompleted(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 373
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onTranscodeFailed(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "TrimVideo"

    const-string v1, "[Transcode] failed to transcode."

    .line 388
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v0, p0, Lcom/netease/cc/videoedit/TrimVideo$1;->val$transcoded:Ljava/lang/Object;

    monitor-enter v0

    .line 390
    :try_start_0
    iget-object v1, p0, Lcom/netease/cc/videoedit/TrimVideo$1;->val$transcoded:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 391
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    iget-object v0, p0, Lcom/netease/cc/videoedit/TrimVideo$1;->this$0:Lcom/netease/cc/videoedit/TrimVideo;

    invoke-static {v0}, Lcom/netease/cc/videoedit/TrimVideo;->access$000(Lcom/netease/cc/videoedit/TrimVideo;)Lcom/netease/cc/videoedit/TrimVideo$TrimVideoListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/cc/videoedit/TrimVideo$TrimVideoListener;->onTranscodeFailed(Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 391
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onTranscodeProgress(D)V
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/netease/cc/videoedit/TrimVideo$1;->this$0:Lcom/netease/cc/videoedit/TrimVideo;

    invoke-static {v0}, Lcom/netease/cc/videoedit/TrimVideo;->access$000(Lcom/netease/cc/videoedit/TrimVideo;)Lcom/netease/cc/videoedit/TrimVideo$TrimVideoListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/cc/videoedit/TrimVideo$TrimVideoListener;->onTranscodeProgress(D)V

    return-void
.end method
