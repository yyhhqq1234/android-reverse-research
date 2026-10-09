.class Lcom/netease/dwrg/Client$5;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/Client;->setKeepScreenOn(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/dwrg/Client;

.field final synthetic val$clint:Lcom/netease/dwrg/Client;

.field final synthetic val$f:Z


# direct methods
.method constructor <init>(Lcom/netease/dwrg/Client;ZLcom/netease/dwrg/Client;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1828
    iput-object p1, p0, Lcom/netease/dwrg/Client$5;->this$0:Lcom/netease/dwrg/Client;

    iput-boolean p2, p0, Lcom/netease/dwrg/Client$5;->val$f:Z

    iput-object p3, p0, Lcom/netease/dwrg/Client$5;->val$clint:Lcom/netease/dwrg/Client;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1832
    iget-boolean v0, p0, Lcom/netease/dwrg/Client$5;->val$f:Z

    const/16 v1, 0x80

    if-eqz v0, :cond_0

    .line 1834
    iget-object v0, p0, Lcom/netease/dwrg/Client$5;->val$clint:Lcom/netease/dwrg/Client;

    invoke-virtual {v0}, Lcom/netease/dwrg/Client;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 1838
    :cond_0
    iget-object v0, p0, Lcom/netease/dwrg/Client$5;->val$clint:Lcom/netease/dwrg/Client;

    invoke-virtual {v0}, Lcom/netease/dwrg/Client;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    return-void
.end method
