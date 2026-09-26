.class Lcom/netease/unisdk/gmbridge/view/FloatWindow$1;
.super Ljava/lang/Object;
.source "FloatWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/unisdk/gmbridge/view/FloatWindow;
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
    .line 47
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$1;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$1;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->hideExpandLayout()V

    .line 51
    return-void
.end method
