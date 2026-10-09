.class public final Lcom/netease/loginapi/qrcode/DecodeThread;
.super Ljava/lang/Thread;
.source "Proguard"


# static fields
.field public static final BARCODE_BITMAP:Ljava/lang/String; = "barcode_bitmap"

.field public static final BARCODE_SCALED_FACTOR:Ljava/lang/String; = "barcode_scaled_factor"


# instance fields
.field public final captureInterface:Lcom/netease/loginapi/qrcode/CaptureInterface;

.field public handler:Landroid/os/Handler;

.field public final handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

.field public final hints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netease/loginapi/qrcode/CaptureInterface;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/loginapi/qrcode/CaptureInterface;",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/google/zxing/ResultPointCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/netease/loginapi/qrcode/DecodeThread;->captureInterface:Lcom/netease/loginapi/qrcode/CaptureInterface;

    .line 4
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/netease/loginapi/qrcode/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 6
    new-instance p1, Ljava/util/EnumMap;

    const-class v0, Lcom/google/zxing/DecodeHintType;

    invoke-direct {p1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/netease/loginapi/qrcode/DecodeThread;->hints:Ljava/util/Map;

    if-eqz p3, :cond_0

    .line 8
    invoke-interface {p1, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 13
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 16
    :cond_1
    const-class p1, Lcom/google/zxing/BarcodeFormat;

    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p2

    .line 17
    sget-object p1, Lcom/netease/loginapi/qrcode/DecodeFormatManager;->QR_CODE_FORMATS:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/netease/loginapi/qrcode/DecodeThread;->hints:Ljava/util/Map;

    sget-object p3, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_3

    .line 22
    iget-object p1, p0, Lcom/netease/loginapi/qrcode/DecodeThread;->hints:Ljava/util/Map;

    sget-object p2, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_3
    iget-object p1, p0, Lcom/netease/loginapi/qrcode/DecodeThread;->hints:Ljava/util/Map;

    sget-object p2, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p1, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Hints: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/loginapi/qrcode/DecodeThread;->hints:Ljava/util/Map;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DecodeThread"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :catch_0
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/DecodeThread;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2
    new-instance v0, Lcom/netease/loginapi/qrcode/DecodeHandler;

    iget-object v1, p0, Lcom/netease/loginapi/qrcode/DecodeThread;->captureInterface:Lcom/netease/loginapi/qrcode/CaptureInterface;

    iget-object v2, p0, Lcom/netease/loginapi/qrcode/DecodeThread;->hints:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/netease/loginapi/qrcode/DecodeHandler;-><init>(Lcom/netease/loginapi/qrcode/CaptureInterface;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/netease/loginapi/qrcode/DecodeThread;->handler:Landroid/os/Handler;

    .line 3
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-class v1, Lcom/netease/loginapi/qrcode/DecodeThread;

    const-string v2, "DecodeThreadRunning"

    invoke-static {v1, v2, v0}, Lcom/netease/loginapi/util/Trace;->p(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
