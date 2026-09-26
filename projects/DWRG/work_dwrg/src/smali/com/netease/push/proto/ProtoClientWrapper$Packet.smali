.class public Lcom/netease/push/proto/ProtoClientWrapper$Packet;
.super Ljava/lang/Object;
.source "ProtoClientWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/push/proto/ProtoClientWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Packet"
.end annotation


# instance fields
.field public data:[B

.field public length:I

.field public type:B

.field public version:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->length:I

    .line 206
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1
    .param p1, "cmdType"    # B

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    const/4 v0, 0x4

    iput v0, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->length:I

    .line 211
    iput-byte p1, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->type:B

    .line 212
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->version:B

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->data:[B

    .line 215
    return-void
.end method

.method public constructor <init>(B[B)V
    .locals 3
    .param p1, "cmdType"    # B
    .param p2, "data"    # [B

    .prologue
    const/4 v2, 0x0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    array-length v0, p2

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->length:I

    .line 219
    iput-byte p1, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->type:B

    .line 220
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->version:B

    .line 221
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->data:[B

    .line 222
    iget-object v0, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->data:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    return-void
.end method

.method private patchPlaceholder()V
    .locals 2

    .prologue
    .line 201
    invoke-static {}, Lcom/netease/push/proto/ProtoClientWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void
.end method


# virtual methods
.method public Marshal()[B
    .locals 6

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x0

    .line 226
    const/4 v0, 0x4

    .line 227
    .local v0, "_length":I
    iget-object v2, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->data:[B

    if-eqz v2, :cond_0

    .line 228
    iget-object v2, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->data:[B

    array-length v2, v2

    add-int/2addr v0, v2

    .line 230
    :cond_0
    new-array v1, v0, [B

    .line 232
    .local v1, "msgData":[B
    invoke-static {v1, v5, v0}, Lcom/netease/push/proto/ProtoClientWrapper;->Uint16ToBytes([BII)V

    .line 233
    const/4 v2, 0x2

    aput-byte v3, v1, v2

    .line 234
    iget-byte v2, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->type:B

    aput-byte v2, v1, v3

    .line 236
    iget-object v2, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->data:[B

    if-eqz v2, :cond_1

    .line 237
    iget-object v2, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->data:[B

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->data:[B

    array-length v4, v4

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    :cond_1
    return-object v1
.end method

.method public UnmarshalPacket([B)I
    .locals 4
    .param p1, "_data"    # [B

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x0

    .line 245
    array-length v1, p1

    if-ge v1, v3, :cond_0

    .line 247
    const-string v1, "AndroidPush"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "data error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :goto_0
    return v0

    .line 250
    :cond_0
    invoke-static {p1, v0}, Lcom/netease/push/proto/ProtoClientWrapper;->BytesToUint16([BI)I

    move-result v1

    iput v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->length:I

    .line 251
    const/4 v1, 0x2

    aget-byte v1, p1, v1

    iput-byte v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->version:B

    .line 252
    const/4 v1, 0x3

    aget-byte v1, p1, v1

    iput-byte v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->type:B

    .line 253
    array-length v1, p1

    add-int/lit8 v1, v1, -0x4

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->data:[B

    .line 254
    iget-object v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->data:[B

    array-length v2, p1

    add-int/lit8 v2, v2, -0x4

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    const/4 v0, 0x1

    goto :goto_0
.end method
