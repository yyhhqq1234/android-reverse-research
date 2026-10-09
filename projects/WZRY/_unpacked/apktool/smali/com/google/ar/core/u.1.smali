.class final Lcom/google/ar/core/u;
.super Lcom/google/a/b/a/a/a/e;


# instance fields
.field private final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final synthetic b:Lcom/google/ar/core/t;


# direct methods
.method constructor <init>(Lcom/google/ar/core/t;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ar/core/u;->b:Lcom/google/ar/core/t;

    iput-object p2, p0, Lcom/google/ar/core/u;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lcom/google/a/b/a/a/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ar/core/u;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "error.code"

    const/16 v1, -0x64

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "install.status"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/google/ar/core/u;->b:Lcom/google/ar/core/t;

    iget-object v0, v0, Lcom/google/ar/core/t;->b:Lcom/google/ar/core/o;

    sget-object v1, Lcom/google/ar/core/n;->c:Lcom/google/ar/core/n;

    invoke-virtual {v0, v1}, Lcom/google/ar/core/o;->a(Lcom/google/ar/core/n;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "ARCore-InstallService"

    const/16 v2, 0x33

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "requestInstall = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", launching fullscreen."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/ar/core/u;->b:Lcom/google/ar/core/t;

    iget-object v0, v0, Lcom/google/ar/core/t;->c:Lcom/google/ar/core/m;

    iget-object v1, p0, Lcom/google/ar/core/u;->b:Lcom/google/ar/core/t;

    iget-object v1, v1, Lcom/google/ar/core/t;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/ar/core/u;->b:Lcom/google/ar/core/t;

    iget-object v2, v2, Lcom/google/ar/core/t;->b:Lcom/google/ar/core/o;

    invoke-static {v0, v1, v2}, Lcom/google/ar/core/m;->a(Lcom/google/ar/core/m;Landroid/app/Activity;Lcom/google/ar/core/o;)V

    goto :goto_0

    :cond_2
    const-string v0, "resolution.intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/ar/core/u;->b:Lcom/google/ar/core/t;

    iget-object v0, v0, Lcom/google/ar/core/t;->c:Lcom/google/ar/core/m;

    iget-object v1, p0, Lcom/google/ar/core/u;->b:Lcom/google/ar/core/t;

    iget-object v1, v1, Lcom/google/ar/core/t;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/ar/core/u;->b:Lcom/google/ar/core/t;

    iget-object v2, v2, Lcom/google/ar/core/t;->b:Lcom/google/ar/core/o;

    invoke-static {v0, v1, p1, v2}, Lcom/google/ar/core/m;->a(Lcom/google/ar/core/m;Landroid/app/Activity;Landroid/os/Bundle;Lcom/google/ar/core/o;)V

    goto :goto_0

    :cond_3
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/ar/core/u;->b:Lcom/google/ar/core/t;

    iget-object v0, v0, Lcom/google/ar/core/t;->b:Lcom/google/ar/core/o;

    new-instance v2, Lcom/google/ar/core/exceptions/FatalException;

    const/16 v3, 0x26

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected install status: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/ar/core/o;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/ar/core/u;->b:Lcom/google/ar/core/t;

    iget-object v0, v0, Lcom/google/ar/core/t;->b:Lcom/google/ar/core/o;

    new-instance v1, Lcom/google/ar/core/exceptions/FatalException;

    const-string v2, "Unexpected REQUIRES_UI_INTENT install status without an intent."

    invoke-direct {v1, v2}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ar/core/o;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/ar/core/u;->b:Lcom/google/ar/core/t;

    iget-object v0, v0, Lcom/google/ar/core/t;->b:Lcom/google/ar/core/o;

    sget-object v1, Lcom/google/ar/core/n;->a:Lcom/google/ar/core/n;

    invoke-virtual {v0, v1}, Lcom/google/ar/core/o;->a(Lcom/google/ar/core/n;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/ar/core/u;->b:Lcom/google/ar/core/t;

    iget-object v0, v0, Lcom/google/ar/core/t;->b:Lcom/google/ar/core/o;

    sget-object v1, Lcom/google/ar/core/n;->c:Lcom/google/ar/core/n;

    invoke-virtual {v0, v1}, Lcom/google/ar/core/o;->a(Lcom/google/ar/core/n;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/google/ar/core/u;->b:Lcom/google/ar/core/t;

    iget-object v0, v0, Lcom/google/ar/core/t;->b:Lcom/google/ar/core/o;

    sget-object v1, Lcom/google/ar/core/n;->b:Lcom/google/ar/core/n;

    invoke-virtual {v0, v1}, Lcom/google/ar/core/o;->a(Lcom/google/ar/core/n;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/google/ar/core/u;->b:Lcom/google/ar/core/t;

    iget-object v0, v0, Lcom/google/ar/core/t;->b:Lcom/google/ar/core/o;

    new-instance v1, Lcom/google/ar/core/exceptions/FatalException;

    const-string v2, "Unexpected FAILED install status without error."

    invoke-direct {v1, v2}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ar/core/o;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
