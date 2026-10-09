.class Lcom/standardar/common/Client$ClientHandler;
.super Landroid/os/Handler;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/standardar/common/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/standardar/common/Client;


# direct methods
.method private constructor <init>(Lcom/standardar/common/Client;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/standardar/common/Client$ClientHandler;->this$0:Lcom/standardar/common/Client;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/standardar/common/Client;Lcom/standardar/common/Client$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/standardar/common/Client;
    .param p2, "x1"    # Lcom/standardar/common/Client$1;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/standardar/common/Client$ClientHandler;-><init>(Lcom/standardar/common/Client;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 73
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/standardar/common/Util;->LOGW(Ljava/lang/String;)V

    .line 86
    :goto_0
    return-void

    .line 75
    :pswitch_0
    iget-object v0, p0, Lcom/standardar/common/Client$ClientHandler;->this$0:Lcom/standardar/common/Client;

    invoke-virtual {v0}, Lcom/standardar/common/Client;->initSLAM()V

    goto :goto_0

    .line 79
    :pswitch_1
    iget-object v0, p0, Lcom/standardar/common/Client$ClientHandler;->this$0:Lcom/standardar/common/Client;

    invoke-virtual {v0}, Lcom/standardar/common/Client;->startSLAM()V

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
