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

    .line 1255
    iput-object p1, p0, Lcom/netease/dwrg/Launcher$PatchFile$1;->this$1:Lcom/netease/dwrg/Launcher$PatchFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1260
    iget-object v0, p0, Lcom/netease/dwrg/Launcher$PatchFile$1;->this$1:Lcom/netease/dwrg/Launcher$PatchFile;

    iget-object v0, v0, Lcom/netease/dwrg/Launcher$PatchFile;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v0}, Lcom/netease/dwrg/Launcher;->access$1400(Lcom/netease/dwrg/Launcher;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1262
    iget-object v0, p0, Lcom/netease/dwrg/Launcher$PatchFile$1;->this$1:Lcom/netease/dwrg/Launcher$PatchFile;

    iget-object v0, v0, Lcom/netease/dwrg/Launcher$PatchFile;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v0}, Lcom/netease/dwrg/Launcher;->access$1400(Lcom/netease/dwrg/Launcher;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1264
    :cond_0
    iget-object v0, p0, Lcom/netease/dwrg/Launcher$PatchFile$1;->this$1:Lcom/netease/dwrg/Launcher$PatchFile;

    iget-object v0, v0, Lcom/netease/dwrg/Launcher$PatchFile;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v0}, Lcom/netease/dwrg/Launcher;->access$1500(Lcom/netease/dwrg/Launcher;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1266
    iget-object v0, p0, Lcom/netease/dwrg/Launcher$PatchFile$1;->this$1:Lcom/netease/dwrg/Launcher$PatchFile;

    iget-object v0, v0, Lcom/netease/dwrg/Launcher$PatchFile;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v0}, Lcom/netease/dwrg/Launcher;->access$1500(Lcom/netease/dwrg/Launcher;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1269
    :cond_1
    iget-object v0, p0, Lcom/netease/dwrg/Launcher$PatchFile$1;->this$1:Lcom/netease/dwrg/Launcher$PatchFile;

    invoke-static {v0}, Lcom/netease/dwrg/Launcher$PatchFile;->access$1600(Lcom/netease/dwrg/Launcher$PatchFile;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 1271
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/netease/dwrg/Launcher$PatchFile$1;->this$1:Lcom/netease/dwrg/Launcher$PatchFile;

    iget-object v1, v1, Lcom/netease/dwrg/Launcher$PatchFile;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v1}, Lcom/netease/dwrg/Launcher;->access$100(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/Launcher;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/dwrg/Launcher$PatchFile$1;->this$1:Lcom/netease/dwrg/Launcher$PatchFile;

    iget-object v1, v1, Lcom/netease/dwrg/Launcher$PatchFile;->this$0:Lcom/netease/dwrg/Launcher;

    const-string v2, "ic_launcher"

    invoke-static {v1, v2}, Lcom/netease/dwrg/Launcher;->access$400(Lcom/netease/dwrg/Launcher;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1273
    iget-object v1, p0, Lcom/netease/dwrg/Launcher$PatchFile$1;->this$1:Lcom/netease/dwrg/Launcher$PatchFile;

    invoke-static {v1}, Lcom/netease/dwrg/Launcher$PatchFile;->access$1600(Lcom/netease/dwrg/Launcher$PatchFile;)I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_2

    .line 1275
    iget-object v1, p0, Lcom/netease/dwrg/Launcher$PatchFile$1;->this$1:Lcom/netease/dwrg/Launcher$PatchFile;

    iget-object v1, v1, Lcom/netease/dwrg/Launcher$PatchFile;->this$0:Lcom/netease/dwrg/Launcher;

    const-string v2, "neox_launcher_failure_engine"

    invoke-static {v1, v2}, Lcom/netease/dwrg/Launcher;->access$000(Lcom/netease/dwrg/Launcher;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1278
    :cond_2
    iget-object v1, p0, Lcom/netease/dwrg/Launcher$PatchFile$1;->this$1:Lcom/netease/dwrg/Launcher$PatchFile;

    iget-object v1, v1, Lcom/netease/dwrg/Launcher$PatchFile;->this$0:Lcom/netease/dwrg/Launcher;

    const-string v2, "neox_launcher_failure"

    invoke-static {v1, v2}, Lcom/netease/dwrg/Launcher;->access$000(Lcom/netease/dwrg/Launcher;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1280
    :goto_0
    iget-object v1, p0, Lcom/netease/dwrg/Launcher$PatchFile$1;->this$1:Lcom/netease/dwrg/Launcher$PatchFile;

    iget-object v1, v1, Lcom/netease/dwrg/Launcher$PatchFile;->this$0:Lcom/netease/dwrg/Launcher;

    const-string v2, "neox_confirm"

    invoke-static {v1, v2}, Lcom/netease/dwrg/Launcher;->access$000(Lcom/netease/dwrg/Launcher;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/netease/dwrg/Launcher$PatchFile$1$1;

    invoke-direct {v2, p0}, Lcom/netease/dwrg/Launcher$PatchFile$1$1;-><init>(Lcom/netease/dwrg/Launcher$PatchFile$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1289
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 1294
    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/netease/dwrg/Launcher$PatchFile$1;->this$1:Lcom/netease/dwrg/Launcher$PatchFile;

    iget-object v1, v1, Lcom/netease/dwrg/Launcher$PatchFile;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v1}, Lcom/netease/dwrg/Launcher;->access$100(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/Launcher;

    move-result-object v1

    const-class v2, Lcom/netease/dwrg/Client;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 1295
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1296
    iget-object v1, p0, Lcom/netease/dwrg/Launcher$PatchFile$1;->this$1:Lcom/netease/dwrg/Launcher$PatchFile;

    iget-object v1, v1, Lcom/netease/dwrg/Launcher$PatchFile;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v1}, Lcom/netease/dwrg/Launcher;->access$100(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/Launcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/dwrg/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 1297
    iget-object v0, p0, Lcom/netease/dwrg/Launcher$PatchFile$1;->this$1:Lcom/netease/dwrg/Launcher$PatchFile;

    iget-object v0, v0, Lcom/netease/dwrg/Launcher$PatchFile;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-virtual {v0}, Lcom/netease/dwrg/Launcher;->finish()V

    return-void
.end method
