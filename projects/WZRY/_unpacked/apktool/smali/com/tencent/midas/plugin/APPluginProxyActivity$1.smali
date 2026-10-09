.class Lcom/tencent/midas/plugin/APPluginProxyActivity$1;
.super Ljava/lang/Object;
.source "APPluginProxyActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/midas/plugin/APPluginProxyActivity;->showNeedUninstanllAndInstallDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/midas/plugin/APPluginProxyActivity;


# direct methods
.method constructor <init>(Lcom/tencent/midas/plugin/APPluginProxyActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/midas/plugin/APPluginProxyActivity;

    .prologue
    .line 654
    iput-object p1, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity$1;->this$0:Lcom/tencent/midas/plugin/APPluginProxyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 657
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity$1;->this$0:Lcom/tencent/midas/plugin/APPluginProxyActivity;

    invoke-virtual {v0}, Lcom/tencent/midas/plugin/APPluginProxyActivity;->finish()V

    .line 658
    return-void
.end method
