.class Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;
.super Ljava/util/zip/InflaterInputStream;

# interfaces
.implements Lorg/apache/commons/compress/utils/InputStreamStatistics;


# instance fields
.field private compressedCount:J

.field private uncompressedCount:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->compressedCount:J

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->uncompressedCount:J

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->compressedCount:J

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->uncompressedCount:J

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->compressedCount:J

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->uncompressedCount:J

    return-void
.end method


# virtual methods
.method protected fill()V
    .locals 4

    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->fill()V

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->compressedCount:J

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->compressedCount:J

    return-void
.end method

.method public getCompressedCount()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->compressedCount:J

    return-wide v0
.end method

.method public getUncompressedCount()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->uncompressedCount:J

    return-wide v0
.end method

.method public read()I
    .locals 5

    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->uncompressedCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->uncompressedCount:J

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2

    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result p1

    if-ltz p1, :cond_0

    iget-wide p2, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->uncompressedCount:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lorg/apache/commons/compress/archivers/zip/InflaterInputStreamWithStatistics;->uncompressedCount:J

    :cond_0
    return p1
.end method
