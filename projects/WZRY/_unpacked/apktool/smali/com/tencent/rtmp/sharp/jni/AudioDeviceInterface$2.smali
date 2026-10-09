.class Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface$2;
.super Ljava/lang/Object;
.source "AudioDeviceInterface.java"

# interfaces
.implements Lcom/tencent/rtmp/sharp/jni/TraeAudioSession$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;->call_preprocess_media()I
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
    .line 1423
    iput-object p1, p0, Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface$2;->a:Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 1484
    return-void
.end method

.method public a(II)V
    .locals 0

    .prologue
    .line 1489
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 1466
    if-nez p1, :cond_0

    .line 1467
    iget-object v0, p0, Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface$2;->a:Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;

    invoke-static {v0, p2}, Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;->access$400(Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;Ljava/lang/String;)V

    .line 1468
    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 1455
    return-void
.end method

.method public a(IZ)V
    .locals 0

    .prologue
    .line 1461
    return-void
.end method

.method public a(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1449
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 1505
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1499
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 1428
    return-void
.end method

.method public a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface$2;->a:Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;

    invoke-static {v0}, Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;->access$300(Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1436
    iget-object v0, p0, Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface$2;->a:Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;

    invoke-static {v0, p2}, Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;->access$400(Lcom/tencent/rtmp/sharp/jni/AudioDeviceInterface;Ljava/lang/String;)V

    .line 1437
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 1494
    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1474
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 1442
    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1479
    return-void
.end method
