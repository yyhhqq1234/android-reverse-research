.class public Lcom/tencent/hawk/bridge/ProcFile;
.super Ljava/io/File;
.source "ProcFile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/hawk/bridge/ProcFile;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final content:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/tencent/hawk/bridge/ProcFile$1;

    invoke-direct {v0}, Lcom/tencent/hawk/bridge/ProcFile$1;-><init>()V

    sput-object v0, Lcom/tencent/hawk/bridge/ProcFile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 89
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/hawk/bridge/ProcFile;->content:Ljava/lang/String;

    .line 60
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-static {p1}, Lcom/tencent/hawk/bridge/ProcFile;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/hawk/bridge/ProcFile;->content:Ljava/lang/String;

    .line 55
    return-void
.end method

.method static readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    const/4 v3, 0x0

    .line 30
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .local v2, "output":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    if-nez v4, :cond_1

    .line 33
    :try_start_1
    new-instance v5, Ljava/lang/String;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    if-eqz v4, :cond_0

    .line 43
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 39
    :cond_0
    :goto_0
    return-object v5

    .line 35
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    const-string v1, ""

    .local v1, "newLine":Ljava/lang/String;
    :goto_1
    if-nez v0, :cond_2

    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v5

    .line 41
    if-eqz v4, :cond_0

    .line 43
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v6

    goto :goto_0

    .line 36
    :cond_2
    :try_start_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, "\n"

    .line 35
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v0

    goto :goto_1

    .line 40
    .end local v0    # "line":Ljava/lang/String;
    .end local v1    # "newLine":Ljava/lang/String;
    .end local v2    # "output":Ljava/lang/StringBuilder;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v5

    .line 41
    :goto_2
    if-eqz v3, :cond_3

    .line 43
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 47
    :cond_3
    :goto_3
    throw v5

    .line 44
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "output":Ljava/lang/StringBuilder;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v6

    goto :goto_0

    .end local v2    # "output":Ljava/lang/StringBuilder;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v6

    goto :goto_3

    .line 40
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "output":Ljava/lang/StringBuilder;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 94
    if-nez p1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v1

    .line 97
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 100
    invoke-super {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    instance-of v3, p1, Lcom/tencent/hawk/bridge/ProcFile;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 106
    check-cast v0, Lcom/tencent/hawk/bridge/ProcFile;

    .line 107
    .local v0, "target":Lcom/tencent/hawk/bridge/ProcFile;
    iget-object v3, v0, Lcom/tencent/hawk/bridge/ProcFile;->content:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/tencent/hawk/bridge/ProcFile;->content:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-super {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/tencent/hawk/bridge/ProcFile;->content:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/hawk/bridge/ProcFile;->content:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 108
    goto :goto_0

    .line 109
    :cond_2
    invoke-super {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/tencent/hawk/bridge/ProcFile;->content:Ljava/lang/String;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/tencent/hawk/bridge/ProcFile;->content:Ljava/lang/String;

    if-nez v3, :cond_0

    move v1, v2

    .line 110
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 119
    invoke-super {p0}, Ljava/io/File;->hashCode()I

    move-result v0

    .line 120
    .local v0, "hashcode":I
    iget-object v1, p0, Lcom/tencent/hawk/bridge/ProcFile;->content:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 123
    .end local v0    # "hashcode":I
    :goto_0
    return v0

    .restart local v0    # "hashcode":I
    :cond_0
    iget-object v1, p0, Lcom/tencent/hawk/bridge/ProcFile;->content:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tencent/hawk/bridge/ProcFile;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/tencent/hawk/bridge/ProcFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/tencent/hawk/bridge/ProcFile;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    return-void
.end method
