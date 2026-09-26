.class public Lcom/netease/push/proto/ProtoClientWrapper$MessageInfo;
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
    name = "MessageInfo"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public messages:[Lcom/netease/push/proto/ProtoClientWrapper$Message;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private patchPlaceholder()V
    .locals 2

    .prologue
    .line 510
    invoke-static {}, Lcom/netease/push/proto/ProtoClientWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    return-void
.end method

.method public static unmarshalMessageInfo([B)Lcom/netease/push/proto/ProtoClientWrapper$MessageInfo;
    .locals 8
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 520
    new-instance v3, Lcom/netease/push/proto/ProtoClientWrapper$MessageInfo;

    invoke-direct {v3}, Lcom/netease/push/proto/ProtoClientWrapper$MessageInfo;-><init>()V

    .line 522
    .local v3, "messageInfo":Lcom/netease/push/proto/ProtoClientWrapper$MessageInfo;
    :try_start_0
    invoke-static {p0}, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->parseFrom([B)Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;

    move-result-object v4

    .line 523
    .local v4, "pbMessageInfo":Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;
    iget-object v5, v4, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->id:Ljava/lang/String;

    iput-object v5, v3, Lcom/netease/push/proto/ProtoClientWrapper$MessageInfo;->id:Ljava/lang/String;

    .line 524
    iget-object v5, v4, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->messages:[[B

    array-length v2, v5

    .line 525
    .local v2, "length":I
    new-array v5, v2, [Lcom/netease/push/proto/ProtoClientWrapper$Message;

    iput-object v5, v3, Lcom/netease/push/proto/ProtoClientWrapper$MessageInfo;->messages:[Lcom/netease/push/proto/ProtoClientWrapper$Message;

    .line 526
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 533
    return-object v3

    .line 527
    :cond_0
    iget-object v5, v3, Lcom/netease/push/proto/ProtoClientWrapper$MessageInfo;->messages:[Lcom/netease/push/proto/ProtoClientWrapper$Message;

    iget-object v6, v4, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->messages:[[B

    aget-object v6, v6, v1

    invoke-static {v6}, Lcom/netease/push/proto/ProtoClientWrapper$Message;->UnmarshalMessage([B)Lcom/netease/push/proto/ProtoClientWrapper$Message;

    move-result-object v6

    aput-object v6, v5, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 529
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v4    # "pbMessageInfo":Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;
    :catch_0
    move-exception v0

    .line 530
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "AndroidPush"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "parse data devserviceinfos error:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    throw v0
.end method


# virtual methods
.method public Marshal()[B
    .locals 2

    .prologue
    .line 514
    const/4 v1, 0x0

    new-array v0, v1, [B

    .line 515
    .local v0, "data":[B
    return-object v0
.end method
