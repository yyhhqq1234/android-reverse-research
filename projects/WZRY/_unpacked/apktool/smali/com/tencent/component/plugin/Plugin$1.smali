.class Lcom/tencent/component/plugin/Plugin$1;
.super Ljava/lang/Object;
.source "Plugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/Plugin;->notifyStartIfNeeded(ZLandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/plugin/Plugin;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/Plugin;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/plugin/Plugin;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/tencent/component/plugin/Plugin$1;->this$0:Lcom/tencent/component/plugin/Plugin;

    iput-object p2, p0, Lcom/tencent/component/plugin/Plugin$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/tencent/component/plugin/Plugin$1;->this$0:Lcom/tencent/component/plugin/Plugin;

    iget-object v1, p0, Lcom/tencent/component/plugin/Plugin$1;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/tencent/component/plugin/Plugin;->access$000(Lcom/tencent/component/plugin/Plugin;Landroid/content/Intent;)V

    .line 117
    return-void
.end method
