.class final Lcom/tencent/apollo/qr/zxing/camera/AutoFocusManager$AutoFocusTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/apollo/qr/zxing/camera/AutoFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/apollo/qr/zxing/camera/AutoFocusManager;


# direct methods
.method private constructor <init>(Lcom/tencent/apollo/qr/zxing/camera/AutoFocusManager;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/apollo/qr/zxing/camera/AutoFocusManager$AutoFocusTask;->this$0:Lcom/tencent/apollo/qr/zxing/camera/AutoFocusManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/apollo/qr/zxing/camera/AutoFocusManager;Lcom/tencent/apollo/qr/zxing/camera/AutoFocusManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/apollo/qr/zxing/camera/AutoFocusManager$AutoFocusTask;-><init>(Lcom/tencent/apollo/qr/zxing/camera/AutoFocusManager;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/camera/AutoFocusManager$AutoFocusTask;->this$0:Lcom/tencent/apollo/qr/zxing/camera/AutoFocusManager;

    invoke-virtual {v0}, Lcom/tencent/apollo/qr/zxing/camera/AutoFocusManager;->start()V

    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
