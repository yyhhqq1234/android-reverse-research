.class public final Lcom/bytedance/retrofit2/ParameterHandler$ConverterRawPart;
.super Lcom/bytedance/retrofit2/ParameterHandler;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/retrofit2/ParameterHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConverterRawPart"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/retrofit2/ParameterHandler<",
        "Losdk/okhttp3/MultipartBody$Part;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/bytedance/retrofit2/ParameterHandler$ConverterRawPart;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 441
    new-instance v0, Lcom/bytedance/retrofit2/ParameterHandler$ConverterRawPart;

    invoke-direct {v0}, Lcom/bytedance/retrofit2/ParameterHandler$ConverterRawPart;-><init>()V

    sput-object v0, Lcom/bytedance/retrofit2/ParameterHandler$ConverterRawPart;->INSTANCE:Lcom/bytedance/retrofit2/ParameterHandler$ConverterRawPart;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 440
    invoke-direct {p0}, Lcom/bytedance/retrofit2/ParameterHandler;-><init>()V

    return-void
.end method


# virtual methods
.method bridge synthetic apply(Lcom/bytedance/retrofit2/RequestBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 440
    check-cast p2, Losdk/okhttp3/MultipartBody$Part;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/retrofit2/ParameterHandler$ConverterRawPart;->apply(Lcom/bytedance/retrofit2/RequestBuilder;Losdk/okhttp3/MultipartBody$Part;)V

    return-void
.end method

.method apply(Lcom/bytedance/retrofit2/RequestBuilder;Losdk/okhttp3/MultipartBody$Part;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 446
    invoke-virtual {p1, p2}, Lcom/bytedance/retrofit2/RequestBuilder;->addPart(Losdk/okhttp3/MultipartBody$Part;)V

    .line 448
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/RequestBuilder;->useRequestBody()V

    return-void
.end method
