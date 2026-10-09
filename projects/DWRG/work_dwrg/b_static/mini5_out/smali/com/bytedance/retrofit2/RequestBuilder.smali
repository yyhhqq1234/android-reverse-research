.class public final Lcom/bytedance/retrofit2/RequestBuilder;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/retrofit2/RequestBuilder$ContentTypeOverridingRequestBody;,
        Lcom/bytedance/retrofit2/RequestBuilder$MimeOverridingTypedOutput;
    }
.end annotation


# static fields
.field private static final HEX_DIGITS:[C

.field private static final PATH_SEGMENT_ALWAYS_ENCODE_SET:Ljava/lang/String; = " \"<>^`{}|\\?#"


# instance fields
.field private addCommonParam:Z

.field private apiUrl:Ljava/lang/String;

.field private body:Lcom/bytedance/retrofit2/mime/TypedOutput;

.field private contentTypeHeader:Ljava/lang/String;

.field private extraInfo:Ljava/lang/Object;

.field private final formBody:Lcom/bytedance/retrofit2/mime/FormUrlEncodedTypedOutput;

.field private final hasBody:Z

.field private headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/client/Header;",
            ">;"
        }
    .end annotation
.end field

.field private maxLength:I

.field private method:Ljava/lang/String;

.field private final multipartBody:Lcom/bytedance/retrofit2/mime/MultipartTypedOutput;

.field private multipartBuilder:Losdk/okhttp3/MultipartBody$Builder;

.field private priorityLevel:I

.field private queryObjectParams:Ljava/lang/String;

.field private queryParams:Ljava/lang/StringBuilder;

.field private relativeUrl:Ljava/lang/String;

.field private requestBody:Losdk/okhttp3/RequestBody;

.field private requestPriorityLevel:I

.field private responseStreaming:Z

.field private final server:Lcom/bytedance/retrofit2/Endpoint;

.field private serviceType:Ljava/lang/String;

