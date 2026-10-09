.class public Lcom/bytedance/retrofit2/RequestBuilder$ContentTypeOverridingRequestBody;
.super Losdk/okhttp3/RequestBody;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/retrofit2/RequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentTypeOverridingRequestBody"
.end annotation


# instance fields
.field private final contentType:Ljava/lang/String;

.field private final delegate:Losdk/okhttp3/RequestBody;


# direct methods
.method constructor <init>(Losdk/okhttp3/RequestBody;Ljava/lang/String;)V
    .locals 0

    .line 478
    invoke-direct {p0}, Losdk/okhttp3/RequestBody;-><init>()V

    .line 479
    iput-object p1, p0, Lcom/bytedance/retrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->delegate:Losdk/okhttp3/RequestBody;

    .line 480
    iput-object p2, p0, Lcom/bytedance/retrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->contentType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 490
    iget-object v0, p0, Lcom/bytedance/retrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->delegate:Losdk/okhttp3/RequestBody;

    invoke-virtual {v0}, Losdk/okhttp3/RequestBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Losdk/okhttp3/MediaType;
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/bytedance/retrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->contentType:Ljava/lang/String;

    invoke-static {v0}, Losdk/okhttp3/MediaType;->parse(Ljava/lang/String;)Losdk/okhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Losdk/okio/BufferedSink;)V
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/bytedance/retrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->delegate:Losdk/okhttp3/RequestBody;

    invoke-virtual {v0, p1}, Losdk/okhttp3/RequestBody;->writeTo(Losdk/okio/BufferedSink;)V

    return-void
.end method
