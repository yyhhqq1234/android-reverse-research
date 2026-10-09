.class Lcom/tencent/msdk/framework/msdkview/diffaccount/DiffAccountDialog$2;
.super Ljava/lang/Object;
.source "DiffAccountDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 48
    iput-object p1, p0, Lcom/tencent/msdk/framework/msdkview/diffaccount/DiffAccountDialog$2;->this$0:Lcom/tencent/msdk/framework/msdkview/diffaccount/DiffAccountDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 50
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 52
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "req_type"

    const-string/jumbo v3, "switch_launch"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    invoke-static {}, Lcom/tencent/msdk/framework/msdkview/ViewManager;->getInstance()Lcom/tencent/msdk/framework/msdkview/ViewManager;

    move-result-object v2

    const-string/jumbo v3, "view_name_diffaccount"

    const-string v4, "method_send_event"

    .line 54
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 53
    invoke-virtual {v2, v3, v4, v5}, Lcom/tencent/msdk/framework/msdkview/ViewManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 59
    const-string v2, "launch account"

    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->d(Ljava/lang/String;)V

    .line 60
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
