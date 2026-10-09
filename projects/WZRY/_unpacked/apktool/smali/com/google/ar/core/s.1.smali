.class final Lcom/google/ar/core/s;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private final synthetic a:Lcom/google/ar/core/o;

.field private final synthetic b:Lcom/google/ar/core/m;


# direct methods
.method constructor <init>(Lcom/google/ar/core/m;Lcom/google/ar/core/o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ar/core/s;->b:Lcom/google/ar/core/m;

    iput-object p2, p0, Lcom/google/ar/core/s;->a:Lcom/google/ar/core/o;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.google.android.play.core.install.ACTION_INSTALL_STATUS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const-string v0, "install.status"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ar/core/s;->b:Lcom/google/ar/core/m;

    invoke-static {v0}, Lcom/google/ar/core/m;->d(Lcom/google/ar/core/m;)V

    const-string v0, "install.status"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/ar/core/s;->a:Lcom/google/ar/core/o;

    new-instance v1, Lcom/google/ar/core/exceptions/FatalException;

    const-string v2, "Unknown error from install service."

    invoke-direct {v1, v2}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ar/core/o;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/ar/core/s;->a:Lcom/google/ar/core/o;

    sget-object v1, Lcom/google/ar/core/n;->a:Lcom/google/ar/core/n;

    invoke-virtual {v0, v1}, Lcom/google/ar/core/o;->a(Lcom/google/ar/core/n;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/ar/core/s;->a:Lcom/google/ar/core/o;

    sget-object v1, Lcom/google/ar/core/n;->c:Lcom/google/ar/core/n;

    invoke-virtual {v0, v1}, Lcom/google/ar/core/o;->a(Lcom/google/ar/core/n;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/ar/core/s;->a:Lcom/google/ar/core/o;

    sget-object v1, Lcom/google/ar/core/n;->b:Lcom/google/ar/core/n;

    invoke-virtual {v0, v1}, Lcom/google/ar/core/o;->a(Lcom/google/ar/core/n;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ar/core/s;->a:Lcom/google/ar/core/o;

    new-instance v1, Lcom/google/ar/core/exceptions/FatalException;

    const-string v2, "Unknown error from install service."

    invoke-direct {v1, v2}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ar/core/o;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
