.class Lcom/tencent/android/tpush/n;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/tencent/android/tpush/XGPushActivity;


# direct methods
.method constructor <init>(Lcom/tencent/android/tpush/XGPushActivity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/tencent/android/tpush/n;->b:Lcom/tencent/android/tpush/XGPushActivity;

    iput-object p2, p0, Lcom/tencent/android/tpush/n;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 328
    iget-object v0, p0, Lcom/tencent/android/tpush/n;->a:Landroid/content/Intent;

    const-string v1, "action"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 331
    iget-object v0, p0, Lcom/tencent/android/tpush/n;->b:Lcom/tencent/android/tpush/XGPushActivity;

    iget-object v1, p0, Lcom/tencent/android/tpush/n;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/XGPushActivity;->access$100(Lcom/tencent/android/tpush/XGPushActivity;Landroid/content/Intent;)V

    .line 332
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/android/tpush/n;->b:Lcom/tencent/android/tpush/XGPushActivity;

    const-class v2, Lcom/tencent/android/tpush/XGDownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 335
    iget-object v1, p0, Lcom/tencent/android/tpush/n;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 338
    const-string v1, "packageDownloadUrl"

    iget-object v2, p0, Lcom/tencent/android/tpush/n;->a:Landroid/content/Intent;

    const-string v3, "packageDownloadUrl"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    iget-object v1, p0, Lcom/tencent/android/tpush/n;->b:Lcom/tencent/android/tpush/XGPushActivity;

    invoke-virtual {v1, v0}, Lcom/tencent/android/tpush/XGPushActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 343
    iget-object v0, p0, Lcom/tencent/android/tpush/n;->b:Lcom/tencent/android/tpush/XGPushActivity;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/XGPushActivity;->finish()V

    .line 344
    return-void
.end method
