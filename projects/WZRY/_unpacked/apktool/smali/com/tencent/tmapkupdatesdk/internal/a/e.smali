.class public Lcom/tencent/tmapkupdatesdk/internal/a/e;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field a:S

.field b:S

.field c:S

.field d:S

.field e:I

.field f:I

.field g:S

.field h:[B


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
    .line 44
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/e;->a:S

    .line 45
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/e;->b:S

    .line 46
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/e;->c:S

    .line 47
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/e;->d:S

    .line 48
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/e;->e:I

    .line 49
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/e;->f:I

    .line 50
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    iput-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/e;->g:S

    .line 51
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/e;->g:S

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/e;->h:[B

    .line 52
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/e;->h:[B

    const/4 v1, 0x0

    iget-short v2, p0, Lcom/tencent/tmapkupdatesdk/internal/a/e;->g:S

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/DataInputStream;->read([BII)I

    .line 53
    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .locals 1

    .prologue
    .line 30
    const v0, 0x504b0506

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 31
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/e;->a:S

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 32
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/e;->b:S

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 33
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/e;->c:S

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 34
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/e;->d:S

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 35
    iget v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/e;->e:I

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 36
    iget v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/e;->f:I

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 37
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/e;->g:S

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 38
    iget-short v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/e;->g:S

    if-lez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/e;->h:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 41
    :cond_0
    return-void
.end method
