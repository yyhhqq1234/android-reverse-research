.class public Loicq/wlogin_sdk/b/b;
.super Ljava/lang/Object;
.source "tlv_t.java"


# instance fields
.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:[B

.field h:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/16 v0, 0x80

    iput v0, p0, Loicq/wlogin_sdk/b/b;->b:I

    .line 8
    iput v1, p0, Loicq/wlogin_sdk/b/b;->c:I

    .line 9
    iput v1, p0, Loicq/wlogin_sdk/b/b;->d:I

    .line 10
    const/4 v0, 0x4

    iput v0, p0, Loicq/wlogin_sdk/b/b;->e:I

    .line 11
    iput v1, p0, Loicq/wlogin_sdk/b/b;->f:I

    .line 12
    iget v0, p0, Loicq/wlogin_sdk/b/b;->b:I

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/b/b;->g:[B

    .line 13
    iput v1, p0, Loicq/wlogin_sdk/b/b;->h:I

    .line 15
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/16 v0, 0x80

    iput v0, p0, Loicq/wlogin_sdk/b/b;->b:I

    .line 8
    iput v1, p0, Loicq/wlogin_sdk/b/b;->c:I

    .line 9
    iput v1, p0, Loicq/wlogin_sdk/b/b;->d:I

    .line 10
    const/4 v0, 0x4

    iput v0, p0, Loicq/wlogin_sdk/b/b;->e:I

    .line 11
    iput v1, p0, Loicq/wlogin_sdk/b/b;->f:I

    .line 12
    iget v0, p0, Loicq/wlogin_sdk/b/b;->b:I

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/b/b;->g:[B

    .line 13
    iput v1, p0, Loicq/wlogin_sdk/b/b;->h:I

    .line 16
    iput p1, p0, Loicq/wlogin_sdk/b/b;->h:I

    return-void
.end method


# virtual methods
.method a([BIII)I
    .locals 4

    .prologue
    .line 129
    const/4 v0, -0x1

    .line 132
    array-length v2, p1

    move v1, p2

    .line 133
    :goto_0
    if-ge v1, v2, :cond_0

    .line 134
    add-int/lit8 v3, v1, 0x2

    if-le v3, v2, :cond_1

    .line 147
    :cond_0
    :goto_1
    return v0

    .line 136
    :cond_1
    invoke-static {p1, v1}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v3

    .line 137
    if-ne v3, p4, :cond_2

    move v0, v1

    .line 139
    goto :goto_1

    .line 141
    :cond_2
    add-int/lit8 v1, v1, 0x2

    .line 142
    add-int/lit8 v3, v1, 0x2

    if-gt v3, v2, :cond_0

    .line 144
    invoke-static {p1, v1}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method public a([BII[B)I
    .locals 4

    .prologue
    .line 217
    .line 218
    iget v0, p0, Loicq/wlogin_sdk/b/b;->h:I

    invoke-virtual {p0, p1, p2, p3, v0}, Loicq/wlogin_sdk/b/b;->a([BIII)I

    move-result v0

    .line 219
    if-gez v0, :cond_0

    .line 220
    const/4 v0, -0x1

    .line 227
    :goto_0
    return v0

    .line 222
    :cond_0
    sub-int v1, v0, p2

    sub-int v1, p3, v1

    .line 225
    new-array v2, v1, [B

    .line 226
    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    invoke-virtual {p0, v2, v1, p4}, Loicq/wlogin_sdk/b/b;->a([BI[B)I

    move-result v0

    goto :goto_0
.end method

.method a([BI[B)I
    .locals 5

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 183
    iget v2, p0, Loicq/wlogin_sdk/b/b;->e:I

    if-lt v2, p2, :cond_1

    .line 211
    :cond_0
    :goto_0
    return v0

    .line 187
    :cond_1
    const/4 v2, 0x2

    invoke-static {p1, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v2

    iput v2, p0, Loicq/wlogin_sdk/b/b;->f:I

    .line 188
    iget v2, p0, Loicq/wlogin_sdk/b/b;->e:I

    iget v3, p0, Loicq/wlogin_sdk/b/b;->f:I

    add-int/2addr v2, v3

    if-gt v2, p2, :cond_0

    .line 192
    iget v0, p0, Loicq/wlogin_sdk/b/b;->e:I

    iget v2, p0, Loicq/wlogin_sdk/b/b;->f:I

    invoke-static {p1, v0, v2, p3}, Loicq/wlogin_sdk/tools/cryptor;->decrypt([BII[B)[B

    move-result-object v0

    .line 193
    if-nez v0, :cond_2

    .line 194
    const/16 v0, -0x3f7

    goto :goto_0

    .line 196
    :cond_2
    iget v2, p0, Loicq/wlogin_sdk/b/b;->e:I

    array-length v3, v0

    add-int/2addr v2, v3

    iget v3, p0, Loicq/wlogin_sdk/b/b;->b:I

    if-le v2, v3, :cond_3

    .line 198
    iget v2, p0, Loicq/wlogin_sdk/b/b;->e:I

    array-length v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Loicq/wlogin_sdk/b/b;->b:I

    .line 199
    iget v2, p0, Loicq/wlogin_sdk/b/b;->b:I

    new-array v2, v2, [B

    iput-object v2, p0, Loicq/wlogin_sdk/b/b;->g:[B

    .line 201
    :cond_3
    iput v1, p0, Loicq/wlogin_sdk/b/b;->c:I

    .line 202
    iget-object v2, p0, Loicq/wlogin_sdk/b/b;->g:[B

    iget v3, p0, Loicq/wlogin_sdk/b/b;->e:I

    invoke-static {p1, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    iget v2, p0, Loicq/wlogin_sdk/b/b;->c:I

    iget v3, p0, Loicq/wlogin_sdk/b/b;->e:I

    add-int/2addr v2, v3

    iput v2, p0, Loicq/wlogin_sdk/b/b;->c:I

    .line 204
    iget-object v2, p0, Loicq/wlogin_sdk/b/b;->g:[B

    iget v3, p0, Loicq/wlogin_sdk/b/b;->c:I

    array-length v4, v0

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    iget v2, p0, Loicq/wlogin_sdk/b/b;->c:I

    array-length v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Loicq/wlogin_sdk/b/b;->c:I

    .line 206
    array-length v0, v0

    iput v0, p0, Loicq/wlogin_sdk/b/b;->f:I

    .line 207
    invoke-virtual {p0}, Loicq/wlogin_sdk/b/b;->f()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 209
    const/16 v0, -0x3ed

    goto :goto_0

    :cond_4
    move v0, v1

    .line 211
    goto :goto_0
.end method

.method public a([BII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 71
    iget v0, p0, Loicq/wlogin_sdk/b/b;->e:I

    add-int/2addr v0, p3

    iget v1, p0, Loicq/wlogin_sdk/b/b;->b:I

    if-le v0, v1, :cond_0

    .line 72
    iget v0, p0, Loicq/wlogin_sdk/b/b;->e:I

    add-int/2addr v0, p3

    add-int/lit16 v0, v0, 0x80

    iput v0, p0, Loicq/wlogin_sdk/b/b;->b:I

    .line 73
    iget v0, p0, Loicq/wlogin_sdk/b/b;->b:I

    new-array v0, v0, [B

    .line 75
    iget-object v1, p0, Loicq/wlogin_sdk/b/b;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/b/b;->e:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    iput-object v0, p0, Loicq/wlogin_sdk/b/b;->g:[B

    .line 79
    :cond_0
    iget v0, p0, Loicq/wlogin_sdk/b/b;->e:I

    add-int/2addr v0, p3

    iput v0, p0, Loicq/wlogin_sdk/b/b;->c:I

    .line 80
    iget-object v0, p0, Loicq/wlogin_sdk/b/b;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/b/b;->e:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    iput p3, p0, Loicq/wlogin_sdk/b/b;->f:I

    .line 82
    iget-object v0, p0, Loicq/wlogin_sdk/b/b;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/b/b;->h:I

    invoke-static {v0, v3, v1}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 83
    iget-object v0, p0, Loicq/wlogin_sdk/b/b;->g:[B

    const/4 v1, 0x2

    iget v2, p0, Loicq/wlogin_sdk/b/b;->f:I

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 84
    return-void
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Loicq/wlogin_sdk/b/b;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/b/b;->c:I

    invoke-static {v0, v1, p1}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 103
    iget v0, p0, Loicq/wlogin_sdk/b/b;->c:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Loicq/wlogin_sdk/b/b;->c:I

    .line 104
    iget-object v0, p0, Loicq/wlogin_sdk/b/b;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/b/b;->c:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 105
    iget v0, p0, Loicq/wlogin_sdk/b/b;->c:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Loicq/wlogin_sdk/b/b;->c:I

    .line 106
    return-void
.end method

.method public b([BI)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 54
    iget v0, p0, Loicq/wlogin_sdk/b/b;->e:I

    add-int/2addr v0, p2

    iget v1, p0, Loicq/wlogin_sdk/b/b;->b:I

    if-le v0, v1, :cond_0

    .line 56
    iget v0, p0, Loicq/wlogin_sdk/b/b;->e:I

    add-int/2addr v0, p2

    add-int/lit16 v0, v0, 0x80

    iput v0, p0, Loicq/wlogin_sdk/b/b;->b:I

    .line 57
    iget v0, p0, Loicq/wlogin_sdk/b/b;->b:I

    new-array v0, v0, [B

    .line 58
    iget-object v1, p0, Loicq/wlogin_sdk/b/b;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/b/b;->e:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iput-object v0, p0, Loicq/wlogin_sdk/b/b;->g:[B

    .line 62
    :cond_0
    iget v0, p0, Loicq/wlogin_sdk/b/b;->e:I

    add-int/2addr v0, p2

    iput v0, p0, Loicq/wlogin_sdk/b/b;->c:I

    .line 63
    iget-object v0, p0, Loicq/wlogin_sdk/b/b;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/b/b;->e:I

    invoke-static {p1, v3, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iput p2, p0, Loicq/wlogin_sdk/b/b;->f:I

    .line 65
    iget-object v0, p0, Loicq/wlogin_sdk/b/b;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/b/b;->h:I

    invoke-static {v0, v3, v1}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 66
    iget-object v0, p0, Loicq/wlogin_sdk/b/b;->g:[B

    const/4 v1, 0x2

    iget v2, p0, Loicq/wlogin_sdk/b/b;->f:I

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 67
    return-void
.end method

.method public b([BII)V
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Loicq/wlogin_sdk/b/b;->b:I

    if-le p3, v0, :cond_0

    .line 90
    add-int/lit16 v0, p3, 0x80

    iput v0, p0, Loicq/wlogin_sdk/b/b;->b:I

    .line 91
    iget v0, p0, Loicq/wlogin_sdk/b/b;->b:I

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/b/b;->g:[B

    .line 94
    :cond_0
    iput p3, p0, Loicq/wlogin_sdk/b/b;->c:I

    .line 95
    iget-object v0, p0, Loicq/wlogin_sdk/b/b;->g:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    invoke-static {p1, p2}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v0

    iput v0, p0, Loicq/wlogin_sdk/b/b;->h:I

    .line 97
    iget v0, p0, Loicq/wlogin_sdk/b/b;->e:I

    sub-int v0, p3, v0

    iput v0, p0, Loicq/wlogin_sdk/b/b;->f:I

    .line 98
    return-void
.end method

.method public b()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 20
    iget v0, p0, Loicq/wlogin_sdk/b/b;->c:I

    new-array v0, v0, [B

    .line 21
    iget-object v1, p0, Loicq/wlogin_sdk/b/b;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/b/b;->c:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    return-object v0
.end method

.method public c([BII)I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 152
    .line 153
    iget v1, p0, Loicq/wlogin_sdk/b/b;->h:I

    invoke-virtual {p0, p1, p2, p3, v1}, Loicq/wlogin_sdk/b/b;->a([BIII)I

    move-result v1

    .line 154
    if-gez v1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v0

    .line 157
    :cond_1
    sub-int v2, v1, p2

    sub-int v2, p3, v2

    .line 160
    iget v3, p0, Loicq/wlogin_sdk/b/b;->e:I

    if-ge v3, v2, :cond_0

    .line 164
    add-int/lit8 v3, v1, 0x2

    invoke-static {p1, v3}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v3

    iput v3, p0, Loicq/wlogin_sdk/b/b;->f:I

    .line 165
    iget v3, p0, Loicq/wlogin_sdk/b/b;->e:I

    iget v4, p0, Loicq/wlogin_sdk/b/b;->f:I

    add-int/2addr v3, v4

    if-gt v3, v2, :cond_0

    .line 169
    iget v0, p0, Loicq/wlogin_sdk/b/b;->e:I

    iget v2, p0, Loicq/wlogin_sdk/b/b;->f:I

    add-int/2addr v0, v2

    invoke-virtual {p0, p1, v1, v0}, Loicq/wlogin_sdk/b/b;->b([BII)V

    .line 170
    invoke-virtual {p0}, Loicq/wlogin_sdk/b/b;->f()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 172
    const/16 v0, -0x3ed

    goto :goto_0

    .line 177
    :cond_2
    iget v0, p0, Loicq/wlogin_sdk/b/b;->e:I

    add-int/2addr v0, v1

    iget v1, p0, Loicq/wlogin_sdk/b/b;->f:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public c([BI)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 114
    iget v0, p0, Loicq/wlogin_sdk/b/b;->b:I

    iget v1, p0, Loicq/wlogin_sdk/b/b;->e:I

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_0

    .line 116
    iget v0, p0, Loicq/wlogin_sdk/b/b;->e:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x40

    iput v0, p0, Loicq/wlogin_sdk/b/b;->b:I

    .line 117
    iget v0, p0, Loicq/wlogin_sdk/b/b;->b:I

    new-array v0, v0, [B

    .line 118
    iget-object v1, p0, Loicq/wlogin_sdk/b/b;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/b/b;->c:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    iput-object v0, p0, Loicq/wlogin_sdk/b/b;->g:[B

    .line 121
    :cond_0
    iput p2, p0, Loicq/wlogin_sdk/b/b;->f:I

    .line 122
    iget-object v0, p0, Loicq/wlogin_sdk/b/b;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/b/b;->c:I

    invoke-static {p1, v3, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    iget v0, p0, Loicq/wlogin_sdk/b/b;->c:I

    add-int/2addr v0, p2

    iput v0, p0, Loicq/wlogin_sdk/b/b;->c:I

    .line 124
    return-void
.end method

.method public c()[B
    .locals 5

    .prologue
    .line 27
    iget v0, p0, Loicq/wlogin_sdk/b/b;->f:I

    new-array v0, v0, [B

    .line 28
    iget-object v1, p0, Loicq/wlogin_sdk/b/b;->g:[B

    iget v2, p0, Loicq/wlogin_sdk/b/b;->e:I

    const/4 v3, 0x0

    iget v4, p0, Loicq/wlogin_sdk/b/b;->f:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Loicq/wlogin_sdk/b/b;->f:I

    return v0
.end method

.method public d([BI)I
    .locals 1

    .prologue
    .line 237
    if-eqz p1, :cond_1

    .line 238
    array-length v0, p1

    if-le v0, p2, :cond_0

    .line 244
    :goto_0
    return p2

    .line 241
    :cond_0
    array-length p2, p1

    goto :goto_0

    .line 244
    :cond_1
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 4

    .prologue
    .line 109
    iget-object v0, p0, Loicq/wlogin_sdk/b/b;->g:[B

    const/4 v1, 0x2

    iget v2, p0, Loicq/wlogin_sdk/b/b;->c:I

    iget v3, p0, Loicq/wlogin_sdk/b/b;->e:I

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 110
    return-void
.end method

.method public f()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
