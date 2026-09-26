.class public Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;
.super Ljava/lang/Object;
.source "UploadInfo.java"


# static fields
.field private static final DEFAULT_MAX_SIZE:I = 0x1e8480

.field private static final URI_PARAM_CALLBACK:Ljava/lang/String; = "callback"

.field private static final URI_PARAM_COOKIES:Ljava/lang/String; = "cookies"

.field private static final URI_PARAM_FILE_FIELD:Ljava/lang/String; = "filefield"

.field private static final URI_PARAM_SIZE:Ljava/lang/String; = "size"

.field private static final URI_PARAM_UPLOAD_URL:Ljava/lang/String; = "upload_url"


# instance fields
.field public callback:Ljava/lang/String;

.field public cookies:Ljava/lang/String;

.field public filefield:Ljava/lang/String;

.field public size:I

.field public uploadUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 51
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 54
    :goto_0
    return-object v1

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 54
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 60
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 61
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 64
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static obtain(Ljava/lang/String;)Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 40
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;

    invoke-direct {v0}, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;-><init>()V

    .line 41
    .local v0, "info":Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;
    const-string v2, "upload_url"

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->uploadUrl:Ljava/lang/String;

    .line 42
    const-string v2, "filefield"

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->filefield:Ljava/lang/String;

    .line 43
    const-string v2, "cookies"

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->cookies:Ljava/lang/String;

    .line 44
    const-string v2, "size"

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x1e8480

    invoke-static {v2, v3}, Lcom/netease/unisdk/gmbridge/utils/SafeCastUtil;->str2int(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->size:I

    .line 45
    const-string v2, "callback"

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->callback:Ljava/lang/String;

    .line 46
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadInfo{uploadUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->uploadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", filefield=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->filefield:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cookies=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->cookies:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callback=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->callback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
