.class final Lcom/tencent/android/tpush/aa;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 531
    iput-object p1, p0, Lcom/tencent/android/tpush/aa;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/tencent/android/tpush/aa;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/tencent/android/tpush/aa;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/tencent/android/tpush/aa;->b:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/XGPushManager;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 535
    iget-object v0, p0, Lcom/tencent/android/tpush/aa;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/tencent/android/tpush/aa;->b:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/XGPushManager;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 538
    return-void
.end method
