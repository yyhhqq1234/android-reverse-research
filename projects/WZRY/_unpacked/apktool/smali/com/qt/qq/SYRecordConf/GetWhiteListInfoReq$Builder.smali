.class public final Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "GetWhiteListInfoReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;",
        ">;"
    }
.end annotation


# instance fields
.field public access_token:Lokio/ByteString;

.field public cpu_version:Lokio/ByteString;

.field public gpu_version:Lokio/ByteString;

.field public openid:Lokio/ByteString;

.field public os_version:Lokio/ByteString;

.field public phone_type:Lokio/ByteString;

.field public pkg_name:Lokio/ByteString;

.field public plugin_version:Lokio/ByteString;

.field public qqappid:Ljava/lang/Long;

.field public sdk_version:Lokio/ByteString;

.field public source:Ljava/lang/Integer;

.field public user_id:Lokio/ByteString;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 177
    return-void
.end method

.method public constructor <init>(Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;)V
    .locals 1
    .param p1, "message"    # Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 181
    if-nez p1, :cond_0

    .line 194
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->user_id:Lokio/ByteString;

    iput-object v0, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->user_id:Lokio/ByteString;

    .line 183
    iget-object v0, p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->pkg_name:Lokio/ByteString;

    iput-object v0, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->pkg_name:Lokio/ByteString;

    .line 184
    iget-object v0, p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->os_version:Lokio/ByteString;

    iput-object v0, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->os_version:Lokio/ByteString;

    .line 185
    iget-object v0, p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->sdk_version:Lokio/ByteString;

    iput-object v0, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->sdk_version:Lokio/ByteString;

    .line 186
    iget-object v0, p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->plugin_version:Lokio/ByteString;

    iput-object v0, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->plugin_version:Lokio/ByteString;

    .line 187
    iget-object v0, p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->phone_type:Lokio/ByteString;

    iput-object v0, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->phone_type:Lokio/ByteString;

    .line 188
    iget-object v0, p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->source:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->source:Ljava/lang/Integer;

    .line 189
    iget-object v0, p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->openid:Lokio/ByteString;

    iput-object v0, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->openid:Lokio/ByteString;

    .line 190
    iget-object v0, p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->access_token:Lokio/ByteString;

    iput-object v0, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->access_token:Lokio/ByteString;

    .line 191
    iget-object v0, p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->qqappid:Ljava/lang/Long;

    iput-object v0, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->qqappid:Ljava/lang/Long;

    .line 192
    iget-object v0, p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->cpu_version:Lokio/ByteString;

    iput-object v0, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->cpu_version:Lokio/ByteString;

    .line 193
    iget-object v0, p1, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;->gpu_version:Lokio/ByteString;

    iput-object v0, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->gpu_version:Lokio/ByteString;

    goto :goto_0
.end method


# virtual methods
.method public access_token(Lokio/ByteString;)Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;
    .locals 0
    .param p1, "access_token"    # Lokio/ByteString;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->access_token:Lokio/ByteString;

    .line 262
    return-object p0
.end method

.method public build()Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;
    .locals 2

    .prologue
    .line 291
    new-instance v0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;-><init>(Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->build()Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq;

    move-result-object v0

    return-object v0
.end method

.method public cpu_version(Lokio/ByteString;)Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;
    .locals 0
    .param p1, "cpu_version"    # Lokio/ByteString;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->cpu_version:Lokio/ByteString;

    .line 278
    return-object p0
.end method

.method public gpu_version(Lokio/ByteString;)Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;
    .locals 0
    .param p1, "gpu_version"    # Lokio/ByteString;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->gpu_version:Lokio/ByteString;

    .line 286
    return-object p0
.end method

.method public openid(Lokio/ByteString;)Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;
    .locals 0
    .param p1, "openid"    # Lokio/ByteString;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->openid:Lokio/ByteString;

    .line 254
    return-object p0
.end method

.method public os_version(Lokio/ByteString;)Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;
    .locals 0
    .param p1, "os_version"    # Lokio/ByteString;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->os_version:Lokio/ByteString;

    .line 214
    return-object p0
.end method

.method public phone_type(Lokio/ByteString;)Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;
    .locals 0
    .param p1, "phone_type"    # Lokio/ByteString;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->phone_type:Lokio/ByteString;

    .line 238
    return-object p0
.end method

.method public pkg_name(Lokio/ByteString;)Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;
    .locals 0
    .param p1, "pkg_name"    # Lokio/ByteString;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->pkg_name:Lokio/ByteString;

    .line 206
    return-object p0
.end method

.method public plugin_version(Lokio/ByteString;)Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;
    .locals 0
    .param p1, "plugin_version"    # Lokio/ByteString;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->plugin_version:Lokio/ByteString;

    .line 230
    return-object p0
.end method

.method public qqappid(Ljava/lang/Long;)Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;
    .locals 0
    .param p1, "qqappid"    # Ljava/lang/Long;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->qqappid:Ljava/lang/Long;

    .line 270
    return-object p0
.end method

.method public sdk_version(Lokio/ByteString;)Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;
    .locals 0
    .param p1, "sdk_version"    # Lokio/ByteString;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->sdk_version:Lokio/ByteString;

    .line 222
    return-object p0
.end method

.method public source(Ljava/lang/Integer;)Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;
    .locals 0
    .param p1, "source"    # Ljava/lang/Integer;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->source:Ljava/lang/Integer;

    .line 246
    return-object p0
.end method

.method public user_id(Lokio/ByteString;)Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;
    .locals 0
    .param p1, "user_id"    # Lokio/ByteString;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/qt/qq/SYRecordConf/GetWhiteListInfoReq$Builder;->user_id:Lokio/ByteString;

    .line 198
    return-object p0
.end method
