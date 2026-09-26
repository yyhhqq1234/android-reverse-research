.class Lcom/netease/epay/sdk/base/network/FileDownloader$1$3;
.super Ljava/lang/Object;
.source "FileDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base/network/FileDownloader$1;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/epay/sdk/base/network/FileDownloader$1;

.field final synthetic val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base/network/FileDownloader$1;Ljava/io/IOException;)V
    .locals 0
    .param p1, "this$1"    # Lcom/netease/epay/sdk/base/network/FileDownloader$1;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/netease/epay/sdk/base/network/FileDownloader$1$3;->this$1:Lcom/netease/epay/sdk/base/network/FileDownloader$1;

    iput-object p2, p0, Lcom/netease/epay/sdk/base/network/FileDownloader$1$3;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/netease/epay/sdk/base/network/FileDownloader$1$3;->this$1:Lcom/netease/epay/sdk/base/network/FileDownloader$1;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/network/FileDownloader$1;->val$downloadListener:Lcom/netease/epay/sdk/base/network/FileDownloader$DownloadListener;

    iget-object v1, p0, Lcom/netease/epay/sdk/base/network/FileDownloader$1$3;->val$e:Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/epay/sdk/base/network/FileDownloader$DownloadListener;->onFailed(Ljava/lang/String;)V

    .line 91
    return-void
.end method
