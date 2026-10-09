.class Lcom/tencent/android/tpush/service/channel/k;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/android/tpush/service/channel/s;

.field final synthetic b:Lcom/tencent/android/tpush/service/channel/b;


# direct methods
.method constructor <init>(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/s;)V
    .locals 0

    .prologue
    .line 946
    iput-object p1, p0, Lcom/tencent/android/tpush/service/channel/k;->b:Lcom/tencent/android/tpush/service/channel/b;

    iput-object p2, p0, Lcom/tencent/android/tpush/service/channel/k;->a:Lcom/tencent/android/tpush/service/channel/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 949
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/k;->a:Lcom/tencent/android/tpush/service/channel/s;

    iget-object v0, v0, Lcom/tencent/android/tpush/service/channel/s;->d:Lcom/tencent/android/tpush/service/channel/t;

    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/k;->a:Lcom/tencent/android/tpush/service/channel/s;

    iget-object v1, v1, Lcom/tencent/android/tpush/service/channel/s;->c:Lcom/qq/taf/jce/JceStruct;

    new-instance v2, Lcom/tencent/android/tpush/service/channel/a;

    invoke-direct {v2}, Lcom/tencent/android/tpush/service/channel/a;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/tencent/android/tpush/service/channel/t;->a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/a;)V

    .line 951
    return-void
.end method