.field private tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private useRequestBody:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 44
    fill-array-data v0, :array_0

    sput-object v0, Lcom/bytedance/retrofit2/RequestBuilder;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;Lcom/bytedance/retrofit2/Endpoint;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;IIZIZLjava/lang/Object;ZZZLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/retrofit2/Endpoint;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/client/Header;",
            ">;",
            "Ljava/lang/String;",
            "IIZIZ",
            "Ljava/lang/Object;",
            "ZZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lcom/bytedance/retrofit2/RequestBuilder;->tags:Ljava/util/Map;

    move-object v1, p1

    .line 79
    iput-object v1, v0, Lcom/bytedance/retrofit2/RequestBuilder;->method:Ljava/lang/String;

    move-object v1, p2

    .line 80
    iput-object v1, v0, Lcom/bytedance/retrofit2/RequestBuilder;->server:Lcom/bytedance/retrofit2/Endpoint;

    move-object v1, p3

    .line 81
    iput-object v1, v0, Lcom/bytedance/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    move-object v1, p5

    .line 82
    iput-object v1, v0, Lcom/bytedance/retrofit2/RequestBuilder;->contentTypeHeader:Ljava/lang/String;

    move v1, p6

    .line 83
    iput v1, v0, Lcom/bytedance/retrofit2/RequestBuilder;->priorityLevel:I

    move v1, p7

    .line 84
    iput v1, v0, Lcom/bytedance/retrofit2/RequestBuilder;->requestPriorityLevel:I

    move v1, p8

    .line 85
    iput-boolean v1, v0, Lcom/bytedance/retrofit2/RequestBuilder;->responseStreaming:Z

    move v1, p9

    .line 86
    iput v1, v0, Lcom/bytedance/retrofit2/RequestBuilder;->maxLength:I

    move v1, p10

    .line 87
    iput-boolean v1, v0, Lcom/bytedance/retrofit2/RequestBuilder;->addCommonParam:Z

    move-object v1, p11

    .line 88
    iput-object v1, v0, Lcom/bytedance/retrofit2/RequestBuilder;->extraInfo:Ljava/lang/Object;

    move v1, p12

    .line 89
    iput-boolean v1, v0, Lcom/bytedance/retrofit2/RequestBuilder;->hasBody:Z

    move-object v1, p4

    .line 90
    iput-object v1, v0, Lcom/bytedance/retrofit2/RequestBuilder;->headers:Ljava/util/List;

    move-object/from16 v1, p15

    .line 91
    iput-object v1, v0, Lcom/bytedance/retrofit2/RequestBuilder;->serviceType:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p13, :cond_0

    .line 95
    new-instance v2, Lcom/bytedance/retrofit2/mime/FormUrlEncodedTypedOutput;

    invoke-direct {v2}, Lcom/bytedance/retrofit2/mime/FormUrlEncodedTypedOutput;-><init>()V

    iput-object v2, v0, Lcom/bytedance/retrofit2/RequestBuilder;->formBody:Lcom/bytedance/retrofit2/mime/FormUrlEncodedTypedOutput;

    .line 96
    iput-object v1, v0, Lcom/bytedance/retrofit2/RequestBuilder;->multipartBody:Lcom/bytedance/retrofit2/mime/MultipartTypedOutput;

    .line 97
    iput-object v2, v0, Lcom/bytedance/retrofit2/RequestBuilder;->body:Lcom/bytedance/retrofit2/mime/TypedOutput;

    .line 98
    iput-object v1, v0, Lcom/bytedance/retrofit2/RequestBuilder;->multipartBuilder:Losdk/okhttp3/MultipartBody$Builder;

    goto :goto_0

    :cond_0
    if-eqz p14, :cond_1

    .line 101
    iput-object v1, v0, Lcom/bytedance/retrofit2/RequestBuilder;->formBody:Lcom/bytedance/retrofit2/mime/FormUrlEncodedTypedOutput;

    .line 102
    new-instance v1, Lcom/bytedance/retrofit2/mime/MultipartTypedOutput;

    invoke-direct {v1}, Lcom/bytedance/retrofit2/mime/MultipartTypedOutput;-><init>()V

    iput-object v1, v0, Lcom/bytedance/retrofit2/RequestBuilder;->multipartBody:Lcom/bytedance/retrofit2/mime/MultipartTypedOutput;

    .line 103
    iput-object v1, v0, Lcom/bytedance/retrofit2/RequestBuilder;->body:Lcom/bytedance/retrofit2/mime/TypedOutput;

    .line 105
    new-instance v1, Losdk/okhttp3/MultipartBody$Builder;

    invoke-direct {v1}, Losdk/okhttp3/MultipartBody$Builder;-><init>()V

    iput-object v1, v0, Lcom/bytedance/retrofit2/RequestBuilder;->multipartBuilder:Losdk/okhttp3/MultipartBody$Builder;

    .line 106
    sget-object v2, Losdk/okhttp3/MultipartBody;->FORM:Losdk/okhttp3/MediaType;

    invoke-virtual {v1, v2}, Losdk/okhttp3/MultipartBody$Builder;->setType(Losdk/okhttp3/MediaType;)Losdk/okhttp3/MultipartBody$Builder;

    goto :goto_0

    .line 108
    :cond_1
    iput-object v1, v0, Lcom/bytedance/retrofit2/RequestBuilder;->formBody:Lcom/bytedance/retrofit2/mime/FormUrlEncodedTypedOutput;

    .line 109
    iput-object v1, v0, Lcom/bytedance/retrofit2/RequestBuilder;->multipartBody:Lcom/bytedance/retrofit2/mime/MultipartTypedOutput;

    .line 110
    iput-object v1, v0, Lcom/bytedance/retrofit2/RequestBuilder;->multipartBuilder:Losdk/okhttp3/MultipartBody$Builder;

    :goto_0
    return-void
.end method

.method private newUrlBuilder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 2

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    .line 318
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 320
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 323
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method


# virtual methods
.method addFormField(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/bytedance/retrofit2/RequestBuilder;->formBody:Lcom/bytedance/retrofit2/mime/FormUrlEncodedTypedOutput;

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p3, p2, p3}, Lcom/bytedance/retrofit2/mime/FormUrlEncodedTypedOutput;->addField(Ljava/lang/String;ZLjava/lang/String;Z)V

    return-void
.end method

