.class final Lcom/google/ar/core/r;
.super Lcom/google/a/b/a/a/a/e;


# instance fields
.field private final synthetic a:Lcom/google/ar/core/q;


# direct methods
.method constructor <init>(Lcom/google/ar/core/q;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ar/core/r;->a:Lcom/google/ar/core/q;

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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "error.code"

    const/16 v1, -0x64

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v1, "ARCore-InstallService"

    const/16 v2, 0x21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "requestInfo returned: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/ar/core/r;->a:Lcom/google/ar/core/q;

    iget-object v0, v0, Lcom/google/ar/core/q;->a:Lcom/google/ar/core/ArCoreApk$a;

    sget-object v1, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_ERROR:Lcom/google/ar/core/ArCoreApk$Availability;

    invoke-interface {v0, v1}, Lcom/google/ar/core/ArCoreApk$a;->a(Lcom/google/ar/core/ArCoreApk$Availability;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/ar/core/r;->a:Lcom/google/ar/core/q;

    iget-object v0, v0, Lcom/google/ar/core/q;->a:Lcom/google/ar/core/ArCoreApk$a;

    sget-object v1, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_NOT_INSTALLED:Lcom/google/ar/core/ArCoreApk$Availability;

    invoke-interface {v0, v1}, Lcom/google/ar/core/ArCoreApk$a;->a(Lcom/google/ar/core/ArCoreApk$Availability;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "ARCore-InstallService"

    const-string v1, "The Google Play application must be updated."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/ar/core/r;->a:Lcom/google/ar/core/q;

    iget-object v0, v0, Lcom/google/ar/core/q;->a:Lcom/google/ar/core/ArCoreApk$a;

    sget-object v1, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_ERROR:Lcom/google/ar/core/ArCoreApk$Availability;

    invoke-interface {v0, v1}, Lcom/google/ar/core/ArCoreApk$a;->a(Lcom/google/ar/core/ArCoreApk$Availability;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "ARCore-InstallService"

    const-string v1, "The device is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/ar/core/r;->a:Lcom/google/ar/core/q;

    iget-object v0, v0, Lcom/google/ar/core/q;->a:Lcom/google/ar/core/ArCoreApk$a;

    sget-object v1, Lcom/google/ar/core/ArCoreApk$Availability;->UNSUPPORTED_DEVICE_NOT_CAPABLE:Lcom/google/ar/core/ArCoreApk$Availability;

    invoke-interface {v0, v1}, Lcom/google/ar/core/ArCoreApk$a;->a(Lcom/google/ar/core/ArCoreApk$Availability;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
