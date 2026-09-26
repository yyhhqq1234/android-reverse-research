.class Lcom/netease/unisdk/gmbridge/view/FloatWindow$3$1;
.super Ljava/lang/Object;
.source "FloatWindow.java"

# interfaces
.implements Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge/view/FloatWindow$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/unisdk/gmbridge/view/FloatWindow$3;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge/view/FloatWindow$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/netease/unisdk/gmbridge/view/FloatWindow$3;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$3$1;->this$1:Lcom/netease/unisdk/gmbridge/view/FloatWindow$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setBtnInfos(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "btnInfos":Ljava/util/List;, "Ljava/util/List<Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 139
    :cond_0
    const-string v0, "gm_bridge FloatWindow"

    const-string v1, "load btns error"

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$3$1;->this$1:Lcom/netease/unisdk/gmbridge/view/FloatWindow$3;

    iget-object v0, v0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$3;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$1002(Lcom/netease/unisdk/gmbridge/view/FloatWindow;Z)Z

    .line 149
    :goto_0
    return-void

    .line 143
    :cond_1
    new-instance v0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$3$1$1;

    invoke-direct {v0, p0, p1}, Lcom/netease/unisdk/gmbridge/view/FloatWindow$3$1$1;-><init>(Lcom/netease/unisdk/gmbridge/view/FloatWindow$3$1;Ljava/util/List;)V

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setRefer(Ljava/lang/String;)V
    .locals 0
    .param p1, "refer"    # Ljava/lang/String;

    .prologue
    .line 154
    return-void
.end method
