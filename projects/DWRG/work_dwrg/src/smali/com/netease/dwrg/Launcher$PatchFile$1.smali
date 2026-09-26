.class Lcom/netease/dwrg/Launcher$PatchFile$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/Launcher$PatchFile;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/dwrg/Launcher$PatchFile;


# direct methods
.method constructor <init>(Lcom/netease/dwrg/Launcher$PatchFile;)V
    .locals 0
    .param p1, "this$1"    # Lcom/netease/dwrg/Launcher$PatchFile;

    .prologue
    .line 1143
    iput-object p1, p0, Lcom/netease/dwrg/Launcher$PatchFile$1;->this$1:Lcom/netease/dwrg/Launcher$PatchFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1148
    iget-object v2, p0, Lcom/netease/dwrg/Launcher$PatchFile$1;->this$1:Lcom/netease/dwrg/Launcher$PatchFile;

    iget-object v2, v2, Lcom/netease/dwrg/Launcher$PatchFile;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v2}, Lcom/netease/dwrg/Launcher;->access$1400(Lcom/netease/dwrg/Launcher;)Ljava/util/Timer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1150
    iget-object v2, p0, Lcom/netease/dwrg/Launcher$PatchFile$1;->this$1:Lcom/netease/dwrg/Launcher$PatchFile;

    iget-object v2, v2, Lcom/netease/dwrg/Launcher$PatchFile;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v2}, Lcom/netease/dwrg/Launcher;->access$1400(Lcom/netease/dwrg/Launcher;)Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 1152
    :cond_0
    iget-object v2, p0, Lcom/netease/dwrg/Launcher$PatchFile$1;->this$1:Lcom/netease/dwrg/Launcher$PatchFile;

    iget-object v2, v2, Lcom/netease/dwrg/Launcher$PatchFile;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v2}, Lcom/netease/dwrg/Launcher;->access$1500(Lcom/netease/dwrg/Launcher;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1154
    iget-object v2, p0, Lcom/netease/dwrg/Launcher$PatchFile$1;->this$1:Lcom/netease/dwrg/Launcher$PatchFile;

    iget-object v2, v2, Lcom/netease/dwrg/Launcher$PatchFile;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v2}, Lcom/netease/dwrg/Launcher;->access$1500(Lcom/netease/dwrg/Launcher;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1157
    :cond_1
    iget-object v2, p0, Lcom/netease/dwrg/Launcher$PatchFile$1;->this$1:Lcom/netease/dwrg/Launcher$PatchFile;

    invoke-static {v2}, Lcom/netease/dwrg/Launcher$PatchFile;->access$1600(Lcom/netease/dwrg/Launcher$PatchFile;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 1159
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/netease/dwrg/Launcher$PatchFile$1;->this$1:Lcom/netease/dwrg/Launcher$PatchFile;

    iget-object v3, v3, Lcom/netease/dwrg/Launcher$PatchFile;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v3}, Lcom/netease/dwrg/Launcher;->access$100(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/Launcher;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/netease/dwrg/Launcher$PatchFile$1;->this$1:Lcom/netease/dwrg/Launcher$PatchFile;

    iget-object v3, v3, Lcom/netease/dwrg/Launcher$PatchFile;->this$0:Lcom/netease/dwrg/Launcher;

    const-string v4, "ic_launcher"

    invoke-static {v3, v4}, Lcom/netease/dwrg/Launcher;->access$400(Lcom/netease/dwrg/Launcher;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1161
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/netease/dwrg/Launcher$PatchFile$1;->this$1:Lcom/netease/dwrg/Launcher$PatchFile;

    invoke-static {v2}, Lcom/netease/dwrg/Launcher$PatchFile;->access$1600(Lcom/netease/dwrg/Launcher$PatchFile;)I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_2

    .line 1163
    iget-object v2, p0, Lcom/netease/dwrg/Launcher$PatchFile$1;->this$1:Lcom/netease/dwrg/Launcher$PatchFile;

    iget-object v2, v2, Lcom/netease/dwrg/Launcher$PatchFile;->this$0:Lcom/netease/dwrg/Launcher;

    const-string v3, "neox_launcher_failure_engine"

    invoke-static {v2, v3}, Lcom/netease/dwrg/Launcher;->access$000(Lcom/netease/dwrg/Launcher;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1168
    :goto_0
    iget-object v2, p0, Lcom/netease/dwrg/Launcher$PatchFile$1;->this$1:Lcom/netease/dwrg/Launcher$PatchFile;

    iget-object v2, v2, Lcom/netease/dwrg/Launcher$PatchFile;->this$0:Lcom/netease/dwrg/Launcher;

    const-string v3, "neox_confirm"

    invoke-static {v2, v3}, Lcom/netease/dwrg/Launcher;->access$000(Lcom/netease/dwrg/Launcher;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/netease/dwrg/Launcher$PatchFile$1$1;

    invoke-direct {v3, p0}, Lcom/netease/dwrg/Launcher$PatchFile$1$1;-><init>(Lcom/netease/dwrg/Launcher$PatchFile$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1177
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1185
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_1
    return-void

    .line 1166
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_2
    iget-object v2, p0, Lcom/netease/dwrg/Launcher$PatchFile$1;->this$1:Lcom/netease/dwrg/Launcher$PatchFile;

    iget-object v2, v2, Lcom/netease/dwrg/Launcher$PatchFile;->this$0:Lcom/netease/dwrg/Launcher;

    const-string v3, "neox_launcher_failure"

    invoke-static {v2, v3}, Lcom/netease/dwrg/Launcher;->access$000(Lcom/netease/dwrg/Launcher;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1182
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_3
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/netease/dwrg/Launcher$PatchFile$1;->this$1:Lcom/netease/dwrg/Launcher$PatchFile;

    iget-object v2, v2, Lcom/netease/dwrg/Launcher$PatchFile;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v2}, Lcom/netease/dwrg/Launcher;->access$100(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/Launcher;

    move-result-object v2

    const-class v3, Lcom/netease/dwrg/Client;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1183
    .local v1, "clientIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/netease/dwrg/Launcher$PatchFile$1;->this$1:Lcom/netease/dwrg/Launcher$PatchFile;

    iget-object v2, v2, Lcom/netease/dwrg/Launcher$PatchFile;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v2}, Lcom/netease/dwrg/Launcher;->access$100(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/Launcher;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/netease/dwrg/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 1184
    iget-object v2, p0, Lcom/netease/dwrg/Launcher$PatchFile$1;->this$1:Lcom/netease/dwrg/Launcher$PatchFile;

    iget-object v2, v2, Lcom/netease/dwrg/Launcher$PatchFile;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-virtual {v2}, Lcom/netease/dwrg/Launcher;->finish()V

    goto :goto_1
.end method
