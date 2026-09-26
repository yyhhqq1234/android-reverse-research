.class public Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;
.super Ljava/lang/Object;
.source "ProtoClientWrapper.java"

# interfaces
.implements Lcom/netease/push/proto/ProtoClientWrapper$DataMarshal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/push/proto/ProtoClientWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DevInfo"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public mac:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public os:Ljava/lang/String;

.field public osver:Ljava/lang/String;

.field public screen:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->model:Ljava/lang/String;

    .line 267
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->screen:Ljava/lang/String;

    .line 268
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->os:Ljava/lang/String;

    .line 269
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->osver:Ljava/lang/String;

    .line 270
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->mac:Ljava/lang/String;

    .line 271
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->id:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public static UnmarshalDevInfo([B)Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;
    .locals 6
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 304
    new-instance v0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;

    invoke-direct {v0}, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;-><init>()V

    .line 306
    .local v0, "devInfo":Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;
    :try_start_0
    invoke-static {p0}, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->parseFrom([B)Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;

    move-result-object v2

    .line 307
    .local v2, "pbDevInfo":Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;
    iget-object v3, v2, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->model:Ljava/lang/String;

    iput-object v3, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->model:Ljava/lang/String;

    .line 308
    iget-object v3, v2, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->screen:Ljava/lang/String;

    iput-object v3, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->screen:Ljava/lang/String;

    .line 309
    iget-object v3, v2, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->os:Ljava/lang/String;

    iput-object v3, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->os:Ljava/lang/String;

    .line 310
    iget-object v3, v2, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->osver:Ljava/lang/String;

    iput-object v3, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->osver:Ljava/lang/String;

    .line 311
    iget-object v3, v2, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->mac:Ljava/lang/String;

    iput-object v3, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->mac:Ljava/lang/String;

    .line 312
    iget-object v3, v2, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->id:Ljava/lang/String;

    iput-object v3, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->id:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    return-object v0

    .line 314
    .end local v2    # "pbDevInfo":Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;
    :catch_0
    move-exception v1

    .line 315
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "AndroidPush"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "parse data error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    throw v1
.end method

.method private patchPlaceholder()V
    .locals 2

    .prologue
    .line 274
    invoke-static {}, Lcom/netease/push/proto/ProtoClientWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void
.end method


# virtual methods
.method public Marshal()[B
    .locals 3

    .prologue
    .line 284
    new-instance v1, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;

    invoke-direct {v1}, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;-><init>()V

    .line 287
    .local v1, "pbDevInfo":Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;
    iget-object v2, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->model:Ljava/lang/String;

    iput-object v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->model:Ljava/lang/String;

    .line 288
    iget-object v2, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->screen:Ljava/lang/String;

    iput-object v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->screen:Ljava/lang/String;

    .line 289
    iget-object v2, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->os:Ljava/lang/String;

    iput-object v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->os:Ljava/lang/String;

    .line 290
    iget-object v2, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->osver:Ljava/lang/String;

    iput-object v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->osver:Ljava/lang/String;

    .line 291
    iget-object v2, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->mac:Ljava/lang/String;

    iput-object v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->mac:Ljava/lang/String;

    .line 292
    iget-object v2, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->id:Ljava/lang/String;

    iput-object v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->id:Ljava/lang/String;

    .line 298
    invoke-static {v1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    .line 299
    .local v0, "data":[B
    return-object v0
.end method
