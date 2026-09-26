.class public Lcom/netease/push/proto/ProtoClientWrapper;
.super Ljava/lang/Object;
.source "ProtoClientWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/push/proto/ProtoClientWrapper$DataMarshal;,
        Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;,
        Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;,
        Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;,
        Lcom/netease/push/proto/ProtoClientWrapper$Message;,
        Lcom/netease/push/proto/ProtoClientWrapper$MessageInfo;,
        Lcom/netease/push/proto/ProtoClientWrapper$NewIdInfo;,
        Lcom/netease/push/proto/ProtoClientWrapper$Packet;,
        Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;
    }
.end annotation


# static fields
.field public static final GET_NEW_ID_TYPE:B = 0x1t

.field public static final GOT_TIME_TYPE:B = 0x5t

.field public static final HB_FLAG:S = 0x2s

.field public static final HB_TYPE:B = 0x3t

.field public static final LOGIN_TYPE:B = 0x4t

.field public static final NEW_ID_TYPE:B = 0x34t

.field public static final PROTO_VER:B = 0x3t

.field public static final PUSH_TYPE:B = 0x32t

.field public static final REGISTER_TYPE:B = 0x6t

.field public static final RESET_TYPE:B = 0x33t

.field public static final SET_NEW_ID_TYPE:B = 0x2t

.field private static final TAG:Ljava/lang/String;

.field public static final UNREGISTER_TYPE:B = 0x7t

