.class Lcom/tencent/kgvmp/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/kgvmp/VmpCallback;


# instance fields
.field final synthetic a:Lcom/tencent/kgvmp/PerformanceAdjuster;


# direct methods
.method constructor <init>(Lcom/tencent/kgvmp/PerformanceAdjuster;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/kgvmp/b;->a:Lcom/tencent/kgvmp/PerformanceAdjuster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifySystemInfo(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/kgvmp/b;->a:Lcom/tencent/kgvmp/PerformanceAdjuster;

    invoke-virtual {v0, p1}, Lcom/tencent/kgvmp/PerformanceAdjuster;->nativeNotifySystemInfo(Ljava/lang/String;)V

    return-void
.end method
