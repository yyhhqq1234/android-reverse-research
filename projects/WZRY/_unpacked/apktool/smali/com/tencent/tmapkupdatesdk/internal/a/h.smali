.class public Lcom/tencent/tmapkupdatesdk/internal/a/h;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field a:S

.field b:S

.field c:S

.field d:S

.field e:S

.field f:I

.field g:I

.field h:I

.field i:S

.field j:S

.field k:[B

.field l:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/tencent/tmapkupdatesdk/internal/a/c;Ljava/io/DataOutputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->size()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->q:I

    .line 68
    const v0, 0x504b0304

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 69
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->b:S

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 70
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->c:S

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 71
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->d:S

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 72
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->e:S

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 73
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->f:S

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 80
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->c:S

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 81
    invoke-static {v2}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 82
    invoke-static {v2}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 83
    invoke-static {v2}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 90
    :goto_0
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->j:S

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 91
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->k:S

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 93
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->j:S

    if-lez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->s:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 97
    :cond_0
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->k:S

    if-lez v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->t:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 100
    :cond_1
    return-void

    .line 85
    :cond_2
    iget v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->g:I

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 86
    iget v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->h:I

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 87
    iget v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->i:I

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/io/DataInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/h;->a:S

    .line 104
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/h;->b:S

    .line 105
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/h;->c:S

    .line 106
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/h;->d:S

    .line 107
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/h;->e:S

    .line 108
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/h;->f:I

    .line 109
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/h;->g:I

    .line 110
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/h;->h:I

    .line 111
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/h;->i:S

    .line 112
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/h;->j:S

    .line 113
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/h;->i:S

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/h;->k:[B

    .line 114
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/h;->j:S

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/h;->l:[B

    .line 115
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/h;->k:[B

    iget-short v1, p0, Lcom/tencent/tmapkupdatesdk/internal/a/h;->i:S

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/DataInputStream;->read([BII)I

    .line 116
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/h;->l:[B

    iget-short v1, p0, Lcom/tencent/tmapkupdatesdk/internal/a/h;->j:S

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/DataInputStream;->read([BII)I

    .line 117
    return-void
.end method
