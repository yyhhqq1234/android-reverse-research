.class public Lcom/bytedance/retrofit2/RequestBuilder$MimeOverridingTypedOutput;
.super Lcom/bytedance/retrofit2/mime/AbsTypedOutput;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/retrofit2/RequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MimeOverridingTypedOutput"
.end annotation


# instance fields
.field private final delegate:Lcom/bytedance/retrofit2/mime/TypedOutput;

.field private final mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/retrofit2/mime/TypedOutput;Ljava/lang/String;)V
    .locals 0

    .line 433
    invoke-direct {p0}, Lcom/bytedance/retrofit2/mime/AbsTypedOutput;-><init>()V

    .line 434
    iput-object p1, p0, Lcom/bytedance/retrofit2/RequestBuilder$MimeOverridingTypedOutput;->delegate:Lcom/bytedance/retrofit2/mime/TypedOutput;

    .line 435
    iput-object p2, p0, Lcom/bytedance/retrofit2/RequestBuilder$MimeOverridingTypedOutput;->mimeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fileName()Ljava/lang/String;
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/bytedance/retrofit2/RequestBuilder$MimeOverridingTypedOutput;->delegate:Lcom/bytedance/retrofit2/mime/TypedOutput;

    invoke-interface {v0}, Lcom/bytedance/retrofit2/mime/TypedOutput;->fileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public interceptRequestBody()Z
    .locals 2

    .line 465
    iget-object v0, p0, Lcom/bytedance/retrofit2/RequestBuilder$MimeOverridingTypedOutput;->delegate:Lcom/bytedance/retrofit2/mime/TypedOutput;

    instance-of v1, v0, Lcom/bytedance/retrofit2/mime/AbsTypedOutput;

    if-eqz v1, :cond_0

    .line 466
    check-cast v0, Lcom/bytedance/retrofit2/mime/AbsTypedOutput;

    .line 467
    invoke-virtual {v0}, Lcom/bytedance/retrofit2/mime/AbsTypedOutput;->interceptRequestBody()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public length()J
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/bytedance/retrofit2/RequestBuilder$MimeOverridingTypedOutput;->delegate:Lcom/bytedance/retrofit2/mime/TypedOutput;

    invoke-interface {v0}, Lcom/bytedance/retrofit2/mime/TypedOutput;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public md5Stub()Ljava/lang/String;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/bytedance/retrofit2/RequestBuilder$MimeOverridingTypedOutput;->delegate:Lcom/bytedance/retrofit2/mime/TypedOutput;

    invoke-interface {v0}, Lcom/bytedance/retrofit2/mime/TypedOutput;->md5Stub()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mimeType()Ljava/lang/String;
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/bytedance/retrofit2/RequestBuilder$MimeOverridingTypedOutput;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/bytedance/retrofit2/RequestBuilder$MimeOverridingTypedOutput;->delegate:Lcom/bytedance/retrofit2/mime/TypedOutput;

    invoke-interface {v0, p1}, Lcom/bytedance/retrofit2/mime/TypedOutput;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
