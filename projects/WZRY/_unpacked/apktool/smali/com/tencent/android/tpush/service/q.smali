.class Lcom/tencent/android/tpush/service/q;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/android/tpush/service/o;


# direct methods
.method constructor <init>(Lcom/tencent/android/tpush/service/o;)V
    .locals 0

    .prologue
    .line 693
    iput-object p1, p0, Lcom/tencent/android/tpush/service/q;->a:Lcom/tencent/android/tpush/service/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 698
    const-string v0, "PushServiceManager"

    const-string/jumbo v1, "swicth main service then pull up sloveSerice"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/e/h;->d(Landroid/content/Context;)V

    .line 702
    return-void
.end method
