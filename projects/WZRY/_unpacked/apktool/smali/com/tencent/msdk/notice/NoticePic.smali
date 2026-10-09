.class public Lcom/tencent/msdk/notice/NoticePic;
.super Ljava/lang/Object;
.source "NoticePic.java"


# instance fields
.field public mNoticeId:Ljava/lang/String;

.field public mPicHash:Ljava/lang/String;

.field public mPicUrl:Ljava/lang/String;

.field public mScreenDir:Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticePic;->mNoticeId:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticePic;->mPicUrl:Ljava/lang/String;

    .line 27
    sget-object v0, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->eMSDK_SCREENDIR_SENSOR:Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticePic;->mScreenDir:Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticePic;->mPicHash:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;Ljava/lang/String;)V
    .locals 1
    .param p1, "noticeId"    # Ljava/lang/String;
    .param p2, "picUrl"    # Ljava/lang/String;
    .param p3, "screenOrientationLandscape"    # Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;
    .param p4, "picHash"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticePic;->mNoticeId:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticePic;->mPicUrl:Ljava/lang/String;

    .line 27
    sget-object v0, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->eMSDK_SCREENDIR_SENSOR:Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticePic;->mScreenDir:Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/notice/NoticePic;->mPicHash:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/tencent/msdk/notice/NoticePic;->mNoticeId:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/tencent/msdk/notice/NoticePic;->mPicUrl:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/tencent/msdk/notice/NoticePic;->mScreenDir:Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    .line 39
    iput-object p4, p0, Lcom/tencent/msdk/notice/NoticePic;->mPicHash:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static checkNoticePicExist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "noticeId"    # Ljava/lang/String;
    .param p1, "fileUrl"    # Ljava/lang/String;
    .param p2, "hashValue"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 194
    invoke-static {p1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 201
    :goto_0
    return-object v1

    .line 197
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1, p2}, Lcom/tencent/msdk/notice/NoticePic;->getFilePathByNoticeIdAndHashValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "picFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 201
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public static checkNoticePicIsRight(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "noticeId"    # Ljava/lang/String;
    .param p1, "picHash"    # Ljava/lang/String;
    .param p2, "fileUrl"    # Ljava/lang/String;
    .param p3, "hashValue"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 176
    invoke-static {p1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 188
    :goto_0
    return-object v1

    .line 179
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p2, p3}, Lcom/tencent/msdk/notice/NoticePic;->getFilePathByNoticeIdAndHashValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, "picFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 181
    invoke-static {v0, p1}, Lcom/tencent/msdk/notice/NoticePic;->checkPicMd5(Ljava/io/File;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 184
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 185
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 188
    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public static checkPicMd5(Ljava/io/File;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 14
    .param p0, "picFile"    # Ljava/io/File;
    .param p1, "hashValue"    # Ljava/lang/String;

    .prologue
    .line 206
    const-string v13, ""

    .line 207
    .local v13, "picMd5":Ljava/lang/String;
    const/4 v10, 0x0

    .line 209
    .local v10, "in":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    .end local v10    # "in":Ljava/io/FileInputStream;
    .local v11, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v11}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    .line 211
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 210
    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v7

    .line 212
    .local v7, "byteBuffer":Ljava/nio/MappedByteBuffer;
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v12

    .line 213
    .local v12, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v12, v7}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 214
    invoke-virtual {v12}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    .line 215
    .local v6, "bs":[B
    invoke-static {v6}, Lcom/tencent/msdk/tools/HexUtil;->bytes2HexStr([B)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "picMd5:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";hashValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v13, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 229
    if-eqz v11, :cond_0

    .line 231
    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v10, v11

    .line 234
    .end local v6    # "bs":[B
    .end local v7    # "byteBuffer":Ljava/nio/MappedByteBuffer;
    .end local v11    # "in":Ljava/io/FileInputStream;
    .end local v12    # "md5":Ljava/security/MessageDigest;
    .restart local v10    # "in":Ljava/io/FileInputStream;
    :cond_1
    :goto_1
    return-object v0

    .line 232
    .end local v10    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "bs":[B
    .restart local v7    # "byteBuffer":Ljava/nio/MappedByteBuffer;
    .restart local v11    # "in":Ljava/io/FileInputStream;
    .restart local v12    # "md5":Ljava/security/MessageDigest;
    :catch_0
    move-exception v8

    .line 233
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 220
    .end local v8    # "e":Ljava/io/IOException;
    :cond_2
    const/4 v0, 0x0

    :try_start_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 229
    if-eqz v11, :cond_3

    .line 231
    :try_start_4
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_2
    move-object v10, v11

    .line 234
    .end local v11    # "in":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/FileInputStream;
    goto :goto_1

    .line 232
    .end local v10    # "in":Ljava/io/FileInputStream;
    .restart local v11    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v8

    .line 233
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 222
    .end local v6    # "bs":[B
    .end local v7    # "byteBuffer":Ljava/nio/MappedByteBuffer;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v11    # "in":Ljava/io/FileInputStream;
    .end local v12    # "md5":Ljava/security/MessageDigest;
    .restart local v10    # "in":Ljava/io/FileInputStream;
    :catch_2
    move-exception v9

    .line 223
    .local v9, "e1":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string v0, "Pic File Not found"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 224
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    .line 229
    if-eqz v10, :cond_1

    .line 231
    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 232
    :catch_3
    move-exception v8

    .line 233
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 225
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "e1":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v8

    .line 226
    .local v8, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_7
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 227
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v0

    .line 229
    if-eqz v10, :cond_1

    .line 231
    :try_start_8
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_1

    .line 232
    :catch_5
    move-exception v8

    .line 233
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 229
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v10, :cond_4

    .line 231
    :try_start_9
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 234
    :cond_4
    :goto_6
    throw v0

    .line 232
    :catch_6
    move-exception v8

    .line 233
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 229
    .end local v8    # "e":Ljava/io/IOException;
    .end local v10    # "in":Ljava/io/FileInputStream;
    .restart local v11    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v0

    move-object v10, v11

    .end local v11    # "in":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/FileInputStream;
    goto :goto_5

    .line 225
    .end local v10    # "in":Ljava/io/FileInputStream;
    .restart local v11    # "in":Ljava/io/FileInputStream;
    :catch_7
    move-exception v8

    move-object v10, v11

    .end local v11    # "in":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/FileInputStream;
    goto :goto_4

    .line 222
    .end local v10    # "in":Ljava/io/FileInputStream;
    .restart local v11    # "in":Ljava/io/FileInputStream;
    :catch_8
    move-exception v9

    move-object v10, v11

    .end local v11    # "in":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public static deleteNoticePicByNoticeId(I)V
    .locals 9
    .param p0, "noticeId"    # I

    .prologue
    .line 135
    invoke-static {}, Lcom/tencent/msdk/notice/NoticePic;->getExternalMSDKDir()Ljava/io/File;

    move-result-object v1

    .line 136
    .local v1, "filePath":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notice_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "fileNameString":Ljava/lang/String;
    new-instance v5, Lcom/tencent/msdk/notice/NoticePic$1;

    invoke-direct {v5, v0}, Lcom/tencent/msdk/notice/NoticePic$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "myFiles":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 143
    array-length v6, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v4, v2, v5

    .line 144
    .local v4, "tempFileName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/tencent/msdk/notice/NoticePic;->getExternalMSDKDir()Ljava/io/File;

    move-result-object v7

    invoke-direct {v3, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 145
    .local v3, "tempFile":Ljava/io/File;
    const-string v7, "delete file:"

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 143
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 149
    .end local v3    # "tempFile":Ljava/io/File;
    .end local v4    # "tempFileName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static downloadNoticePic(Lcom/tencent/msdk/notice/NoticePic;)V
    .locals 5
    .param p0, "tempNoticePic"    # Lcom/tencent/msdk/notice/NoticePic;

    .prologue
    .line 108
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/msdk/notice/NoticePic;->getmPicHash()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/tencent/msdk/notice/NoticePic;->getmPicUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/msdk/notice/NoticePic;->getmNoticeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/msdk/notice/NoticePic;->getmPicUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tencent/msdk/notice/NoticePic;->getmPicHash()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/tencent/msdk/notice/NoticePic;->checkNoticePicExist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    .line 117
    invoke-virtual {p0}, Lcom/tencent/msdk/notice/NoticePic;->getmNoticeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/msdk/notice/NoticePic;->getmPicUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tencent/msdk/notice/NoticePic;->getmPicHash()Ljava/lang/String;

    move-result-object v4

    .line 116
    invoke-static {v2, v3, v4}, Lcom/tencent/msdk/notice/NoticePic;->getFilePathByNoticeIdAndHashValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "filePathString":Ljava/lang/String;
    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 119
    new-instance v2, Ljava/net/URL;

    .line 120
    invoke-virtual {p0}, Lcom/tencent/msdk/notice/NoticePic;->getmPicUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/msdk/notice/NoticePic;->getmPicHash()Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-static {v2, v1, v3}, Lcom/tencent/msdk/tools/DownloadThread;->addToDownloadQueue(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    .end local v1    # "filePathString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 122
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .restart local v1    # "filePathString":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v2, "filePathString is empty"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    .end local v1    # "filePathString":Ljava/lang/String;
    :cond_3
    const-string v2, "file has exist"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static getExternalMSDKDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 167
    new-instance v0, Ljava/io/File;

    const-string v1, ""

    const-string v2, "MSDK"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .local v0, "childDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 171
    :cond_0
    return-object v0
.end method

.method public static getFilePathByNoticeId(I)Ljava/lang/String;
    .locals 4
    .param p0, "noticeId"    # I

    .prologue
    .line 162
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/tencent/msdk/notice/NoticePic;->getExternalMSDKDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notice_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 163
    .local v0, "filePathFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFilePathByNoticeIdAndHashValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "noticeId"    # Ljava/lang/String;
    .param p1, "fileUrl"    # Ljava/lang/String;
    .param p2, "hashValue"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-static {p1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    :cond_0
    const-string v2, ""

    .line 158
    :goto_0
    return-object v2

    .line 156
    :cond_1
    const-string v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "exName":[Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/tencent/msdk/notice/NoticePic;->getExternalMSDKDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notice_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 158
    .local v1, "filePathFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static saveNoticePics(Lcom/tencent/msdk/notice/NoticeInfo;)V
    .locals 5
    .param p0, "noticeInfo"    # Lcom/tencent/msdk/notice/NoticeInfo;

    .prologue
    .line 86
    if-nez p0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeHImgUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeHImgHash:Ljava/lang/String;

    .line 90
    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add to queue :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeHImgUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->eMSDK_SCREENDIR_LANDSCAPE:Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeHImgHash:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 93
    new-instance v0, Lcom/tencent/msdk/notice/NoticePic;

    iget-object v1, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeId:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeHImgUrl:Ljava/lang/String;

    sget-object v3, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->eMSDK_SCREENDIR_LANDSCAPE:Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    iget-object v4, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeHImgHash:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/msdk/notice/NoticePic;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;Ljava/lang/String;)V

    .line 95
    .local v0, "tempNoticePic":Lcom/tencent/msdk/notice/NoticePic;
    invoke-static {v0}, Lcom/tencent/msdk/notice/NoticePic;->downloadNoticePic(Lcom/tencent/msdk/notice/NoticePic;)V

    .line 97
    .end local v0    # "tempNoticePic":Lcom/tencent/msdk/notice/NoticePic;
    :cond_2
    iget-object v1, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeVImgUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeVImgHash:Ljava/lang/String;

    .line 98
    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add to queue :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeVImgUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->eMSDK_SCREENDIR_PORTRAIT:Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeVImgHash:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 101
    new-instance v0, Lcom/tencent/msdk/notice/NoticePic;

    iget-object v1, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeId:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeVImgUrl:Ljava/lang/String;

    sget-object v3, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->eMSDK_SCREENDIR_PORTRAIT:Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    iget-object v4, p0, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeVImgHash:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/msdk/notice/NoticePic;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;Ljava/lang/String;)V

    .line 103
    .restart local v0    # "tempNoticePic":Lcom/tencent/msdk/notice/NoticePic;
    invoke-static {v0}, Lcom/tencent/msdk/notice/NoticePic;->downloadNoticePic(Lcom/tencent/msdk/notice/NoticePic;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getmNoticeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/msdk/notice/NoticePic;->mNoticeId:Ljava/lang/String;

    return-object v0
.end method

.method public getmPicHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tencent/msdk/notice/NoticePic;->mPicHash:Ljava/lang/String;

    return-object v0
.end method

.method public getmPicUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tencent/msdk/notice/NoticePic;->mPicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getmScreenDir()Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tencent/msdk/notice/NoticePic;->mScreenDir:Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    return-object v0
.end method

.method public setmNoticeId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mNoticeId"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/tencent/msdk/notice/NoticePic;->mNoticeId:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setmPicHash(Ljava/lang/String;)V
    .locals 1
    .param p1, "mHashValue"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {p1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iput-object p1, p0, Lcom/tencent/msdk/notice/NoticePic;->mPicHash:Ljava/lang/String;

    .line 83
    :cond_0
    return-void
.end method

.method public setmPicUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "mPicUrl"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {p1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iput-object p1, p0, Lcom/tencent/msdk/notice/NoticePic;->mPicUrl:Ljava/lang/String;

    .line 61
    :cond_0
    return-void
.end method

.method public setmScreenDir(Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;)V
    .locals 0
    .param p1, "mScreenDir"    # Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/tencent/msdk/notice/NoticePic;->mScreenDir:Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    .line 71
    return-void
.end method
