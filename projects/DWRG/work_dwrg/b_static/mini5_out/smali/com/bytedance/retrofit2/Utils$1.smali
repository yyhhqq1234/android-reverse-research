.class public final Lcom/bytedance/retrofit2/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lcom/bytedance/retrofit2/mime/TypedOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/retrofit2/Utils;->convert(Losdk/okhttp3/RequestBody;)Lcom/bytedance/retrofit2/mime/TypedOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$requestBody:Losdk/okhttp3/RequestBody;


# direct methods
.method constructor <init>(Losdk/okhttp3/RequestBody;)V
    .locals 0

    .line 560
    iput-object p1, p0, Lcom/bytedance/retrofit2/Utils$1;->val$requestBody:Losdk/okhttp3/RequestBody;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fileName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public length()J
    .locals 2

    .line 577
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/retrofit2/Utils$1;->val$requestBody:Losdk/okhttp3/RequestBody;

    invoke-virtual {v0}, Losdk/okhttp3/RequestBody;->contentLength()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 579
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public md5Stub()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public mimeType()Ljava/lang/String;
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/bytedance/retrofit2/Utils$1;->val$requestBody:Losdk/okhttp3/RequestBody;

    invoke-virtual {v0}, Losdk/okhttp3/RequestBody;->contentType()Losdk/okhttp3/MediaType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/bytedance/retrofit2/Utils$1;->val$requestBody:Losdk/okhttp3/RequestBody;

    invoke-virtual {v0}, Losdk/okhttp3/RequestBody;->contentType()Losdk/okhttp3/MediaType;

    move-result-object v0

    invoke-virtual {v0}, Losdk/okhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1

    .line 586
    invoke-static {p1}, Losdk/okio/Okio;->sink(Ljava/io/OutputStream;)Losdk/okio/Sink;

    move-result-object p1

    invoke-static {p1}, Losdk/okio/Okio;->buffer(Losdk/okio/Sink;)Losdk/okio/BufferedSink;

    move-result-object p1

    .line 587
    iget-object v0, p0, Lcom/bytedance/retrofit2/Utils$1;->val$requestBody:Losdk/okhttp3/RequestBody;

    invoke-virtual {v0, p1}, Losdk/okhttp3/RequestBody;->writeTo(Losdk/okio/BufferedSink;)V

    .line 588
    invoke-interface {p1}, Losdk/okio/BufferedSink;->flush()V

    .line 589
    invoke-interface {p1}, Losdk/okio/BufferedSink;->close()V

    return-void
.end method
