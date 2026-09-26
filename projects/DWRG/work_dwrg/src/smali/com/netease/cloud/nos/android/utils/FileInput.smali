.class public Lcom/netease/cloud/nos/android/utils/FileInput;
.super Ljava/lang/Object;
.source "FileInput.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final file:Ljava/io/File;

.field private final filename:Ljava/lang/String;

.field private final randomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/netease/cloud/nos/android/utils/FileInput;

    invoke-static {v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cloud/nos/android/utils/FileInput;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netease/cloud/nos/android/utils/FileInput;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "aliasFilename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/netease/cloud/nos/android/utils/FileInput;->file:Ljava/io/File;

    .line 23
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/cloud/nos/android/utils/FileInput;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 24
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .end local p2    # "aliasFilename":Ljava/lang/String;
    :goto_0
    iput-object p2, p0, Lcom/netease/cloud/nos/android/utils/FileInput;->filename:Ljava/lang/String;

    .line 26
    return-void

    .line 25
    .restart local p2    # "aliasFilename":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method


# virtual methods
.method public delete()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/netease/cloud/nos/android/utils/FileInput;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/netease/cloud/nos/android/utils/FileInput;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 65
    :cond_0
    return-void
.end method

.method public doClose()V
    .locals 3

    .prologue
    .line 37
    iget-object v1, p0, Lcom/netease/cloud/nos/android/utils/FileInput;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_0

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/netease/cloud/nos/android/utils/FileInput;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/netease/cloud/nos/android/utils/FileInput;->LOGTAG:Ljava/lang/String;

    const-string v2, "close file exception"

    invoke-static {v1, v2, v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/netease/cloud/nos/android/utils/FileInput;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/netease/cloud/nos/android/utils/FileInput;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public read(JI)[B
    .locals 7
    .param p1, "offset"    # J
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 47
    cmp-long v1, p1, v4

    if-nez v1, :cond_0

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/utils/FileInput;->length()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 48
    const/4 v1, 0x0

    new-array v0, v1, [B

    .line 58
    :goto_0
    return-object v0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/utils/FileInput;->length()J

    move-result-wide v2

    cmp-long v1, p1, v2

    if-ltz v1, :cond_1

    .line 52
    const/4 v0, 0x0

    goto :goto_0

    .line 54
    :cond_1
    new-array v0, p3, [B

    .line 55
    .local v0, "bs":[B
    iget-object v1, p0, Lcom/netease/cloud/nos/android/utils/FileInput;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 56
    iget-object v1, p0, Lcom/netease/cloud/nos/android/utils/FileInput;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 57
    int-to-long v2, p3

    add-long/2addr p1, v2

    .line 58
    goto :goto_0
.end method
