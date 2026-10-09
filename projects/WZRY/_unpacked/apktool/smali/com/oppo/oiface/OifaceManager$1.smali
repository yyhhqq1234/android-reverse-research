.class Lcom/oppo/oiface/OifaceManager$1;
.super Lcom/oppo/oiface/IOIfaceNotifier$Stub;


# instance fields
.field final synthetic this$0:Lcom/oppo/oiface/OifaceManager;


# direct methods
.method constructor <init>(Lcom/oppo/oiface/OifaceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/oiface/OifaceManager$1;->this$0:Lcom/oppo/oiface/OifaceManager;

    invoke-direct {p0}, Lcom/oppo/oiface/IOIfaceNotifier$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemNotify(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oppo/oiface/OifaceManager$1;->this$0:Lcom/oppo/oiface/OifaceManager;

    invoke-static {v0}, Lcom/oppo/oiface/OifaceManager;->access$000(Lcom/oppo/oiface/OifaceManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/oiface/OifaceManager$1;->this$0:Lcom/oppo/oiface/OifaceManager;

    invoke-static {v0}, Lcom/oppo/oiface/OifaceManager;->access$000(Lcom/oppo/oiface/OifaceManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/oiface/CallBack;

    invoke-interface {v0, p1}, Lcom/oppo/oiface/CallBack;->systemCallBack(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
