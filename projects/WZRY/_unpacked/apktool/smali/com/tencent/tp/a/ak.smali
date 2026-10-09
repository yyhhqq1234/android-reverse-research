.class Lcom/tencent/tp/a/ak;
.super Ljava/util/TimerTask;


# instance fields
.field private a:Lcom/tencent/tp/a/aj;


# direct methods
.method public constructor <init>(Lcom/tencent/tp/a/aj;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput-object p1, p0, Lcom/tencent/tp/a/ak;->a:Lcom/tencent/tp/a/aj;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tp/a/ak;->a:Lcom/tencent/tp/a/aj;

    invoke-virtual {v0}, Lcom/tencent/tp/a/aj;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tp/a/ak;->a:Lcom/tencent/tp/a/aj;

    invoke-virtual {v1, v0}, Lcom/tencent/tp/a/aj;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
