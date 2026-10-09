.class Lcom/tencent/liteav/network/TXCStreamDownloader$1;
.super Ljava/lang/Object;
.source "TXCStreamDownloader.java"

# interfaces
.implements Lcom/tencent/liteav/network/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/network/TXCStreamDownloader;->start(Ljava/lang/String;ZI)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tencent/liteav/network/TXCStreamDownloader;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/network/TXCStreamDownloader;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader$1;->b:Lcom/tencent/liteav/network/TXCStreamDownloader;

    iput-object p2, p0, Lcom/tencent/liteav/network/TXCStreamDownloader$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/util/Vector;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lcom/tencent/liteav/network/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x7d0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 260
    if-nez p1, :cond_4

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 261
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader$1;->b:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-static {v0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->access$000(Lcom/tencent/liteav/network/TXCStreamDownloader;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 262
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader$1;->b:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-static {v0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->access$100(Lcom/tencent/liteav/network/TXCStreamDownloader;)Lcom/tencent/liteav/network/TXIStreamDownloader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader$1;->b:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-static {v0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->access$100(Lcom/tencent/liteav/network/TXCStreamDownloader;)Lcom/tencent/liteav/network/TXIStreamDownloader;

    move-result-object v0

    invoke-virtual {v0, p3, v1, v1}, Lcom/tencent/liteav/network/TXIStreamDownloader;->startDownload(Ljava/util/Vector;ZZ)V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader$1;->b:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-static {v0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->access$200(Lcom/tencent/liteav/network/TXCStreamDownloader;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader$1;->b:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-static {v0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->access$200(Lcom/tencent/liteav/network/TXCStreamDownloader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader$1;->b:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-static {v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->access$300(Lcom/tencent/liteav/network/TXCStreamDownloader;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader$1;->b:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-static {v0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->access$400(Lcom/tencent/liteav/network/TXCStreamDownloader;)Lcom/tencent/liteav/network/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/network/f;->b()Ljava/lang/String;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader$1;->b:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-static {v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->access$500(Lcom/tencent/liteav/network/TXCStreamDownloader;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/tencent/liteav/basic/datareport/a;->ap:I

    invoke-static {v1, v2, p1, v0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txReportDAU(Landroid/content/Context;IILjava/lang/String;)V

    .line 297
    :cond_2
    :goto_0
    return-void

    .line 275
    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader$1;->b:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-static {v0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->access$500(Lcom/tencent/liteav/network/TXCStreamDownloader;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/tencent/liteav/basic/datareport/a;->ap:I

    const/4 v2, -0x4

    const-string v3, "livePlayer have been stopped"

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txReportDAU(Landroid/content/Context;IILjava/lang/String;)V

    goto :goto_0

    .line 279
    :cond_4
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader$1;->b:Lcom/tencent/liteav/network/TXCStreamDownloader;

    const/16 v1, 0x2efe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/network/TXCStreamDownloader;->onNotifyEvent(ILandroid/os/Bundle;)V

    .line 280
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader$1;->b:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-static {v0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->access$500(Lcom/tencent/liteav/network/TXCStreamDownloader;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/tencent/liteav/basic/datareport/a;->ap:I

    invoke-static {v0, v1, p1, p2}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txReportDAU(Landroid/content/Context;IILjava/lang/String;)V

    .line 283
    const-string v0, "TXCStreamDownloader"

    const-string v1, "getAccelerateStreamPlayUrl failed, play stream with raw url"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader$1;->b:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-static {v0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->access$000(Lcom/tencent/liteav/network/TXCStreamDownloader;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader$1;->b:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-static {v0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->access$100(Lcom/tencent/liteav/network/TXCStreamDownloader;)Lcom/tencent/liteav/network/TXIStreamDownloader;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 286
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 287
    new-instance v1, Lcom/tencent/liteav/network/d;

    iget-object v2, p0, Lcom/tencent/liteav/network/TXCStreamDownloader$1;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/tencent/liteav/network/d;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader$1;->b:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-static {v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->access$100(Lcom/tencent/liteav/network/TXCStreamDownloader;)Lcom/tencent/liteav/network/TXIStreamDownloader;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v3}, Lcom/tencent/liteav/network/TXIStreamDownloader;->startDownload(Ljava/util/Vector;ZZ)V

    .line 292
    :cond_5
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader$1;->b:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-static {v0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->access$200(Lcom/tencent/liteav/network/TXCStreamDownloader;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader$1;->b:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-static {v0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->access$200(Lcom/tencent/liteav/network/TXCStreamDownloader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader$1;->b:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-static {v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->access$300(Lcom/tencent/liteav/network/TXCStreamDownloader;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
