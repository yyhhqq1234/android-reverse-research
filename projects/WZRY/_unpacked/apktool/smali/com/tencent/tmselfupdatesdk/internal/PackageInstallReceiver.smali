.class public Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# static fields
.field private static d:Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;


# instance fields
.field protected final a:Ljava/lang/String;

.field protected b:Z

.field c:Ljava/util/ArrayList;

.field private final e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->d:Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 17
    const-class v0, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->a:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->b:Z

    .line 94
    new-instance v0, Lcom/tencent/tmselfupdatesdk/internal/a;

    invoke-direct {v0, p0}, Lcom/tencent/tmselfupdatesdk/internal/a;-><init>(Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;)V

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->e:Landroid/os/Handler;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->c:Ljava/util/ArrayList;

    .line 109
    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;
    .locals 2

    .prologue
    .line 28
    const-class v1, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->d:Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;

    invoke-direct {v0}, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;-><init>()V

    sput-object v0, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->d:Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;

    .line 31
    :cond_0
    sget-object v0, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->d:Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmselfupdatesdk/internal/b;

    .line 104
    invoke-interface {v0, p1, p2}, Lcom/tencent/tmselfupdatesdk/internal/b;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 75
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 76
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->b:Z

    .line 82
    :cond_0
    return-void
.end method

.method public a(Lcom/tencent/tmselfupdatesdk/internal/b;)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 85
    if-nez p1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->b:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->b:Z

    goto :goto_0
.end method

.method public b(Lcom/tencent/tmselfupdatesdk/internal/b;)V
    .locals 1

    .prologue
    .line 120
    if-eqz p1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 123
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 36
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intent Action >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->a:Ljava/lang/String;

    const-string v1, "intentPkgNameString == null "

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :goto_0
    return-void

    .line 44
    :cond_0
    const-string v1, ""

    .line 45
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 46
    array-length v2, v1

    if-ne v2, v6, :cond_2

    .line 47
    aget-object v1, v1, v5

    .line 54
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 55
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 58
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_PACKAGE_REMOVED >> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iput v6, v2, Landroid/os/Message;->what:I

    .line 68
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->e:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName == null "

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

    .line 60
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 61
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_PACKAGE_REPLACED >> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x3

    iput v0, v2, Landroid/os/Message;->what:I

    goto :goto_1

    .line 63
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_PACKAGE_ADDED >> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iput v5, v2, Landroid/os/Message;->what:I

    goto :goto_1
.end method
