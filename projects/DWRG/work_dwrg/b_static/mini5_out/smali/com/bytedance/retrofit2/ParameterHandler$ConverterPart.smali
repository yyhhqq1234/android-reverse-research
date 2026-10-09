.class public final Lcom/bytedance/retrofit2/ParameterHandler$ConverterPart;
.super Lcom/bytedance/retrofit2/ParameterHandler;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/retrofit2/ParameterHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConverterPart"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/retrofit2/ParameterHandler<",
        "Losdk/okhttp3/RequestBody;",
        ">;"
    }
.end annotation


# instance fields
.field private final headers:Losdk/okhttp3/Headers;


# direct methods
.method constructor <init>(Losdk/okhttp3/Headers;)V
    .locals 0

    .line 455
    invoke-direct {p0}, Lcom/bytedance/retrofit2/ParameterHandler;-><init>()V

    .line 456
    iput-object p1, p0, Lcom/bytedance/retrofit2/ParameterHandler$ConverterPart;->headers:Losdk/okhttp3/Headers;

    return-void
.end method


# virtual methods
.method bridge synthetic apply(Lcom/bytedance/retrofit2/RequestBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 452
    check-cast p2, Losdk/okhttp3/RequestBody;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/retrofit2/ParameterHandler$ConverterPart;->apply(Lcom/bytedance/retrofit2/RequestBuilder;Losdk/okhttp3/RequestBody;)V

    return-void
.end method

.method apply(Lcom/bytedance/retrofit2/RequestBuilder;Losdk/okhttp3/RequestBody;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/bytedance/retrofit2/ParameterHandler$ConverterPart;->headers:Losdk/okhttp3/Headers;

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/retrofit2/RequestBuilder;->addPart(Losdk/okhttp3/Headers;Losdk/okhttp3/RequestBody;)V

    .line 465
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/RequestBuilder;->useRequestBody()V

    return-void
.end method