.method addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    const-string v0, "Content-Type"

    .line 124
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iput-object p2, p0, Lcom/bytedance/retrofit2/RequestBuilder;->contentTypeHeader:Ljava/lang/String;

    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/bytedance/retrofit2/RequestBuilder;->headers:Ljava/util/List;

    if-nez v0, :cond_1

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/retrofit2/RequestBuilder;->headers:Ljava/util/List;

    .line 133
    :cond_1
    new-instance v1, Lcom/bytedance/retrofit2/client/Header;

    invoke-direct {v1, p1, p2}, Lcom/bytedance/retrofit2/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 122
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Header name must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addPart(Ljava/lang/String;Lcom/bytedance/retrofit2/mime/TypedOutput;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/bytedance/retrofit2/RequestBuilder;->multipartBody:Lcom/bytedance/retrofit2/mime/MultipartTypedOutput;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/retrofit2/mime/MultipartTypedOutput;->addPart(Ljava/lang/String;Lcom/bytedance/retrofit2/mime/TypedOutput;)V

    return-void
.end method

.method public addPart(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/retrofit2/mime/TypedOutput;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/bytedance/retrofit2/RequestBuilder;->multipartBody:Lcom/bytedance/retrofit2/mime/MultipartTypedOutput;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/retrofit2/mime/MultipartTypedOutput;->addPart(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/retrofit2/mime/TypedOutput;)V

    return-void
.end method

.method addPart(Losdk/okhttp3/Headers;Losdk/okhttp3/RequestBody;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/bytedance/retrofit2/RequestBuilder;->multipartBuilder:Losdk/okhttp3/MultipartBody$Builder;

    invoke-virtual {v0, p1, p2}, Losdk/okhttp3/MultipartBody$Builder;->addPart(Losdk/okhttp3/Headers;Losdk/okhttp3/RequestBody;)Losdk/okhttp3/MultipartBody$Builder;

    return-void
.end method

.method addPart(Losdk/okhttp3/MultipartBody$Part;)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/bytedance/retrofit2/RequestBuilder;->multipartBuilder:Losdk/okhttp3/MultipartBody$Builder;

    invoke-virtual {v0, p1}, Losdk/okhttp3/MultipartBody$Builder;->addPart(Losdk/okhttp3/MultipartBody$Part;)Losdk/okhttp3/MultipartBody$Builder;

    return-void
.end method

.method addPathParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 145
    iget-object v0, p0, Lcom/bytedance/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    const-string/jumbo v1, "}"

    const-string/jumbo v2, "{"

    if-eqz p3, :cond_0

    .line 157
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "UTF-8"

    invoke-static {p3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "+"

    const-string v3, "%20"

    .line 161
    invoke-virtual {p3, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 162
    iget-object v0, p0, Lcom/bytedance/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/bytedance/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p3

    goto :goto_1

    .line 164
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/bytedance/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    .line 167
    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to convert path parameter \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" value to UTF-8:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 153
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Path replacement \""

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" value must not be null."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 150
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Path replacement name must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 147
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method addQueryParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    if-eqz p1, :cond_6

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/retrofit2/RequestBuilder;->queryParams:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/bytedance/retrofit2/RequestBuilder;->queryParams:Ljava/lang/StringBuilder;

    .line 181
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/16 v1, 0x26

    goto :goto_0

    :cond_1
    const/16 v1, 0x3f

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "UTF-8"

    if-eqz p3, :cond_2

    .line 184
    :try_start_1
    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    if-eqz p3, :cond_3

    .line 187
    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_3
    if-eqz p2, :cond_5

    .line 192
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    .line 195
    :cond_4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x3d

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 193
    :cond_5
    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception p3

    .line 198
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to convert query parameter \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" value to UTF-8: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 173
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Query param name must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addTag(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "-TT;>;TT;)V"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/bytedance/retrofit2/RequestBuilder;->tags:Ljava/util/Map;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method build(Lcom/bytedance/retrofit2/ExpandCallback;)Lcom/bytedance/retrofit2/client/Request;
    .locals 14

    .line 328
    iget-object v0, p0, Lcom/bytedance/retrofit2/RequestBuilder;->multipartBody:Lcom/bytedance/retrofit2/mime/MultipartTypedOutput;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/retrofit2/mime/MultipartTypedOutput;->getPartCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/retrofit2/RequestBuilder;->useRequestBody:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 329
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Multipart requests must contain at least one part."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 332
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/retrofit2/RequestBuilder;->server:Lcom/bytedance/retrofit2/Endpoint;

    invoke-interface {v0}, Lcom/bytedance/retrofit2/Endpoint;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-static {}, Lcom/bytedance/retrofit2/Platform;->squareRetrofitExists()Z

    move-result v1

    const-string v2, "/"

    if-eqz v1, :cond_5

    .line 335
    invoke-static {v0}, Losdk/okhttp3/HttpUrl;->parse(Ljava/lang/String;)Losdk/okhttp3/HttpUrl;

    move-result-object v1

    const-string v3, ", Relative: "

    const-string v4, "Malformed URL. Base: "

    if-eqz v1, :cond_4

    .line 339
    invoke-virtual {v1}, Losdk/okhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Losdk/okhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/bytedance/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 340
    iget-object v1, p0, Lcom/bytedance/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/bytedance/retrofit2/RequestBuilder;->newUrlBuilder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto/16 :goto_1

    .line 342
    :cond_2
    iget-object v0, p0, Lcom/bytedance/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Losdk/okhttp3/HttpUrl;->resolve(Ljava/lang/String;)Losdk/okhttp3/HttpUrl;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Losdk/okhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_1

    .line 344
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 337
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 352
    :cond_5
    :try_start_0
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 353
    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_6

    iget-object v3, p0, Lcom/bytedance/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 354
    iget-object v1, p0, Lcom/bytedance/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/bytedance/retrofit2/RequestBuilder;->newUrlBuilder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_1

    .line 356
    :cond_6
    iget-object v2, p0, Lcom/bytedance/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    goto :goto_1

    :catchall_0
    nop

    .line 360
    iget-object v1, p0, Lcom/bytedance/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    if-eqz v1, :cond_8

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/bytedance/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 361
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 363
    :cond_8
    iget-object v1, p0, Lcom/bytedance/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/bytedance/retrofit2/RequestBuilder;->newUrlBuilder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 368
    :goto_1
    iget-object v1, p0, Lcom/bytedance/retrofit2/RequestBuilder;->queryParams:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 370
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x3f

    if-ne v4, v3, :cond_9

    iget-object v3, p0, Lcom/bytedance/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    if-eqz v3, :cond_9

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_9

    const/16 v3, 0x26

    .line 371
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 373
    :cond_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 376
    :cond_a
    iget-object v1, p0, Lcom/bytedance/retrofit2/RequestBuilder;->queryObjectParams:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 378
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/retrofit2/RequestBuilder;->apiUrl:Ljava/lang/String;

    .line 383
    instance-of v0, p1, Lcom/bytedance/retrofit2/ExpandCallback;

    if-eqz v0, :cond_c

    .line 384
    invoke-interface {p1, p0}, Lcom/bytedance/retrofit2/ExpandCallback;->onAsyncPreRequest(Lcom/bytedance/retrofit2/RequestBuilder;)V

    .line 386
    :cond_c
    iget-object p1, p0, Lcom/bytedance/retrofit2/RequestBuilder;->body:Lcom/bytedance/retrofit2/mime/TypedOutput;

    .line 387
    iget-object v0, p0, Lcom/bytedance/retrofit2/RequestBuilder;->headers:Ljava/util/List;

    .line 388
    iget-object v1, p0, Lcom/bytedance/retrofit2/RequestBuilder;->requestBody:Losdk/okhttp3/RequestBody;

    .line 389
    iget-boolean v3, p0, Lcom/bytedance/retrofit2/RequestBuilder;->useRequestBody:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_10

    if-nez v1, :cond_e

    .line 391
    iget-object v3, p0, Lcom/bytedance/retrofit2/RequestBuilder;->multipartBuilder:Losdk/okhttp3/MultipartBody$Builder;

    if-eqz v3, :cond_d

    .line 392
    invoke-virtual {v3}, Losdk/okhttp3/MultipartBody$Builder;->build()Losdk/okhttp3/MultipartBody;

    move-result-object v1

    goto :goto_2

    .line 393
    :cond_d
    iget-boolean v3, p0, Lcom/bytedance/retrofit2/RequestBuilder;->hasBody:Z

    if-eqz v3, :cond_e

    new-array v1, v2, [B

    .line 395
    invoke-static {v4, v1}, Losdk/okhttp3/RequestBody;->create(Losdk/okhttp3/MediaType;[B)Losdk/okhttp3/RequestBody;

    move-result-object v1

    :cond_e
    :goto_2
    if-eqz v1, :cond_f

    .line 398
    iget-object v2, p0, Lcom/bytedance/retrofit2/RequestBuilder;->contentTypeHeader:Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 399
    new-instance v4, Lcom/bytedance/retrofit2/RequestBuilder$ContentTypeOverridingRequestBody;

    invoke-direct {v4, v1, v2}, Lcom/bytedance/retrofit2/RequestBuilder$ContentTypeOverridingRequestBody;-><init>(Losdk/okhttp3/RequestBody;Ljava/lang/String;)V

    goto :goto_3

    :cond_f
    move-object v3, v0

    move-object v5, v1

    goto :goto_5

    .line 403
    :cond_10
    iget-object v1, p0, Lcom/bytedance/retrofit2/RequestBuilder;->contentTypeHeader:Ljava/lang/String;

    if-eqz v1, :cond_13

    if-eqz p1, :cond_11

    .line 405
    new-instance v2, Lcom/bytedance/retrofit2/RequestBuilder$MimeOverridingTypedOutput;

    invoke-direct {v2, p1, v1}, Lcom/bytedance/retrofit2/RequestBuilder$MimeOverridingTypedOutput;-><init>(Lcom/bytedance/retrofit2/mime/TypedOutput;Ljava/lang/String;)V

    move-object v3, v0

    move-object p1, v2

    goto :goto_4

    .line 407
    :cond_11
    new-instance v2, Lcom/bytedance/retrofit2/client/Header;

    const-string v3, "Content-Type"

    invoke-direct {v2, v3, v1}, Lcom/bytedance/retrofit2/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_12

    .line 409
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_3

    .line 411
    :cond_12
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    :goto_3
    move-object v3, v0

    :goto_4
    move-object v5, v4

    :goto_5
    if-nez p1, :cond_14

    .line 418
    iget-object v0, p0, Lcom/bytedance/retrofit2/RequestBuilder;->method:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/retrofit2/Utils;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/bytedance/retrofit2/RequestBuilder;->useRequestBody:Z

    if-nez v0, :cond_14

    .line 420
    new-instance p1, Lcom/bytedance/retrofit2/mime/FormUrlEncodedTypedOutput;

    invoke-direct {p1}, Lcom/bytedance/retrofit2/mime/FormUrlEncodedTypedOutput;-><init>()V

    const-string v0, "body"

    const-string v1, "null"

    .line 421
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/retrofit2/mime/FormUrlEncodedTypedOutput;->addField(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    move-object v4, p1

    .line 425
    new-instance p1, Lcom/bytedance/retrofit2/client/Request;

    iget-object v1, p0, Lcom/bytedance/retrofit2/RequestBuilder;->method:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/retrofit2/RequestBuilder;->apiUrl:Ljava/lang/String;

    iget v6, p0, Lcom/bytedance/retrofit2/RequestBuilder;->priorityLevel:I

    iget v7, p0, Lcom/bytedance/retrofit2/RequestBuilder;->requestPriorityLevel:I

    iget-boolean v8, p0, Lcom/bytedance/retrofit2/RequestBuilder;->responseStreaming:Z

    iget v9, p0, Lcom/bytedance/retrofit2/RequestBuilder;->maxLength:I

    iget-boolean v10, p0, Lcom/bytedance/retrofit2/RequestBuilder;->addCommonParam:Z

    iget-object v11, p0, Lcom/bytedance/retrofit2/RequestBuilder;->extraInfo:Ljava/lang/Object;

    iget-object v12, p0, Lcom/bytedance/retrofit2/RequestBuilder;->serviceType:Ljava/lang/String;

    iget-object v13, p0, Lcom/bytedance/retrofit2/RequestBuilder;->tags:Ljava/util/Map;

    move-object v0, p1

    invoke-direct/range {v0 .. v13}, Lcom/bytedance/retrofit2/client/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/bytedance/retrofit2/mime/TypedOutput;Losdk/okhttp3/RequestBody;IIZIZLjava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    return-object p1
.end method

.method public getApiUrl()Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/bytedance/retrofit2/RequestBuilder;->apiUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Lcom/bytedance/retrofit2/mime/TypedOutput;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/bytedance/retrofit2/RequestBuilder;->body:Lcom/bytedance/retrofit2/mime/TypedOutput;

    return-object v0
.end method

.method public getExtraInfo()Ljava/lang/Object;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/bytedance/retrofit2/RequestBuilder;->extraInfo:Ljava/lang/Object;

    return-object v0
.end method

.method public getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/client/Header;",
            ">;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/bytedance/retrofit2/RequestBuilder;->headers:Ljava/util/List;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/bytedance/retrofit2/RequestBuilder;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getRelativeUrl()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/bytedance/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceType()Ljava/lang/String;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/bytedance/retrofit2/RequestBuilder;->serviceType:Ljava/lang/String;

    return-object v0
.end method

.method public isAddCommonParam()Z
    .locals 1

    .line 269
    iget-boolean v0, p0, Lcom/bytedance/retrofit2/RequestBuilder;->addCommonParam:Z

    return v0
.end method

.method public isResponseStreaming()Z
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/bytedance/retrofit2/RequestBuilder;->responseStreaming:Z

    return v0
.end method

.method public setAddCommonParam(Z)V
    .locals 0

    .line 265
    iput-boolean p1, p0, Lcom/bytedance/retrofit2/RequestBuilder;->addCommonParam:Z

    return-void
.end method

.method public setApiUrl(Ljava/lang/String;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/bytedance/retrofit2/RequestBuilder;->apiUrl:Ljava/lang/String;

    return-void
.end method

.method public setBody(Lcom/bytedance/retrofit2/mime/TypedOutput;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/bytedance/retrofit2/RequestBuilder;->body:Lcom/bytedance/retrofit2/mime/TypedOutput;

    return-void
.end method

.method setBody(Losdk/okhttp3/RequestBody;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/bytedance/retrofit2/RequestBuilder;->requestBody:Losdk/okhttp3/RequestBody;

    return-void
.end method

.method public setExtraInfo(Ljava/lang/Object;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/bytedance/retrofit2/RequestBuilder;->extraInfo:Ljava/lang/Object;

    return-void
.end method

.method public setHeaders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/client/Header;",
            ">;)V"
        }
    .end annotation

    .line 297
    iput-object p1, p0, Lcom/bytedance/retrofit2/RequestBuilder;->headers:Ljava/util/List;

    return-void
.end method

.method public setMaxLength(I)V
    .locals 0

    .line 245
    iput p1, p0, Lcom/bytedance/retrofit2/RequestBuilder;->maxLength:I

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/bytedance/retrofit2/RequestBuilder;->method:Ljava/lang/String;

    return-void
.end method

.method setMethod(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/bytedance/retrofit2/RequestBuilder;->method:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/retrofit2/RequestBuilder;->method:Ljava/lang/String;

    return-void

    .line 139
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public setPriorityLevel(I)V
    .locals 0

    .line 241
    iput p1, p0, Lcom/bytedance/retrofit2/RequestBuilder;->priorityLevel:I

    return-void
.end method

.method setQueryObjectParams(Ljava/lang/String;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/bytedance/retrofit2/RequestBuilder;->queryObjectParams:Ljava/lang/String;

    return-void
.end method

.method setRelativeUrl(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/retrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    return-void

    .line 116
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "@Url parameter is null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setResponseStreaming(Z)V
    .locals 0

    .line 253
    iput-boolean p1, p0, Lcom/bytedance/retrofit2/RequestBuilder;->responseStreaming:Z

    return-void
.end method

.method useRequestBody()V
    .locals 1

    const/4 v0, 0x1

    .line 237
    iput-boolean v0, p0, Lcom/bytedance/retrofit2/RequestBuilder;->useRequestBody:Z

    return-void
.end method
