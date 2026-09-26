.class Lcom/netease/unisdk/gmbridge/view/FloatWindow$3$1$1;
.super Ljava/lang/Object;
.source "FloatWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge/view/FloatWindow$3$1;->setBtnInfos(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/netease/unisdk/gmbridge/view/FloatWindow$3$1;

.field final synthetic val$btnInfos:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge/view/FloatWindow$3$1;Ljava/util/List;)V
    .locals 0
    .param p1, "this$2"    # Lcom/netease/unisdk/gmbridge/view/FloatWindow$3$1;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$3$1$1;->this$2:Lcom/netease/unisdk/gmbridge/view/FloatWindow$3$1;

    iput-object p2, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$3$1$1;->val$btnInfos:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$3$1$1;->this$2:Lcom/netease/unisdk/gmbridge/view/FloatWindow$3$1;

    iget-object v0, v0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$3$1;->this$1:Lcom/netease/unisdk/gmbridge/view/FloatWindow$3;

    iget-object v0, v0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$3;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$3$1$1;->val$btnInfos:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$1100(Lcom/netease/unisdk/gmbridge/view/FloatWindow;Ljava/util/List;)V

    .line 147
    return-void
.end method
