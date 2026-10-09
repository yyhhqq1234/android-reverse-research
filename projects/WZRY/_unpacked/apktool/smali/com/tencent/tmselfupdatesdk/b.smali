.class Lcom/tencent/tmselfupdatesdk/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tmselfupdatesdk/internal/b;


# instance fields
.field final synthetic a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;


# direct methods
.method constructor <init>(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;)V
    .locals 0

    .prologue
    .line 1222
    iput-object p1, p0, Lcom/tencent/tmselfupdatesdk/b;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 1224
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1228
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "packageAction == PackageInstallReceiver.PACKAGE_ADDED"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    :cond_0
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    return-void
.end method
