.class public Lcom/tencent/mna/b/g/b;
.super Ljava/lang/Object;
.source "RouterMsg.java"


# instance fields
.field public a:I

.field public b:S

.field public c:S

.field public d:S

.field public e:Ljava/lang/String;

.field public f:[B


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static a(ISSLjava/lang/String;)Lcom/tencent/mna/b/g/b;
    .locals 3

    .prologue
    .line 25
    new-instance v1, Lcom/tencent/mna/b/g/b;

    invoke-direct {v1}, Lcom/tencent/mna/b/g/b;-><init>()V

    .line 26
    iput p0, v1, Lcom/tencent/mna/b/g/b;->a:I

    .line 27
    iput-short p1, v1, Lcom/tencent/mna/b/g/b;->b:S

    .line 28
    iput-short p2, v1, Lcom/tencent/mna/b/g/b;->c:S

    .line 29
    iput-object p3, v1, Lcom/tencent/mna/b/g/b;->e:Ljava/lang/String;

    .line 32
    iget-short v0, v1, Lcom/tencent/mna/b/g/b;->c:S

    const/16 v2, 0x3e9

    if-ne v0, v2, :cond_1

    .line 33
    sget-object v0, Lcom/tencent/mna/base/f/a;->a:[B

    .line 41
    :goto_0
    invoke-static {v0, p3}, Lcom/tencent/mna/base/f/a;->a([BLjava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mna/b/g/b;->f:[B

    .line 42
    iget-object v0, v1, Lcom/tencent/mna/b/g/b;->f:[B

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, v1, Lcom/tencent/mna/b/g/b;->f:[B

    array-length v0, v0

    int-to-short v0, v0

    iput-short v0, v1, Lcom/tencent/mna/b/g/b;->d:S

    :cond_0
    move-object v0, v1

    .line 45
    :goto_1
    return-object v0

    .line 36
    :cond_1
    :try_start_0
    sget-object v0, Lcom/tencent/mna/b/g/d;->b:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a([B)Lcom/tencent/mna/b/g/b;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 51
    array-length v1, p0

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 82
    :goto_0
    return-object v0

    .line 56
    :cond_0
    :try_start_0
    new-instance v1, Lcom/tencent/mna/b/g/b;

    invoke-direct {v1}, Lcom/tencent/mna/b/g/b;-><init>()V

    .line 57
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 58
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v1, Lcom/tencent/mna/b/g/b;->a:I

    .line 59
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    iput-short v3, v1, Lcom/tencent/mna/b/g/b;->b:S

    .line 60
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    iput-short v3, v1, Lcom/tencent/mna/b/g/b;->c:S

    .line 61
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    iput-short v3, v1, Lcom/tencent/mna/b/g/b;->d:S

    .line 62
    iget-short v3, v1, Lcom/tencent/mna/b/g/b;->d:S

    new-array v3, v3, [B

    .line 63
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 64
    iput-object v3, v1, Lcom/tencent/mna/b/g/b;->f:[B

    .line 67
    iget-short v2, v1, Lcom/tencent/mna/b/g/b;->c:S

    const/16 v3, 0x3ea

    if-ne v2, v3, :cond_1

    .line 68
    sget-object v2, Lcom/tencent/mna/base/f/a;->a:[B

    .line 76
    :goto_1
    new-instance v3, Ljava/lang/String;

    iget-object v4, v1, Lcom/tencent/mna/b/g/b;->f:[B

    invoke-static {v2, v4}, Lcom/tencent/mna/base/f/a;->a([B[B)[B

    move-result-object v2

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v3, v1, Lcom/tencent/mna/b/g/b;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 77
    goto :goto_0

    .line 71
    :cond_1
    :try_start_1
    sget-object v2, Lcom/tencent/mna/b/g/d;->b:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_1

    .line 78
    :catch_0
    move-exception v1

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convert bytearray to RouterMsg failed, exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a()[B
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/tencent/mna/b/g/b;->b()I

    move-result v0

    new-array v0, v0, [B

    .line 87
    invoke-virtual {p0, v0}, Lcom/tencent/mna/b/g/b;->b([B)V

    .line 88
    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 106
    iget-short v0, p0, Lcom/tencent/mna/b/g/b;->d:S

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public b([B)V
    .locals 4

    .prologue
    .line 92
    array-length v0, p1

    invoke-virtual {p0}, Lcom/tencent/mna/b/g/b;->b()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 96
    iget v1, p0, Lcom/tencent/mna/b/g/b;->a:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 97
    iget-short v1, p0, Lcom/tencent/mna/b/g/b;->b:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 98
    iget-short v1, p0, Lcom/tencent/mna/b/g/b;->c:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 99
    iget-short v1, p0, Lcom/tencent/mna/b/g/b;->d:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 101
    iget-object v1, p0, Lcom/tencent/mna/b/g/b;->f:[B

    const/4 v2, 0x0

    iget-short v3, p0, Lcom/tencent/mna/b/g/b;->d:S

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bussId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/g/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/tencent/mna/b/g/b;->b:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/tencent/mna/b/g/b;->c:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contentLen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/tencent/mna/b/g/b;->d:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", json:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/b/g/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
