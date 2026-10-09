.class Lcom/tencent/msdk/webview/X5WebViewActivity$8;
.super Landroid/content/BroadcastReceiver;
.source "X5WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/webview/X5WebViewActivity;->downloadZipFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

.field final synthetic val$downloadManager:Landroid/app/DownloadManager;

.field final synthetic val$ref:J


# direct methods
.method constructor <init>(Lcom/tencent/msdk/webview/X5WebViewActivity;JLandroid/app/DownloadManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;

    .prologue
    .line 1848
    iput-object p1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$8;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    iput-wide p2, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$8;->val$ref:J

    iput-object p4, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$8;->val$downloadManager:Landroid/app/DownloadManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1852
    const-string v5, "extra_download_id"

    const-wide/16 v6, -0x1

    invoke-virtual {p2, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iget-wide v8, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$8;->val$ref:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    .line 1854
    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 1855
    .local v2, "query":Landroid/app/DownloadManager$Query;
    const/4 v5, 0x1

    new-array v5, v5, [J

    const/4 v6, 0x0

    iget-wide v8, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$8;->val$ref:J

    aput-wide v8, v5, v6

    invoke-virtual {v2, v5}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 1856
    iget-object v5, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$8;->val$downloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v5, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1

    .line 1857
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1859
    const-string v5, "status"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1860
    .local v0, "columnIndex":I
    const/16 v5, 0x8

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 1862
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$8;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    sget-object v7, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/tencent/msdk/webview/X5WebViewActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ingame.zip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1863
    .local v4, "zipFilePath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1864
    .local v3, "zipFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1865
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1866
    :cond_0
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$8;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    sget-object v8, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/tencent/msdk/webview/X5WebViewActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ingame_tmp.zip"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1870
    .end local v0    # "columnIndex":I
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "query":Landroid/app/DownloadManager$Query;
    .end local v3    # "zipFile":Ljava/io/File;
    .end local v4    # "zipFilePath":Ljava/lang/String;
    :cond_1
    return-void
.end method
