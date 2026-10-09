.class Lcom/tencent/msdk/framework/task/TaskManager$1;
.super Ljava/util/TimerTask;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/framework/task/TaskManager;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/framework/task/TaskManager;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/framework/task/TaskManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/framework/task/TaskManager;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/tencent/msdk/framework/task/TaskManager$1;->this$0:Lcom/tencent/msdk/framework/task/TaskManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 53
    invoke-static {}, Lcom/tencent/msdk/framework/task/TaskManager;->runNativeTask()V

    .line 54
    return-void
.end method
