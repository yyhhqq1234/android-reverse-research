.class public Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;
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
    name = "DevServiceInfo"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public service:Ljava/lang/String;

.field public time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private patchPlaceholder()V
    .locals 2

    .prologue
    .line 391
    invoke-static {}, Lcom/netease/push/proto/ProtoClientWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    return-void
.end method

.method public static unmarshalDevServiceInfo([B)Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;
    .locals 6
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 405
    new-instance v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;

    invoke-direct {v0}, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;-><init>()V

    .line 407
    .local v0, "devServiceInfo":Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;
    :try_start_0
    invoke-static {p0}, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->parseFrom([B)Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;

    move-result-object v2

    .line 408
    .local v2, "pbDevServiceInfo":Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;
    iget-object v3, v2, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->id:Ljava/lang/String;

    iput-object v3, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;->id:Ljava/lang/String;

    .line 409
    iget-object v3, v2, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->service:Ljava/lang/String;

    iput-object v3, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;->service:Ljava/lang/String;

    .line 410
    iget-wide v4, v2, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->time:J

    iput-wide v4, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;->time:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    return-object v0

    .line 411
    .end local v2    # "pbDevServiceInfo":Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;
    :catch_0
    move-exception v1

    .line 412
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "AndroidPush"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "parse data devserviceinfo error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    throw v1
.end method


# virtual methods
.method public Marshal()[B
    .locals 4

    .prologue
    .line 395
    new-instance v1, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;

    invoke-direct {v1}, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;-><init>()V

    .line 396
    .local v1, "pbDevServiceInfo":Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;
    iget-object v2, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;->id:Ljava/lang/String;

    iput-object v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->id:Ljava/lang/String;

    .line 397
    iget-object v2, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;->service:Ljava/lang/String;

    iput-object v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->service:Ljava/lang/String;

    .line 398
    iget-wide v2, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;->time:J

    iput-wide v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->time:J

    .line 399
    invoke-static {v1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    .line 400
    .local v0, "data":[B
    return-object v0
.end method
