.class public Lcom/tencent/component/plugin/DefendService;
.super Landroid/app/Service;
.source "DefendService.java"


# static fields
.field public static final DEFEND_PLUGIN_DELAY_TIME:Ljava/lang/String; = "_defend_service_delay_time"

.field public static final DEFEND_PLUGIN_ID:Ljava/lang/String; = "_defend_service_plugin_id"

.field public static final DEFEND_STARTGAME_PKGNAME:Ljava/lang/String; = "_defend_service_startgame_pkgname"

.field public static final DELAY_STARTGAME_ACTION:Ljava/lang/String; = "com.tencent.component.platform.startgame"

.field private static final MSG_START_GAME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DefendService"


# instance fields
.field private cachedContext:Landroid/content/Context;

.field private mDelayStartGameHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/component/plugin/DefendService;->cachedContext:Landroid/content/Context;

    .line 66
    new-instance v0, Lcom/tencent/component/plugin/DefendService$1;

    invoke-direct {v0, p0}, Lcom/tencent/component/plugin/DefendService$1;-><init>(Lcom/tencent/component/plugin/DefendService;)V

    iput-object v0, p0, Lcom/tencent/component/plugin/DefendService;->mDelayStartGameHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/component/plugin/DefendService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/component/plugin/DefendService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tencent/component/plugin/DefendService;->cachedContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/component/plugin/DefendService;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/component/plugin/DefendService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/content/Context;
    .param p3, "x3"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/component/plugin/DefendService;->startGame(Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method private startGame(Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz p2, :cond_1

    .line 96
    const/4 v1, 0x0

    .line 99
    .local v1, "mainIntent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 100
    .local v4, "pm":Landroid/content/pm/PackageManager;
    if-eqz v4, :cond_1

    .line 101
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 102
    if-nez v1, :cond_0

    .line 103
    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 104
    .local v3, "p":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    .line 105
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .end local v1    # "mainIntent":Landroid/content/Intent;
    .local v2, "mainIntent":Landroid/content/Intent;
    move-object v1, v2

    .line 108
    .end local v2    # "mainIntent":Landroid/content/Intent;
    .end local v3    # "p":Landroid/content/pm/PackageInfo;
    .restart local v1    # "mainIntent":Landroid/content/Intent;
    :cond_0
    if-eqz v1, :cond_1

    .line 109
    const/high16 v5, 0x10200000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 110
    invoke-virtual {v1, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v1    # "mainIntent":Landroid/content/Intent;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    return-void

    .line 115
    .restart local v1    # "mainIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 128
    const-string v0, "DefendService"

    const-string v1, "DefendService onCreate"

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/tencent/component/plugin/DefendService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/component/UtilitiesInitial;->init(Landroid/content/Context;)V

    .line 131
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 132
    return-void
.end method

.method protected onReceiveStartGameAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    .line 39
    const-string v4, "DefendService"

    const-string v5, "onReceiveStartGameAction"

    invoke-static {v4, v5}, Lcom/tencent/component/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 41
    .local v2, "extras":Landroid/os/Bundle;
    if-nez v2, :cond_0

    .line 63
    :goto_0
    return-void

    .line 45
    :cond_0
    const-string v4, "_defend_service_delay_time"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 47
    .local v0, "delayMillis":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    .line 48
    const-wide/16 v0, 0x0

    .line 50
    :cond_1
    const-string v4, "_defend_service_delay_time"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/tencent/component/plugin/DefendService;->cachedContext:Landroid/content/Context;

    .line 54
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 55
    .local v3, "msg":Landroid/os/Message;
    iput v7, v3, Landroid/os/Message;->what:I

    .line 56
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 58
    const-string v4, "DefendService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceiveStartGameAction delayMillis:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/component/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "\u83b7\u53d6\u8d26\u53f7\u4fe1\u606f\u6210\u529f,\u5c06\u57283\u79d2\u5185\u91cd\u542f\u6e38\u620f,\u8bf7\u8010\u5fc3\u7b49\u5f85"

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 62
    iget-object v4, p0, Lcom/tencent/component/plugin/DefendService;->mDelayStartGameHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 137
    const-string v0, "DefendService"

    const-string v1, "DefendService onStart"

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 139
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 143
    const-string v1, "DefendService"

    const-string v2, "DefendService onStartCommand"

    invoke-static {v1, v2}, Lcom/tencent/component/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    if-eqz p1, :cond_0

    .line 145
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "action":Ljava/lang/String;
    const-string v1, "DefendService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartCommand"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/component/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v1, "com.tencent.component.platform.startgame"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/tencent/component/plugin/DefendService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/tencent/component/plugin/DefendService;->onReceiveStartGameAction(Landroid/content/Context;Landroid/content/Intent;)V

    .line 152
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1
.end method
