.class Lcom/netease/dwrg/Launcher$UpdateHandler;
.super Landroid/os/Handler;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/dwrg/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/dwrg/Launcher;


# direct methods
.method public constructor <init>(Lcom/netease/dwrg/Launcher;Landroid/os/Looper;)V
    .locals 0

    .line 1077
    iput-object p1, p0, Lcom/netease/dwrg/Launcher$UpdateHandler;->this$0:Lcom/netease/dwrg/Launcher;

    .line 1078
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1083
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1084
    iget-object p1, p0, Lcom/netease/dwrg/Launcher$UpdateHandler;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {p1}, Lcom/netease/dwrg/Launcher;->access$1100(Lcom/netease/dwrg/Launcher;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/netease/dwrg/Launcher$UpdateHandler;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {p1}, Lcom/netease/dwrg/Launcher;->access$1200(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/Launcher$CopyFile;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1086
    iget-object p1, p0, Lcom/netease/dwrg/Launcher$UpdateHandler;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {p1}, Lcom/netease/dwrg/Launcher;->access$100(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/dwrg/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/dwrg/Launcher$UpdateHandler;->this$0:Lcom/netease/dwrg/Launcher;

    const-string v1, "neox_launcher_copy_data"

    invoke-static {v0, v1}, Lcom/netease/dwrg/Launcher;->access$000(Lcom/netease/dwrg/Launcher;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1087
    iget-object v0, p0, Lcom/netease/dwrg/Launcher$UpdateHandler;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v0}, Lcom/netease/dwrg/Launcher;->access$1200(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/Launcher$CopyFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/dwrg/Launcher$CopyFile;->getCopyingFile()Ljava/lang/String;

    move-result-object v0

    .line 1088
    iget-object v1, p0, Lcom/netease/dwrg/Launcher$UpdateHandler;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v1}, Lcom/netease/dwrg/Launcher;->access$1200(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/Launcher$CopyFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/dwrg/Launcher$CopyFile;->getCopiedSize()J

    move-result-wide v1

    if-eqz v0, :cond_0

    .line 1091
    iget-object p1, p0, Lcom/netease/dwrg/Launcher$UpdateHandler;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {p1}, Lcom/netease/dwrg/Launcher;->access$100(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/dwrg/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/dwrg/Launcher$UpdateHandler;->this$0:Lcom/netease/dwrg/Launcher;

    const-string v3, "neox_launcher_copying"

    invoke-static {v0, v3}, Lcom/netease/dwrg/Launcher;->access$000(Lcom/netease/dwrg/Launcher;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1094
    :cond_0
    iget-object v0, p0, Lcom/netease/dwrg/Launcher$UpdateHandler;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v0}, Lcom/netease/dwrg/Launcher;->access$1300(Lcom/netease/dwrg/Launcher;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    const-wide/16 v3, 0x64

    mul-long v1, v1, v3

    .line 1096
    iget-object v0, p0, Lcom/netease/dwrg/Launcher$UpdateHandler;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v0}, Lcom/netease/dwrg/Launcher;->access$1300(Lcom/netease/dwrg/Launcher;)J

    move-result-wide v3

    div-long/2addr v1, v3

    long-to-int v0, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x64

    .line 1098
    :goto_0
    iget-object v1, p0, Lcom/netease/dwrg/Launcher$UpdateHandler;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v1}, Lcom/netease/dwrg/Launcher;->access$1100(Lcom/netease/dwrg/Launcher;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1099
    iget-object p1, p0, Lcom/netease/dwrg/Launcher$UpdateHandler;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {p1}, Lcom/netease/dwrg/Launcher;->access$1100(Lcom/netease/dwrg/Launcher;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    :cond_2
    return-void
.end method
