.class public Lcom/tencent/hawk/bridge/ExtMsg;
.super Ljava/lang/Object;
.source "ExtMsg.java"


# static fields
.field private static extKeyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static ext_idx:I

.field private static isHawkEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/hawk/bridge/ExtMsg;->extKeyMap:Ljava/util/HashMap;

    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/hawk/bridge/ExtMsg;->isHawkEnabled:Z

    .line 36
    const/16 v0, 0x66

    sput v0, Lcom/tencent/hawk/bridge/ExtMsg;->ext_idx:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static assignIdx(ILjava/lang/String;)I
    .locals 3
    .param p0, "type"    # I
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 39
    sget-object v0, Lcom/tencent/hawk/bridge/ExtMsg;->extKeyMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[FETCH_KEY]: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcom/tencent/hawk/bridge/ExtMsg;->extKeyMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 47
    :goto_0
    return v0

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[PUT_KEY]: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 44
    sget v0, Lcom/tencent/hawk/bridge/ExtMsg;->ext_idx:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/hawk/bridge/ExtMsg;->ext_idx:I

    .line 45
    sget-object v0, Lcom/tencent/hawk/bridge/ExtMsg;->extKeyMap:Ljava/util/HashMap;

    sget v1, Lcom/tencent/hawk/bridge/ExtMsg;->ext_idx:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const/16 v0, 0x65

    const/4 v1, 0x0

    sget v2, Lcom/tencent/hawk/bridge/ExtMsg;->ext_idx:I

    invoke-static {v0, v1, p0, v2, p1}, Lcom/tencent/hawk/bridge/HawkNative;->postMsgExt(IIIILjava/lang/String;)V

    .line 47
    sget v0, Lcom/tencent/hawk/bridge/ExtMsg;->ext_idx:I

    goto :goto_0
.end method

