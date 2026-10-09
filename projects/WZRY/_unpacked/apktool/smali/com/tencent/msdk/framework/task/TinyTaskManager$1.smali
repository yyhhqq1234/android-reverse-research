.class Lcom/tencent/msdk/framework/task/TinyTaskManager$1;
.super Ljava/util/TimerTask;
.source "TinyTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/framework/task/TinyTaskManager;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/framework/task/TinyTaskManager;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/framework/task/TinyTaskManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/framework/task/TinyTaskManager;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/tencent/msdk/framework/task/TinyTaskManager$1;->this$0:Lcom/tencent/msdk/framework/task/TinyTaskManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 56
    invoke-static {}, Lcom/tencent/msdk/framework/task/TinyTaskManager;->runNativeTinyTask()V

    .line 57
    return-void
.end method
