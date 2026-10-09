.class Lcom/tencent/tmselfupdatesdk/internal/a;
.super Landroid/os/Handler;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;


# direct methods
.method constructor <init>(Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/tencent/tmselfupdatesdk/internal/a;->a:Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 98
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/internal/a;->a:Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v0, v2}, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->a(Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;Ljava/lang/String;I)V

    .line 99
    return-void
.end method
