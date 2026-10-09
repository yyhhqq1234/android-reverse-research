.class Lcom/tencent/android/tpush/service/z;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/android/tpush/service/XGPushServiceV3;


# direct methods
.method constructor <init>(Lcom/tencent/android/tpush/service/XGPushServiceV3;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/tencent/android/tpush/service/z;->a:Lcom/tencent/android/tpush/service/XGPushServiceV3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 54
    iget-object v2, p0, Lcom/tencent/android/tpush/service/z;->a:Lcom/tencent/android/tpush/service/XGPushServiceV3;

    invoke-virtual {v2}, Lcom/tencent/android/tpush/service/XGPushServiceV3;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.tencent.android.tpush.debug,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/android/tpush/service/z;->a:Lcom/tencent/android/tpush/service/XGPushServiceV3;

    invoke-virtual {v4}, Lcom/tencent/android/tpush/service/XGPushServiceV3;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 57
    if-ne v2, v1, :cond_0

    move v0, v1

    .line 59
    :cond_0
    sput-boolean v1, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    .line 60
    if-eqz v0, :cond_1

    .line 61
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/tencent/android/tpush/a/a;->a(I)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_1
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/tencent/android/tpush/a/a;->a(I)V

    goto :goto_0
.end method
