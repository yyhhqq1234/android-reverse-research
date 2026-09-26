.class public Lcom/netease/unisdk/gmbridge/imgupload/ImgManager;
.super Ljava/lang/Object;
.source "ImgManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "gm_bridge ImgManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/Object;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # I

    .prologue
    .line 23
    invoke-static {p0, p1, p2}, Lcom/netease/unisdk/gmbridge/imgupload/ImgManager;->createSuitableImgFile(Landroid/content/Context;Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {p0, p1, p2}, Lcom/netease/unisdk/gmbridge/imgupload/ImgManager;->callbackInUIThread(Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;
    .param p2, "x2"    # Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;

    .prologue
    .line 23
    invoke-static {p0, p1, p2}, Lcom/netease/unisdk/gmbridge/imgupload/ImgManager;->upload(Ljava/lang/String;Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;)V

    return-void
.end method

.method private static callbackInUIThread(Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "listener"    # Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;
    .param p1, "imageId"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;

    .prologue
    .line 91
    new-instance v0, Lcom/netease/unisdk/gmbridge/imgupload/ImgManager$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/unisdk/gmbridge/imgupload/ImgManager$2;-><init>(Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method

.method private static createSuitableImgFile(Landroid/content/Context;Ljava/lang/Object;I)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imgUri"    # Ljava/lang/Object;
    .param p2, "sizeLimit"    # I

    .prologue
    const/4 v2, 0x0

    .line 129
    invoke-static {p0, p1}, Lcom/netease/unisdk/gmbridge/utils/BitmapUtil;->createBitmap(Landroid/content/Context;Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 130
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 132
    check-cast p1, Ljava/lang/String;

    .end local p1    # "imgUri":Ljava/lang/Object;
    invoke-static {p1}, Lcom/netease/unisdk/gmbridge/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    .line 134
    :cond_0
    if-nez v0, :cond_2

    .line 135
    const-string v3, "gm_bridge ImgManager"

    const-string v4, "can\'t create a bitmap"

    invoke-static {v3, v4}, Lcom/netease/unisdk/gmbridge/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 150
    :cond_1
    :goto_0
    return-object v1

    .line 140
    :cond_2
    invoke-static {p0}, Lcom/netease/unisdk/gmbridge/utils/FileUtil;->getImgSavePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "imgSavePath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 142
    const-string v3, "gm_bridge ImgManager"

    const-string v4, "can\'t get a save path"

    invoke-static {v3, v4}, Lcom/netease/unisdk/gmbridge/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 143
    goto :goto_0

    .line 146
    :cond_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, p2}, Lcom/netease/unisdk/gmbridge/utils/BitmapUtil;->saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 149
    const-string v3, "gm_bridge ImgManager"

    const-string v4, "can\'t save bitmap"

    invoke-static {v3, v4}, Lcom/netease/unisdk/gmbridge/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 150
    goto :goto_0
.end method

.method private static getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "cookieStr"    # Ljava/lang/String;

    .prologue
    .line 100
    const-string v0, ""

    .line 102
    .local v0, "cookie":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 103
    .local v2, "cookiesJSON":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 105
    .local v1, "cookieKey":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v5, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 107
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 108
    .local v4, "key":Ljava/lang/String;
    const-string v6, "%s=%s;"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    .end local v1    # "cookieKey":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "cookiesJSON":Lorg/json/JSONObject;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    .line 113
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0

    .line 110
    .restart local v1    # "cookieKey":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v2    # "cookiesJSON":Lorg/json/JSONObject;
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 111
    const-string v6, "gm_bridge ImgManager"

    const-string v7, "cookie = %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-static {v6, v7, v8}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static upload(Ljava/lang/String;Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;)V
    .locals 13
    .param p0, "imgPath"    # Ljava/lang/String;
    .param p1, "upInfo"    # Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;
    .param p2, "listener"    # Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;

    .prologue
    .line 60
    :try_start_0
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 61
    .local v0, "client":Lokhttp3/OkHttpClient;
    new-instance v8, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v8}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v9, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    .line 62
    invoke-virtual {v8, v9}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v8

    iget-object v9, p1, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->filefield:Ljava/lang/String;

    iget-object v10, p1, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->filefield:Ljava/lang/String;

    const-string v11, "application/octet-stream"

    .line 63
    invoke-static {v11}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v11

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v12}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object v8

    .line 64
    invoke-virtual {v8}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v5

    .line 66
    .local v5, "requestBody":Lokhttp3/RequestBody;
    new-instance v8, Lokhttp3/Request$Builder;

    invoke-direct {v8}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v9, p1, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->uploadUrl:Ljava/lang/String;

    .line 67
    invoke-virtual {v8, v9}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v8

    const-string v9, "Cookie"

    iget-object v10, p1, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->cookies:Ljava/lang/String;

    .line 68
    invoke-static {v10}, Lcom/netease/unisdk/gmbridge/imgupload/ImgManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v8

    .line 69
    invoke-virtual {v8, v5}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v8

    .line 70
    invoke-virtual {v8}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    .line 72
    .local v4, "request":Lokhttp3/Request;
    invoke-virtual {v0, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v8

    invoke-interface {v8}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v6

    .line 73
    .local v6, "response":Lokhttp3/Response;
    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v7

    .line 74
    .local v7, "responseStr":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 75
    const-string v8, "gm_bridge ImgManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "upload response = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 77
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v8, "imageId"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "imageId":Ljava/lang/String;
    iget-object v8, p1, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->callback:Ljava/lang/String;

    invoke-static {p2, v2, v8}, Lcom/netease/unisdk/gmbridge/imgupload/ImgManager;->callbackInUIThread(Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .end local v2    # "imageId":Ljava/lang/String;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    invoke-static {p0}, Lcom/netease/unisdk/gmbridge/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    .line 88
    .end local v0    # "client":Lokhttp3/OkHttpClient;
    .end local v4    # "request":Lokhttp3/Request;
    .end local v5    # "requestBody":Lokhttp3/RequestBody;
    .end local v6    # "response":Lokhttp3/Response;
    .end local v7    # "responseStr":Ljava/lang/String;
    :goto_1
    return-void

    .line 80
    .restart local v0    # "client":Lokhttp3/OkHttpClient;
    .restart local v4    # "request":Lokhttp3/Request;
    .restart local v5    # "requestBody":Lokhttp3/RequestBody;
    .restart local v6    # "response":Lokhttp3/Response;
    .restart local v7    # "responseStr":Ljava/lang/String;
    :cond_0
    const/4 v8, 0x0

    :try_start_1
    iget-object v9, p1, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->callback:Ljava/lang/String;

    invoke-static {p2, v8, v9}, Lcom/netease/unisdk/gmbridge/imgupload/ImgManager;->callbackInUIThread(Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 82
    .end local v0    # "client":Lokhttp3/OkHttpClient;
    .end local v4    # "request":Lokhttp3/Request;
    .end local v5    # "requestBody":Lokhttp3/RequestBody;
    .end local v6    # "response":Lokhttp3/Response;
    .end local v7    # "responseStr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    const/4 v8, 0x0

    iget-object v9, p1, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->callback:Ljava/lang/String;

    invoke-static {p2, v8, v9}, Lcom/netease/unisdk/gmbridge/imgupload/ImgManager;->callbackInUIThread(Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    invoke-static {p0}, Lcom/netease/unisdk/gmbridge/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-static {p0}, Lcom/netease/unisdk/gmbridge/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    throw v8
.end method

.method public static uploadImg(Landroid/content/Context;Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;Ljava/lang/Object;Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "upInfo"    # Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;
    .param p2, "imgUri"    # Ljava/lang/Object;
    .param p3, "listener"    # Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;

    .prologue
    .line 36
    if-nez p2, :cond_0

    .line 37
    const/4 v0, 0x0

    iget-object v1, p1, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->callback:Ljava/lang/String;

    invoke-interface {p3, v0, v1}, Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;->onFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :goto_0
    return-void

    .line 40
    :cond_0
    new-instance v0, Lcom/netease/unisdk/gmbridge/imgupload/ImgManager$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/netease/unisdk/gmbridge/imgupload/ImgManager$1;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;)V

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/task/TaskExecutor;->executeTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
