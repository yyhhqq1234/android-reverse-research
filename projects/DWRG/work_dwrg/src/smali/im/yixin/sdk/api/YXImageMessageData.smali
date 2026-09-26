.class public Lim/yixin/sdk/api/YXImageMessageData;
.super Ljava/lang/Object;
.source "YXImageMessageData.java"

# interfaces
.implements Lim/yixin/sdk/api/YXMessage$YXMessageData;


# instance fields
.field public imageData:[B

.field public imagePath:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "paramBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 62
    .local v0, "localByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x55

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 63
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lim/yixin/sdk/api/YXImageMessageData;->imageData:[B

    .line 64
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v0    # "localByteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, "localException":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "paramArrayOfByte"    # [B

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lim/yixin/sdk/api/YXImageMessageData;->imageData:[B

    .line 51
    return-void
.end method


# virtual methods
.method public dataType()Lim/yixin/sdk/api/YXMessage$MessageType;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lim/yixin/sdk/api/YXMessage$MessageType;->IMAGE:Lim/yixin/sdk/api/YXMessage$MessageType;

    return-object v0
.end method

.method public read(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "fromBundle"    # Landroid/os/Bundle;

    .prologue
    .line 103
    const-string v0, "_yixinImageMessageData_imageData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lim/yixin/sdk/api/YXImageMessageData;->imageData:[B

    .line 104
    const-string v0, "_yixinImageMessageData_imagePath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/yixin/sdk/api/YXImageMessageData;->imagePath:Ljava/lang/String;

    .line 105
    const-string v0, "_yixinImageMessageData_imageUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/yixin/sdk/api/YXImageMessageData;->imageUrl:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public toJson4Log()Ljava/lang/String;
    .locals 5

    .prologue
    .line 123
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 124
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "imagePath"

    iget-object v3, p0, Lim/yixin/sdk/api/YXImageMessageData;->imagePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string v2, "imageUrl"

    iget-object v3, p0, Lim/yixin/sdk/api/YXImageMessageData;->imageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 129
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Lorg/json/JSONException;
    const-class v2, Lim/yixin/sdk/api/YXMessage;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "toJson4Log error "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lim/yixin/sdk/util/SDKLogger;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 129
    const-string v2, ""

    goto :goto_0
.end method

.method public verifyData(Lim/yixin/sdk/api/ExceptionInfo;)Z
    .locals 7
    .param p1, "info"    # Lim/yixin/sdk/api/ExceptionInfo;

    .prologue
    const/4 v2, 0x0

    .line 72
    iget-object v1, p0, Lim/yixin/sdk/api/YXImageMessageData;->imageData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lim/yixin/sdk/api/YXImageMessageData;->imageData:[B

    array-length v1, v1

    if-nez v1, :cond_3

    .line 73
    :cond_0
    iget-object v1, p0, Lim/yixin/sdk/api/YXImageMessageData;->imagePath:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lim/yixin/sdk/api/YXImageMessageData;->imagePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 74
    :cond_1
    iget-object v1, p0, Lim/yixin/sdk/api/YXImageMessageData;->imageUrl:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lim/yixin/sdk/api/YXImageMessageData;->imageUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 75
    :cond_2
    const-string v1, "imageData imagePath imageUrl is all blank"

    invoke-virtual {p1, v1}, Lim/yixin/sdk/api/ExceptionInfo;->appendReason(Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lim/yixin/sdk/util/SDKHttpUtils;->getInstance()Lim/yixin/sdk/util/SDKHttpUtils;

    move-result-object v1

    const-class v3, Lim/yixin/sdk/api/YXImageMessageData;

    invoke-virtual {p1}, Lim/yixin/sdk/api/ExceptionInfo;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lim/yixin/sdk/util/SDKHttpUtils;->get4ErrorLog(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move v1, v2

    .line 98
    :goto_0
    return v1

    .line 79
    :cond_3
    iget-object v1, p0, Lim/yixin/sdk/api/YXImageMessageData;->imageData:[B

    if-eqz v1, :cond_4

    iget-object v1, p0, Lim/yixin/sdk/api/YXImageMessageData;->imageData:[B

    array-length v1, v1

    const/high16 v3, 0xa00000

    if-le v1, v3, :cond_4

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "imageData.length "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lim/yixin/sdk/api/YXImageMessageData;->imageData:[B

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ">10485760"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lim/yixin/sdk/api/ExceptionInfo;->appendReason(Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lim/yixin/sdk/util/SDKHttpUtils;->getInstance()Lim/yixin/sdk/util/SDKHttpUtils;

    move-result-object v1

    const-class v3, Lim/yixin/sdk/api/YXImageMessageData;

    invoke-virtual {p1}, Lim/yixin/sdk/api/ExceptionInfo;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lim/yixin/sdk/util/SDKHttpUtils;->get4ErrorLog(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move v1, v2

    .line 82
    goto :goto_0

    .line 84
    :cond_4
    iget-object v1, p0, Lim/yixin/sdk/api/YXImageMessageData;->imagePath:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 85
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lim/yixin/sdk/api/YXImageMessageData;->imagePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0xa00000

    cmp-long v1, v3, v5

    if-lez v1, :cond_7

    .line 87
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "file not exist or can not read"

    :goto_1
    invoke-virtual {p1, v1}, Lim/yixin/sdk/api/ExceptionInfo;->appendReason(Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lim/yixin/sdk/util/SDKHttpUtils;->getInstance()Lim/yixin/sdk/util/SDKHttpUtils;

    move-result-object v1

    const-class v3, Lim/yixin/sdk/api/YXImageMessageData;

    invoke-virtual {p1}, Lim/yixin/sdk/api/ExceptionInfo;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lim/yixin/sdk/util/SDKHttpUtils;->get4ErrorLog(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move v1, v2

    .line 90
    goto :goto_0

    .line 88
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

    .line 93
    .end local v0    # "file":Ljava/io/File;
    :cond_7
    iget-object v1, p0, Lim/yixin/sdk/api/YXImageMessageData;->imageUrl:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lim/yixin/sdk/api/YXImageMessageData;->imageUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x2800

    if-le v1, v3, :cond_8

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "imageUrl.length "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lim/yixin/sdk/api/YXImageMessageData;->imageUrl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ">10240"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lim/yixin/sdk/api/ExceptionInfo;->appendReason(Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lim/yixin/sdk/util/SDKHttpUtils;->getInstance()Lim/yixin/sdk/util/SDKHttpUtils;

    move-result-object v1

    const-class v3, Lim/yixin/sdk/api/YXImageMessageData;

    invoke-virtual {p1}, Lim/yixin/sdk/api/ExceptionInfo;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lim/yixin/sdk/util/SDKHttpUtils;->get4ErrorLog(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move v1, v2

    .line 96
    goto/16 :goto_0

    .line 98
    :cond_8
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public write(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "toBundle"    # Landroid/os/Bundle;

    .prologue
    .line 110
    const-string v0, "_yixinImageMessageData_imageData"

    iget-object v1, p0, Lim/yixin/sdk/api/YXImageMessageData;->imageData:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 111
    const-string v0, "_yixinImageMessageData_imagePath"

    iget-object v1, p0, Lim/yixin/sdk/api/YXImageMessageData;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v0, "_yixinImageMessageData_imageUrl"

    iget-object v1, p0, Lim/yixin/sdk/api/YXImageMessageData;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method
