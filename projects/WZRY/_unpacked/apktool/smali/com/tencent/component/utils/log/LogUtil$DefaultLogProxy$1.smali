.class Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy$1;
.super Ljava/lang/Object;
.source "LogUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;


# direct methods
.method constructor <init>(Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy$1;->this$0:Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy$1;->this$0:Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;

    invoke-static {v0}, Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;->access$000(Lcom/tencent/component/utils/log/LogUtil$DefaultLogProxy;)V

    .line 80
    return-void
.end method
