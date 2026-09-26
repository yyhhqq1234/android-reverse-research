.class final Lcom/netease/mkey/loginsdk/a$1;
.super Landroid/os/Handler;
.source "LoginHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mkey/loginsdk/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mkey/loginsdk/LoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mkey/loginsdk/LoginCallback;


# direct methods
.method constructor <init>(Lcom/netease/mkey/loginsdk/LoginCallback;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/netease/mkey/loginsdk/a$1;->a:Lcom/netease/mkey/loginsdk/LoginCallback;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 152
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 153
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 154
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "info"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    if-nez v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/netease/mkey/loginsdk/a$1;->a:Lcom/netease/mkey/loginsdk/LoginCallback;

    invoke-interface {v0}, Lcom/netease/mkey/loginsdk/LoginCallback;->onSuccess()V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    .line 158
    iget-object v0, p0, Lcom/netease/mkey/loginsdk/a$1;->a:Lcom/netease/mkey/loginsdk/LoginCallback;

    invoke-interface {v0}, Lcom/netease/mkey/loginsdk/LoginCallback;->onCancel()V

    goto :goto_0

    .line 160
    :cond_2
    iget-object v2, p0, Lcom/netease/mkey/loginsdk/a$1;->a:Lcom/netease/mkey/loginsdk/LoginCallback;

    invoke-interface {v2, v0, v1}, Lcom/netease/mkey/loginsdk/LoginCallback;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method
