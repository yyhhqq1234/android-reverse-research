.class Lcom/netease/epay/sdk/base/view/AutoSmsAuthCodeEditText$1;
.super Landroid/os/Handler;
.source "AutoSmsAuthCodeEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base/view/AutoSmsAuthCodeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base/view/AutoSmsAuthCodeEditText;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base/view/AutoSmsAuthCodeEditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/epay/sdk/base/view/AutoSmsAuthCodeEditText;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/netease/epay/sdk/base/view/AutoSmsAuthCodeEditText$1;->this$0:Lcom/netease/epay/sdk/base/view/AutoSmsAuthCodeEditText;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 26
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 27
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/AutoSmsAuthCodeEditText$1;->this$0:Lcom/netease/epay/sdk/base/view/AutoSmsAuthCodeEditText;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/base/view/AutoSmsAuthCodeEditText;->setText(Ljava/lang/CharSequence;)V

    .line 29
    :cond_0
    return-void
.end method
