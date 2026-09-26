.class Lcom/netease/epay/sdk/base/network/LoadingHandler$1;
.super Ljava/lang/Object;
.source "LoadingHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base/network/LoadingHandler;->dismissLoading(Landroid/support/v4/app/FragmentActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base/network/LoadingHandler;

.field final synthetic val$activity:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base/network/LoadingHandler;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/epay/sdk/base/network/LoadingHandler;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/netease/epay/sdk/base/network/LoadingHandler$1;->this$0:Lcom/netease/epay/sdk/base/network/LoadingHandler;

    iput-object p2, p0, Lcom/netease/epay/sdk/base/network/LoadingHandler$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 65
    const-string v0, "netLoading"

    iget-object v1, p0, Lcom/netease/epay/sdk/base/network/LoadingHandler$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->dismissLoading(Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V

    .line 66
    return-void
.end method
