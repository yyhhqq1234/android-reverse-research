.class Lcom/tencent/tmdownloader/internal/logreport/a;
.super Landroid/os/Handler;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;


# direct methods
.method constructor <init>(Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/tencent/tmdownloader/internal/logreport/a;->a:Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 70
    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/logreport/a;->a:Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v0, v2}, Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;->a(Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;Ljava/lang/String;I)V

    .line 71
    return-void
.end method
