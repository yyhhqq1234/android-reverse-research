.class public Lcom/tencent/tmapkupdatesdk/internal/a/c;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field a:S

.field b:S

.field c:S

.field d:S

.field e:S

.field f:S

.field g:I

.field h:I

.field i:I

.field j:S

.field k:S

.field l:S

.field m:S

.field n:S

.field o:S

.field p:I

.field q:I

.field r:Z

.field s:[B

.field t:[B

.field u:[B

.field v:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/DataInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->a:S

    .line 129
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->b:S

    .line 130
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->c:S

    .line 131
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->d:S

    .line 132
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->e:S

    .line 133
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->f:S

    .line 134
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->g:I

    .line 135
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->h:I

    .line 136
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->i:I

    .line 137
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->j:S

    .line 138
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->l:S

    .line 139
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->m:S

    .line 140
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->n:S

    .line 141
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->o:S

    .line 142
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->p:I

    .line 143
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->q:I

    .line 145
    iput-boolean v2, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->r:Z

    .line 146
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->j:S

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->s:[B

    .line 147
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->l:S

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->u:[B

    .line 148
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->m:S

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->v:[B

    .line 150
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->s:[B

    iget-short v1, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->j:S

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/DataInputStream;->read([BII)I

    .line 151
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->u:[B

    iget-short v1, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->l:S

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/DataInputStream;->read([BII)I

    .line 152
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->v:[B

    iget-short v1, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->m:S

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/DataInputStream;->read([BII)I

    .line 153
    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .locals 1

    .prologue
    .line 74
    const v0, 0x504b0102

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 76
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->a:S

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 78
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->b:S

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 80
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->c:S

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 82
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->d:S

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 84
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->e:S

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 86
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->f:S

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 88
    iget v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->g:I

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 90
    iget v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->h:I

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 92
    iget v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->i:I

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 94
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->j:S

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 96
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->l:S

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 98
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->m:S

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 100
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->n:S

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 102
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->o:S

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 104
    iget v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->p:I

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 106
    iget v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->q:I

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 108
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->j:S

    if-lez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->s:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 112
    :cond_0
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->l:S

    if-lez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->u:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 116
    :cond_1
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->m:S

    if-lez v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->v:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 120
    :cond_2
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 240
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->c:S

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 241
    const/4 v0, 0x1

    .line 243
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/io/DataInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 205
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->a:S

    .line 206
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->b:S

    .line 207
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->c:S

    .line 208
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->d:S

    .line 209
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->e:S

    .line 210
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->f:S

    .line 212
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->g:I

    .line 213
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->h:I

    .line 214
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->i:I

    .line 215
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->j:S

    .line 217
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->k:S

    .line 218
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->l:S

    .line 220
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->m:S

    .line 221
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->n:S

    .line 222
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->o:S

    .line 223
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->p:I

    .line 224
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->q:I

    .line 226
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->r:Z

    .line 228
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->j:S

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->s:[B

    .line 229
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->k:S

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->t:[B

    .line 230
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->l:S

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->u:[B

    .line 231
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->m:S

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->v:[B

    .line 233
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->s:[B

    iget-short v1, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->j:S

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/DataInputStream;->read([BII)I

    .line 234
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->t:[B

    iget-short v1, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->k:S

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/DataInputStream;->read([BII)I

    .line 235
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->u:[B

    iget-short v1, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->l:S

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/DataInputStream;->read([BII)I

    .line 236
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->v:[B

    iget-short v1, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->m:S

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/DataInputStream;->read([BII)I

    .line 237
    return-void
.end method
