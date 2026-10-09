.class Lcom/tencent/apollo/qr/zxing/InactivityTimer$InactivityAsyncTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/apollo/qr/zxing/InactivityTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InactivityAsyncTask"
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
.field final synthetic this$0:Lcom/tencent/apollo/qr/zxing/InactivityTimer;


# direct methods
.method private constructor <init>(Lcom/tencent/apollo/qr/zxing/InactivityTimer;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/apollo/qr/zxing/InactivityTimer$InactivityAsyncTask;->this$0:Lcom/tencent/apollo/qr/zxing/InactivityTimer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/apollo/qr/zxing/InactivityTimer;Lcom/tencent/apollo/qr/zxing/InactivityTimer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/apollo/qr/zxing/InactivityTimer$InactivityAsyncTask;-><init>(Lcom/tencent/apollo/qr/zxing/InactivityTimer;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-wide/32 v0, 0x493e0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Lcom/tencent/apollo/qr/zxing/InactivityTimer;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Finishing activity due to inactivity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/InactivityTimer$InactivityAsyncTask;->this$0:Lcom/tencent/apollo/qr/zxing/InactivityTimer;

    invoke-static {v0}, Lcom/tencent/apollo/qr/zxing/InactivityTimer;->access$400(Lcom/tencent/apollo/qr/zxing/InactivityTimer;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