.method public static checkEnv()Z
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/tencent/hawk/bridge/ExtMsg;->isHawkEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/hawk/bridge/ExtMsg;->extKeyMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized cleanIdxMap()V
    .locals 6

    .prologue
    .line 21
    const-class v1, Lcom/tencent/hawk/bridge/ExtMsg;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/hawk/bridge/ExtMsg;->extKeyMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 22
    const/16 v0, 0x64

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/tencent/hawk/bridge/HawkNative;->postMsgExt(IIIILjava/lang/String;)V

    .line 23
    const-string v0, "put fence, clean index map"

    invoke-static {v0}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/tencent/hawk/bridge/ExtMsg;->extKeyMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_0
    monitor-exit v1

    return-void

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized fence()V
    .locals 6

    .prologue
    .line 255
    const-class v0, Lcom/tencent/hawk/bridge/ExtMsg;

    monitor-enter v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {v1, v2, v3, v4, v5}, Lcom/tencent/hawk/bridge/HawkNative;->postMsgExt(IIIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    monitor-exit v0

    return-void

    .line 255
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static initExtMsg()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/hawk/bridge/ExtMsg;->extKeyMap:Ljava/util/HashMap;

    .line 16
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/hawk/bridge/ExtMsg;->isHawkEnabled:Z

    .line 17
    return-void
.end method

.method public static declared-synchronized putKVArrD(Ljava/lang/String;[D)V
    .locals 17
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "jarray"    # [D

    .prologue
    .line 203
    const-class v12, Lcom/tencent/hawk/bridge/ExtMsg;

    monitor-enter v12

    :try_start_0
    invoke-static {}, Lcom/tencent/hawk/bridge/ExtMsg;->checkEnv()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_1

    .line 251
    :cond_0
    :goto_0
    monitor-exit v12

    return-void

    .line 205
    :cond_1
    if-nez p1, :cond_2

    .line 207
    :try_start_1
    const-string v7, "putKVArrD, jarray is null "

    invoke-static {v7}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 203
    :catchall_0
    move-exception v7

    monitor-exit v12

    throw v7

    .line 211
    :cond_2
    :try_start_2
    move-object/from16 v0, p1

    array-length v7, v0

    const/16 v13, 0x40

    if-lt v7, v13, :cond_3

    .line 213
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v13, "putKVArrD, too large size  "

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    array-length v13, v0

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_3
    const/16 v7, 0x80

    move-object/from16 v0, p0

    invoke-static {v7, v0}, Lcom/tencent/hawk/bridge/ExtMsg;->assignIdx(ILjava/lang/String;)I

    move-result v4

    .line 240
    .local v4, "idx":I
    const/4 v6, 0x1

    .line 241
    .local v6, "pos":I
    move-object/from16 v0, p1

    array-length v2, v0

    .line 242
    .local v2, "arrLen":I
    move-object/from16 v0, p1

    array-length v13, v0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v13, :cond_0

    aget-wide v8, p1, v7

    .line 243
    .local v8, "temp":D
    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double/2addr v14, v8

    double-to-long v10, v14

    .line 244
    .local v10, "tempconv":J
    const/16 v14, 0x20

    shr-long v14, v10, v14

    long-to-int v3, v14

    .line 245
    .local v3, "high":I
    const-wide/16 v14, -0x1

    and-long/2addr v14, v10

    long-to-int v5, v14

    .line 247
    .local v5, "low":I
    shl-int/lit8 v14, v2, 0x8

    or-int/2addr v14, v6

    const/16 v15, 0x8

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v4, v14, v15, v3, v0}, Lcom/tencent/hawk/bridge/HawkNative;->postMsgExt(IIIILjava/lang/String;)V

    .line 248
    shl-int/lit8 v14, v2, 0x8

    or-int/2addr v14, v6

    const/16 v15, 0x10

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v4, v14, v15, v5, v0}, Lcom/tencent/hawk/bridge/HawkNative;->postMsgExt(IIIILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 249
    add-int/lit8 v6, v6, 0x1

    .line 242
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method public static declared-synchronized putKVArrI(Ljava/lang/String;[I)V
    .locals 11
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "values"    # [I

    .prologue
    .line 130
    const-class v6, Lcom/tencent/hawk/bridge/ExtMsg;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lcom/tencent/hawk/bridge/ExtMsg;->checkEnv()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    .line 171
    :cond_0
    :goto_0
    monitor-exit v6

    return-void

    .line 132
    :cond_1
    if-nez p0, :cond_2

    .line 134
    :try_start_1
    const-string v5, "putKVArrI, key is null "

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 138
    :cond_2
    if-nez p1, :cond_3

    .line 140
    :try_start_2
    const-string v5, "putKVArrI, array is null "

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_3
    array-length v5, p1

    const/16 v7, 0x40

    if-lt v5, v7, :cond_4

    .line 146
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "putKVArrI, too large size :"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v7, p1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v7, 0x80

    if-le v5, v7, :cond_5

    .line 152
    const-string v5, "key length too large"

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_5
    const/16 v5, 0x20

    invoke-static {v5, p0}, Lcom/tencent/hawk/bridge/ExtMsg;->assignIdx(ILjava/lang/String;)I

    move-result v0

    .line 166
    .local v0, "idx":I
    array-length v1, p1

    .line 167
    .local v1, "length":I
    const/4 v2, 0x1

    .line 168
    .local v2, "pos":I
    array-length v7, p1

    const/4 v5, 0x0

    move v3, v2

    .end local v2    # "pos":I
    .local v3, "pos":I
    :goto_1
    if-ge v5, v7, :cond_0

    aget v4, p1, v5

    .line 169
    .local v4, "temp":I
    shl-int/lit8 v8, v1, 0x8

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    or-int/2addr v8, v3

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {v0, v8, v9, v4, v10}, Lcom/tencent/hawk/bridge/HawkNative;->postMsgExt(IIIILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    add-int/lit8 v5, v5, 0x1

    move v3, v2

    .end local v2    # "pos":I
    .restart local v3    # "pos":I
    goto :goto_1
.end method

.method public static declared-synchronized putKVArrS(Ljava/lang/String;Lcom/tencent/hawk/bridge/JArrS;)V
    .locals 13
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "jarray"    # Lcom/tencent/hawk/bridge/JArrS;

    .prologue
    const/16 v7, 0x40

    const/4 v4, 0x0

    .line 175
    const-class v5, Lcom/tencent/hawk/bridge/ExtMsg;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Lcom/tencent/hawk/bridge/ExtMsg;->checkEnv()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    .line 199
    :cond_0
    monitor-exit v5

    return-void

    .line 177
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/tencent/hawk/bridge/JArrS;->getContent()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 180
    invoke-virtual {p1}, Lcom/tencent/hawk/bridge/JArrS;->getContent()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-ge v6, v7, :cond_0

    .line 184
    const/16 v6, 0x40

    invoke-static {v6, p0}, Lcom/tencent/hawk/bridge/ExtMsg;->assignIdx(ILjava/lang/String;)I

    move-result v2

    .line 186
    .local v2, "idx":I
    const/4 v1, 0x1

    .line 187
    .local v1, "i":I
    invoke-virtual {p1}, Lcom/tencent/hawk/bridge/JArrS;->getContent()[Ljava/lang/String;

    move-result-object v6

    array-length v0, v6

    .line 188
    .local v0, "arrLen":I
    invoke-virtual {p1}, Lcom/tencent/hawk/bridge/JArrS;->getContent()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    :goto_0
    if-ge v4, v7, :cond_0

    aget-object v3, v6, v4

    .line 190
    .local v3, "temp":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x80

    if-le v8, v9, :cond_2

    .line 192
    const-string/jumbo v8, "temp length too large,truncat"

    invoke-static {v8}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 193
    shl-int/lit8 v8, v0, 0x8

    or-int/2addr v8, v1

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x7e

    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v8, v9, v10, v11}, Lcom/tencent/hawk/bridge/HawkNative;->postMsgExt(IIIILjava/lang/String;)V

    .line 197
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 188
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 195
    :cond_2
    shl-int/lit8 v8, v0, 0x8

    or-int/2addr v8, v1

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v2, v8, v9, v10, v3}, Lcom/tencent/hawk/bridge/HawkNative;->postMsgExt(IIIILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 175
    .end local v0    # "arrLen":I
    .end local v1    # "i":I
    .end local v2    # "idx":I
    .end local v3    # "temp":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static declared-synchronized putKVD(Ljava/lang/String;D)V
    .locals 11
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # D

    .prologue
    .line 92
    const-class v6, Lcom/tencent/hawk/bridge/ExtMsg;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lcom/tencent/hawk/bridge/ExtMsg;->checkEnv()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 124
    :cond_0
    :goto_0
    monitor-exit v6

    return-void

    .line 94
    :cond_1
    if-eqz p0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v7, 0x40

    if-le v3, v7, :cond_2

    .line 99
    const-string v3, "key length too large"

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 100
    const/4 v3, 0x0

    const/16 v7, 0x3f

    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 104
    :cond_2
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v8, p1

    double-to-long v4, v8

    .line 105
    .local v4, "temp":J
    const/16 v3, 0x20

    shr-long v8, v4, v3

    long-to-int v0, v8

    .line 106
    .local v0, "high":I
    const-wide/16 v8, -0x1

    and-long/2addr v8, v4

    long-to-int v2, v8

    .line 120
    .local v2, "low":I
    const/4 v3, 0x4

    invoke-static {v3, p0}, Lcom/tencent/hawk/bridge/ExtMsg;->assignIdx(ILjava/lang/String;)I

    move-result v1

    .line 122
    .local v1, "idx":I
    const/4 v3, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-static {v1, v3, v7, v0, v8}, Lcom/tencent/hawk/bridge/HawkNative;->postMsgExt(IIIILjava/lang/String;)V

    .line 123
    const/4 v3, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    invoke-static {v1, v3, v7, v2, v8}, Lcom/tencent/hawk/bridge/HawkNative;->postMsgExt(IIIILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 92
    .end local v0    # "high":I
    .end local v1    # "idx":I
    .end local v2    # "low":I
    .end local v4    # "temp":J
    :catchall_0
    move-exception v3

    monitor-exit v6

    throw v3
.end method

.method public static declared-synchronized putKVI(Ljava/lang/String;I)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 53
    const-class v2, Lcom/tencent/hawk/bridge/ExtMsg;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/tencent/hawk/bridge/ExtMsg;->checkEnv()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 60
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 55
    :cond_1
    if-eqz p0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    const/4 v1, 0x1

    invoke-static {v1, p0}, Lcom/tencent/hawk/bridge/ExtMsg;->assignIdx(ILjava/lang/String;)I

    move-result v0

    .line 59
    .local v0, "idx":I
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, p1, v4}, Lcom/tencent/hawk/bridge/HawkNative;->postMsgExt(IIIILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 53
    .end local v0    # "idx":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized putKVS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x80

    .line 64
    const-class v2, Lcom/tencent/hawk/bridge/ExtMsg;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/tencent/hawk/bridge/ExtMsg;->checkEnv()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 66
    :cond_1
    if-eqz p0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_2

    .line 74
    const-string v1, "key length too large,truncate"

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 75
    const/4 v1, 0x0

    const/16 v3, 0x7f

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 79
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_3

    .line 81
    const-string/jumbo v1, "value length too large,truncate"

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 82
    const/4 v1, 0x0

    const/16 v3, 0x7f

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 85
    :cond_3
    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/tencent/hawk/bridge/ExtMsg;->assignIdx(ILjava/lang/String;)I

    move-result v0

    .line 87
    .local v0, "idx":I
    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4, p1}, Lcom/tencent/hawk/bridge/HawkNative;->postMsgExt(IIIILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 64
    .end local v0    # "idx":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
