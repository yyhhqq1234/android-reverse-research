.class Lim/yixin/sdk/util/AuthDialog$1;
.super Ljava/lang/Object;
.source "AuthDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/yixin/sdk/util/AuthDialog;->initCloseButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/yixin/sdk/util/AuthDialog;


# direct methods
.method constructor <init>(Lim/yixin/sdk/util/AuthDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/yixin/sdk/util/AuthDialog$1;->this$0:Lim/yixin/sdk/util/AuthDialog;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 174
    iget-object v0, p0, Lim/yixin/sdk/util/AuthDialog$1;->this$0:Lim/yixin/sdk/util/AuthDialog;

    invoke-virtual {v0}, Lim/yixin/sdk/util/AuthDialog;->dismiss()V

    .line 175
    iget-object v0, p0, Lim/yixin/sdk/util/AuthDialog$1;->this$0:Lim/yixin/sdk/util/AuthDialog;

    invoke-static {v0}, Lim/yixin/sdk/util/AuthDialog;->access$0(Lim/yixin/sdk/util/AuthDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lim/yixin/sdk/util/AuthDialog$1;->this$0:Lim/yixin/sdk/util/AuthDialog;

    invoke-static {v1}, Lim/yixin/sdk/util/AuthDialog;->access$1(Lim/yixin/sdk/util/AuthDialog;)Lim/yixin/sdk/api/SendAuthToYX$Req;

    move-result-object v1

    const/4 v2, -0x4

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lim/yixin/sdk/util/AuthDialog;->access$2(Landroid/content/Context;Lim/yixin/sdk/api/SendAuthToYX$Req;ILjava/lang/String;)V

    .line 176
    return-void
.end method
