.class Lcom/tencent/android/tpush/b;
.super Landroid/os/Handler;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/tencent/android/tpush/XGDownloadService;


# direct methods
.method constructor <init>(Lcom/tencent/android/tpush/XGDownloadService;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/tencent/android/tpush/b;->a:Lcom/tencent/android/tpush/XGDownloadService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/16 v5, 0x10

    .line 47
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 49
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 77
    iget-object v0, p0, Lcom/tencent/android/tpush/b;->a:Lcom/tencent/android/tpush/XGDownloadService;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/XGDownloadService;->stopSelf()V

    .line 79
    :goto_0
    return-void

    .line 52
    :pswitch_0
    iget-object v1, p0, Lcom/tencent/android/tpush/b;->a:Lcom/tencent/android/tpush/XGDownloadService;

    invoke-static {v1}, Lcom/tencent/android/tpush/XGDownloadService;->a(Lcom/tencent/android/tpush/XGDownloadService;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 53
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    iget-object v1, p0, Lcom/tencent/android/tpush/b;->a:Lcom/tencent/android/tpush/XGDownloadService;

    iget-object v3, p0, Lcom/tencent/android/tpush/b;->a:Lcom/tencent/android/tpush/XGDownloadService;

    const/4 v4, 0x0

    invoke-static {v3, v0, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/XGDownloadService;->a(Lcom/tencent/android/tpush/XGDownloadService;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 58
    iget-object v1, p0, Lcom/tencent/android/tpush/b;->a:Lcom/tencent/android/tpush/XGDownloadService;

    invoke-static {v1}, Lcom/tencent/android/tpush/XGDownloadService;->b(Lcom/tencent/android/tpush/XGDownloadService;)Landroid/app/Notification;

    move-result-object v1

    iput v5, v1, Landroid/app/Notification;->flags:I

    .line 59
    iget-object v1, p0, Lcom/tencent/android/tpush/b;->a:Lcom/tencent/android/tpush/XGDownloadService;

    invoke-static {v1}, Lcom/tencent/android/tpush/XGDownloadService;->b(Lcom/tencent/android/tpush/XGDownloadService;)Landroid/app/Notification;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 62
    iget-object v1, p0, Lcom/tencent/android/tpush/b;->a:Lcom/tencent/android/tpush/XGDownloadService;

    invoke-static {v1}, Lcom/tencent/android/tpush/XGDownloadService;->c(Lcom/tencent/android/tpush/XGDownloadService;)Landroid/app/NotificationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/b;->a:Lcom/tencent/android/tpush/XGDownloadService;

    invoke-static {v2}, Lcom/tencent/android/tpush/XGDownloadService;->b(Lcom/tencent/android/tpush/XGDownloadService;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 66
    iget-object v0, p0, Lcom/tencent/android/tpush/b;->a:Lcom/tencent/android/tpush/XGDownloadService;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/XGDownloadService;->stopSelf()V

    goto :goto_0

    .line 70
    :pswitch_1
    iget-object v1, p0, Lcom/tencent/android/tpush/b;->a:Lcom/tencent/android/tpush/XGDownloadService;

    invoke-static {v1}, Lcom/tencent/android/tpush/XGDownloadService;->b(Lcom/tencent/android/tpush/XGDownloadService;)Landroid/app/Notification;

    move-result-object v1

    iput v5, v1, Landroid/app/Notification;->flags:I

    .line 73
    iget-object v1, p0, Lcom/tencent/android/tpush/b;->a:Lcom/tencent/android/tpush/XGDownloadService;

    invoke-static {v1}, Lcom/tencent/android/tpush/XGDownloadService;->c(Lcom/tencent/android/tpush/XGDownloadService;)Landroid/app/NotificationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/b;->a:Lcom/tencent/android/tpush/XGDownloadService;

    invoke-static {v2}, Lcom/tencent/android/tpush/XGDownloadService;->b(Lcom/tencent/android/tpush/XGDownloadService;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
