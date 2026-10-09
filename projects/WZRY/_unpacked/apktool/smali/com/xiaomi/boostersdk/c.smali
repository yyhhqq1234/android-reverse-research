.class public Lcom/xiaomi/boostersdk/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Lcom/xiaomi/boostersdk/GameBoosterEngineCallback;

.field private static c:Z

.field private static d:Z

.field private static e:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/boostersdk/c;->a:Z

    new-instance v0, Lcom/xiaomi/boostersdk/d;

    invoke-direct {v0}, Lcom/xiaomi/boostersdk/d;-><init>()V

    sput-object v0, Lcom/xiaomi/boostersdk/c;->e:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/boostersdk/GameBoosterEngineCallback;)V
    .locals 2

    sget-boolean v0, Lcom/xiaomi/boostersdk/c;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/boostersdk/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "action_thermal_control_change"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/boostersdk/c;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sput-object p1, Lcom/xiaomi/boostersdk/c;->b:Lcom/xiaomi/boostersdk/GameBoosterEngineCallback;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/boostersdk/c;->a:Z

    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Lcom/xiaomi/boostersdk/c;->d:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/xiaomi/boostersdk/c;->d:Z

    :goto_0
    return v0

    :cond_0
    const-string v0, "ro.miui.ui.version.code"

    invoke-static {v0, v1}, Lcom/xiaomi/boostersdk/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "ro.miui.ui.version.name"

    invoke-static {v0, v1}, Lcom/xiaomi/boostersdk/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "ro.miui.internal.storage"

    invoke-static {v0, v1}, Lcom/xiaomi/boostersdk/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    sput-boolean v2, Lcom/xiaomi/boostersdk/c;->c:Z

    :goto_1
    sput-boolean v2, Lcom/xiaomi/boostersdk/c;->d:Z

    sget-boolean v0, Lcom/xiaomi/boostersdk/c;->c:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/boostersdk/c;->c:Z

    goto :goto_1
.end method

.method static synthetic b()Lcom/xiaomi/boostersdk/GameBoosterEngineCallback;
    .locals 1

    sget-object v0, Lcom/xiaomi/boostersdk/c;->b:Lcom/xiaomi/boostersdk/GameBoosterEngineCallback;

    return-object v0
.end method

.method static synthetic c()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/boostersdk/c;->a:Z

    return v0
.end method
