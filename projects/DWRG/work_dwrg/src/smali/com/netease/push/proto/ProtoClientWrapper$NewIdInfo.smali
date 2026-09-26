.class public Lcom/netease/push/proto/ProtoClientWrapper$NewIdInfo;
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
    name = "NewIdInfo"
.end annotation


# instance fields
.field public id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static UnmarshalNewIdInfo([B)Lcom/netease/push/proto/ProtoClientWrapper$NewIdInfo;
    .locals 6
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 441
    new-instance v1, Lcom/netease/push/proto/ProtoClientWrapper$NewIdInfo;

    invoke-direct {v1}, Lcom/netease/push/proto/ProtoClientWrapper$NewIdInfo;-><init>()V

    .line 443
    .local v1, "newIdInfo":Lcom/netease/push/proto/ProtoClientWrapper$NewIdInfo;
    :try_start_0
    invoke-static {p0}, Lcom/netease/push/proto/nano/ProtoClient$PbNewIdInfo;->parseFrom([B)Lcom/netease/push/proto/nano/ProtoClient$PbNewIdInfo;

    move-result-object v2

    .line 444
    .local v2, "pbNewIdInfo":Lcom/netease/push/proto/nano/ProtoClient$PbNewIdInfo;
    iget-object v3, v2, Lcom/netease/push/proto/nano/ProtoClient$PbNewIdInfo;->id:Ljava/lang/String;

    iput-object v3, v1, Lcom/netease/push/proto/ProtoClientWrapper$NewIdInfo;->id:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    return-object v1

    .line 445
    .end local v2    # "pbNewIdInfo":Lcom/netease/push/proto/nano/ProtoClient$PbNewIdInfo;
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Ljava/lang/Exception;
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

    .line 447
    throw v0
.end method

.method private patchPlaceholder()V
    .locals 2

    .prologue
    .line 423
    invoke-static {}, Lcom/netease/push/proto/ProtoClientWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-void
.end method


# virtual methods
.method public Marshal()[B
    .locals 3

    .prologue
    .line 433
    new-instance v1, Lcom/netease/push/proto/nano/ProtoClient$PbNewIdInfo;

    invoke-direct {v1}, Lcom/netease/push/proto/nano/ProtoClient$PbNewIdInfo;-><init>()V

    .line 434
    .local v1, "pbNewIdInfo":Lcom/netease/push/proto/nano/ProtoClient$PbNewIdInfo;
    iget-object v2, p0, Lcom/netease/push/proto/ProtoClientWrapper$NewIdInfo;->id:Ljava/lang/String;

    iput-object v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbNewIdInfo;->id:Ljava/lang/String;

    .line 435
    invoke-static {v1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    .line 436
    .local v0, "data":[B
    return-object v0
.end method
