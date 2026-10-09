.class Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger$1;
.super Ljava/lang/Object;
.source "MyappMananger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger$1;->this$0:Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger$1;->this$0:Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;

    invoke-static {v0}, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;->access$000(Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;)V

    .line 52
    return-void
.end method
