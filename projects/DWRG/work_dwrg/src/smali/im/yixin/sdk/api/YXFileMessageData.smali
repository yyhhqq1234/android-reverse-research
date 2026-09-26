.class public Lim/yixin/sdk/api/YXFileMessageData;
.super Ljava/lang/Object;
.source "YXFileMessageData.java"

# interfaces
.implements Lim/yixin/sdk/api/YXMessage$YXMessageData;


# instance fields
.field public fileData:[B

.field public filePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lim/yixin/sdk/api/YXFileMessageData;->fileData:[B

    .line 27
    iput-object v0, p0, Lim/yixin/sdk/api/YXFileMessageData;->filePath:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lim/yixin/sdk/api/YXFileMessageData;->filePath:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "fileData"    # [B

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lim/yixin/sdk/api/YXFileMessageData;->fileData:[B

    .line 38
    return-void
.end method


# virtual methods
.method public dataType()Lim/yixin/sdk/api/YXMessage$MessageType;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lim/yixin/sdk/api/YXMessage$MessageType;->FILE:Lim/yixin/sdk/api/YXMessage$MessageType;

    return-object v0
.end method

.method public read(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "fromBundle"    # Landroid/os/Bundle;

    .prologue
    .line 77
    const-string v0, "_yixinFileMessageData_fileData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lim/yixin/sdk/api/YXFileMessageData;->fileData:[B

    .line 78
    const-string v0, "_yixinFileMessageData_filePath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/yixin/sdk/api/YXFileMessageData;->filePath:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public toJson4Log()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lim/yixin/sdk/api/YXFileMessageData;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public verifyData(Lim/yixin/sdk/api/ExceptionInfo;)Z
    .locals 7
    .param p1, "info"    # Lim/yixin/sdk/api/ExceptionInfo;

    .prologue
    const/4 v2, 0x0

    .line 52
    iget-object v1, p0, Lim/yixin/sdk/api/YXFileMessageData;->fileData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lim/yixin/sdk/api/YXFileMessageData;->fileData:[B

    array-length v1, v1

    if-nez v1, :cond_2

    .line 53
    :cond_0
    iget-object v1, p0, Lim/yixin/sdk/api/YXFileMessageData;->filePath:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lim/yixin/sdk/api/YXFileMessageData;->filePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 54
    :cond_1
    const-string v1, "filePath fileData is all blank"

    invoke-virtual {p1, v1}, Lim/yixin/sdk/api/ExceptionInfo;->appendReason(Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lim/yixin/sdk/util/SDKHttpUtils;->getInstance()Lim/yixin/sdk/util/SDKHttpUtils;

    move-result-object v1

    const-class v3, Lim/yixin/sdk/api/YXFileMessageData;

    invoke-virtual {p1}, Lim/yixin/sdk/api/ExceptionInfo;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lim/yixin/sdk/util/SDKHttpUtils;->get4ErrorLog(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move v1, v2

    .line 72
    :goto_0
    return v1

    .line 58
    :cond_2
    iget-object v1, p0, Lim/yixin/sdk/api/YXFileMessageData;->fileData:[B

    if-eqz v1, :cond_3

    iget-object v1, p0, Lim/yixin/sdk/api/YXFileMessageData;->fileData:[B

    array-length v1, v1

    const/high16 v3, 0xa00000

    if-le v1, v3, :cond_3

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "fileData.length "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lim/yixin/sdk/api/YXFileMessageData;->fileData:[B

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ">10485760"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lim/yixin/sdk/api/ExceptionInfo;->appendReason(Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lim/yixin/sdk/util/SDKHttpUtils;->getInstance()Lim/yixin/sdk/util/SDKHttpUtils;

    move-result-object v1

    const-class v3, Lim/yixin/sdk/api/YXFileMessageData;

    invoke-virtual {p1}, Lim/yixin/sdk/api/ExceptionInfo;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lim/yixin/sdk/util/SDKHttpUtils;->get4ErrorLog(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move v1, v2

    .line 61
    goto :goto_0

    .line 63
    :cond_3
    iget-object v1, p0, Lim/yixin/sdk/api/YXFileMessageData;->filePath:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 64
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lim/yixin/sdk/api/YXFileMessageData;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0xa00000

    cmp-long v1, v3, v5

    if-lez v1, :cond_7

    .line 66
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    const-string v1, "file not exist or can not read"

    :goto_1
    invoke-virtual {p1, v1}, Lim/yixin/sdk/api/ExceptionInfo;->appendReason(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lim/yixin/sdk/util/SDKHttpUtils;->getInstance()Lim/yixin/sdk/util/SDKHttpUtils;

    move-result-object v1

    const-class v3, Lim/yixin/sdk/api/YXFileMessageData;

    invoke-virtual {p1}, Lim/yixin/sdk/api/ExceptionInfo;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lim/yixin/sdk/util/SDKHttpUtils;->get4ErrorLog(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move v1, v2

    .line 69
    goto :goto_0

    .line 67
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "file.length "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ">10485760"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 72
    .end local v0    # "file":Ljava/io/File;
    :cond_7
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public write(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "toBundle"    # Landroid/os/Bundle;

    .prologue
    .line 83
    const-string v0, "_yixinFileMessageData_fileData"

    iget-object v1, p0, Lim/yixin/sdk/api/YXFileMessageData;->fileData:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 84
    const-string v0, "_yixinFileMessageData_filePath"

    iget-object v1, p0, Lim/yixin/sdk/api/YXFileMessageData;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method
