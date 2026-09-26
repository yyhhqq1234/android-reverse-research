.class Lcom/netease/dwrg/Launcher$6;
.super Landroid/os/AsyncTask;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/Launcher;->preparePatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/dwrg/Launcher;


# direct methods
.method constructor <init>(Lcom/netease/dwrg/Launcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/dwrg/Launcher;

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/netease/dwrg/Launcher$6;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1027
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/dwrg/Launcher$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/netease/dwrg/Launcher$6;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v0}, Lcom/netease/dwrg/Launcher;->access$900(Lcom/netease/dwrg/Launcher;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/neox/NativeInterface;->NativePreparePatch(Ljava/lang/String;)V

    .line 1033
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1027
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/dwrg/Launcher$6;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 1040
    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativePatchGetPatchStatus()I

    move-result v1

    .line 1041
    .local v1, "patch_status":I
    if-eqz v1, :cond_1

    .line 1043
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/netease/dwrg/Launcher$6;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v3}, Lcom/netease/dwrg/Launcher;->access$100(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/Launcher;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/netease/dwrg/Launcher$6;->this$0:Lcom/netease/dwrg/Launcher;

    const-string v4, "ic_launcher"

    invoke-static {v3, v4}, Lcom/netease/dwrg/Launcher;->access$400(Lcom/netease/dwrg/Launcher;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1045
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 1047
    iget-object v2, p0, Lcom/netease/dwrg/Launcher$6;->this$0:Lcom/netease/dwrg/Launcher;

    const-string v3, "neox_launcher_failure_engine"

    invoke-static {v2, v3}, Lcom/netease/dwrg/Launcher;->access$000(Lcom/netease/dwrg/Launcher;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1052
    :goto_0
    iget-object v2, p0, Lcom/netease/dwrg/Launcher$6;->this$0:Lcom/netease/dwrg/Launcher;

    const-string v3, "neox_confirm"

    invoke-static {v2, v3}, Lcom/netease/dwrg/Launcher;->access$000(Lcom/netease/dwrg/Launcher;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/netease/dwrg/Launcher$6$1;

    invoke-direct {v3, p0}, Lcom/netease/dwrg/Launcher$6$1;-><init>(Lcom/netease/dwrg/Launcher$6;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1061
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1067
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_1
    return-void

    .line 1050
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    iget-object v2, p0, Lcom/netease/dwrg/Launcher$6;->this$0:Lcom/netease/dwrg/Launcher;

    const-string v3, "neox_launcher_failure_checkupdate"

    invoke-static {v2, v3}, Lcom/netease/dwrg/Launcher;->access$000(Lcom/netease/dwrg/Launcher;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1065
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_1
    iget-object v2, p0, Lcom/netease/dwrg/Launcher$6;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v2}, Lcom/netease/dwrg/Launcher;->access$100(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/dwrg/Launcher;->startPatch()V

    goto :goto_1
.end method