.field private static final headLen:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NGPush_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/netease/push/proto/ProtoClientWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/push/proto/ProtoClientWrapper;->TAG:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BytesToUint16([BI)I
    .locals 3
    .param p0, "buf"    # [B
    .param p1, "pos"    # I

    .prologue
    .line 86
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int v0, v1, v2

    .line 87
    .local v0, "v":I
    return v0
.end method

.method public static final MarshalObject(BLcom/netease/push/proto/ProtoClientWrapper$DataMarshal;Ljava/lang/String;)[B
    .locals 12
    .param p0, "cmdType"    # B
    .param p1, "object"    # Lcom/netease/push/proto/ProtoClientWrapper$DataMarshal;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 93
    invoke-interface {p1}, Lcom/netease/push/proto/ProtoClientWrapper$DataMarshal;->Marshal()[B

    move-result-object v3

    .line 94
    .local v3, "messageBytes":[B
    if-nez v3, :cond_0

    .line 95
    new-array v3, v9, [B

    .line 97
    :cond_0
    move-object v4, v3

    .line 98
    .local v4, "msg":[B
    array-length v6, v3

    if-lez v6, :cond_1

    .line 99
    if-ne v11, p0, :cond_2

    .line 102
    :try_start_0
    sget-object v6, Lcom/netease/push/proto/ProtoClientWrapper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "rsaEncrypt, cmd="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v6, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAv18+t+6aTdcLH3PaWco5oYofBANFCKmf+z84SXo1vv4Hr+FEBAY2cJsmT/DlrFPYi6N37fgDhV9FRUB+Eo83b58UkLUAfs3XDNwAExcoZy79WhHyOMfzGmAa05wyz7GiqiBjVx9YAm0NkSnJ71Yeled7gdS6/wfRZZIBPUPCJ/rCH8cdNiALiXN/ySy9AAj7leYkR7apV2UDOyYx8dntooLGfsNQgTc3Ok0n8dcrxyj8j8/u+c9BXKdAeBpPNIGCw6gJjP3uXuDY8HXgALcCk6Cou2VPCOy50gTZC4hQ0wwDWMf3/BWtoBPquDErYLfR1umJabmJE+F19Q3ssAfpwwIDAQAB"

    invoke-static {v3, v6}, Lcom/netease/push/utils/Crypto;->rsaEncrypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 104
    .local v5, "str":Ljava/lang/String;
    const-string v6, "UTF_8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 124
    .end local v5    # "str":Ljava/lang/String;
    :cond_1
    :goto_0
    array-length v6, v4

    add-int/lit8 v2, v6, 0x4

    .line 125
    .local v2, "length":I
    new-array v0, v2, [B

    .line 126
    .local v0, "data":[B
    invoke-static {v0, v9, v2}, Lcom/netease/push/proto/ProtoClientWrapper;->Uint16ToBytes([BII)V

    .line 127
    const/4 v6, 0x2

    aput-byte v10, v0, v6

    .line 128
    aput-byte p0, v0, v10

    .line 129
    array-length v6, v4

    invoke-static {v4, v9, v0, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    return-object v0

    .line 105
    .end local v0    # "data":[B
    .end local v2    # "length":I
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/netease/push/proto/ProtoClientWrapper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "rsaEncrypt error:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    move-object v4, v3

    .line 110
    goto :goto_0

    .line 111
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 114
    :try_start_1
    sget-object v6, Lcom/netease/push/proto/ProtoClientWrapper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "aesEncrypt, cmd="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {v3, p2}, Lcom/netease/push/utils/Crypto;->aesEncrypt([BLjava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto :goto_0

    .line 116
    :catch_1
    move-exception v1

    .line 117
    .restart local v1    # "e":Ljava/lang/Exception;
    sget-object v6, Lcom/netease/push/proto/ProtoClientWrapper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "aesEncrypt error:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    move-object v4, v3

    goto :goto_0
.end method

.method public static Uint16ToBytes([BII)V
    .locals 2
    .param p0, "byteArr"    # [B
    .param p1, "pos"    # I
    .param p2, "cData"    # I

    .prologue
    .line 71
    const v0, 0xffff

    and-int/2addr p2, v0

    .line 72
    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 73
    add-int/lit8 v0, p1, 0x1

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 74
    return-void
.end method

.method public static UnmarshalPacket([BLjava/lang/String;)Lcom/netease/push/proto/ProtoClientWrapper$Packet;
    .locals 8
    .param p0, "data"    # [B
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    .line 135
    array-length v4, p0

    if-ge v4, v7, :cond_1

    .line 136
    sget-object v4, Lcom/netease/push/proto/ProtoClientWrapper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "data error:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 165
    :cond_0
    :goto_0
    return-object v2

    .line 139
    :cond_1
    new-instance v2, Lcom/netease/push/proto/ProtoClientWrapper$Packet;

    invoke-direct {v2}, Lcom/netease/push/proto/ProtoClientWrapper$Packet;-><init>()V

    .line 140
    .local v2, "packet":Lcom/netease/push/proto/ProtoClientWrapper$Packet;
    invoke-static {p0, v6}, Lcom/netease/push/proto/ProtoClientWrapper;->BytesToUint16([BI)I

    move-result v4

    iput v4, v2, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->length:I

    .line 141
    iget v4, v2, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->length:I

    if-lt v4, v7, :cond_2

    iget v4, v2, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->length:I

    array-length v5, p0

    if-le v4, v5, :cond_3

    .line 142
    :cond_2
    sget-object v4, Lcom/netease/push/proto/ProtoClientWrapper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "packet length error:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v2, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->length:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not in ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 143
    goto :goto_0

    .line 145
    :cond_3
    const/4 v3, 0x2

    aget-byte v3, p0, v3

    iput-byte v3, v2, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->version:B

    .line 146
    const/4 v3, 0x3

    aget-byte v3, p0, v3

    iput-byte v3, v2, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->type:B

    .line 147
    iget v3, v2, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->length:I

    add-int/lit8 v3, v3, -0x4

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->data:[B

    .line 148
    iget v3, v2, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->length:I

    if-le v3, v7, :cond_0

    .line 149
    iget-object v3, v2, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->data:[B

    iget-object v4, v2, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->data:[B

    array-length v4, v4

    invoke-static {p0, v7, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 151
    const/4 v1, 0x0

    .line 153
    .local v1, "msg":[B
    :try_start_0
    sget-object v3, Lcom/netease/push/proto/ProtoClientWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "aesDecrypt, cmd="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v5, v2, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->type:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v3, v2, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->data:[B

    invoke-static {v3, p1}, Lcom/netease/push/utils/Crypto;->aesDecrypt([BLjava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 159
    :goto_1
    if-eqz v1, :cond_0

    .line 160
    array-length v3, v1

    add-int/lit8 v3, v3, 0x4

    iput v3, v2, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->length:I

    .line 161
    iput-object v1, v2, Lcom/netease/push/proto/ProtoClientWrapper$Packet;->data:[B

    goto/16 :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/netease/push/proto/ProtoClientWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "aesDecrypt error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/netease/push/proto/ProtoClientWrapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getTypeName(B)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # B

    .prologue
    .line 169
    const-string v0, ""

    .line 170
    .local v0, "name":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 182
    const-string v0, "unknown"

    .line 185
    :goto_0
    return-object v0

    .line 172
    :pswitch_0
    const-string v0, "push"

    .line 173
    goto :goto_0

    .line 175
    :pswitch_1
    const-string v0, "reset"

    .line 176
    goto :goto_0

    .line 178
    :pswitch_2
    const-string v0, "newid"

    .line 179
    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private patchPlaceholder()V
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lcom/netease/push/proto/ProtoClientWrapper;->TAG:Ljava/lang/String;

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method
