.class final Lcom/netease/mkey/loginsdk/a$3;
.super Lcom/netease/mkey/b$a;
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
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/netease/mkey/loginsdk/a$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netease/mkey/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/netease/mkey/loginsdk/a$3;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(ILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 188
    invoke-static {}, Lcom/netease/mkey/loginsdk/a;->c()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 189
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 190
    const-string v2, "code"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 191
    const-string v2, "info"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 193
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 195
    invoke-static {}, Lcom/netease/mkey/loginsdk/a;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/netease/mkey/loginsdk/a;->d()Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 196
    invoke-static {v3}, Lcom/netease/mkey/loginsdk/a;->a(Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 197
    invoke-static {v3}, Lcom/netease/mkey/loginsdk/a;->a(Lcom/netease/mkey/a;)Lcom/netease/mkey/a;

    .line 198
    invoke-static {v3}, Lcom/netease/mkey/loginsdk/a;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 199
    invoke-static {v3}, Lcom/netease/mkey/loginsdk/a;->a(Lcom/netease/mkey/b;)Lcom/netease/mkey/b;

    .line 200
    return-void
.end method
