.class Lcom/subao/common/j/h$b;
.super Landroid/content/BroadcastReceiver;
.source "NetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/j/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/subao/common/j/h;


# direct methods
.method constructor <init>(Lcom/subao/common/j/h;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/subao/common/j/h$b;->a:Lcom/subao/common/j/h;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 223
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 224
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/subao/common/j/h$b;->a:Lcom/subao/common/j/h;

    invoke-virtual {v0, p1}, Lcom/subao/common/j/h;->c(Landroid/content/Context;)V

    .line 227
    :cond_0
    return-void
.end method
