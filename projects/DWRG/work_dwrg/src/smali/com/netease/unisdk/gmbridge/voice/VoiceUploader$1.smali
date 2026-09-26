.class final Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1;
.super Ljava/lang/Object;
.source "VoiceUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge/voice/VoiceUploader;->upload(Landroid/content/Context;Ljava/lang/String;Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;

.field final synthetic val$voiceFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1;->val$listener:Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;

    iput-object p2, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1;->val$voiceFilePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 30
    const/16 v18, 0x0

    .line 31
    .local v18, "token":Ljava/lang/String;
    const/4 v15, 0x0

    .line 32
    .local v15, "objectName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 33
    .local v7, "bucketName":Ljava/lang/String;
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    const-string v2, "http://gmsdk.gameyw.netease.com/nos/gen_token"

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v16

    .line 35
    .local v16, "request":Lokhttp3/Request;
    :try_start_0
    new-instance v8, Lokhttp3/OkHttpClient;

    invoke-direct {v8}, Lokhttp3/OkHttpClient;-><init>()V

    .line 36
    .local v8, "client":Lokhttp3/OkHttpClient;
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v17

    .line 37
    .local v17, "response":Lokhttp3/Response;
    new-instance v14, Lorg/json/JSONObject;

    invoke-virtual/range {v17 .. v17}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 38
    .local v14, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "token"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 39
    const-string v1, "objectName"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 40
    const-string v1, "bucketName"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 46
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1;->val$voiceFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge/utils/FileUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 47
    .local v9, "contentType":Ljava/lang/String;
    const-string v1, "gm_bridge VoiceUploader"

    const-string v2, "[token=%s,objectName=%s,bucketName=%s,contentType=%s]"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v18, v3, v4

    const/4 v4, 0x1

    aput-object v15, v3, v4

    const/4 v4, 0x2

    aput-object v7, v3, v4

    const/4 v4, 0x3

    aput-object v9, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    new-instance v5, Lcom/netease/cloud/nos/android/core/WanNOSObject;

    invoke-direct {v5}, Lcom/netease/cloud/nos/android/core/WanNOSObject;-><init>()V

    .line 51
    .local v5, "wanNOSObject":Lcom/netease/cloud/nos/android/core/WanNOSObject;
    invoke-virtual {v5, v7}, Lcom/netease/cloud/nos/android/core/WanNOSObject;->setNosBucketName(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v5, v15}, Lcom/netease/cloud/nos/android/core/WanNOSObject;->setNosObjectName(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v5, v9}, Lcom/netease/cloud/nos/android/core/WanNOSObject;->setContentType(Ljava/lang/String;)V

    .line 54
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/netease/cloud/nos/android/core/WanNOSObject;->setUploadToken(Ljava/lang/String;)V

    .line 57
    move-object/from16 v13, v18

    .line 58
    .local v13, "finalToken":Ljava/lang/String;
    move-object v12, v15

    .line 59
    .local v12, "finalObjectName":Ljava/lang/String;
    move-object v11, v7

    .line 60
    .local v11, "finalBucketName":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1;->val$context:Landroid/content/Context;

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1;->val$voiceFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1;->val$voiceFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1;->val$voiceFilePath:Ljava/lang/String;

    new-instance v6, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v13, v12, v11}, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1$1;-><init>(Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v1 .. v6}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->putFileByHttp(Landroid/content/Context;Ljava/io/File;Ljava/lang/Object;Ljava/lang/String;Lcom/netease/cloud/nos/android/core/WanNOSObject;Lcom/netease/cloud/nos/android/core/Callback;)Lcom/netease/cloud/nos/android/core/UploadTaskExecutor;
    :try_end_1
    .catch Lcom/netease/cloud/nos/android/exception/InvalidParameterException; {:try_start_1 .. :try_end_1} :catch_1

    .line 92
    .end local v5    # "wanNOSObject":Lcom/netease/cloud/nos/android/core/WanNOSObject;
    .end local v8    # "client":Lokhttp3/OkHttpClient;
    .end local v9    # "contentType":Ljava/lang/String;
    .end local v11    # "finalBucketName":Ljava/lang/String;
    .end local v12    # "finalObjectName":Ljava/lang/String;
    .end local v13    # "finalToken":Ljava/lang/String;
    .end local v14    # "jsonObject":Lorg/json/JSONObject;
    .end local v17    # "response":Lokhttp3/Response;
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v10

    .line 42
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1;->val$listener:Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static {v1, v2, v3, v4, v6}, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader;->access$000(Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v5    # "wanNOSObject":Lcom/netease/cloud/nos/android/core/WanNOSObject;
    .restart local v8    # "client":Lokhttp3/OkHttpClient;
    .restart local v9    # "contentType":Ljava/lang/String;
    .restart local v11    # "finalBucketName":Ljava/lang/String;
    .restart local v12    # "finalObjectName":Ljava/lang/String;
    .restart local v13    # "finalToken":Ljava/lang/String;
    .restart local v14    # "jsonObject":Lorg/json/JSONObject;
    .restart local v17    # "response":Lokhttp3/Response;
    :catch_1
    move-exception v10

    .line 89
    .local v10, "e":Lcom/netease/cloud/nos/android/exception/InvalidParameterException;
    invoke-virtual {v10}, Lcom/netease/cloud/nos/android/exception/InvalidParameterException;->printStackTrace()V

    .line 90
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1;->val$listener:Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static {v1, v2, v3, v4, v6}, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader;->access$000(Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
