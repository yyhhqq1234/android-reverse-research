.class Lcom/tencent/msdk/framework/msdkview/diffaccount/DiffAccountDialog$3;
.super Ljava/lang/Object;
.source "DiffAccountDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/framework/msdkview/diffaccount/DiffAccountDialog;->showDefaultDiffAccountAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/framework/msdkview/diffaccount/DiffAccountDialog;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/framework/msdkview/diffaccount/DiffAccountDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/framework/msdkview/diffaccount/DiffAccountDialog;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/tencent/msdk/framework/msdkview/diffaccount/DiffAccountDialog$3;->this$0:Lcom/tencent/msdk/framework/msdkview/diffaccount/DiffAccountDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 65
    const-string v0, "AlertDialog Cancel"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->d(Ljava/lang/String;)V

    .line 66
    return-void
.end method
