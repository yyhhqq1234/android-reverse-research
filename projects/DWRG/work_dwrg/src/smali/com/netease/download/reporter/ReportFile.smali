.class public Lcom/netease/download/reporter/ReportFile;
.super Ljava/lang/Object;
.source "ReportFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/download/reporter/ReportFile$FileCallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ReportFile"

.field private static sReportFile:Lcom/netease/download/reporter/ReportFile;


# instance fields
.field private mAl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExs:Ljava/util/concurrent/ExecutorService;

.field private mFile:Ljava/io/File;

.field public mFileCallBack:Lcom/netease/download/reporter/ReportFile$FileCallBack;

.field private mIsStart:Z

.field private mOut:Ljava/io/BufferedWriter;

.field private mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/download/reporter/ReportFile;->sReportFile:Lcom/netease/download/reporter/ReportFile;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/download/reporter/ReportFile;->mExs:Ljava/util/concurrent/ExecutorService;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/download/reporter/ReportFile;->mAl:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x7d0

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/netease/download/reporter/ReportFile;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 48
    iput-object v2, p0, Lcom/netease/download/reporter/ReportFile;->mFile:Ljava/io/File;

    .line 50
    iput-object v2, p0, Lcom/netease/download/reporter/ReportFile;->mOut:Ljava/io/BufferedWriter;

    .line 52
    iput-object v2, p0, Lcom/netease/download/reporter/ReportFile;->mFileCallBack:Lcom/netease/download/reporter/ReportFile$FileCallBack;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/download/reporter/ReportFile;->mIsStart:Z

    .line 58
    return-void
.end method

