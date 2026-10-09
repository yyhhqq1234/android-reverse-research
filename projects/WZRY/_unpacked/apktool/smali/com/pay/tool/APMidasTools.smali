.class public Lcom/pay/tool/APMidasTools;
.super Ljava/lang/Object;
.source "APMidasTools.java"


# static fields
.field static lastClickTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/pay/tool/APMidasTools;->lastClickTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentThreadName(Ljava/lang/Thread;)Ljava/lang/String;
    .locals 1
    .param p0, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 207
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getErrorCodeFromException(Ljava/io/IOException;)I
    .locals 1
    .param p0, "e"    # Ljava/io/IOException;

    .prologue
    .line 222
    instance-of v0, p0, Ljava/io/CharConversionException;

    if-eqz v0, :cond_0

    .line 223
    const/16 v0, -0x14

    .line 299
    :goto_0
    return v0

    .line 224
    :cond_0
    instance-of v0, p0, Ljava/nio/charset/MalformedInputException;

    if-eqz v0, :cond_1

    .line 225
    const/16 v0, -0x15

    goto :goto_0

    .line 226
    :cond_1
    instance-of v0, p0, Ljava/nio/charset/UnmappableCharacterException;

    if-eqz v0, :cond_2

    .line 227
    const/16 v0, -0x16

    goto :goto_0

    .line 230
    :cond_2
    instance-of v0, p0, Ljava/nio/channels/ClosedChannelException;

    if-eqz v0, :cond_3

    .line 231
    const/16 v0, -0x18

    goto :goto_0

    .line 234
    :cond_3
    instance-of v0, p0, Ljava/io/EOFException;

    if-eqz v0, :cond_4

    .line 235
    const/16 v0, -0x1a

    goto :goto_0

    .line 236
    :cond_4
    instance-of v0, p0, Ljava/nio/channels/FileLockInterruptionException;

    if-eqz v0, :cond_5

    .line 237
    const/16 v0, -0x1b

    goto :goto_0

    .line 238
    :cond_5
    instance-of v0, p0, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_6

    .line 239
    const/16 v0, -0x1c

    goto :goto_0

    .line 240
    :cond_6
    instance-of v0, p0, Ljava/net/HttpRetryException;

    if-eqz v0, :cond_7

    .line 241
    const/16 v0, -0x1d

    goto :goto_0

    .line 242
    :cond_7
    instance-of v0, p0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz v0, :cond_8

    .line 243
    const/4 v0, -0x7

    goto :goto_0

    .line 244
    :cond_8
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_9

    .line 245
    const/4 v0, -0x8

    goto :goto_0

    .line 246
    :cond_9
    instance-of v0, p0, Ljava/util/InvalidPropertiesFormatException;

    if-eqz v0, :cond_a

    .line 247
    const/16 v0, -0x1e

    goto :goto_0

    .line 250
    :cond_a
    instance-of v0, p0, Ljava/net/MalformedURLException;

    if-eqz v0, :cond_b

    .line 251
    const/4 v0, -0x3

    goto :goto_0

    .line 254
    :cond_b
    instance-of v0, p0, Ljava/io/InvalidClassException;

    if-eqz v0, :cond_c

    .line 255
    const/16 v0, -0x21

    goto :goto_0

    .line 256
    :cond_c
    instance-of v0, p0, Ljava/io/InvalidObjectException;

    if-eqz v0, :cond_d

    .line 257
    const/16 v0, -0x22

    goto :goto_0

    .line 258
    :cond_d
    instance-of v0, p0, Ljava/io/NotActiveException;

    if-eqz v0, :cond_e

    .line 259
    const/16 v0, -0x23

    goto :goto_0

    .line 260
    :cond_e
    instance-of v0, p0, Ljava/io/NotSerializableException;

    if-eqz v0, :cond_f

    .line 261
    const/16 v0, -0x24

    goto :goto_0

    .line 262
    :cond_f
    instance-of v0, p0, Ljava/io/OptionalDataException;

    if-eqz v0, :cond_10

    .line 263
    const/16 v0, -0x25

    goto :goto_0

    .line 264
    :cond_10
    instance-of v0, p0, Ljava/io/StreamCorruptedException;

    if-eqz v0, :cond_11

    .line 265
    const/16 v0, -0x26

    goto :goto_0

    .line 266
    :cond_11
    instance-of v0, p0, Ljava/io/WriteAbortedException;

    if-eqz v0, :cond_12

    .line 267
    const/16 v0, -0x27

    goto :goto_0

    .line 268
    :cond_12
    instance-of v0, p0, Ljava/net/ProtocolException;

    if-eqz v0, :cond_13

    .line 269
    const/16 v0, -0x28

    goto/16 :goto_0

    .line 270
    :cond_13
    instance-of v0, p0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_14

    .line 271
    const/16 v0, -0x29

    goto/16 :goto_0

    .line 272
    :cond_14
    instance-of v0, p0, Ljavax/net/ssl/SSLKeyException;

    if-eqz v0, :cond_15

    .line 273
    const/16 v0, -0x2a

    goto/16 :goto_0

    .line 274
    :cond_15
    instance-of v0, p0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v0, :cond_16

    .line 275
    const/16 v0, -0x2b

    goto/16 :goto_0

    .line 276
    :cond_16
    instance-of v0, p0, Ljavax/net/ssl/SSLProtocolException;

    if-eqz v0, :cond_17

    .line 277
    const/16 v0, -0x2c

    goto/16 :goto_0

    .line 278
    :cond_17
    instance-of v0, p0, Ljava/net/BindException;

    if-eqz v0, :cond_18

    .line 279
    const/16 v0, -0x2d

    goto/16 :goto_0

    .line 280
    :cond_18
    instance-of v0, p0, Ljava/net/ConnectException;

    if-eqz v0, :cond_19

    .line 281
    const/16 v0, -0x2e

    goto/16 :goto_0

    .line 282
    :cond_19
    instance-of v0, p0, Ljava/net/NoRouteToHostException;

    if-eqz v0, :cond_1a

    .line 283
    const/16 v0, -0x2f

    goto/16 :goto_0

    .line 284
    :cond_1a
    instance-of v0, p0, Ljava/net/PortUnreachableException;

    if-eqz v0, :cond_1b

    .line 285
    const/16 v0, -0x30

    goto/16 :goto_0

    .line 286
    :cond_1b
    instance-of v0, p0, Ljava/io/SyncFailedException;

    if-eqz v0, :cond_1c

    .line 287
    const/16 v0, -0x31

    goto/16 :goto_0

    .line 288
    :cond_1c
    instance-of v0, p0, Ljava/io/UTFDataFormatException;

    if-eqz v0, :cond_1d

    .line 289
    const/16 v0, -0x32

    goto/16 :goto_0

    .line 290
    :cond_1d
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_1e

    .line 291
    const/16 v0, -0x33

    goto/16 :goto_0

    .line 292
    :cond_1e
    instance-of v0, p0, Ljava/net/UnknownServiceException;

    if-eqz v0, :cond_1f

    .line 293
    const/16 v0, -0x34

    goto/16 :goto_0

    .line 294
    :cond_1f
    instance-of v0, p0, Ljava/io/UnsupportedEncodingException;

    if-eqz v0, :cond_20

    .line 295
    const/16 v0, -0x35

    goto/16 :goto_0

    .line 296
    :cond_20
    instance-of v0, p0, Ljava/util/zip/ZipException;

    if-eqz v0, :cond_21

    .line 297
    const/16 v0, -0x36

    goto/16 :goto_0

    .line 299
    :cond_21
    const/4 v0, -0x2

    goto/16 :goto_0
