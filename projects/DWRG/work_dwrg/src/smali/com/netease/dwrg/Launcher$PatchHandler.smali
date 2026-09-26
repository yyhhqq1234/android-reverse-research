.class Lcom/netease/dwrg/Launcher$PatchHandler;
.super Landroid/os/Handler;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/dwrg/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PatchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/dwrg/Launcher;


# direct methods
.method public constructor <init>(Lcom/netease/dwrg/Launcher;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/dwrg/Launcher;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1193
    iput-object p1, p0, Lcom/netease/dwrg/Launcher$PatchHandler;->this$0:Lcom/netease/dwrg/Launcher;

    .line 1194
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1195
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1199
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1200
    iget-object v2, p0, Lcom/netease/dwrg/Launcher$PatchHandler;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v2}, Lcom/netease/dwrg/Launcher;->access$1500(Lcom/netease/dwrg/Launcher;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1202
    iget-object v2, p0, Lcom/netease/dwrg/Launcher$PatchHandler;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v2}, Lcom/netease/dwrg/Launcher;->access$1500(Lcom/netease/dwrg/Launcher;)Landroid/app/ProgressDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/dwrg/Launcher$PatchHandler;->this$0:Lcom/netease/dwrg/Launcher;

    const-string v4, "neox_launcher_updating"

    invoke-static {v3, v4}, Lcom/netease/dwrg/Launcher;->access$000(Lcom/netease/dwrg/Launcher;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 1204
    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativePatchGetTotalSize()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 1205
    .local v1, "total_size":I
    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativePatchGetDownloadedSize()I

    move-result v0

    .line 1206
    .local v0, "downloaded_size":I
    const/16 v2, 0x4e20

    if-le v1, v2, :cond_1

    .line 1207
    iget-object v2, p0, Lcom/netease/dwrg/Launcher$PatchHandler;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v2}, Lcom/netease/dwrg/Launcher;->access$1500(Lcom/netease/dwrg/Launcher;)Landroid/app/ProgressDialog;

    move-result-object v2

    const-string v3, "%4d/%4dMB"

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 1208
    iget-object v2, p0, Lcom/netease/dwrg/Launcher$PatchHandler;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v2}, Lcom/netease/dwrg/Launcher;->access$1500(Lcom/netease/dwrg/Launcher;)Landroid/app/ProgressDialog;

    move-result-object v2

    div-int/lit16 v3, v1, 0x3e8

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1209
    iget-object v2, p0, Lcom/netease/dwrg/Launcher$PatchHandler;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v2}, Lcom/netease/dwrg/Launcher;->access$1500(Lcom/netease/dwrg/Launcher;)Landroid/app/ProgressDialog;

    move-result-object v2

    div-int/lit16 v3, v0, 0x3e8

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1218
    .end local v0    # "downloaded_size":I
    .end local v1    # "total_size":I
    :cond_0
    :goto_0
    return-void

    .line 1211
    .restart local v0    # "downloaded_size":I
    .restart local v1    # "total_size":I
    :cond_1
    iget-object v2, p0, Lcom/netease/dwrg/Launcher$PatchHandler;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v2}, Lcom/netease/dwrg/Launcher;->access$1500(Lcom/netease/dwrg/Launcher;)Landroid/app/ProgressDialog;

    move-result-object v2

    const-string v3, "%4d/%4dKB"

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 1212
    iget-object v2, p0, Lcom/netease/dwrg/Launcher$PatchHandler;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v2}, Lcom/netease/dwrg/Launcher;->access$1500(Lcom/netease/dwrg/Launcher;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1213
    iget-object v2, p0, Lcom/netease/dwrg/Launcher$PatchHandler;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v2}, Lcom/netease/dwrg/Launcher;->access$1500(Lcom/netease/dwrg/Launcher;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_0
.end method
