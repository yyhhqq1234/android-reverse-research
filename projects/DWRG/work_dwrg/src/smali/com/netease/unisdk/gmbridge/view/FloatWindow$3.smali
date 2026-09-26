.class Lcom/netease/unisdk/gmbridge/view/FloatWindow$3;
.super Ljava/lang/Object;
.source "FloatWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge/view/FloatWindow;->iconClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$3;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$3;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$900(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/netease/unisdk/gmbridge/view/FloatWindow$3$1;

    invoke-direct {v1, p0}, Lcom/netease/unisdk/gmbridge/view/FloatWindow$3$1;-><init>(Lcom/netease/unisdk/gmbridge/view/FloatWindow$3;)V

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->loadBtnInfos(Landroid/content/Context;Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;)V

    .line 157
    return-void
.end method
