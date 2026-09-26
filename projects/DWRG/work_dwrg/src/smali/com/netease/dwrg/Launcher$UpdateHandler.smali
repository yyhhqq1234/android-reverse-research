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
    .param p1, "this$0"    # Lcom/netease/dwrg/Launcher;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 965
    iput-object p1, p0, Lcom/netease/dwrg/Launcher$UpdateHandler;->this$0:Lcom/netease/dwrg/Launcher;

    .line 966
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 967
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 971
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 972
    iget-object v5, p0, Lcom/netease/dwrg/Launcher$UpdateHandler;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v5}, Lcom/netease/dwrg/Launcher;->access$1100(Lcom/netease/dwrg/Launcher;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/netease/dwrg/Launcher$UpdateHandler;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v5}, Lcom/netease/dwrg/Launcher;->access$1200(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/Launcher$CopyFile;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 974
    iget-object v5, p0, Lcom/netease/dwrg/Launcher$UpdateHandler;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v5}, Lcom/netease/dwrg/Launcher;->access$100(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/dwrg/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/dwrg/Launcher$UpdateHandler;->this$0:Lcom/netease/dwrg/Launcher;

    const-string v7, "neox_launcher_copy_data"

    invoke-static {v6, v7}, Lcom/netease/dwrg/Launcher;->access$000(Lcom/netease/dwrg/Launcher;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 975
    .local v4, "title":Ljava/lang/String;
    iget-object v5, p0, Lcom/netease/dwrg/Launcher$UpdateHandler;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v5}, Lcom/netease/dwrg/Launcher;->access$1200(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/Launcher$CopyFile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/dwrg/Launcher$CopyFile;->getCopyingFile()Ljava/lang/String;

    move-result-object v2

    .line 976
    .local v2, "copyingFile":Ljava/lang/String;
    iget-object v5, p0, Lcom/netease/dwrg/Launcher$UpdateHandler;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v5}, Lcom/netease/dwrg/Launcher;->access$1200(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/Launcher$CopyFile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/dwrg/Launcher$CopyFile;->getCopiedSize()J

    move-result-wide v0

    .line 977
    .local v0, "copiedSize":J
    if-eqz v2, :cond_0

    .line 979
    iget-object v5, p0, Lcom/netease/dwrg/Launcher$UpdateHandler;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v5}, Lcom/netease/dwrg/Launcher;->access$100(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/dwrg/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/dwrg/Launcher$UpdateHandler;->this$0:Lcom/netease/dwrg/Launcher;

    const-string v7, "neox_launcher_copying"

    invoke-static {v6, v7}, Lcom/netease/dwrg/Launcher;->access$000(Lcom/netease/dwrg/Launcher;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 981
    :cond_0
    const/16 v3, 0x64

    .line 982
    .local v3, "progress":I
    iget-object v5, p0, Lcom/netease/dwrg/Launcher$UpdateHandler;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v5}, Lcom/netease/dwrg/Launcher;->access$1300(Lcom/netease/dwrg/Launcher;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_1

    .line 984
    const-wide/16 v6, 0x64

    mul-long/2addr v6, v0

    iget-object v5, p0, Lcom/netease/dwrg/Launcher$UpdateHandler;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v5}, Lcom/netease/dwrg/Launcher;->access$1300(Lcom/netease/dwrg/Launcher;)J

    move-result-wide v8

    div-long/2addr v6, v8

    long-to-int v3, v6

    .line 986
    :cond_1
    iget-object v5, p0, Lcom/netease/dwrg/Launcher$UpdateHandler;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v5}, Lcom/netease/dwrg/Launcher;->access$1100(Lcom/netease/dwrg/Launcher;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 987
    iget-object v5, p0, Lcom/netease/dwrg/Launcher$UpdateHandler;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v5}, Lcom/netease/dwrg/Launcher;->access$1100(Lcom/netease/dwrg/Launcher;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 989
    .end local v0    # "copiedSize":J
    .end local v2    # "copyingFile":Ljava/lang/String;
    .end local v3    # "progress":I
    .end local v4    # "title":Ljava/lang/String;
    :cond_2
    return-void
.end method