.method static synthetic access$0(Lcom/netease/download/reporter/ReportFile;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/netease/download/reporter/ReportFile;->mQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$1(Lcom/netease/download/reporter/ReportFile;)Ljava/io/File;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/netease/download/reporter/ReportFile;->mFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$2(Lcom/netease/download/reporter/ReportFile;Ljava/io/BufferedWriter;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/netease/download/reporter/ReportFile;->mOut:Ljava/io/BufferedWriter;

    return-void
.end method

.method static synthetic access$3(Lcom/netease/download/reporter/ReportFile;)Ljava/io/BufferedWriter;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/netease/download/reporter/ReportFile;->mOut:Ljava/io/BufferedWriter;

    return-object v0
.end method

.method public static getInstances()Lcom/netease/download/reporter/ReportFile;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/netease/download/reporter/ReportFile;->sReportFile:Lcom/netease/download/reporter/ReportFile;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/netease/download/reporter/ReportFile;

    invoke-direct {v0}, Lcom/netease/download/reporter/ReportFile;-><init>()V

    sput-object v0, Lcom/netease/download/reporter/ReportFile;->sReportFile:Lcom/netease/download/reporter/ReportFile;

    .line 66
    :cond_0
    sget-object v0, Lcom/netease/download/reporter/ReportFile;->sReportFile:Lcom/netease/download/reporter/ReportFile;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 272
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/netease/download/reporter/ReportFile;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public clean()V
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/download/reporter/ReportFile;->mIsStart:Z

    .line 257
    return-void
.end method

.method public cleanAndAdd(Ljava/lang/String;)V
    .locals 2
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/netease/download/reporter/ReportFile;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 113
    iget-object v0, p0, Lcom/netease/download/reporter/ReportFile;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/reporter/ReportInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/netease/download/reporter/ReportFile;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 115
    return-void
.end method

.method public deleteFile()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/netease/download/reporter/ReportFile;->mFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/download/reporter/ReportFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    const-string v0, "ReportFile"

    const-string v1, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u5220\u9664\u65e5\u5fd7\u6587\u4ef6"

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/netease/download/reporter/ReportFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 266
    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/netease/download/reporter/ReportFile$FileCallBack;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileCallBack"    # Lcom/netease/download/reporter/ReportFile$FileCallBack;

    .prologue
    .line 72
    iget-object v1, p0, Lcom/netease/download/reporter/ReportFile;->mFile:Ljava/io/File;

    if-nez v1, :cond_0

    .line 73
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/report_info.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/netease/download/reporter/ReportFile;->mFile:Ljava/io/File;

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/netease/download/reporter/ReportFile;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/netease/download/reporter/ReportFile;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/netease/download/reporter/ReportFile;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/netease/download/reporter/ReportFile;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_2
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/netease/download/reporter/ReportFile;->mIsStart:Z

    .line 94
    iput-object p2, p0, Lcom/netease/download/reporter/ReportFile;->mFileCallBack:Lcom/netease/download/reporter/ReportFile$FileCallBack;

    .line 95
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public readFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 171
    const-string v7, ""

    .line 174
    .local v7, "result":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/report_info.txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v5, "mFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 180
    :try_start_0
    const-string v8, "ReportFile"

    const-string v9, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u6587\u4ef6\u4e0d\u5b58\u5728\u751f\u6210\u6587\u4ef6"

    invoke-static {v8, v9}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_0
    :goto_0
    const-string v8, "ReportFile"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u6587\u4ef6\u8def\u5f84="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", \u6587\u4ef6\u5927\u5c0f="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    .line 191
    const-string v8, "ReportFile"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u6587\u4ef6\u5b58\u5728\uff0c\u8def\u5f84="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", \u6587\u4ef6\u5927\u5c0f="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/4 v6, 0x0

    .line 194
    .local v6, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 196
    .local v2, "inputStream":Ljava/util/Scanner;
    :try_start_1
    new-instance v3, Ljava/util/Scanner;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v8}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2    # "inputStream":Ljava/util/Scanner;
    .local v3, "inputStream":Ljava/util/Scanner;
    move-object v2, v3

    .line 203
    .end local v3    # "inputStream":Ljava/util/Scanner;
    .restart local v2    # "inputStream":Ljava/util/Scanner;
    :goto_1
    const/4 v4, 0x0

    .line 204
    .local v4, "line":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 208
    .local v1, "fileInfo":Ljava/lang/StringBuffer;
    :goto_2
    invoke-virtual {v2}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v8

    if-nez v8, :cond_1

    .line 214
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 215
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    .line 250
    .end local v1    # "fileInfo":Ljava/lang/StringBuffer;
    .end local v2    # "inputStream":Ljava/util/Scanner;
    .end local v4    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :goto_3
    const-string v8, "ReportFile"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u6587\u4ef6\u8bfb\u53d6\u5185\u5bb9="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-object v7

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "ReportFile"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u6587\u4ef6\u4e0d\u5b58\u5728\u751f\u6210\u6587\u4ef6 IOException ="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 198
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "inputStream":Ljava/util/Scanner;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 200
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v8, "ReportFile"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---FileNotFoundException = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 210
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "fileInfo":Ljava/lang/StringBuffer;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v4

    .line 211
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 247
    .end local v1    # "fileInfo":Ljava/lang/StringBuffer;
    .end local v2    # "inputStream":Ljava/util/Scanner;
    .end local v4    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :cond_2
    const-string v8, "ReportFile"

    const-string v9, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-static {v8, v9}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public start()V
    .locals 3

    .prologue
    .line 119
    const-string v0, "ReportFile"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ReportFile write2File Thread mIsStart="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/netease/download/reporter/ReportFile;->mIsStart:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-boolean v0, p0, Lcom/netease/download/reporter/ReportFile;->mIsStart:Z

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/download/reporter/ReportFile;->mIsStart:Z

    .line 124
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/download/reporter/ReportFile$1;

    invoke-direct {v1, p0}, Lcom/netease/download/reporter/ReportFile$1;-><init>(Lcom/netease/download/reporter/ReportFile;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 159
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 161
    :cond_0
    return-void
.end method
