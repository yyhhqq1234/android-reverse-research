.class Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface$1;
.super Ljava/lang/Object;
.source "AudioDeviceInterface.java"

# interfaces
.implements Lcom/tencent/rtmp/sharp/jni/TraeAudioSession$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;->call_preprocess()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;


# direct methods
.method constructor <init>(Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;)V
    .locals 0

    .prologue
    .line 1235
    iput-object p1, p0, Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface$1;->a:Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 1316
    return-void
.end method

.method public a(II)V
    .locals 0

    .prologue
    .line 1322
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 1295
    if-nez p1, :cond_0

    .line 1296
    iget-object v0, p0, Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface$1;->a:Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;

    invoke-static {v0, p2}, Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;->access$400(Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;Ljava/lang/String;)V

    .line 1297
    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 1282
    return-void
.end method

.method public a(IZ)V
    .locals 0

    .prologue
    .line 1289
    return-void
.end method

.method public a(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1275
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 1355
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1346
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 1240
    if-nez p1, :cond_1

    .line 1242
    :try_start_0
    iget-object v0, p0, Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface$1;->a:Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;

    invoke-static {v0}, Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;->access$000(Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1243
    iget-object v0, p0, Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface$1;->a:Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;->access$102(Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;Z)Z

    .line 1244
    invoke-static {}, Lcom/tencent/rtmp/sharp/jni/QLog;->isColorLevel()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TRAE"

    const/4 v1, 0x2

    const-string v2, "onVoicecallPreprocessRes signalAll"

    invoke-static {v0, v1, v2}, Lcom/tencent/rtmp/sharp/jni/QLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1245
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface$1;->a:Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;

    invoke-static {v0}, Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;->access$200(Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 1246
    iget-object v0, p0, Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface$1;->a:Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;

    invoke-static {v0}, Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;->access$000(Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1252
    :cond_1
    :goto_0
    return-void

    .line 1247
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface$1;->a:Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;

    invoke-static {v0}, Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;->access$300(Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1260
    iget-object v0, p0, Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface$1;->a:Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;

    invoke-static {v0, p2}, Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;->access$400(Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;Ljava/lang/String;)V

    .line 1261
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 1329
    :try_start_0
    iget-object v0, p0, Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface$1;->a:Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;

    invoke-static {v0}, Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;->access$000(Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1330
    iget-object v0, p0, Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface$1;->a:Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;->access$102(Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;Z)Z

    .line 1331
    invoke-static {}, Lcom/tencent/rtmp/sharp/jni/QLog;->isColorLevel()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TRAE"

    const/4 v1, 0x2

    const-string v2, "onVoicecallPreprocessRes signalAll"

    invoke-static {v0, v1, v2}, Lcom/tencent/rtmp/sharp/jni/QLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1332
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface$1;->a:Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;

    invoke-static {v0}, Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;->access$200(Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 1333
    iget-object v0, p0, Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface$1;->a:Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;

    invoke-static {v0}, Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;->access$000(Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1338
    :goto_0
    return-void

    .line 1334
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1304
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 1267
    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1310
    return-void
.end method
