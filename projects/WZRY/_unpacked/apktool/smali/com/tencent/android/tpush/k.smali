.class Lcom/tencent/android/tpush/k;
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
    .line 282
    iput-object p1, p0, Lcom/tencent/android/tpush/k;->b:Lcom/tencent/android/tpush/XGPushActivity;

    iput-object p2, p0, Lcom/tencent/android/tpush/k;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/tencent/android/tpush/k;->a:Landroid/content/Intent;

    const-string v1, "action"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 288
    iget-object v0, p0, Lcom/tencent/android/tpush/k;->b:Lcom/tencent/android/tpush/XGPushActivity;

    iget-object v1, p0, Lcom/tencent/android/tpush/k;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/XGPushActivity;->access$100(Lcom/tencent/android/tpush/XGPushActivity;Landroid/content/Intent;)V

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/k;->b:Lcom/tencent/android/tpush/XGPushActivity;

    iget-object v1, p0, Lcom/tencent/android/tpush/k;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/XGPushActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    iget-object v0, p0, Lcom/tencent/android/tpush/k;->b:Lcom/tencent/android/tpush/XGPushActivity;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/XGPushActivity;->finish()V

    .line 295
    return-void

    .line 291
    :catch_0
    move-exception v0

    goto :goto_0
.end method
