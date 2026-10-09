.class public Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# static fields
.field protected static c:Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;


# instance fields
.field protected final a:Ljava/lang/String;

.field protected b:Z

.field private final d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;->c:Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 16
    const-class v0, Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;->a:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;->b:Z

    .line 66
    new-instance v0, Lcom/tencent/tmdownloader/internal/logreport/a;

    invoke-direct {v0, p0}, Lcom/tencent/tmdownloader/internal/logreport/a;-><init>(Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;)V

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;->d:Landroid/os/Handler;

    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;
    .locals 2

    .prologue
    .line 24
    const-class v1, Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;->c:Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;

    invoke-direct {v0}, Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;-><init>()V

    sput-object v0, Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;->c:Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;

    .line 28
    :cond_0
    sget-object v0, Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;->c:Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Lcom/tencent/tmdownloader/internal/logreport/g;->h()Lcom/tencent/tmdownloader/internal/logreport/g;

    move-result-object v0

    int-to-byte v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tmdownloader/internal/logreport/g;->a(Ljava/lang/String;B)V

    .line 76
    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;->a:Ljava/lang/String;

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 84
    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;->a:Ljava/lang/String;

    const-string v1, "null == context return"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :goto_0
    return-void

    .line 88
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 93
    :try_start_0
    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;->a:Ljava/lang/String;

    const-string v3, "registerReceiver ok"

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;->b:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;->a:Ljava/lang/String;

    const-string v2, "registerReceiver fail"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;->b:Z

    .line 99
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 108
    sget-object v0, Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;->c:Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;

    if-nez v0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_0

    .line 117
    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;->b:Z

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;->b:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 33
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;->a:Ljava/lang/String;

    const-string v1, "onReceive intentPkgNameString == null "

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 43
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 44
    new-instance v2, Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 51
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 53
    const-string v2, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 55
    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_PACKAGE_REPLACED >> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iput v6, v1, Landroid/os/Message;->what:I

    .line 64
    :goto_1
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive packageName == null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    .line 58
    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_PACKAGE_ADDED >> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iput v5, v1, Landroid/os/Message;->what:I

    goto :goto_1
.end method
