.class Lcom/tencent/msdk/pf/ApkExternalInfoTool$ApkExternalInfo;
.super Ljava/lang/Object;
.source "ApkExternalInfoTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/pf/ApkExternalInfoTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApkExternalInfo"
.end annotation


# instance fields
.field otherData:[B

.field p:Ljava/util/Properties;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/pf/ApkExternalInfoTool$ApkExternalInfo;->p:Ljava/util/Properties;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/msdk/pf/ApkExternalInfoTool$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/msdk/pf/ApkExternalInfoTool$1;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/tencent/msdk/pf/ApkExternalInfoTool$ApkExternalInfo;-><init>()V

    return-void
.end method


# virtual methods
.method decode([B)V
    .locals 8
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    .line 19
    if-nez p1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 23
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Lcom/tencent/msdk/pf/ApkExternalInfoTool;->access$000()Lcom/tencent/msdk/pf/ZipShort;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/msdk/pf/ZipShort;->getBytes()[B

    move-result-object v5

    array-length v2, v5

    .line 24
    .local v2, "headLength":I
    new-array v1, v2, [B

    .line 25
    .local v1, "d":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 27
    invoke-static {}, Lcom/tencent/msdk/pf/ApkExternalInfoTool;->access$000()Lcom/tencent/msdk/pf/ZipShort;

    move-result-object v5

    new-instance v6, Lcom/tencent/msdk/pf/ZipShort;

    invoke-direct {v6, v1}, Lcom/tencent/msdk/pf/ZipShort;-><init>([B)V

    invoke-virtual {v5, v6}, Lcom/tencent/msdk/pf/ZipShort;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 28
    new-instance v5, Ljava/net/ProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unknow protocl ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 30
    :cond_2
    array-length v5, p1

    sub-int/2addr v5, v2

    if-le v5, v7, :cond_0

    .line 34
    new-array v1, v7, [B

    .line 35
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 36
    new-instance v5, Lcom/tencent/msdk/pf/ZipShort;

    invoke-direct {v5, v1}, Lcom/tencent/msdk/pf/ZipShort;-><init>([B)V

    invoke-virtual {v5}, Lcom/tencent/msdk/pf/ZipShort;->getValue()I

    move-result v4

    .line 38
    .local v4, "len":I
    array-length v5, p1

    sub-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x2

    if-lt v5, v4, :cond_0

    .line 42
    new-array v1, v4, [B

    .line 43
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 44
    iget-object v5, p0, Lcom/tencent/msdk/pf/ApkExternalInfoTool$ApkExternalInfo;->p:Ljava/util/Properties;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 46
    array-length v5, p1

    sub-int/2addr v5, v2

    sub-int/2addr v5, v4

    add-int/lit8 v3, v5, -0x2

    .line 47
    .local v3, "leftLen":I
    if-lez v3, :cond_0

    .line 48
    new-array v5, v3, [B

    iput-object v5, p0, Lcom/tencent/msdk/pf/ApkExternalInfoTool$ApkExternalInfo;->otherData:[B

    .line 49
    iget-object v5, p0, Lcom/tencent/msdk/pf/ApkExternalInfoTool$ApkExternalInfo;->otherData:[B

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApkExternalInfo [p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/msdk/pf/ApkExternalInfoTool$ApkExternalInfo;->p:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", otherData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/msdk/pf/ApkExternalInfoTool$ApkExternalInfo;->otherData:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
