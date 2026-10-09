.class public final Lcom/bytedance/retrofit2/BuiltInConverters;
.super Lcom/bytedance/retrofit2/Converter$Factory;
.source "BuiltInConverters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/retrofit2/BuiltInConverters$ToStringConverter;,
        Lcom/bytedance/retrofit2/BuiltInConverters$BufferingResponseBodyConverter;,
        Lcom/bytedance/retrofit2/BuiltInConverters$StreamingResponseBodyConverter;,
        Lcom/bytedance/retrofit2/BuiltInConverters$RequestBodyConverter;,
        Lcom/bytedance/retrofit2/BuiltInConverters$StringResponseBodyConverter;,
        Lcom/bytedance/retrofit2/BuiltInConverters$VoidResponseBodyConverter;,
        Lcom/bytedance/retrofit2/BuiltInConverters$HeaderConverter;,
        Lcom/bytedance/retrofit2/BuiltInConverters$StringConverter;,
        Lcom/bytedance/retrofit2/BuiltInConverters$ObjectConverter;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/bytedance/retrofit2/Converter$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public headerConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lcom/bytedance/retrofit2/Retrofit;)Lcom/bytedance/retrofit2/Converter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/bytedance/retrofit2/Retrofit;",
            ")",
            "Lcom/bytedance/retrofit2/Converter<",
            "*",
            "Lcom/bytedance/retrofit2/client/Header;",
            ">;"
        }
    .end annotation

    .line 93
    const-class p2, Lcom/bytedance/retrofit2/client/Header;

    if-ne p1, p2, :cond_0

    .line 94
    sget-object p1, Lcom/bytedance/retrofit2/BuiltInConverters$HeaderConverter;->INSTANCE:Lcom/bytedance/retrofit2/BuiltInConverters$HeaderConverter;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public objectConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lcom/bytedance/retrofit2/Retrofit;)Lcom/bytedance/retrofit2/Converter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/bytedance/retrofit2/Retrofit;",
            ")",
            "Lcom/bytedance/retrofit2/Converter<",
            "*",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 59
    const-class p2, Ljava/lang/Object;

    if-ne p1, p2, :cond_0

    .line 60
    sget-object p1, Lcom/bytedance/retrofit2/BuiltInConverters$ObjectConverter;->INSTANCE:Lcom/bytedance/retrofit2/BuiltInConverters$ObjectConverter;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lcom/bytedance/retrofit2/Retrofit;)Lcom/bytedance/retrofit2/Converter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/bytedance/retrofit2/Retrofit;",
            ")",
            "Lcom/bytedance/retrofit2/Converter<",
            "*",
            "Lcom/bytedance/retrofit2/mime/TypedOutput;",
            ">;"
        }
    .end annotation

    .line 51
    const-class p2, Lcom/bytedance/retrofit2/mime/TypedOutput;

    invoke-static {p1}, Lcom/bytedance/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    sget-object p1, Lcom/bytedance/retrofit2/BuiltInConverters$RequestBodyConverter;->INSTANCE:Lcom/bytedance/retrofit2/BuiltInConverters$RequestBodyConverter;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lcom/bytedance/retrofit2/Retrofit;)Lcom/bytedance/retrofit2/Converter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/bytedance/retrofit2/Retrofit;",
            ")",
            "Lcom/bytedance/retrofit2/Converter<",
            "Lcom/bytedance/retrofit2/mime/TypedInput;",
            "*>;"
        }
    .end annotation

    .line 33
    const-class p3, Lcom/bytedance/retrofit2/mime/TypedInput;

    if-ne p1, p3, :cond_1

    .line 34
    const-class p1, Lcom/bytedance/retrofit2/http/Streaming;

    invoke-static {p2, p1}, Lcom/bytedance/retrofit2/Utils;->isAnnotationPresent([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 35
    sget-object p1, Lcom/bytedance/retrofit2/BuiltInConverters$StreamingResponseBodyConverter;->INSTANCE:Lcom/bytedance/retrofit2/BuiltInConverters$StreamingResponseBodyConverter;

    return-object p1

    .line 37
    :cond_0
    sget-object p1, Lcom/bytedance/retrofit2/BuiltInConverters$BufferingResponseBodyConverter;->INSTANCE:Lcom/bytedance/retrofit2/BuiltInConverters$BufferingResponseBodyConverter;

    return-object p1

    .line 39
    :cond_1
    const-class p2, Ljava/lang/String;

    if-ne p1, p2, :cond_2

    .line 40
    sget-object p1, Lcom/bytedance/retrofit2/BuiltInConverters$StringResponseBodyConverter;->INSTANCE:Lcom/bytedance/retrofit2/BuiltInConverters$StringResponseBodyConverter;

    return-object p1

    .line 42
    :cond_2
    const-class p2, Ljava/lang/Void;

    if-ne p1, p2, :cond_3

    .line 43
    sget-object p1, Lcom/bytedance/retrofit2/BuiltInConverters$VoidResponseBodyConverter;->INSTANCE:Lcom/bytedance/retrofit2/BuiltInConverters$VoidResponseBodyConverter;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lcom/bytedance/retrofit2/Retrofit;)Lcom/bytedance/retrofit2/Converter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/bytedance/retrofit2/Retrofit;",
            ")",
            "Lcom/bytedance/retrofit2/Converter<",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    const-class p2, Ljava/lang/String;

    if-ne p1, p2, :cond_0

    .line 77
    sget-object p1, Lcom/bytedance/retrofit2/BuiltInConverters$StringConverter;->INSTANCE:Lcom/bytedance/retrofit2/BuiltInConverters$StringConverter;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
