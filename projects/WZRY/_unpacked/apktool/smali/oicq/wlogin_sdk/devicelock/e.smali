.class public Loicq/wlogin_sdk/devicelock/e;
.super Ljava/lang/Object;
.source "DevlockTLV.java"


# instance fields
.field protected _body_len:I

.field protected _buf:[B

.field protected _head_len:I

.field protected _max:I

.field protected _pos:I

.field protected _type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/16 v0, 0x80

    iput v0, p0, Loicq/wlogin_sdk/devicelock/e;->_max:I

    .line 7
    iput v1, p0, Loicq/wlogin_sdk/devicelock/e;->_pos:I

    .line 8
    iput v1, p0, Loicq/wlogin_sdk/devicelock/e;->_type:I

    .line 9
    const/4 v0, 0x4

    iput v0, p0, Loicq/wlogin_sdk/devicelock/e;->_head_len:I

    .line 10
    iput v1, p0, Loicq/wlogin_sdk/devicelock/e;->_body_len:I

    .line 11
    iget v0, p0, Loicq/wlogin_sdk/devicelock/e;->_max:I

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/devicelock/e;->_buf:[B

    .line 33
    return-void
.end method


# virtual methods
.method public fill_body([BI)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 120
    iget v0, p0, Loicq/wlogin_sdk/devicelock/e;->_max:I

    iget v1, p0, Loicq/wlogin_sdk/devicelock/e;->_head_len:I

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_0

    .line 122
    iget v0, p0, Loicq/wlogin_sdk/devicelock/e;->_head_len:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x40

    iput v0, p0, Loicq/wlogin_sdk/devicelock/e;->_max:I

    .line 123
    iget v0, p0, Loicq/wlogin_sdk/devicelock/e;->_max:I

    new-array v0, v0, [B

    .line 124
    iget-object v1, p0, Loicq/wlogin_sdk/devicelock/e;->_buf:[B

    iget v2, p0, Loicq/wlogin_sdk/devicelock/e;->_pos:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    iput-object v0, p0, Loicq/wlogin_sdk/devicelock/e;->_buf:[B

    .line 127
    :cond_0
    iput p2, p0, Loicq/wlogin_sdk/devicelock/e;->_body_len:I

    .line 128
    iget-object v0, p0, Loicq/wlogin_sdk/devicelock/e;->_buf:[B

    iget v1, p0, Loicq/wlogin_sdk/devicelock/e;->_pos:I

    invoke-static {p1, v3, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget v0, p0, Loicq/wlogin_sdk/devicelock/e;->_pos:I

    add-int/2addr v0, p2

    iput v0, p0, Loicq/wlogin_sdk/devicelock/e;->_pos:I

    .line 131
    invoke-virtual {p0}, Loicq/wlogin_sdk/devicelock/e;->set_length()V

    .line 132
    return-void
.end method

.method public fill_head()V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Loicq/wlogin_sdk/devicelock/e;->_buf:[B

    iget v1, p0, Loicq/wlogin_sdk/devicelock/e;->_pos:I

    iget v2, p0, Loicq/wlogin_sdk/devicelock/e;->_type:I

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 109
    iget v0, p0, Loicq/wlogin_sdk/devicelock/e;->_pos:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Loicq/wlogin_sdk/devicelock/e;->_pos:I

    .line 110
    iget-object v0, p0, Loicq/wlogin_sdk/devicelock/e;->_buf:[B

    iget v1, p0, Loicq/wlogin_sdk/devicelock/e;->_pos:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 111
    iget v0, p0, Loicq/wlogin_sdk/devicelock/e;->_pos:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Loicq/wlogin_sdk/devicelock/e;->_pos:I

    .line 112
    return-void
.end method

.method public get_buf()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 42
    iget v0, p0, Loicq/wlogin_sdk/devicelock/e;->_pos:I

    new-array v0, v0, [B

    .line 43
    iget-object v1, p0, Loicq/wlogin_sdk/devicelock/e;->_buf:[B

    iget v2, p0, Loicq/wlogin_sdk/devicelock/e;->_pos:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    return-object v0
.end method

.method public get_data()[B
    .locals 5

    .prologue
    .line 49
    iget v0, p0, Loicq/wlogin_sdk/devicelock/e;->_body_len:I

    new-array v0, v0, [B

    .line 50
    iget-object v1, p0, Loicq/wlogin_sdk/devicelock/e;->_buf:[B

    iget v2, p0, Loicq/wlogin_sdk/devicelock/e;->_head_len:I

    const/4 v3, 0x0

    iget v4, p0, Loicq/wlogin_sdk/devicelock/e;->_body_len:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    return-object v0
.end method

.method public get_data_len()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Loicq/wlogin_sdk/devicelock/e;->_body_len:I

    return v0
.end method

.method public get_size()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Loicq/wlogin_sdk/devicelock/e;->_pos:I

    return v0
.end method

.method public get_type()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Loicq/wlogin_sdk/devicelock/e;->_type:I

    return v0
.end method

.method public parse()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public put_block([BI)I
    .locals 4

    .prologue
    .line 151
    array-length v0, p1

    .line 152
    iget-object v1, p0, Loicq/wlogin_sdk/devicelock/e;->_buf:[B

    invoke-static {v1, p2, v0}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 153
    add-int/lit8 v1, p2, 0x2

    .line 154
    const/4 v2, 0x0

    iget-object v3, p0, Loicq/wlogin_sdk/devicelock/e;->_buf:[B

    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    add-int/2addr v0, v1

    .line 157
    return v0
.end method

.method public put_int16(II)I
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Loicq/wlogin_sdk/devicelock/e;->_buf:[B

    invoke-static {v0, p2, p1}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 166
    add-int/lit8 v0, p2, 0x2

    .line 167
    return v0
.end method

.method public put_int32(JI)I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Loicq/wlogin_sdk/devicelock/e;->_buf:[B

    invoke-static {v0, p3, p1, p2}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    .line 171
    add-int/lit8 v0, p3, 0x4

    .line 172
    return v0
.end method

.method public put_int64(JI)I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Loicq/wlogin_sdk/devicelock/e;->_buf:[B

    invoke-static {v0, p3, p1, p2}, Loicq/wlogin_sdk/tools/util;->int64_to_buf([BIJ)V

    .line 176
    add-int/lit8 v0, p3, 0x8

    .line 177
    return v0
.end method

.method public put_int8(II)I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Loicq/wlogin_sdk/devicelock/e;->_buf:[B

    invoke-static {v0, p2, p1}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 161
    add-int/lit8 v0, p2, 0x1

    .line 162
    return v0
.end method

.method public set_buf([BI)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 61
    iget v1, p0, Loicq/wlogin_sdk/devicelock/e;->_max:I

    if-le p2, v1, :cond_0

    .line 63
    add-int/lit16 v1, p2, 0x80

    iput v1, p0, Loicq/wlogin_sdk/devicelock/e;->_max:I

    .line 64
    iget v1, p0, Loicq/wlogin_sdk/devicelock/e;->_max:I

    new-array v1, v1, [B

    iput-object v1, p0, Loicq/wlogin_sdk/devicelock/e;->_buf:[B

    .line 67
    :cond_0
    iput p2, p0, Loicq/wlogin_sdk/devicelock/e;->_pos:I

    .line 68
    iget-object v1, p0, Loicq/wlogin_sdk/devicelock/e;->_buf:[B

    invoke-static {p1, v0, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    invoke-static {p1, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v1

    iput v1, p0, Loicq/wlogin_sdk/devicelock/e;->_type:I

    .line 70
    iget v1, p0, Loicq/wlogin_sdk/devicelock/e;->_head_len:I

    sub-int v1, p2, v1

    iput v1, p0, Loicq/wlogin_sdk/devicelock/e;->_body_len:I

    .line 73
    :try_start_0
    invoke-virtual {p0}, Loicq/wlogin_sdk/devicelock/e;->parse()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return v0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    const/16 v0, -0x3f1

    goto :goto_0
.end method

.method public set_data([BI)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 82
    iget v1, p0, Loicq/wlogin_sdk/devicelock/e;->_head_len:I

    add-int/2addr v1, p2

    iget v2, p0, Loicq/wlogin_sdk/devicelock/e;->_max:I

    if-le v1, v2, :cond_0

    .line 84
    iget v1, p0, Loicq/wlogin_sdk/devicelock/e;->_head_len:I

    add-int/2addr v1, p2

    add-int/lit16 v1, v1, 0x80

    iput v1, p0, Loicq/wlogin_sdk/devicelock/e;->_max:I

    .line 85
    iget v1, p0, Loicq/wlogin_sdk/devicelock/e;->_max:I

    new-array v1, v1, [B

    .line 86
    iget-object v2, p0, Loicq/wlogin_sdk/devicelock/e;->_buf:[B

    iget v3, p0, Loicq/wlogin_sdk/devicelock/e;->_head_len:I

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    iput-object v1, p0, Loicq/wlogin_sdk/devicelock/e;->_buf:[B

    .line 90
    :cond_0
    iget v1, p0, Loicq/wlogin_sdk/devicelock/e;->_head_len:I

    add-int/2addr v1, p2

    iput v1, p0, Loicq/wlogin_sdk/devicelock/e;->_pos:I

    .line 91
    iget-object v1, p0, Loicq/wlogin_sdk/devicelock/e;->_buf:[B

    iget v2, p0, Loicq/wlogin_sdk/devicelock/e;->_head_len:I

    invoke-static {p1, v0, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    iput p2, p0, Loicq/wlogin_sdk/devicelock/e;->_body_len:I

    .line 93
    iget-object v1, p0, Loicq/wlogin_sdk/devicelock/e;->_buf:[B

    iget v2, p0, Loicq/wlogin_sdk/devicelock/e;->_type:I

    invoke-static {v1, v0, v2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 94
    iget-object v1, p0, Loicq/wlogin_sdk/devicelock/e;->_buf:[B

    const/4 v2, 0x2

    iget v3, p0, Loicq/wlogin_sdk/devicelock/e;->_body_len:I

    invoke-static {v1, v2, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 97
    :try_start_0
    invoke-virtual {p0}, Loicq/wlogin_sdk/devicelock/e;->parse()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return v0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    const/16 v0, -0x3f1

    goto :goto_0
.end method

.method public set_length()V
    .locals 4

    .prologue
    .line 115
    iget-object v0, p0, Loicq/wlogin_sdk/devicelock/e;->_buf:[B

    const/4 v1, 0x2

    iget v2, p0, Loicq/wlogin_sdk/devicelock/e;->_pos:I

    iget v3, p0, Loicq/wlogin_sdk/devicelock/e;->_head_len:I

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 116
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 141
    const-string v1, ""

    .line 142
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Loicq/wlogin_sdk/devicelock/e;->_pos:I

    if-ge v0, v2, :cond_0

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Loicq/wlogin_sdk/devicelock/e;->_buf:[B

    aget-byte v2, v2, v0

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Loicq/wlogin_sdk/devicelock/e;->_buf:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_0
    return-object v1
.end method