.end method

.method public static getSysServerDomain()Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    sget-object v0, Lcom/tencent/midas/api/APMidasPayAPI;->env:Ljava/lang/String;

    .line 184
    .local v0, "strEnv":Ljava/lang/String;
    const-string v1, "dev"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    const-string v1, "dev.api.unipay.qq.com"

    .line 189
    :goto_0
    return-object v1

    .line 186
    :cond_0
    const-string/jumbo v1, "test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    const-string v1, "sandbox.api.unipay.qq.com"

    goto :goto_0

    .line 189
    :cond_1
    const-string v1, "api.unipay.qq.com"

    goto :goto_0
.end method

.method public static getTimeInterval(JJ)J
    .locals 2
    .param p0, "dateStart"    # J
    .param p2, "dateEnd"    # J

    .prologue
    .line 212
    sub-long v0, p2, p0

    return-wide v0
.end method

.method public static getUUID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 195
    const-string v1, ""

    .line 196
    .local v1, "uuidStr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 198
    .local v0, "uuid":Ljava/util/UUID;
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 202
    :goto_0
    return-object v1

    .line 200
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getUrlParamsValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x1

    .line 133
    const/4 v4, 0x0

    .line 134
    .local v4, "strParams":Ljava/lang/String;
    const/4 v6, 0x0

    .line 135
    .local v6, "urlTmp":[Ljava/lang/String;
    const-string v8, "[?]"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 136
    array-length v8, v6

    if-le v8, v12, :cond_2

    aget-object v8, v6, v12

    if-eqz v8, :cond_2

    .line 137
    aget-object v4, v6, v12

    .line 141
    const/4 v5, 0x0

    .line 142
    .local v5, "strSplit":[Ljava/lang/String;
    const-string v8, "[&]"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 143
    array-length v10, v5

    move v8, v9

    :goto_0
    if-ge v8, v10, :cond_4

    aget-object v2, v5, v8

    .line 144
    .local v2, "sKeyValue":Ljava/lang/String;
    const-string v11, "[=]"

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "keyValue":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 146
    .local v1, "sKey":Ljava/lang/String;
    const/4 v3, 0x0

    .line 147
    .local v3, "sValue":Ljava/lang/String;
    array-length v11, v0

    if-le v11, v12, :cond_0

    aget-object v11, v0, v9

    if-eqz v11, :cond_0

    .line 148
    aget-object v1, v0, v9

    .line 150
    :cond_0
    array-length v11, v0

    if-le v11, v12, :cond_1

    aget-object v11, v0, v12

    if-eqz v11, :cond_1

    .line 151
    aget-object v3, v0, v12

    .line 153
    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_3

    .line 158
    .end local v0    # "keyValue":[Ljava/lang/String;
    .end local v1    # "sKey":Ljava/lang/String;
    .end local v2    # "sKeyValue":Ljava/lang/String;
    .end local v3    # "sValue":Ljava/lang/String;
    .end local v5    # "strSplit":[Ljava/lang/String;
    :goto_1
    return-object v3

    :cond_2
    move-object v3, v7

    .line 139
    goto :goto_1

    .line 143
    .restart local v0    # "keyValue":[Ljava/lang/String;
    .restart local v1    # "sKey":Ljava/lang/String;
    .restart local v2    # "sKeyValue":Ljava/lang/String;
    .restart local v3    # "sValue":Ljava/lang/String;
    .restart local v5    # "strSplit":[Ljava/lang/String;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .end local v0    # "keyValue":[Ljava/lang/String;
    .end local v1    # "sKey":Ljava/lang/String;
    .end local v2    # "sKeyValue":Ljava/lang/String;
    .end local v3    # "sValue":Ljava/lang/String;
    :cond_4
    move-object v3, v7

    .line 158
    goto :goto_1
.end method

.method public static isFastClick()Z
    .locals 6

    .prologue
    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 61
    .local v0, "time":J
    sget-wide v2, Lcom/pay/tool/APMidasTools;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 62
    const/4 v2, 0x1

    .line 65
    :goto_0
    return v2

    .line 64
    :cond_0
    sput-wide v0, Lcom/pay/tool/APMidasTools;->lastClickTime:J

    .line 65
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static map2UrlParams(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 166
    .local v1, "paramBuffer":Ljava/lang/StringBuffer;
    :try_start_0
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 167
    .local v0, "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    .end local v0    # "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 179
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 173
    :cond_1
    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 174
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static urlDecode(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "srcMsg"    # Ljava/lang/String;
    .param p1, "number"    # I

    .prologue
    .line 106
    const-string v0, ""

    .line 108
    .local v0, "desMsg":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 110
    if-gtz p1, :cond_0

    move-object v1, v0

    .line 126
    .end local v0    # "desMsg":Ljava/lang/String;
    .end local p0    # "srcMsg":Ljava/lang/String;
    .local v1, "desMsg":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 113
    .end local v1    # "desMsg":Ljava/lang/String;
    .restart local v0    # "desMsg":Ljava/lang/String;
    .restart local p0    # "srcMsg":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, p1, :cond_2

    .line 115
    :try_start_0
    const-string/jumbo v4, "utf-8"

    invoke-static {p0, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 119
    :goto_2
    move-object p0, v0

    .line 113
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 116
    :catch_0
    move-exception v2

    .line 117
    .local v2, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "urlEncode"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 123
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v3    # "i":I
    :cond_1
    const-string v4, ""

    const-string/jumbo v5, "\u89e3\u7801\u5185\u5bb9\u4e3a\u7a7a"

    invoke-static {v4, v5}, Lcom/tencent/midas/comm/APLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v1, v0

    .end local v0    # "desMsg":Ljava/lang/String;
    .restart local v1    # "desMsg":Ljava/lang/String;
    move-object p0, v0

    .line 126
    goto :goto_0
.end method

.method public static urlEncode(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "srcMsg"    # Ljava/lang/String;
    .param p1, "number"    # I

    .prologue
    .line 75
    const-string v0, ""

    .line 77
    .local v0, "desMsg":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 79
    if-gtz p1, :cond_0

    move-object v1, v0

    .line 95
    .end local v0    # "desMsg":Ljava/lang/String;
    .end local p0    # "srcMsg":Ljava/lang/String;
    .local v1, "desMsg":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 82
    .end local v1    # "desMsg":Ljava/lang/String;
    .restart local v0    # "desMsg":Ljava/lang/String;
    .restart local p0    # "srcMsg":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, p1, :cond_2

    .line 84
    :try_start_0
    const-string/jumbo v4, "utf-8"

    invoke-static {p0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 88
    :goto_2
    move-object p0, v0

    .line 82
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 85
    :catch_0
    move-exception v2

    .line 86
    .local v2, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "urlEncode"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 92
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v3    # "i":I
    :cond_1
    const-string/jumbo v4, "urlEncode"

    const-string/jumbo v5, "\u7f16\u7801\u5185\u5bb9\u4e3a\u7a7a"

    invoke-static {v4, v5}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v1, v0

    .end local v0    # "desMsg":Ljava/lang/String;
    .restart local v1    # "desMsg":Ljava/lang/String;
    move-object p0, v0

    .line 95
    goto :goto_0
.end method
