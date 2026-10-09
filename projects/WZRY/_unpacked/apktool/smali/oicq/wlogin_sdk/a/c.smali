.class public Loicq/wlogin_sdk/a/c;
.super Ljava/lang/Object;
.source "reg_request.java"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field protected e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/16 v0, 0xb

    iput v0, p0, Loicq/wlogin_sdk/a/c;->a:I

    .line 32
    iput v1, p0, Loicq/wlogin_sdk/a/c;->b:I

    .line 33
    const/4 v0, 0x5

    iput v0, p0, Loicq/wlogin_sdk/a/c;->c:I

    .line 34
    iput v1, p0, Loicq/wlogin_sdk/a/c;->d:I

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Loicq/wlogin_sdk/a/c;->e:I

    return-void
.end method

.method public static a([BLoicq/wlogin_sdk/a/j;)I
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/16 v1, -0x3f1

    .line 124
    .line 128
    invoke-static {p0}, Loicq/wlogin_sdk/a/c;->b([B)[I

    move-result-object v2

    .line 129
    aget v0, v2, v7

    .line 130
    aget v2, v2, v10

    .line 132
    if-ne v0, v1, :cond_1

    .line 267
    :cond_0
    :goto_0
    return v0

    .line 135
    :cond_1
    add-int/lit8 v3, v2, 0x1

    array-length v4, p0

    if-le v3, v4, :cond_2

    move v0, v1

    .line 136
    goto :goto_0

    .line 137
    :cond_2
    invoke-static {p0, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p1, Loicq/wlogin_sdk/a/j;->d:I

    .line 138
    add-int/lit8 v2, v2, 0x1

    .line 140
    add-int/lit8 v3, v2, 0x2

    array-length v4, p0

    if-le v3, v4, :cond_3

    move v0, v1

    .line 141
    goto :goto_0

    .line 142
    :cond_3
    invoke-static {p0, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v3

    .line 143
    add-int/lit8 v2, v2, 0x2

    .line 144
    add-int v4, v2, v3

    array-length v5, p0

    if-le v4, v5, :cond_4

    move v0, v1

    .line 145
    goto :goto_0

    .line 146
    :cond_4
    new-array v4, v3, [B

    .line 147
    invoke-static {p0, v2, v4, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    add-int/2addr v2, v3

    .line 150
    add-int/lit8 v3, v2, 0x1

    array-length v5, p0

    if-le v3, v5, :cond_5

    move v0, v1

    .line 151
    goto :goto_0

    .line 152
    :cond_5
    invoke-static {p0, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v3

    .line 153
    add-int/lit8 v2, v2, 0x1

    .line 154
    add-int v5, v2, v3

    array-length v6, p0

    if-le v5, v6, :cond_6

    move v0, v1

    .line 155
    goto :goto_0

    .line 156
    :cond_6
    new-array v5, v3, [B

    iput-object v5, p1, Loicq/wlogin_sdk/a/j;->e:[B

    .line 157
    iget-object v5, p1, Loicq/wlogin_sdk/a/j;->e:[B

    invoke-static {p0, v2, v5, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    add-int/2addr v2, v3

    .line 160
    add-int/lit8 v3, v2, 0x2

    array-length v5, p0

    if-le v3, v5, :cond_7

    move v0, v1

    .line 161
    goto :goto_0

    .line 162
    :cond_7
    invoke-static {p0, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v3

    .line 163
    add-int/lit8 v2, v2, 0x2

    .line 164
    add-int v5, v2, v3

    array-length v6, p0

    if-le v5, v6, :cond_8

    move v0, v1

    .line 165
    goto :goto_0

    .line 166
    :cond_8
    new-array v5, v3, [B

    iput-object v5, p1, Loicq/wlogin_sdk/a/j;->f:[B

    .line 167
    iget-object v5, p1, Loicq/wlogin_sdk/a/j;->f:[B

    invoke-static {p0, v2, v5, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    add-int/2addr v2, v3

    .line 170
    array-length v2, v4

    if-lez v2, :cond_0

    .line 174
    iget v2, p1, Loicq/wlogin_sdk/a/j;->d:I

    sparse-switch v2, :sswitch_data_0

    .line 264
    const-string/jumbo v1, "unhandle return code int parse_checkvalid_rsp"

    const-string v2, ""

    const-string v3, ""

    invoke-static {v1, v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :sswitch_0
    array-length v2, v4

    if-le v9, v2, :cond_9

    move v0, v1

    .line 178
    goto :goto_0

    .line 179
    :cond_9
    invoke-static {v4, v7}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v2

    iput v2, p1, Loicq/wlogin_sdk/a/j;->m:I

    .line 182
    const/4 v2, 0x5

    array-length v3, v4

    if-le v2, v3, :cond_a

    move v0, v1

    .line 183
    goto/16 :goto_0

    .line 184
    :cond_a
    invoke-static {v4, v9}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v2

    .line 185
    const/4 v3, 0x5

    .line 186
    add-int/lit8 v5, v2, 0x5

    array-length v6, v4

    if-le v5, v6, :cond_b

    move v0, v1

    .line 187
    goto/16 :goto_0

    .line 188
    :cond_b
    new-array v1, v2, [B

    iput-object v1, p1, Loicq/wlogin_sdk/a/j;->n:[B

    .line 189
    iget-object v1, p1, Loicq/wlogin_sdk/a/j;->n:[B

    invoke-static {v4, v3, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    add-int/lit8 v1, v2, 0x5

    .line 191
    goto/16 :goto_0

    .line 194
    :sswitch_1
    array-length v2, v4

    if-le v10, v2, :cond_c

    move v0, v1

    .line 195
    goto/16 :goto_0

    .line 196
    :cond_c
    invoke-static {v4, v7}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v2

    .line 198
    add-int/lit8 v3, v2, 0x1

    array-length v5, v4

    if-le v3, v5, :cond_d

    move v0, v1

    .line 199
    goto/16 :goto_0

    .line 200
    :cond_d
    new-array v3, v2, [B

    iput-object v3, p1, Loicq/wlogin_sdk/a/j;->o:[B

    .line 201
    iget-object v3, p1, Loicq/wlogin_sdk/a/j;->o:[B

    invoke-static {v4, v10, v3, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    add-int/lit8 v2, v2, 0x1

    .line 204
    add-int/lit8 v3, v2, 0x1

    invoke-static {v4, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v2

    .line 205
    add-int v5, v3, v2

    array-length v6, v4

    if-le v5, v6, :cond_e

    move v0, v1

    .line 206
    goto/16 :goto_0

    .line 207
    :cond_e
    new-array v5, v2, [B

    iput-object v5, p1, Loicq/wlogin_sdk/a/j;->p:[B

    .line 208
    iget-object v5, p1, Loicq/wlogin_sdk/a/j;->p:[B

    invoke-static {v4, v3, v5, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    add-int/2addr v2, v3

    .line 211
    invoke-static {v4, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v3

    .line 212
    add-int/lit8 v2, v2, 0x2

    .line 213
    add-int v5, v2, v3

    array-length v6, v4

    if-le v5, v6, :cond_f

    move v0, v1

    .line 214
    goto/16 :goto_0

    .line 215
    :cond_f
    new-array v1, v3, [B

    iput-object v1, p1, Loicq/wlogin_sdk/a/j;->q:[B

    .line 216
    iget-object v1, p1, Loicq/wlogin_sdk/a/j;->q:[B

    invoke-static {v4, v2, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    add-int v1, v2, v3

    .line 218
    goto/16 :goto_0

    .line 223
    :sswitch_2
    array-length v2, v4

    if-le v8, v2, :cond_10

    move v0, v1

    .line 224
    goto/16 :goto_0

    .line 225
    :cond_10
    invoke-static {v4, v7}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v2

    .line 227
    add-int/lit8 v3, v2, 0x2

    array-length v5, v4

    if-le v3, v5, :cond_11

    move v0, v1

    .line 228
    goto/16 :goto_0

    .line 229
    :cond_11
    new-array v1, v2, [B

    iput-object v1, p1, Loicq/wlogin_sdk/a/j;->r:[B

    .line 230
    iget-object v1, p1, Loicq/wlogin_sdk/a/j;->r:[B

    invoke-static {v4, v8, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    add-int/lit8 v1, v2, 0x2

    .line 232
    goto/16 :goto_0

    .line 236
    :sswitch_3
    array-length v2, v4

    if-le v8, v2, :cond_12

    move v0, v1

    .line 237
    goto/16 :goto_0

    .line 238
    :cond_12
    invoke-static {v4, v7}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v2

    iput v2, p1, Loicq/wlogin_sdk/a/j;->s:I

    .line 240
    array-length v2, v4

    if-le v9, v2, :cond_13

    move v0, v1

    .line 241
    goto/16 :goto_0

    .line 242
    :cond_13
    invoke-static {v4, v8}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v1

    iput v1, p1, Loicq/wlogin_sdk/a/j;->t:I

    goto/16 :goto_0

    .line 248
    :sswitch_4
    iput v7, p1, Loicq/wlogin_sdk/a/j;->s:I

    .line 249
    iput v7, p1, Loicq/wlogin_sdk/a/j;->t:I

    goto/16 :goto_0

    .line 253
    :sswitch_5
    array-length v2, v4

    if-le v8, v2, :cond_14

    move v0, v1

    .line 254
    goto/16 :goto_0

    .line 255
    :cond_14
    invoke-static {v4, v7}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v2

    iput v2, p1, Loicq/wlogin_sdk/a/j;->s:I

    .line 257
    array-length v2, v4

    if-le v9, v2, :cond_15

    move v0, v1

    .line 258
    goto/16 :goto_0

    .line 259
    :cond_15
    invoke-static {v4, v8}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v1

    iput v1, p1, Loicq/wlogin_sdk/a/j;->t:I

    goto/16 :goto_0

    .line 174
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_5
        0x6 -> :sswitch_2
        0x1f -> :sswitch_4
        0x2c -> :sswitch_2
    .end sparse-switch
.end method

.method public static b([BLoicq/wlogin_sdk/a/j;)I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v1, -0x3f1

    .line 271
    .line 275
    invoke-static {p0}, Loicq/wlogin_sdk/a/c;->b([B)[I

    move-result-object v2

    .line 276
    aget v0, v2, v5

    .line 277
    const/4 v3, 0x1

    aget v2, v2, v3

    .line 279
    if-ne v0, v1, :cond_1

    .line 317
    :cond_0
    :goto_0
    return v0

    .line 282
    :cond_1
    add-int/lit8 v0, v2, 0x1

    array-length v3, p0

    if-le v0, v3, :cond_2

    move v0, v1

    .line 283
    goto :goto_0

    .line 284
    :cond_2
    invoke-static {p0, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v0

    iput v0, p1, Loicq/wlogin_sdk/a/j;->d:I

    .line 285
    add-int/lit8 v0, v2, 0x1

    .line 287
    add-int/lit8 v2, v0, 0x1

    array-length v3, p0

    if-le v2, v3, :cond_3

    move v0, v1

    .line 288
    goto :goto_0

    .line 289
    :cond_3
    invoke-static {p0, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v2

    .line 290
    add-int/lit8 v0, v0, 0x1

    .line 291
    add-int v3, v0, v2

    array-length v4, p0

    if-le v3, v4, :cond_4

    move v0, v1

    .line 292
    goto :goto_0

    .line 293
    :cond_4
    new-array v3, v2, [B

    iput-object v3, p1, Loicq/wlogin_sdk/a/j;->e:[B

    .line 294
    iget-object v3, p1, Loicq/wlogin_sdk/a/j;->e:[B

    invoke-static {p0, v0, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    add-int/2addr v0, v2

    .line 297
    add-int/lit8 v2, v0, 0x2

    array-length v3, p0

    if-le v2, v3, :cond_5

    move v0, v1

    .line 298
    goto :goto_0

    .line 299
    :cond_5
    invoke-static {p0, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v2

    .line 300
    add-int/lit8 v0, v0, 0x2

    .line 301
    add-int v3, v0, v2

    array-length v4, p0

    if-le v3, v4, :cond_6

    move v0, v1

    .line 302
    goto :goto_0

    .line 303
    :cond_6
    new-array v3, v2, [B

    iput-object v3, p1, Loicq/wlogin_sdk/a/j;->f:[B

    .line 304
    iget-object v3, p1, Loicq/wlogin_sdk/a/j;->f:[B

    invoke-static {p0, v0, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    add-int/2addr v0, v2

    .line 308
    invoke-static {p0, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v2

    .line 309
    add-int/lit8 v0, v0, 0x1

    .line 311
    array-length v3, p0

    sub-int/2addr v3, v0

    iget-object v4, p1, Loicq/wlogin_sdk/a/j;->B:Ljava/util/Map;

    invoke-static {v2, p0, v0, v3, v4}, Loicq/wlogin_sdk/tools/c;->a(I[BIILjava/util/Map;)I

    move-result v0

    .line 312
    if-eqz v0, :cond_0

    .line 313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parser tlv failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 314
    goto :goto_0
.end method

.method private static b([B)[I
    .locals 8

    .prologue
    const/4 v2, 0x3

    const/16 v7, -0x3f1

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 88
    .line 92
    array-length v0, p0

    if-le v5, v0, :cond_0

    .line 93
    new-array v0, v6, [I

    aput v7, v0, v4

    aput v4, v0, v5

    .line 119
    :goto_0
    return-object v0

    .line 97
    :cond_0
    array-length v0, p0

    if-le v2, v0, :cond_1

    .line 98
    new-array v0, v6, [I

    aput v7, v0, v4

    aput v5, v0, v5

    goto :goto_0

    .line 99
    :cond_1
    invoke-static {p0, v5}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v0

    .line 101
    array-length v1, p0

    if-eq v0, v1, :cond_2

    .line 102
    new-array v0, v6, [I

    aput v7, v0, v4

    aput v2, v0, v5

    goto :goto_0

    .line 105
    :cond_2
    const/4 v0, 0x7

    array-length v1, p0

    if-le v0, v1, :cond_3

    .line 106
    new-array v0, v6, [I

    aput v7, v0, v4

    aput v2, v0, v5

    goto :goto_0

    .line 107
    :cond_3
    const/4 v1, 0x7

    .line 110
    const/16 v0, 0x8

    array-length v2, p0

    if-le v0, v2, :cond_4

    .line 111
    new-array v0, v6, [I

    aput v7, v0, v4

    aput v1, v0, v5

    goto :goto_0

    .line 112
    :cond_4
    invoke-static {p0, v1}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v0

    .line 113
    const/16 v1, 0x8

    .line 116
    add-int/lit8 v2, v0, 0x8

    array-length v3, p0

    if-le v2, v3, :cond_5

    .line 117
    new-array v0, v6, [I

    aput v7, v0, v4

    aput v1, v0, v5

    goto :goto_0

    .line 118
    :cond_5
    add-int/lit8 v1, v0, 0x8

    .line 119
    new-array v0, v6, [I

    aput v4, v0, v4

    aput v1, v0, v5

    goto :goto_0
.end method

.method public static c([BLoicq/wlogin_sdk/a/j;)I
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/16 v2, -0x3f1

    .line 322
    .line 326
    invoke-static {p0}, Loicq/wlogin_sdk/a/c;->b([B)[I

    move-result-object v0

    .line 327
    aget v1, v0, v3

    .line 328
    aget v0, v0, v7

    .line 330
    if-ne v1, v2, :cond_0

    move v0, v1

    .line 433
    :goto_0
    return v0

    .line 333
    :cond_0
    add-int/lit8 v4, v0, 0x1

    array-length v5, p0

    if-le v4, v5, :cond_1

    move v0, v2

    .line 334
    goto :goto_0

    .line 335
    :cond_1
    invoke-static {p0, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v4

    iput v4, p1, Loicq/wlogin_sdk/a/j;->d:I

    .line 336
    add-int/lit8 v0, v0, 0x1

    .line 338
    add-int/lit8 v4, v0, 0x1

    array-length v5, p0

    if-le v4, v5, :cond_2

    move v0, v2

    .line 339
    goto :goto_0

    .line 340
    :cond_2
    invoke-static {p0, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v4

    .line 341
    add-int/lit8 v0, v0, 0x1

    .line 342
    add-int v5, v0, v4

    array-length v6, p0

    if-le v5, v6, :cond_3

    move v0, v2

    .line 343
    goto :goto_0

    .line 344
    :cond_3
    new-array v5, v4, [B

    .line 345
    invoke-static {p0, v0, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    add-int v6, v0, v4

    .line 347
    iget v0, p1, Loicq/wlogin_sdk/a/j;->d:I

    if-nez v0, :cond_f

    .line 352
    iget-object v0, p1, Loicq/wlogin_sdk/a/j;->j:[B

    if-eqz v0, :cond_4

    iget-object v0, p1, Loicq/wlogin_sdk/a/j;->j:[B

    array-length v0, v0

    if-gtz v0, :cond_5

    .line 353
    :cond_4
    sget-object v0, Loicq/wlogin_sdk/a/j;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 357
    :goto_1
    array-length v4, v5

    invoke-static {v5, v3, v4, v0}, Loicq/wlogin_sdk/tools/cryptor;->decrypt([BII[B)[B

    move-result-object v5

    .line 359
    if-nez v5, :cond_6

    move v0, v2

    goto :goto_0

    .line 355
    :cond_5
    iget-object v0, p1, Loicq/wlogin_sdk/a/j;->j:[B

    invoke-static {v0}, Loicq/wlogin_sdk/tools/MD5;->toMD5Byte([B)[B

    move-result-object v0

    goto :goto_1

    .line 361
    :cond_6
    array-length v0, v5

    if-le v7, v0, :cond_7

    move v0, v2

    .line 362
    goto :goto_0

    .line 363
    :cond_7
    invoke-static {v5, v3}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v0

    .line 365
    add-int/lit8 v4, v0, 0x1

    array-length v7, v5

    if-le v4, v7, :cond_8

    move v0, v2

    .line 366
    goto :goto_0

    .line 367
    :cond_8
    add-int/lit8 v0, v0, 0x1

    .line 369
    add-int/lit8 v4, v0, 0x8

    array-length v7, v5

    if-le v4, v7, :cond_9

    move v0, v2

    .line 370
    goto :goto_0

    .line 371
    :cond_9
    invoke-static {v5, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int64([BI)J

    move-result-wide v8

    iput-wide v8, p1, Loicq/wlogin_sdk/a/j;->u:J

    .line 372
    add-int/lit8 v0, v0, 0x8

    .line 374
    add-int/lit8 v4, v0, 0x2

    array-length v7, v5

    if-le v4, v7, :cond_a

    move v0, v2

    .line 375
    goto :goto_0

    .line 376
    :cond_a
    invoke-static {v5, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v4

    .line 377
    add-int/lit8 v0, v0, 0x2

    .line 378
    add-int v7, v0, v4

    array-length v8, v5

    if-le v7, v8, :cond_b

    move v0, v2

    .line 379
    goto/16 :goto_0

    .line 380
    :cond_b
    new-array v7, v4, [B

    iput-object v7, p1, Loicq/wlogin_sdk/a/j;->v:[B

    .line 381
    iget-object v7, p1, Loicq/wlogin_sdk/a/j;->v:[B

    invoke-static {v5, v0, v7, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 382
    add-int/2addr v0, v4

    .line 384
    add-int/lit8 v4, v0, 0x1

    array-length v7, v5

    if-le v4, v7, :cond_c

    move v0, v2

    .line 385
    goto/16 :goto_0

    .line 386
    :cond_c
    invoke-static {v5, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v7

    .line 387
    add-int/lit8 v4, v0, 0x1

    move v0, v3

    .line 388
    :goto_2
    if-ge v0, v7, :cond_f

    .line 389
    add-int/lit8 v8, v4, 0x2

    array-length v9, v5

    if-le v8, v9, :cond_d

    move v0, v2

    .line 390
    goto/16 :goto_0

    .line 391
    :cond_d
    invoke-static {v5, v4}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v8

    .line 392
    add-int/lit8 v4, v4, 0x1

    .line 393
    invoke-static {v5, v4}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v9

    .line 394
    add-int/lit8 v4, v4, 0x1

    .line 395
    add-int v10, v4, v9

    array-length v11, v5

    if-le v10, v11, :cond_e

    move v0, v2

    .line 396
    goto/16 :goto_0

    .line 397
    :cond_e
    sparse-switch v8, :sswitch_data_0

    .line 409
    :goto_3
    add-int/2addr v4, v9

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 400
    :sswitch_0
    new-array v8, v9, [B

    iput-object v8, p1, Loicq/wlogin_sdk/a/j;->w:[B

    .line 401
    iget-object v8, p1, Loicq/wlogin_sdk/a/j;->w:[B

    invoke-static {v5, v4, v8, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 405
    :sswitch_1
    new-array v8, v9, [B

    .line 406
    invoke-static {v5, v4, v8, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 407
    invoke-static {v8, v3}, Loicq/wlogin_sdk/tools/util;->buf_to_int64([BI)J

    move-result-wide v10

    sput-wide v10, Loicq/wlogin_sdk/a/j;->y:J

    goto :goto_3

    .line 413
    :cond_f
    add-int/lit8 v0, v6, 0x1

    array-length v4, p0

    if-le v0, v4, :cond_10

    move v0, v2

    .line 414
    goto/16 :goto_0

    .line 415
    :cond_10
    invoke-static {p0, v6}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v0

    .line 416
    add-int/lit8 v4, v6, 0x1

    .line 417
    add-int v5, v4, v0

    array-length v6, p0

    if-le v5, v6, :cond_11

    move v0, v2

    .line 418
    goto/16 :goto_0

    .line 419
    :cond_11
    new-array v5, v0, [B

    iput-object v5, p1, Loicq/wlogin_sdk/a/j;->e:[B

    .line 420
    iget-object v5, p1, Loicq/wlogin_sdk/a/j;->e:[B

    invoke-static {p0, v4, v5, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    add-int/2addr v0, v4

    .line 423
    add-int/lit8 v4, v0, 0x2

    array-length v5, p0

    if-le v4, v5, :cond_12

    move v0, v2

    .line 424
    goto/16 :goto_0

    .line 425
    :cond_12
    invoke-static {p0, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v4

    .line 426
    add-int/lit8 v0, v0, 0x2

    .line 427
    add-int v5, v0, v4

    array-length v6, p0

    if-le v5, v6, :cond_13

    move v0, v2

    .line 428
    goto/16 :goto_0

    .line 429
    :cond_13
    new-array v2, v4, [B

    iput-object v2, p1, Loicq/wlogin_sdk/a/j;->f:[B

    .line 430
    iget-object v2, p1, Loicq/wlogin_sdk/a/j;->f:[B

    invoke-static {p0, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 431
    add-int/2addr v0, v4

    move v0, v1

    .line 433
    goto/16 :goto_0

    .line 397
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method public static d([BLoicq/wlogin_sdk/a/j;)I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v1, -0x3f1

    .line 438
    .line 442
    invoke-static {p0}, Loicq/wlogin_sdk/a/c;->b([B)[I

    move-result-object v2

    .line 443
    aget v0, v2, v6

    .line 444
    aget v2, v2, v7

    .line 446
    if-ne v0, v1, :cond_1

    .line 484
    :cond_0
    :goto_0
    return v0

    .line 449
    :cond_1
    add-int/lit8 v3, v2, 0x1

    array-length v4, p0

    if-le v3, v4, :cond_2

    move v0, v1

    .line 450
    goto :goto_0

    .line 451
    :cond_2
    invoke-static {p0, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v3

    iput v3, p1, Loicq/wlogin_sdk/a/j;->d:I

    .line 452
    add-int/lit8 v2, v2, 0x1

    .line 454
    add-int/lit8 v3, v2, 0x2

    array-length v4, p0

    if-le v3, v4, :cond_3

    move v0, v1

    .line 455
    goto :goto_0

    .line 456
    :cond_3
    invoke-static {p0, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v3

    .line 457
    add-int/lit8 v2, v2, 0x2

    .line 458
    add-int v4, v2, v3

    array-length v5, p0

    if-le v4, v5, :cond_4

    move v0, v1

    .line 459
    goto :goto_0

    .line 460
    :cond_4
    new-array v4, v3, [B

    iput-object v4, p1, Loicq/wlogin_sdk/a/j;->f:[B

    .line 461
    iget-object v4, p1, Loicq/wlogin_sdk/a/j;->f:[B

    invoke-static {p0, v2, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 462
    add-int/2addr v2, v3

    .line 464
    add-int/lit8 v3, v2, 0x2

    array-length v4, p0

    if-gt v3, v4, :cond_0

    .line 465
    invoke-static {p0, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v3

    .line 466
    add-int/lit8 v2, v2, 0x2

    .line 467
    add-int v4, v2, v3

    array-length v5, p0

    if-le v4, v5, :cond_5

    move v0, v1

    .line 468
    goto :goto_0

    .line 470
    :cond_5
    if-lez v3, :cond_0

    .line 471
    add-int/lit8 v1, v3, 0x2

    new-array v1, v1, [B

    .line 472
    invoke-static {p0, v2, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 473
    add-int/2addr v2, v3

    .line 475
    const/16 v2, 0x28

    aput-byte v2, v1, v6

    .line 476
    add-int/lit8 v2, v3, 0x1

    const/16 v3, 0x29

    aput-byte v3, v1, v2

    .line 477
    iget-object v2, p1, Loicq/wlogin_sdk/a/j;->f:[B

    .line 478
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 479
    const-string/jumbo v2, "\u3002"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "\u3002"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 480
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, p1, Loicq/wlogin_sdk/a/j;->f:[B

    goto/16 :goto_0
.end method

.method public static e([BLoicq/wlogin_sdk/a/j;)I
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/16 v1, -0x3f1

    const/4 v2, 0x0

    .line 491
    invoke-static {p0}, Loicq/wlogin_sdk/a/c;->b([B)[I

    move-result-object v3

    .line 492
    aget v0, v3, v2

    .line 493
    aget v3, v3, v4

    .line 495
    if-ne v0, v1, :cond_0

    .line 542
    :goto_0
    return v0

    .line 499
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    array-length v4, p0

    sub-int/2addr v4, v3

    invoke-direct {v0, p0, v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 500
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 502
    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    .line 503
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    iput v4, p1, Loicq/wlogin_sdk/a/j;->d:I

    .line 504
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    .line 506
    if-eqz v4, :cond_2

    .line 507
    new-array v4, v4, [B

    .line 508
    invoke-virtual {v3, v4}, Ljava/io/DataInputStream;->read([B)I

    .line 510
    const/4 v5, 0x0

    array-length v6, v4

    iget-object v7, p1, Loicq/wlogin_sdk/a/j;->l:[B

    invoke-static {v4, v5, v6, v7}, Loicq/wlogin_sdk/tools/cryptor;->decrypt([BII[B)[B

    move-result-object v4

    .line 511
    if-nez v4, :cond_1

    .line 512
    const-string v0, "no tlv in rsp"

    const-string v2, ""

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const/4 v0, -0x1

    goto :goto_0

    .line 515
    :cond_1
    const/4 v5, 0x0

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v5

    .line 516
    const/4 v6, 0x1

    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    iget-object v8, p1, Loicq/wlogin_sdk/a/j;->B:Ljava/util/Map;

    invoke-static {v5, v4, v6, v7, v8}, Loicq/wlogin_sdk/tools/c;->a(I[BIILjava/util/Map;)I

    move-result v4

    .line 517
    if-eqz v4, :cond_2

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parser tlv failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 519
    goto :goto_0

    .line 524
    :cond_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 525
    new-array v4, v4, [B

    iput-object v4, p1, Loicq/wlogin_sdk/a/j;->e:[B

    .line 526
    iget-object v4, p1, Loicq/wlogin_sdk/a/j;->e:[B

    invoke-virtual {v3, v4}, Ljava/io/DataInputStream;->read([B)I

    .line 528
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    .line 529
    if-eqz v4, :cond_3

    .line 530
    new-array v5, v4, [B

    iput-object v5, p1, Loicq/wlogin_sdk/a/j;->f:[B

    .line 531
    iget-object v5, p1, Loicq/wlogin_sdk/a/j;->f:[B

    invoke-virtual {v3, v5}, Ljava/io/DataInputStream;->read([B)I

    move-result v5

    .line 532
    if-eq v5, v4, :cond_3

    .line 533
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg len "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :catch_0
    move-exception v0

    .line 541
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse0x10Rsp failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 542
    goto/16 :goto_0

    .line 537
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 538
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v2

    .line 539
    goto/16 :goto_0
.end method

.method public static f([BLoicq/wlogin_sdk/a/j;)I
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/16 v1, -0x3f1

    const/4 v2, 0x0

    .line 550
    invoke-static {p0}, Loicq/wlogin_sdk/a/c;->b([B)[I

    move-result-object v3

    .line 551
    aget v0, v3, v2

    .line 552
    aget v3, v3, v4

    .line 554
    if-ne v0, v1, :cond_0

    .line 601
    :goto_0
    return v0

    .line 558
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    array-length v4, p0

    sub-int/2addr v4, v3

    invoke-direct {v0, p0, v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 559
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 561
    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    .line 562
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    iput v4, p1, Loicq/wlogin_sdk/a/j;->d:I

    .line 564
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    .line 565
    if-eqz v4, :cond_2

    .line 566
    new-array v4, v4, [B

    .line 567
    invoke-virtual {v3, v4}, Ljava/io/DataInputStream;->read([B)I

    .line 569
    const/4 v5, 0x0

    array-length v6, v4

    iget-object v7, p1, Loicq/wlogin_sdk/a/j;->l:[B

    invoke-static {v4, v5, v6, v7}, Loicq/wlogin_sdk/tools/cryptor;->decrypt([BII[B)[B

    move-result-object v4

    .line 570
    if-nez v4, :cond_1

    .line 571
    const-string v0, "no tlv in rsp"

    const-string v2, ""

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const/4 v0, -0x1

    goto :goto_0

    .line 575
    :cond_1
    const/4 v5, 0x0

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v5

    .line 576
    const/4 v6, 0x1

    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    iget-object v8, p1, Loicq/wlogin_sdk/a/j;->B:Ljava/util/Map;

    invoke-static {v5, v4, v6, v7, v8}, Loicq/wlogin_sdk/tools/c;->a(I[BIILjava/util/Map;)I

    move-result v4

    .line 577
    if-eqz v4, :cond_2

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parser tlv failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 579
    goto :goto_0

    .line 584
    :cond_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 585
    new-array v4, v4, [B

    iput-object v4, p1, Loicq/wlogin_sdk/a/j;->e:[B

    .line 586
    iget-object v4, p1, Loicq/wlogin_sdk/a/j;->e:[B

    invoke-virtual {v3, v4}, Ljava/io/DataInputStream;->read([B)I

    .line 588
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    .line 589
    if-eqz v4, :cond_3

    .line 590
    new-array v5, v4, [B

    iput-object v5, p1, Loicq/wlogin_sdk/a/j;->f:[B

    .line 591
    iget-object v5, p1, Loicq/wlogin_sdk/a/j;->f:[B

    invoke-virtual {v3, v5}, Ljava/io/DataInputStream;->read([B)I

    move-result v5

    .line 592
    if-eq v5, v4, :cond_3

    .line 593
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg len "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    :catch_0
    move-exception v0

    .line 600
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse0x11Rsp failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 601
    goto/16 :goto_0

    .line 596
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 597
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v2

    .line 598
    goto/16 :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Loicq/wlogin_sdk/a/c;->b:I

    return v0
.end method

.method public a([B)[B
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 44
    .line 45
    iget v0, p0, Loicq/wlogin_sdk/a/c;->a:I

    add-int/lit8 v0, v0, 0x2

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 47
    const/4 v1, 0x2

    invoke-static {v0, v4, v1}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 48
    const/4 v1, 0x1

    .line 49
    iget v2, p0, Loicq/wlogin_sdk/a/c;->a:I

    array-length v3, p1

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 51
    iget v1, p0, Loicq/wlogin_sdk/a/c;->e:I

    invoke-static {v0, v5, v1}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 52
    const/4 v1, 0x5

    .line 53
    iget v2, p0, Loicq/wlogin_sdk/a/c;->b:I

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 54
    const/4 v1, 0x7

    .line 55
    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 56
    const/16 v1, 0x8

    .line 57
    invoke-static {v0, v1, v4}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 58
    const/16 v1, 0xc

    .line 60
    array-length v2, p1

    invoke-static {p1, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    array-length v1, p1

    add-int/lit8 v1, v1, 0xc

    .line 62
    invoke-static {v0, v1, v5}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 63
    add-int/lit8 v1, v1, 0x1

    .line 65
    return-object v0
.end method

.method public a([B[B)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 607
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 608
    array-length v1, p1

    invoke-static {v0, v3, v1}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 609
    const/4 v1, 0x1

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 611
    invoke-static {p2}, Loicq/wlogin_sdk/tools/MD5;->toMD5Byte([B)[B

    move-result-object v1

    .line 612
    array-length v2, v0

    invoke-static {v0, v3, v2, v1}, Loicq/wlogin_sdk/tools/cryptor;->encrypt([BII[B)[B

    move-result-object v0

    .line 613
    return-object v0
.end method
