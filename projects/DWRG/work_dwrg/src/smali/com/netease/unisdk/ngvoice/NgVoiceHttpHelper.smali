.class public Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;
.super Ljava/lang/Object;
.source "NgVoiceHttpHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ng_voice HttpHelper"

.field private static mClient:Lokhttp3/OkHttpClient;


# instance fields
.field private mSettings:Lcom/netease/unisdk/ngvoice/NgVoiceSettings;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    sput-object v0, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;->mClient:Lokhttp3/OkHttpClient;

    .line 31
    return-void
.end method

.method private getDownloadVoiceFileUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;->mSettings:Lcom/netease/unisdk/ngvoice/NgVoiceSettings;

    iget-object v1, v1, Lcom/netease/unisdk/ngvoice/NgVoiceSettings;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;->mSettings:Lcom/netease/unisdk/ngvoice/NgVoiceSettings;

    iget-object v1, v1, Lcom/netease/unisdk/ngvoice/NgVoiceSettings;->url:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    const-string v1, "getfile?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :goto_0
    const-string v1, "key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v1, "&usernum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;->mSettings:Lcom/netease/unisdk/ngvoice/NgVoiceSettings;

    iget-object v2, v2, Lcom/netease/unisdk/ngvoice/NgVoiceSettings;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v1, "&host="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;->mSettings:Lcom/netease/unisdk/ngvoice/NgVoiceSettings;

    iget-object v2, v2, Lcom/netease/unisdk/ngvoice/NgVoiceSettings;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 154
    :cond_0
    const-string v1, "/getfile?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getTranslationUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;->mSettings:Lcom/netease/unisdk/ngvoice/NgVoiceSettings;

    iget-object v1, v1, Lcom/netease/unisdk/ngvoice/NgVoiceSettings;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;->mSettings:Lcom/netease/unisdk/ngvoice/NgVoiceSettings;

    iget-object v1, v1, Lcom/netease/unisdk/ngvoice/NgVoiceSettings;->url:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const-string v1, "get_translation?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :goto_0
    const-string v1, "key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 126
    :cond_0
    const-string v1, "/get_translation?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getUploadUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "md5"    # Ljava/lang/String;

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;->mSettings:Lcom/netease/unisdk/ngvoice/NgVoiceSettings;

    iget-object v1, v1, Lcom/netease/unisdk/ngvoice/NgVoiceSettings;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;->mSettings:Lcom/netease/unisdk/ngvoice/NgVoiceSettings;

    iget-object v1, v1, Lcom/netease/unisdk/ngvoice/NgVoiceSettings;->url:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    const-string v1, "upload?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :goto_0
    const-string v1, "md5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, "&usernum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;->mSettings:Lcom/netease/unisdk/ngvoice/NgVoiceSettings;

    iget-object v2, v2, Lcom/netease/unisdk/ngvoice/NgVoiceSettings;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, "&host="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;->mSettings:Lcom/netease/unisdk/ngvoice/NgVoiceSettings;

    iget-object v2, v2, Lcom/netease/unisdk/ngvoice/NgVoiceSettings;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, "&tousers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;->mSettings:Lcom/netease/unisdk/ngvoice/NgVoiceSettings;

    iget-object v2, v2, Lcom/netease/unisdk/ngvoice/NgVoiceSettings;->tousers:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, "&keep_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;->mSettings:Lcom/netease/unisdk/ngvoice/NgVoiceSettings;

    iget-object v2, v2, Lcom/netease/unisdk/ngvoice/NgVoiceSettings;->keep_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 79
    :cond_0
    const-string v1, "/upload?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 167
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 168
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 169
    :cond_0
    const/4 v1, 0x0

    .line 171
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public downloadVoiceFile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;->getDownloadVoiceFileUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "url":Ljava/lang/String;
    const-string v3, "ng_voice HttpHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download file url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    .line 139
    invoke-virtual {v3, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    const-string v4, "User-Agent"

    iget-object v5, p0, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;->mSettings:Lcom/netease/unisdk/ngvoice/NgVoiceSettings;

    iget-object v5, v5, Lcom/netease/unisdk/ngvoice/NgVoiceSettings;->useragent:Ljava/lang/String;

    .line 140
    invoke-virtual {v3, v4, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 141
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 143
    .local v0, "request":Lokhttp3/Request;
    :try_start_0
    sget-object v3, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v3, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v1

    .line 144
    .local v1, "response":Lokhttp3/Response;
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 146
    .end local v1    # "response":Lokhttp3/Response;
    :goto_0
    return-object v3

    .line 145
    :catch_0
    move-exception v3

    .line 146
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getTranslation(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;->getTranslationUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "url":Ljava/lang/String;
    const-string v4, "ng_voice HttpHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTranslation url = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    .line 99
    invoke-virtual {v4, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    const-string v5, "User-Agent"

    iget-object v6, p0, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;->mSettings:Lcom/netease/unisdk/ngvoice/NgVoiceSettings;

    iget-object v6, v6, Lcom/netease/unisdk/ngvoice/NgVoiceSettings;->useragent:Ljava/lang/String;

    .line 100
    invoke-virtual {v4, v5, v6}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    .line 101
    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 103
    .local v0, "request":Lokhttp3/Request;
    :try_start_0
    sget-object v4, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v4, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v4

    invoke-interface {v4}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v1

    .line 104
    .local v1, "response":Lokhttp3/Response;
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "responseStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 106
    const-string v4, "ng_voice HttpHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTranslation response = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const/16 v4, 0x30

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_0

    .line 108
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 113
    .end local v1    # "response":Lokhttp3/Response;
    .end local v2    # "responseStr":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 111
    :catch_0
    move-exception v4

    .line 113
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setVoiceSettings(Lcom/netease/unisdk/ngvoice/NgVoiceSettings;)V
    .locals 0
    .param p1, "settings"    # Lcom/netease/unisdk/ngvoice/NgVoiceSettings;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;->mSettings:Lcom/netease/unisdk/ngvoice/NgVoiceSettings;

    .line 35
    return-void
.end method

.method public upload(Ljava/io/File;)Ljava/lang/String;
    .locals 9
    .param p1, "voiceFile"    # Ljava/io/File;

    .prologue
    .line 43
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/netease/unisdk/ngvoice/utils/FileUtil;->fileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;->getUploadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, "uploadUrl":Ljava/lang/String;
    const-string v5, "ng_voice HttpHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "upload url = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v5, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v5}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v6, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    .line 47
    invoke-virtual {v5, v6}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v5

    const-string v6, "upload"

    const-string v7, "upload"

    const-string v8, "application/octet-stream"

    .line 48
    invoke-static {v8}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v8

    invoke-static {v8, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object v5

    .line 49
    invoke-virtual {v5}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v1

    .line 51
    .local v1, "requestBody":Lokhttp3/RequestBody;
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    .line 52
    invoke-virtual {v5, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    const-string v6, "User-Agent"

    iget-object v7, p0, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;->mSettings:Lcom/netease/unisdk/ngvoice/NgVoiceSettings;

    iget-object v7, v7, Lcom/netease/unisdk/ngvoice/NgVoiceSettings;->useragent:Ljava/lang/String;

    .line 53
    invoke-virtual {v5, v6, v7}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 54
    invoke-virtual {v5, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 55
    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 58
    .local v0, "request":Lokhttp3/Request;
    :try_start_0
    sget-object v5, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v5, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v5

    invoke-interface {v5}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v2

    .line 59
    .local v2, "response":Lokhttp3/Response;
    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "responseStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 61
    const-string v5, "ng_voice HttpHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "upload response = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const/16 v5, 0x30

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_0

    .line 63
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 67
    .end local v2    # "response":Lokhttp3/Response;
    .end local v3    # "responseStr":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 66
    :catch_0
    move-exception v5

    .line 67
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method
