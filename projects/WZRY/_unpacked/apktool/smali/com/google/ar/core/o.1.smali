.class Lcom/google/ar/core/o;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field final synthetic b:Lcom/google/ar/core/InstallActivity;


# direct methods
.method constructor <init>(Lcom/google/ar/core/InstallActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/google/ar/core/o;->b:Lcom/google/ar/core/InstallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ar/core/o;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ar/core/n;)V
    .locals 3

    iget-object v1, p0, Lcom/google/ar/core/o;->b:Lcom/google/ar/core/InstallActivity;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ar/core/o;->a:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ar/core/o;->b:Lcom/google/ar/core/InstallActivity;

    invoke-static {v0, p1}, Lcom/google/ar/core/InstallActivity;->access$402(Lcom/google/ar/core/InstallActivity;Lcom/google/ar/core/n;)Lcom/google/ar/core/n;

    invoke-virtual {p1}, Lcom/google/ar/core/n;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ar/core/o;->a:Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_0
    :try_start_1
    monitor-exit v1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/ar/core/o;->b:Lcom/google/ar/core/InstallActivity;

    new-instance v2, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;

    invoke-direct {v2}, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;-><init>()V

    invoke-static {v0, v2}, Lcom/google/ar/core/InstallActivity;->access$000(Lcom/google/ar/core/InstallActivity;Ljava/lang/Exception;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/google/ar/core/o;->b:Lcom/google/ar/core/InstallActivity;

    invoke-static {v0}, Lcom/google/ar/core/InstallActivity;->access$500(Lcom/google/ar/core/InstallActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/ar/core/o;->b:Lcom/google/ar/core/InstallActivity;

    invoke-static {v0}, Lcom/google/ar/core/InstallActivity;->access$600(Lcom/google/ar/core/InstallActivity;)V

    :cond_1
    iget-object v0, p0, Lcom/google/ar/core/o;->b:Lcom/google/ar/core/InstallActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/ar/core/InstallActivity;->access$000(Lcom/google/ar/core/InstallActivity;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 3

    iget-object v1, p0, Lcom/google/ar/core/o;->b:Lcom/google/ar/core/InstallActivity;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ar/core/o;->a:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ar/core/o;->a:Z

    iget-object v0, p0, Lcom/google/ar/core/o;->b:Lcom/google/ar/core/InstallActivity;

    sget-object v2, Lcom/google/ar/core/n;->b:Lcom/google/ar/core/n;

    invoke-static {v0, v2}, Lcom/google/ar/core/InstallActivity;->access$402(Lcom/google/ar/core/InstallActivity;Lcom/google/ar/core/n;)Lcom/google/ar/core/n;

    iget-object v0, p0, Lcom/google/ar/core/o;->b:Lcom/google/ar/core/InstallActivity;

    invoke-static {v0, p1}, Lcom/google/ar/core/InstallActivity;->access$000(Lcom/google/ar/core/InstallActivity;Ljava/lang/Exception;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
