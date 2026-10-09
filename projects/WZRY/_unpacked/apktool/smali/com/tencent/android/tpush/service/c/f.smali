.class Lcom/tencent/android/tpush/service/c/f;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/tencent/android/tpush/service/c/a;


# direct methods
.method constructor <init>(Lcom/tencent/android/tpush/service/c/a;)V
    .locals 0

    .prologue
    .line 1247
    iput-object p1, p0, Lcom/tencent/android/tpush/service/c/f;->a:Lcom/tencent/android/tpush/service/c/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 1251
    invoke-static {}, Lcom/tencent/android/tpush/service/c/a;->a()Lcom/tencent/android/tpush/service/c/a;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/c/a;->a(Lcom/tencent/android/tpush/service/c/a;)V

    .line 1252
    return-void
.end method
