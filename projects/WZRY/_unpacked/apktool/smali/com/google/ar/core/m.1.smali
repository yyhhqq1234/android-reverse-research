.class Lcom/google/ar/core/m;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private volatile c:I

.field private d:Lcom/google/a/b/a/a/a/a;

.field private e:Landroid/content/BroadcastReceiver;

.field private f:Landroid/content/Context;

.field private final g:Landroid/content/ServiceConnection;

.field private final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/ar/core/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(B)V
    .locals 1

    invoke-direct {p0}, Lcom/google/ar/core/m;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/ar/core/m;->a:Ljava/util/Queue;

    sget v0, Lcom/google/ar/core/w;->a:I

    iput v0, p0, Lcom/google/ar/core/m;->c:I

    new-instance v0, Lcom/google/ar/core/p;

    invoke-direct {v0, p0}, Lcom/google/ar/core/p;-><init>(Lcom/google/ar/core/m;)V

    iput-object v0, p0, Lcom/google/ar/core/m;->g:Landroid/content/ServiceConnection;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/ar/core/m;->h:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private static a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/google/ar/core/o;)V
    .locals 7

    const-string v0, "resolution.intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/16 v2, 0x4d2

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v3, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/ar/core/exceptions/FatalException;

    const-string v2, "Installation Intent failed"

    invoke-direct {v1, v2, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v1}, Lcom/google/ar/core/o;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    const-string v0, "ARCore-InstallService"

    const-string v1, "Did not get pending intent."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    const-string v1, "Installation intent failed to unparcel."

    invoke-direct {v0, v1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/google/ar/core/o;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private declared-synchronized a(Landroid/os/IBinder;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/a/b/a/a/a/b;->a(Landroid/os/IBinder;)Lcom/google/a/b/a/a/a/a;

    move-result-object v0

    const-string v1, "ARCore-InstallService"

    const-string v2, "Install service connected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/google/ar/core/m;->d:Lcom/google/a/b/a/a/a/a;

    sget v0, Lcom/google/ar/core/w;->c:I

    iput v0, p0, Lcom/google/ar/core/m;->c:I

    iget-object v0, p0, Lcom/google/ar/core/m;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method

.method static synthetic a(Lcom/google/ar/core/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/ar/core/m;->d()V

    return-void
.end method

.method static synthetic a(Lcom/google/ar/core/m;Landroid/app/Activity;Landroid/os/Bundle;Lcom/google/ar/core/o;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/google/ar/core/m;->a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/google/ar/core/o;)V

    return-void
.end method

.method static synthetic a(Lcom/google/ar/core/m;Landroid/app/Activity;Lcom/google/ar/core/o;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/google/ar/core/m;->b(Landroid/app/Activity;Lcom/google/ar/core/o;)V

    return-void
.end method

.method static synthetic a(Lcom/google/ar/core/m;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/ar/core/m;->a(Landroid/os/IBinder;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ar/core/y;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/ar/core/m;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, -0x1

    packed-switch v0, :pswitch_data_0

    :goto_0
    monitor-exit p0

    return-void

    :pswitch_0
    :try_start_1
    new-instance v0, Lcom/google/ar/core/y;

    invoke-direct {v0}, Lcom/google/ar/core/y;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/google/ar/core/m;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static b()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "package.name"

    const-string v2, "com.google.ar.core"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method static synthetic b(Lcom/google/ar/core/m;)Landroid/os/Bundle;
    .locals 1

    invoke-static {}, Lcom/google/ar/core/m;->b()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/app/Activity;Lcom/google/ar/core/o;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=com.google.ar.core"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/ar/core/exceptions/FatalException;

    const-string v2, "Failed to launch installer."

    invoke-direct {v1, v2, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v1}, Lcom/google/ar/core/o;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/ar/core/m;)Lcom/google/a/b/a/a/a/a;
    .locals 1

    iget-object v0, p0, Lcom/google/ar/core/m;->d:Lcom/google/a/b/a/a/a/a;

    return-object v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/google/ar/core/m;->h:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ar/core/x;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/ar/core/x;->a()V

    :cond_0
    return-void
.end method

.method private declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "ARCore-InstallService"

    const-string v1, "Install service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/google/ar/core/w;->a:I

    iput v0, p0, Lcom/google/ar/core/m;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ar/core/m;->d:Lcom/google/a/b/a/a/a/a;

    invoke-direct {p0}, Lcom/google/ar/core/m;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d(Lcom/google/ar/core/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/ar/core/m;->c()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/ar/core/m;->c()V

    iget v0, p0, Lcom/google/ar/core/m;->c:I

    add-int/lit8 v0, v0, -0x1

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/google/ar/core/m;->e:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ar/core/m;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/ar/core/m;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/google/ar/core/m;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/ar/core/m;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ar/core/m;->b:Landroid/content/Context;

    sget v0, Lcom/google/ar/core/w;->a:I

    iput v0, p0, Lcom/google/ar/core/m;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/app/Activity;Lcom/google/ar/core/o;)V
    .locals 4

    new-instance v1, Lcom/google/ar/core/x;

    invoke-direct {v1, p1, p2}, Lcom/google/ar/core/x;-><init>(Landroid/content/Context;Lcom/google/ar/core/o;)V

    iget-object v0, p0, Lcom/google/ar/core/m;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ar/core/x;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/ar/core/x;->a()V

    :cond_0
    invoke-virtual {v1}, Lcom/google/ar/core/x;->start()V

    iget-object v0, p0, Lcom/google/ar/core/m;->e:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/ar/core/s;

    invoke-direct {v0, p0, p2}, Lcom/google/ar/core/s;-><init>(Lcom/google/ar/core/m;Lcom/google/ar/core/o;)V

    iput-object v0, p0, Lcom/google/ar/core/m;->e:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/google/ar/core/m;->f:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/ar/core/m;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/ar/core/m;->e:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.google.android.play.core.install.ACTION_INSTALL_STATUS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    :try_start_0
    new-instance v0, Lcom/google/ar/core/t;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/ar/core/t;-><init>(Lcom/google/ar/core/m;Landroid/app/Activity;Lcom/google/ar/core/o;)V

    invoke-direct {p0, v0}, Lcom/google/ar/core/m;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/google/ar/core/y; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "ARCore-InstallService"

    const-string v1, "requestInstall bind failed, launching fullscreen."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lcom/google/ar/core/m;->b(Landroid/app/Activity;Lcom/google/ar/core/o;)V

    goto :goto_0
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/ar/core/m;->b:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.play.core.install.BIND_INSTALL_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ar/core/m;->g:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/google/ar/core/w;->b:I

    iput v0, p0, Lcom/google/ar/core/m;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget v0, Lcom/google/ar/core/w;->a:I

    iput v0, p0, Lcom/google/ar/core/m;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ar/core/m;->b:Landroid/content/Context;

    const-string v0, "ARCore-InstallService"

    const-string v1, "bindService returned false."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/ar/core/m;->g:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/content/Context;Lcom/google/ar/core/ArCoreApk$a;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/ar/core/q;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/ar/core/q;-><init>(Lcom/google/ar/core/m;Landroid/content/Context;Lcom/google/ar/core/ArCoreApk$a;)V

    invoke-direct {p0, v0}, Lcom/google/ar/core/m;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/google/ar/core/y; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v0, "ARCore-InstallService"

    const-string v1, "Play Store install service could not be bound."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_ERROR:Lcom/google/ar/core/ArCoreApk$Availability;

    invoke-interface {p2, v0}, Lcom/google/ar/core/ArCoreApk$a;->a(Lcom/google/ar/core/ArCoreApk$Availability;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
