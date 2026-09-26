.class Lcom/netease/download/downloadpart/DownloadPartCore$1;
.super Ljava/lang/Object;
.source "DownloadPartCore.java"

# interfaces
.implements Lcom/netease/download/network/NetworkDealer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/download/downloadpart/DownloadPartCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/download/network/NetworkDealer",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/download/downloadpart/DownloadPartCore;


# direct methods
.method constructor <init>(Lcom/netease/download/downloadpart/DownloadPartCore;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processContent(Ljava/io/InputStream;)Ljava/lang/Boolean;
    .locals 50
    .param p1, "pInputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 132
    const-string v5, "\u5206\u7247\u4e0b\u8f7d\u8fd4\u56de\uff0cInputStream\u6570\u636e\u6d41\u5904\u7406\uff0cURL"

    invoke-static {v5}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 133
    const/16 v22, 0x1

    .line 134
    .local v22, "fileOpResult":Z
    const-wide/16 v28, 0x0

    .line 135
    .local v28, "lastReportSize":J
    const-wide/16 v26, 0x0

    .line 136
    .local v26, "lastCacheSize":J
    const/16 v16, 0x0

    .line 137
    .local v16, "bytesRead":I
    const/16 v41, 0x0

    .line 138
    .local v41, "shouldRemove":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$1(Lcom/netease/download/downloadpart/DownloadPartCore;Z)V

    .line 139
    const v4, 0x8000

    .line 140
    .local v4, "BUFFER_SIZE":I
    const v5, 0x8000

    new-array v14, v5, [B

    .line 141
    .local v14, "buffer":[B
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v5}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$2(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/util/Map;

    move-result-object v5

    const-string v6, "START"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v5}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$3(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/downloader/DownloadParams;->getSegmentStart()J

    move-result-wide v8

    sub-long v30, v6, v8

    .line 142
    .local v30, "lastSize":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v5}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$3(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/downloader/DownloadParams;->getSegmentEnd()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v5}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$3(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/downloader/DownloadParams;->getSegmentStart()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1

    add-long v38, v6, v8

    .line 143
    .local v38, "partSize":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v5}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$4(Lcom/netease/download/downloadpart/DownloadPartCore;)J

    move-result-wide v42

    .line 144
    .local v42, "realSize":J
    const-string v5, "DownloadPartCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "realSize="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v42

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", partSize - lastSize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v38, v30

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", partSize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v38

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", lastSize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v30

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    sub-long v6, v38, v30

    cmp-long v5, v42, v6

    if-eqz v5, :cond_0

    .line 147
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 267
    :goto_0
    return-object v5

    .line 150
    :cond_0
    const-string v5, "DownloadPartCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u5206\u7247\u6587\u4ef6\u8def\u5f84="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v7}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$5(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v40, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v5}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$5(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "rwd"

    move-object/from16 v0, v40

    invoke-direct {v0, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .local v40, "randomAccessFile":Ljava/io/RandomAccessFile;
    move-object/from16 v0, v40

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 154
    new-instance v15, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 156
    .local v15, "bufferedInputStream":Ljava/io/BufferedInputStream;
    const-wide/32 v6, 0xa00000

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v5}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$3(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/downloader/DownloadParams;->getTotalPart()I

    move-result v5

    int-to-long v8, v5

    div-long v32, v6, v8

    .line 157
    .local v32, "limitSpeed":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v5}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$3(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/downloader/DownloadParams;->getMd5()Ljava/lang/String;

    move-result-object v36

    .line 158
    .local v36, "md5":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v5}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$3(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/downloader/DownloadParams;->getUrlSuffix()Ljava/lang/String;

    move-result-object v47

    .line 159
    .local v47, "urlSuffix":Ljava/lang/String;
    invoke-static {}, Lcom/netease/download/config2/ConfigParams2;->getInstance()Lcom/netease/download/config2/ConfigParams2;

    move-result-object v18

    .line 160
    .local v18, "configParams2":Lcom/netease/download/config2/ConfigParams2;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v5}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$3(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/downloader/DownloadParams;->hashCode()I

    move-result v17

    .line 161
    .local v17, "code":I
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v5}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$3(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v19, "dlFile":Ljava/io/File;
    new-instance v46, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v5}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$5(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v46

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .local v46, "tmpDlFile":Ljava/io/File;
    const-wide/16 v20, 0x0

    .line 164
    .local v20, "downloadSize":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    .line 165
    .local v44, "startTime":J
    const-wide/16 v48, 0x0

    .line 166
    .local v48, "useTime":J
    invoke-static {}, Lcom/netease/download/check/CheckTime;->newInstance()Lcom/netease/download/check/CheckTime;

    move-result-object v34

    .line 168
    .local v34, "mCheckTime":Lcom/netease/download/check/CheckTime;
    :goto_1
    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/network/NetController;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v15, v14}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v16

    const/4 v5, -0x1

    move/from16 v0, v16

    if-ne v0, v5, :cond_3

    .line 238
    :cond_1
    :goto_2
    invoke-virtual/range {v40 .. v40}, Ljava/io/RandomAccessFile;->close()V

    .line 240
    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/network/NetController;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/netease/download/network/NetworkStatus;->getNetStatus()I

    move-result v5

    if-nez v5, :cond_10

    .line 241
    :cond_2
    const-string v5, "DownloadPartCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "downloadPart is interrupted("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") in processContent"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_0

    .line 170
    :cond_3
    invoke-static {}, Lcom/netease/download/network/NetworkStatus;->getNetStatus()I

    move-result v5

    if-eqz v5, :cond_1

    .line 174
    move/from16 v0, v16

    int-to-long v6, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v6, v7}, Lcom/netease/download/check/CheckTime;->mark(J)V

    .line 175
    const/4 v5, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v16

    invoke-virtual {v0, v14, v5, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 176
    move/from16 v0, v16

    int-to-long v6, v0

    add-long v30, v30, v6

    .line 178
    invoke-virtual/range {v34 .. v34}, Lcom/netease/download/check/CheckTime;->calculate()Lcom/netease/download/check/CheckTime;

    .line 179
    move/from16 v0, v16

    int-to-long v6, v0

    add-long v20, v20, v6

    .line 180
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/netease/download/reporter/ReportInfo;->mDlSize:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v7}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$3(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/download/downloader/DownloadParams;->getUrlSuffix()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v7}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$6(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v7}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$3(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/download/downloader/DownloadParams;->getPart()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v7}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$7(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v48, v6, v44

    .line 182
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/netease/download/reporter/ReportInfo;->mDlTime:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v7}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$3(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/download/downloader/DownloadParams;->getUrlSuffix()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v7}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$6(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v7}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$3(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/download/downloader/DownloadParams;->getPart()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getInstances()Lcom/netease/download/listener/DownloadListenerCore;

    move-result-object v5

    move/from16 v0, v16

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Lcom/netease/download/listener/DownloadListenerCore;->sendAllSize(J)V

    .line 184
    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v6}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$8(Lcom/netease/download/downloadpart/DownloadPartCore;)I

    move-result v6

    if-eq v5, v6, :cond_4

    .line 185
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getInstances()Lcom/netease/download/listener/DownloadListenerCore;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;

    move-result-object v5

    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/download/downloader/DownloadInitInfo;->getAllSize()J

    move-result-wide v6

    move/from16 v0, v16

    int-to-long v8, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v10}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$3(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v10

    invoke-virtual {v10}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v11}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$3(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v11

    invoke-virtual {v11}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v5 .. v11}, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;->sendProgressMsg(JJLjava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v5}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$3(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/downloader/DownloadParams;->getFileId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v6}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$3(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/download/downloader/DownloadParams;->getDomainFromUrl()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1, v6}, Lcom/netease/download/check/CheckTime;->check(Ljava/lang/String;Lcom/netease/download/config2/ConfigParams2;Ljava/lang/String;)Z

    move-result v24

    .line 193
    .local v24, "isSlowCND":Z
    if-eqz v24, :cond_8

    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v6}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$3(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/netease/download/dns/CdnIpController;->isLastIp(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v5}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$9(Lcom/netease/download/downloadpart/DownloadPartCore;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v37, 0x1

    .line 197
    .local v37, "only_cdn_need_remove":Z
    :goto_3
    invoke-static {}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns2/HttpdnsProxy;

    move-result-object v5

    const-string v6, "httpdns_config_cnd"

    invoke-virtual {v5, v6}, Lcom/netease/download/httpdns2/HttpdnsProxy;->containKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns2/HttpdnsProxy;

    move-result-object v5

    const-string v6, "httpdns_config_cnd"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v7}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$3(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/netease/download/httpdns2/HttpdnsProxy;->isLast(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    const/4 v12, 0x1

    .line 200
    .local v12, "aa":Z
    :goto_4
    invoke-static {}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns2/HttpdnsProxy;

    move-result-object v5

    const-string v6, "httpdns_config_cnd"

    invoke-virtual {v5, v6}, Lcom/netease/download/httpdns2/HttpdnsProxy;->containKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v13, 0x0

    .line 203
    .local v13, "bb":Z
    :goto_5
    if-eqz v24, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v5}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$9(Lcom/netease/download/downloadpart/DownloadPartCore;)Z

    move-result v5

    if-nez v5, :cond_b

    if-nez v12, :cond_5

    if-eqz v13, :cond_b

    :cond_5
    const/16 v23, 0x1

    .line 205
    .local v23, "httpdns_need_remove":Z
    :goto_6
    if-nez v37, :cond_6

    if-eqz v23, :cond_f

    .line 207
    :cond_6
    const-string v5, "DownloadPartCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "only_cdn_need_remove="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", httpdns_need_remove="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v6, "DownloadPartCore"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "isSlowCND="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", \u662f\u5426\u8fd8\u6ca1\u8d70\u8fc7httpdns="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", \u662f\u5426\u6700\u540e\u4e00\u4e2ahttpdns="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", !mOversea="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v5}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$9(Lcom/netease/download/downloadpart/DownloadPartCore;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x0

    :goto_7
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v5, "DownloadPartCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u7b26\u5408\u4f4e\u901f\u79fb\u9664\u7684\u60c5\u51b5\u4e0b\uff0c\u4e14\u8fd8\u6709\u5176\u4ed6\u672a\u4f7f\u7528ip, part="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v7}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$3(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/download/downloader/DownloadParams;->getPart()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/netease/download/reporter/ReportInfo;->mSlowIps:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "slow_ips_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v7}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$7(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/ArrayList;

    .line 212
    .local v25, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v25, :cond_d

    .line 213
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v5}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$6(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/netease/download/reporter/ReportInfo;->mSlowIps:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "slow_ips_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v7}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$7(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v5, v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :goto_8
    const/16 v41, 0x1

    .line 221
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$1(Lcom/netease/download/downloadpart/DownloadPartCore;Z)V

    .line 222
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v5}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$10(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/util/HashMap;

    move-result-object v5

    const-string v6, "removecdn"

    const-string v7, "true"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/netease/download/reporter/ReportInfo;->mSlowIps:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v6}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$7(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/netease/download/reporter/ReportInfo;->mSlowIps:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v6}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$7(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    move-object/from16 v35, v5

    .line 225
    .local v35, "mSlowIps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v5}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$6(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 226
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v5}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$6(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_7
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/netease/download/reporter/ReportInfo;->mSlowIps:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v6}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$7(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v35

    invoke-virtual {v5, v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v5, "DownloadPartCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u4f4e\u901f\u79fb\u9664ip="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v7}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$6(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", part="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v7}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$3(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/download/downloader/DownloadParams;->getPart()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v5

    const/4 v6, 0x1

    iput v6, v5, Lcom/netease/download/reporter/ReportInfo;->mIpRemoved:I

    goto/16 :goto_2

    .line 193
    .end local v12    # "aa":Z
    .end local v13    # "bb":Z
    .end local v23    # "httpdns_need_remove":Z
    .end local v25    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v35    # "mSlowIps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v37    # "only_cdn_need_remove":Z
    :cond_8
    const/16 v37, 0x0

    goto/16 :goto_3

    .line 197
    .restart local v37    # "only_cdn_need_remove":Z
    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 200
    .restart local v12    # "aa":Z
    :cond_a
    const/4 v13, 0x1

    goto/16 :goto_5

    .line 203
    .restart local v13    # "bb":Z
    :cond_b
    const/16 v23, 0x0

    goto/16 :goto_6

    .line 208
    .restart local v23    # "httpdns_need_remove":Z
    :cond_c
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 217
    .restart local v25    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_d
    new-instance v25, Ljava/util/ArrayList;

    .end local v25    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .restart local v25    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto/16 :goto_8

    .line 223
    :cond_e
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_9

    .line 235
    .end local v25    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_f
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 244
    .end local v12    # "aa":Z
    .end local v13    # "bb":Z
    .end local v23    # "httpdns_need_remove":Z
    .end local v24    # "isSlowCND":Z
    .end local v37    # "only_cdn_need_remove":Z
    :cond_10
    if-eqz v41, :cond_11

    .line 245
    const-string v5, "DownloadPartCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")channel removed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v7}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$3(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_0

    .line 249
    :cond_11
    const-string v5, "DownloadPartCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")read all"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 252
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    move-result v22

    .line 253
    const-string v5, "DownloadPartCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")del original file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_12
    if-eqz v22, :cond_13

    .line 257
    move-object/from16 v0, v46

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v22

    .line 258
    const-string v5, "DownloadPartCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u5206\u7247\u4efb\u52a1\u4e0b\u8f7d\u5b8c\u6210, pParams.getPart()="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v7}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$3(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/download/downloader/DownloadParams;->getPart()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\uff0c ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")rename file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_13
    if-eqz v22, :cond_14

    .line 263
    invoke-static {}, Lcom/netease/download/util/SpUtil;->getInstance()Lcom/netease/download/util/SpUtil;

    move-result-object v5

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "md5"

    .line 264
    const-string v8, "MD5"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v9}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$3(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/download/util/HashUtil;->calculateHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    .line 263
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/netease/download/util/SpUtil;->setString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 267
    :cond_14
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public bridge synthetic processContent(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/netease/download/downloadpart/DownloadPartCore$1;->processContent(Ljava/io/InputStream;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public processHeader(Ljava/util/Map;ILjava/lang/String;)V
    .locals 11
    .param p2, "pCode"    # I
    .param p3, "resUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, "pHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v7, "DownloadPartCore"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u5206\u7247\u4e0b\u8f7d processHeader="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Code="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", resUrl="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-static {p3}, Lcom/netease/download/util/StrUtil;->getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "aaaa":Ljava/lang/String;
    const/16 v7, 0xc8

    if-eq v7, p2, :cond_1

    const/16 v7, 0xce

    if-eq v7, p2, :cond_1

    if-eqz p2, :cond_1

    .line 279
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/netease/download/reporter/ReportInfo;->mAbnormalRetnum:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/netease/download/reporter/ReportInfo;->mAbnormalRetnum:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 280
    .local v1, "count":I
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 281
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/netease/download/reporter/ReportInfo;->mAbnormalRetnum:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-static {p3}, Lcom/netease/download/util/StrUtil;->getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 285
    .local v5, "ip":Ljava/lang/String;
    iget-object v7, p0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v7}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$7(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "/"

    invoke-static {p3, v7, v8}, Lcom/netease/download/util/StrUtil;->replaceDomainWithIpAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, "domainUrl":Ljava/lang/String;
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/netease/download/reporter/ReportInfo;->mRetcodeFiles:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 287
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/netease/download/reporter/ReportInfo;->mRetcodeFiles:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    move-object v6, v7

    .line 290
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 291
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    const-string v7, "DownloadPartCore"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u5206\u7247\u4e0b\u8f7d\uff0c\u8bb0\u5f55\u8d77\u6765\u7684\u51fa\u9519\u7684key="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", list\u662f="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_0
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/netease/download/reporter/ReportInfo;->mRetcodeFiles:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .end local v1    # "count":I
    .end local v4    # "domainUrl":Ljava/lang/String;
    .end local v5    # "ip":Ljava/lang/String;
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/netease/download/reporter/ReportInfo;->mDetectData:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v8, Lcom/netease/download/reporter/KeyConst;->KEY_PATCH_HOST:Ljava/lang/String;

    iget-object v9, p0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v9}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$7(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/netease/download/reporter/ReportInfo;->mDetectData:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v8, Lcom/netease/download/reporter/KeyConst;->KEY_IP_PATCH_HOST:Ljava/lang/String;

    iget-object v9, p0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v9}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$6(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/netease/download/reporter/ReportInfo;->mDetectData:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v8, Lcom/netease/download/reporter/KeyConst;->KEY_URL:Ljava/lang/String;

    invoke-virtual {v7, v8, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/netease/download/reporter/ReportInfo;->mDetectData:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v8, Lcom/netease/download/reporter/KeyConst;->KEY_HTTP_CODE:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string v7, "DownloadPartCore"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v9}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$3(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/download/downloader/DownloadParams;->hashCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")downloadPart-processHeader: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", hashCode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/download/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v7, p0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v7, p1}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$11(Lcom/netease/download/downloadpart/DownloadPartCore;Ljava/util/Map;)J

    move-result-wide v2

    .line 305
    .local v2, "contentLength":J
    iget-object v7, p0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v7, v2, v3}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$12(Lcom/netease/download/downloadpart/DownloadPartCore;J)V

    .line 307
    invoke-static {}, Lcom/netease/download/handler/Dispatcher;->getTaskParamsMap()Ljava/util/Map;

    move-result-object v7

    iget-object v8, p0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v8}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$3(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/download/downloader/DownloadParams;->getFileId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 308
    invoke-static {}, Lcom/netease/download/handler/Dispatcher;->getTaskParamsMap()Ljava/util/Map;

    move-result-object v7

    iget-object v8, p0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v8}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$3(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/download/downloader/DownloadParams;->getFileId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/netease/download/downloader/TaskParams;

    invoke-virtual {v7}, Lcom/netease/download/downloader/TaskParams;->getPartResultMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    .line 309
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v9}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$3(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/download/downloader/DownloadParams;->getDownloadUrl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/netease/download/util/StrUtil;->getCdnIndex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "retcode"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :cond_2
    return-void

    .line 279
    .end local v2    # "contentLength":J
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 288
    .restart local v1    # "count":I
    .restart local v4    # "domainUrl":Ljava/lang/String;
    .restart local v5    # "ip":Ljava/lang/String;
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_1
.end method
