.class public final Lcom/bytedance/retrofit2/ServiceMethod$Builder;
.super Ljava/lang/Object;
.source "ServiceMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/retrofit2/ServiceMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field addCommonParam:Z

.field callAdapter:Lcom/bytedance/retrofit2/CallAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/retrofit2/CallAdapter<",
            "*>;"
        }
    .end annotation
.end field

.field contentTypeHeader:Ljava/lang/String;

.field extraInfo:Ljava/lang/Object;

.field gotBody:Z

.field gotField:Z

.field gotMethod:Z

.field gotPart:Z

.field gotPath:Z

.field gotQuery:Z

.field gotUrl:Z

.field hasBody:Z

.field headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/client/Header;",
            ">;"
        }
    .end annotation
.end field

.field httpMethod:Ljava/lang/String;

.field isCustomMethod:Z

.field isFormEncoded:Z

.field isMultipart:Z

.field isResponseStreaming:Z

.field maxLength:I

.field final method:Ljava/lang/reflect/Method;

.field final methodAnnotations:[Ljava/lang/annotation/Annotation;

.field methodParamName:Ljava/lang/String;

.field final parameterAnnotationsArray:[[Ljava/lang/annotation/Annotation;

.field parameterHandlers:[Lcom/bytedance/retrofit2/ParameterHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/bytedance/retrofit2/ParameterHandler<",
            "*>;"
        }
    .end annotation
.end field

.field final parameterTypes:[Ljava/lang/reflect/Type;

.field priorityLevel:I

.field relativeUrl:Ljava/lang/String;

.field relativeUrlParamNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field requestPriorityLevel:I

.field responseConverter:Lcom/bytedance/retrofit2/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/retrofit2/Converter<",
            "Lcom/bytedance/retrofit2/mime/TypedInput;",
            "TT;>;"
        }
    .end annotation
.end field

.field responseType:Ljava/lang/reflect/Type;

.field final retrofit:Lcom/bytedance/retrofit2/Retrofit;

.field serviceType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/retrofit2/Retrofit;Ljava/lang/reflect/Method;)V
    .locals 3

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 197
    iput v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->priorityLevel:I

    const-string v1, ""

    .line 198
    iput-object v1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->serviceType:Ljava/lang/String;

    const/4 v1, 0x0

    .line 199
    iput-boolean v1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->isResponseStreaming:Z

    const/4 v2, -0x1

    .line 200
    iput v2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->maxLength:I

    .line 201
    iput-boolean v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->addCommonParam:Z

    .line 202
    iput-boolean v1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->isCustomMethod:Z

    const/4 v0, 0x0

    .line 203
    iput-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->extraInfo:Ljava/lang/Object;

    const/4 v0, 0x3

    .line 204
    iput v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->requestPriorityLevel:I

    .line 228
    iput-object p1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    .line 229
    iput-object p2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    .line 230
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    .line 231
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterTypes:[Ljava/lang/reflect/Type;

    .line 232
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterAnnotationsArray:[[Ljava/lang/annotation/Annotation;

    return-void
.end method

.method private bodyAdapt(Ljava/lang/reflect/Type;)Lcom/bytedance/retrofit2/ParameterHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/bytedance/retrofit2/ParameterHandler<",
            "*>;"
        }
    .end annotation

    .line 1181
    const-class v0, Losdk/okhttp3/RequestBody;

    invoke-static {p1}, Lcom/bytedance/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1182
    sget-object p1, Lcom/bytedance/retrofit2/ParameterHandler$ConverterBody;->INSTANCE:Lcom/bytedance/retrofit2/ParameterHandler$ConverterBody;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private createCallAdapter()Lcom/bytedance/retrofit2/CallAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/retrofit2/CallAdapter<",
            "*>;"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 301
    invoke-static {v0}, Lcom/bytedance/retrofit2/Utils;->hasUnresolvableType(Ljava/lang/reflect/Type;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 304
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 309
    :try_start_0
    iget-object v4, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {v4, v0, v1}, Lcom/bytedance/retrofit2/Retrofit;->callAdapter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/CallAdapter;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v0, "Unable to create call adapter for %s"

    .line 311
    invoke-direct {p0, v1, v0, v2}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_0
    const-string v0, "Service methods cannot return void."

    new-array v1, v3, [Ljava/lang/Object;

    .line 305
    invoke-direct {p0, v0, v1}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1
    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "Method return type must not include a type variable or wildcard: %s"

    .line 302
    invoke-direct {p0, v0, v1}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private createResponseConverter()Lcom/bytedance/retrofit2/Converter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/retrofit2/Converter<",
            "Lcom/bytedance/retrofit2/mime/TypedInput;",
            "TT;>;"
        }
    .end annotation

    .line 1216
    iget-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 1218
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    iget-object v2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->responseType:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/retrofit2/Retrofit;->responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1220
    iget-object v3, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->responseType:Ljava/lang/reflect/Type;

    aput-object v3, v1, v2

    const-string v2, "Unable to create converter for %s"

    invoke-direct {p0, v0, v2, v1}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private generateQueryParameterHandler(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;ZLjava/lang/String;Z)Lcom/bytedance/retrofit2/ParameterHandler;
    .locals 3

    .line 1094
    invoke-static {p2}, Lcom/bytedance/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    .line 1095
    iput-boolean v1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->gotQuery:Z

    .line 1096
    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1097
    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1102
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 1103
    invoke-static {v2, p2}, Lcom/bytedance/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 1104
    iget-object p2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p1

    if-eqz p4, :cond_0

    .line 1106
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$QueryName;

    invoke-direct {p2, p1, p6}, Lcom/bytedance/retrofit2/ParameterHandler$QueryName;-><init>(Lcom/bytedance/retrofit2/Converter;Z)V

    invoke-virtual {p2}, Lcom/bytedance/retrofit2/ParameterHandler$QueryName;->iterable()Lcom/bytedance/retrofit2/ParameterHandler;

    move-result-object p1

    return-object p1

    .line 1108
    :cond_0
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$Query;

    invoke-direct {p2, p5, p1, p6}, Lcom/bytedance/retrofit2/ParameterHandler$Query;-><init>(Ljava/lang/String;Lcom/bytedance/retrofit2/Converter;Z)V

    invoke-virtual {p2}, Lcom/bytedance/retrofit2/ParameterHandler$Query;->iterable()Lcom/bytedance/retrofit2/ParameterHandler;

    move-result-object p1

    return-object p1

    .line 1098
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1099
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " must include generic type (e.g., "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1100
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "<String>)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/Object;

    .line 1098
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1110
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1111
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/retrofit2/ServiceMethod;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 1112
    iget-object p2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p1

    if-eqz p4, :cond_3

    .line 1114
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$QueryName;

    invoke-direct {p2, p1, p6}, Lcom/bytedance/retrofit2/ParameterHandler$QueryName;-><init>(Lcom/bytedance/retrofit2/Converter;Z)V

    invoke-virtual {p2}, Lcom/bytedance/retrofit2/ParameterHandler$QueryName;->array()Lcom/bytedance/retrofit2/ParameterHandler;

    move-result-object p1

    return-object p1

    .line 1116
    :cond_3
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$Query;

    invoke-direct {p2, p5, p1, p6}, Lcom/bytedance/retrofit2/ParameterHandler$Query;-><init>(Ljava/lang/String;Lcom/bytedance/retrofit2/Converter;Z)V

    invoke-virtual {p2}, Lcom/bytedance/retrofit2/ParameterHandler$Query;->array()Lcom/bytedance/retrofit2/ParameterHandler;

    move-result-object p1

    return-object p1

    .line 1119
    :cond_4
    iget-object p1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p1

    if-eqz p4, :cond_5

    .line 1121
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$QueryName;

    invoke-direct {p2, p1, p6}, Lcom/bytedance/retrofit2/ParameterHandler$QueryName;-><init>(Lcom/bytedance/retrofit2/Converter;Z)V

    return-object p2

    .line 1123
    :cond_5
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$Query;

    invoke-direct {p2, p5, p1, p6}, Lcom/bytedance/retrofit2/ParameterHandler$Query;-><init>(Ljava/lang/String;Lcom/bytedance/retrofit2/Converter;Z)V

    return-object p2
.end method

.method private getRequestBodyHeader(Ljava/lang/String;Ljava/lang/String;)Losdk/okhttp3/Headers;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Content-Disposition"

    aput-object v2, v0, v1

    .line 1188
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "form-data; name=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    const-string v1, "Content-Transfer-Encoding"

    aput-object v1, v0, p1

    const/4 p1, 0x3

    aput-object p2, v0, p1

    invoke-static {v0}, Losdk/okhttp3/Headers;->of([Ljava/lang/String;)Losdk/okhttp3/Headers;

    move-result-object p1

    return-object p1
.end method

.method private varargs methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 1

    const/4 v0, 0x0

    .line 1225
    invoke-direct {p0, v0, p1, p2}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    return-object p1
.end method

.method private varargs methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 1

    .line 1229
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1230
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n    for method "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    .line 1231
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p3
.end method

.method private varargs parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 1

    .line 1240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (parameter #"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    return-object p1
.end method

.method private varargs parameterError(Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 1

    .line 1236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " (parameter #"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p4}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    return-object p1
.end method

.method private parseHeaders([Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/retrofit2/client/Header;",
            ">;"
        }
    .end annotation

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 442
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    const/16 v5, 0x3a

    .line 443
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eq v5, v6, :cond_1

    if-eqz v5, :cond_1

    .line 444
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v7

    if-eq v5, v6, :cond_1

    .line 447
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    .line 448
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Content-Type"

    .line 449
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 450
    iput-object v4, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->contentTypeHeader:Ljava/lang/String;

    goto :goto_1

    .line 452
    :cond_0
    new-instance v5, Lcom/bytedance/retrofit2/client/Header;

    invoke-direct {v5, v6, v4}, Lcom/bytedance/retrofit2/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array p1, v7, [Ljava/lang/Object;

    aput-object v4, p1, v2

    const-string v0, "@Headers value must be in the form \"Name: Value\". Found: \"%s\""

    .line 445
    invoke-direct {p0, v0, p1}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_2
    return-object v0
.end method

.method private parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 406
    iget-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->httpMethod:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_5

    .line 409
    iput-object p1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->httpMethod:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 411
    invoke-static {p1}, Lcom/bytedance/retrofit2/ServiceMethod;->parseMethodParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->methodParamName:Ljava/lang/String;

    .line 413
    :cond_0
    iget-object p1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->methodParamName:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 414
    iput-boolean v2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->isCustomMethod:Z

    .line 416
    :cond_1
    iput-boolean p3, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->hasBody:Z

    .line 418
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const/16 p1, 0x3f

    .line 423
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 p3, -0x1

    if-eq p1, p3, :cond_4

    .line 424
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p3, v2

    if-ge p1, p3, :cond_4

    add-int/2addr p1, v2

    .line 426
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 427
    sget-object p3, Lcom/bytedance/retrofit2/ServiceMethod;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {p3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    .line 428
    invoke-virtual {p3}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query."

    .line 429
    invoke-direct {p0, p1, p2}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 435
    :cond_4
    :goto_0
    iput-object p2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->relativeUrl:Ljava/lang/String;

    .line 436
    invoke-static {p2}, Lcom/bytedance/retrofit2/ServiceMethod;->parsePathParameters(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->relativeUrlParamNames:Ljava/util/Set;

    return-void

    :cond_5
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v0, p2, v1

    aput-object p1, p2, v2

    const-string p1, "Only one HTTP method is allowed. Found: %s and %s."

    .line 407
    invoke-direct {p0, p1, p2}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private parseMethodAnnotation(Ljava/lang/annotation/Annotation;)V
    .locals 4

    .line 316
    instance-of v0, p1, Lcom/bytedance/retrofit2/http/DELETE;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 317
    check-cast p1, Lcom/bytedance/retrofit2/http/DELETE;

    invoke-interface {p1}, Lcom/bytedance/retrofit2/http/DELETE;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DELETE"

    invoke-direct {p0, v0, p1, v1}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 318
    :cond_0
    instance-of v0, p1, Lcom/bytedance/retrofit2/http/GET;

    if-eqz v0, :cond_1

    .line 319
    check-cast p1, Lcom/bytedance/retrofit2/http/GET;

    invoke-interface {p1}, Lcom/bytedance/retrofit2/http/GET;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET"

    invoke-direct {p0, v0, p1, v1}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 320
    :cond_1
    instance-of v0, p1, Lcom/bytedance/retrofit2/http/HEAD;

    if-eqz v0, :cond_3

    .line 321
    check-cast p1, Lcom/bytedance/retrofit2/http/HEAD;

    invoke-interface {p1}, Lcom/bytedance/retrofit2/http/HEAD;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HEAD"

    invoke-direct {p0, v0, p1, v1}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 322
    const-class p1, Ljava/lang/Void;

    iget-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->responseType:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const-string p1, "HEAD method must use Void as response type."

    new-array v0, v1, [Ljava/lang/Object;

    .line 323
    invoke-direct {p0, p1, v0}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 325
    :cond_3
    instance-of v0, p1, Lcom/bytedance/retrofit2/http/PATCH;

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 326
    check-cast p1, Lcom/bytedance/retrofit2/http/PATCH;

    invoke-interface {p1}, Lcom/bytedance/retrofit2/http/PATCH;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PATCH"

    invoke-direct {p0, v0, p1, v2}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 327
    :cond_4
    instance-of v0, p1, Lcom/bytedance/retrofit2/http/POST;

    if-eqz v0, :cond_5

    .line 328
    check-cast p1, Lcom/bytedance/retrofit2/http/POST;

    invoke-interface {p1}, Lcom/bytedance/retrofit2/http/POST;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "POST"

    invoke-direct {p0, v0, p1, v2}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 329
    :cond_5
    instance-of v0, p1, Lcom/bytedance/retrofit2/http/PUT;

    if-eqz v0, :cond_6

    .line 330
    check-cast p1, Lcom/bytedance/retrofit2/http/PUT;

    invoke-interface {p1}, Lcom/bytedance/retrofit2/http/PUT;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PUT"

    invoke-direct {p0, v0, p1, v2}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 331
    :cond_6
    instance-of v0, p1, Lcom/bytedance/retrofit2/http/OPTIONS;

    if-eqz v0, :cond_7

    .line 332
    check-cast p1, Lcom/bytedance/retrofit2/http/OPTIONS;

    invoke-interface {p1}, Lcom/bytedance/retrofit2/http/OPTIONS;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPTIONS"

    invoke-direct {p0, v0, p1, v1}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 333
    :cond_7
    instance-of v0, p1, Lcom/bytedance/retrofit2/http/HTTP;

    if-eqz v0, :cond_8

    .line 334
    check-cast p1, Lcom/bytedance/retrofit2/http/HTTP;

    .line 335
    invoke-interface {p1}, Lcom/bytedance/retrofit2/http/HTTP;->method()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/bytedance/retrofit2/http/HTTP;->path()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/bytedance/retrofit2/http/HTTP;->hasBody()Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 336
    :cond_8
    instance-of v0, p1, Lcom/bytedance/retrofit2/http/Headers;

    if-eqz v0, :cond_a

    .line 337
    check-cast p1, Lcom/bytedance/retrofit2/http/Headers;

    invoke-interface {p1}, Lcom/bytedance/retrofit2/http/Headers;->value()[Ljava/lang/String;

    move-result-object p1

    .line 338
    array-length v0, p1

    if-eqz v0, :cond_9

    .line 341
    invoke-direct {p0, p1}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parseHeaders([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->headers:Ljava/util/List;

    goto :goto_0

    :cond_9
    const-string p1, "@Headers annotation is empty."

    new-array v0, v1, [Ljava/lang/Object;

    .line 339
    invoke-direct {p0, p1, v0}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 342
    :cond_a
    instance-of v0, p1, Lcom/bytedance/retrofit2/http/Multipart;

    const-string v3, "Only one encoding annotation is allowed."

    if-eqz v0, :cond_c

    .line 343
    iget-boolean p1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    if-nez p1, :cond_b

    .line 346
    iput-boolean v2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->isMultipart:Z

    goto :goto_0

    :cond_b
    new-array p1, v1, [Ljava/lang/Object;

    .line 344
    invoke-direct {p0, v3, p1}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 347
    :cond_c
    instance-of v0, p1, Lcom/bytedance/retrofit2/http/FormUrlEncoded;

    if-eqz v0, :cond_e

    .line 348
    iget-boolean p1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-nez p1, :cond_d

    .line 351
    iput-boolean v2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    goto :goto_0

    :cond_d
    new-array p1, v1, [Ljava/lang/Object;

    .line 349
    invoke-direct {p0, v3, p1}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 352
    :cond_e
    instance-of v0, p1, Lcom/bytedance/retrofit2/http/Streaming;

    if-eqz v0, :cond_f

    .line 353
    iput-boolean v2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->isResponseStreaming:Z

    goto :goto_0

    .line 354
    :cond_f
    instance-of v0, p1, Lcom/bytedance/retrofit2/http/Priority;

    if-eqz v0, :cond_10

    .line 355
    check-cast p1, Lcom/bytedance/retrofit2/http/Priority;

    invoke-interface {p1}, Lcom/bytedance/retrofit2/http/Priority;->value()I

    move-result p1

    iput p1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->priorityLevel:I

    goto :goto_0

    .line 356
    :cond_10
    instance-of v0, p1, Lcom/bytedance/retrofit2/http/ServiceType;

    if-eqz v0, :cond_11

    .line 357
    check-cast p1, Lcom/bytedance/retrofit2/http/ServiceType;

    invoke-interface {p1}, Lcom/bytedance/retrofit2/http/ServiceType;->value()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->serviceType:Ljava/lang/String;

    goto :goto_0

    .line 358
    :cond_11
    instance-of v0, p1, Lcom/bytedance/retrofit2/http/RequestPriority;

    if-eqz v0, :cond_12

    .line 359
    check-cast p1, Lcom/bytedance/retrofit2/http/RequestPriority;

    invoke-interface {p1}, Lcom/bytedance/retrofit2/http/RequestPriority;->value()I

    move-result p1

    iput p1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->requestPriorityLevel:I

    :cond_12
    :goto_0
    return-void
.end method

.method private parseParameter(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/ParameterHandler;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lcom/bytedance/retrofit2/ParameterHandler<",
            "*>;"
        }
    .end annotation

    .line 460
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v4, p3, v3

    .line 462
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parseParameterAnnotation(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/ParameterHandler;

    move-result-object v5

    if-nez v5, :cond_0

    .line 465
    invoke-static {}, Lcom/bytedance/retrofit2/Platform;->squareRetrofitExists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 466
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parseSquareParameterAnnotation(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/ParameterHandler;

    move-result-object v5

    :cond_0
    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    move-object v1, v5

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string p2, "Multiple Retrofit annotations found, only one allowed."

    new-array p3, v2, [Ljava/lang/Object;

    .line 475
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_3
    if-eqz v1, :cond_4

    return-object v1

    :cond_4
    const-string p2, "No Retrofit annotation found."

    new-array p3, v2, [Ljava/lang/Object;

    .line 482
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private parseParameterAnnotation(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/ParameterHandler;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lcom/bytedance/retrofit2/ParameterHandler<",
            "*>;"
        }
    .end annotation

    .line 490
    instance-of v0, p4, Lcom/bytedance/retrofit2/http/Url;

    const-string v1, "@Path parameters may not be used with @Url."

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 491
    iget-boolean p3, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->gotUrl:Z

    if-nez p3, :cond_5

    .line 494
    iget-boolean p3, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->gotPath:Z

    if-nez p3, :cond_4

    .line 497
    iget-boolean p3, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->gotQuery:Z

    if-nez p3, :cond_3

    .line 500
    iget-object p3, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->relativeUrl:Ljava/lang/String;

    if-nez p3, :cond_2

    .line 504
    iput-boolean v2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->gotUrl:Z

    .line 506
    const-class p3, Ljava/lang/String;

    if-eq p2, p3, :cond_1

    const-class p3, Ljava/net/URI;

    if-eq p2, p3, :cond_1

    instance-of p3, p2, Ljava/lang/Class;

    if-eqz p3, :cond_0

    check-cast p2, Ljava/lang/Class;

    .line 507
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "android.net.Uri"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "@Url must be String, java.net.URI, or android.net.Uri type."

    new-array p3, v3, [Ljava/lang/Object;

    .line 510
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 508
    :cond_1
    :goto_0
    new-instance p1, Lcom/bytedance/retrofit2/ParameterHandler$RelativeUrl;

    invoke-direct {p1}, Lcom/bytedance/retrofit2/ParameterHandler$RelativeUrl;-><init>()V

    return-object p1

    :cond_2
    new-array p2, v2, [Ljava/lang/Object;

    .line 501
    iget-object p3, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->httpMethod:Ljava/lang/String;

    aput-object p3, p2, v3

    const-string p3, "@Url cannot be used with @%s URL"

    invoke-direct {p0, p1, p3, p2}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_3
    const-string p2, "A @Url parameter must not come after a @Query"

    new-array p3, v3, [Ljava/lang/Object;

    .line 498
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_4
    new-array p2, v3, [Ljava/lang/Object;

    .line 495
    invoke-direct {p0, p1, v1, p2}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_5
    const-string p2, "Multiple @Url method annotations found."

    new-array p3, v3, [Ljava/lang/Object;

    .line 492
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 512
    :cond_6
    instance-of v0, p4, Lcom/bytedance/retrofit2/http/Path;

    if-eqz v0, :cond_a

    .line 513
    iget-boolean v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->gotQuery:Z

    if-nez v0, :cond_9

    .line 516
    iget-boolean v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->gotUrl:Z

    if-nez v0, :cond_8

    .line 519
    iget-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->relativeUrl:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 522
    iput-boolean v2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->gotPath:Z

    .line 524
    check-cast p4, Lcom/bytedance/retrofit2/http/Path;

    .line 525
    invoke-interface {p4}, Lcom/bytedance/retrofit2/http/Path;->value()Ljava/lang/String;

    move-result-object v0

    .line 526
    invoke-direct {p0, p1, v0}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->validatePathName(ILjava/lang/String;)V

    .line 528
    iget-object p1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p1

    .line 529
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$Path;

    invoke-interface {p4}, Lcom/bytedance/retrofit2/http/Path;->encode()Z

    move-result p3

    invoke-direct {p2, v0, p1, p3}, Lcom/bytedance/retrofit2/ParameterHandler$Path;-><init>(Ljava/lang/String;Lcom/bytedance/retrofit2/Converter;Z)V

    return-object p2

    :cond_7
    new-array p2, v2, [Ljava/lang/Object;

    .line 520
    iget-object p3, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->httpMethod:Ljava/lang/String;

    aput-object p3, p2, v3

    const-string p3, "@Path can only be used with relative url on @%s"

    invoke-direct {p0, p1, p3, p2}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_8
    new-array p2, v3, [Ljava/lang/Object;

    .line 517
    invoke-direct {p0, p1, v1, p2}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_9
    const-string p2, "A @Path parameter must not come after a @Query."

    new-array p3, v3, [Ljava/lang/Object;

    .line 514
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 531
    :cond_a
    instance-of v0, p4, Lcom/bytedance/retrofit2/http/Query;

    if-eqz v0, :cond_b

    .line 532
    check-cast p4, Lcom/bytedance/retrofit2/http/Query;

    .line 533
    invoke-interface {p4}, Lcom/bytedance/retrofit2/http/Query;->value()Ljava/lang/String;

    move-result-object v5

    .line 534
    invoke-interface {p4}, Lcom/bytedance/retrofit2/http/Query;->encode()Z

    move-result v6

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 535
    invoke-direct/range {v0 .. v6}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->generateQueryParameterHandler(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;ZLjava/lang/String;Z)Lcom/bytedance/retrofit2/ParameterHandler;

    move-result-object p1

    return-object p1

    .line 536
    :cond_b
    instance-of v0, p4, Lcom/bytedance/retrofit2/http/QueryName;

    if-eqz v0, :cond_c

    .line 537
    check-cast p4, Lcom/bytedance/retrofit2/http/QueryName;

    .line 538
    invoke-interface {p4}, Lcom/bytedance/retrofit2/http/QueryName;->encoded()Z

    move-result v6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 539
    invoke-direct/range {v0 .. v6}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->generateQueryParameterHandler(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;ZLjava/lang/String;Z)Lcom/bytedance/retrofit2/ParameterHandler;

    move-result-object p1

    return-object p1

    .line 540
    :cond_c
    instance-of v0, p4, Lcom/bytedance/retrofit2/http/QueryMap;

    const-string v1, "Map must include generic types (e.g., Map<String, String>)"

    if-eqz v0, :cond_10

    .line 541
    invoke-static {p2}, Lcom/bytedance/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 542
    const-class v4, Ljava/util/Map;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 545
    const-class v4, Ljava/util/Map;

    invoke-static {p2, v0, v4}, Lcom/bytedance/retrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 546
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_e

    .line 549
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 550
    invoke-static {v3, p2}, Lcom/bytedance/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 551
    const-class v1, Ljava/lang/String;

    if-ne v1, v0, :cond_d

    .line 554
    invoke-static {v2, p2}, Lcom/bytedance/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 555
    iget-object p2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p1

    .line 557
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$QueryMap;

    check-cast p4, Lcom/bytedance/retrofit2/http/QueryMap;

    invoke-interface {p4}, Lcom/bytedance/retrofit2/http/QueryMap;->encode()Z

    move-result p3

    invoke-direct {p2, p1, p3}, Lcom/bytedance/retrofit2/ParameterHandler$QueryMap;-><init>(Lcom/bytedance/retrofit2/Converter;Z)V

    return-object p2

    .line 552
    :cond_d
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "@QueryMap keys must be of type String: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_e
    new-array p2, v3, [Ljava/lang/Object;

    .line 547
    invoke-direct {p0, p1, v1, p2}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_f
    const-string p2, "@QueryMap parameter type must be Map."

    new-array p3, v3, [Ljava/lang/Object;

    .line 543
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 559
    :cond_10
    instance-of v0, p4, Lcom/bytedance/retrofit2/http/Header;

    const-string v4, "<String>)"

    const-string v5, " must include generic type (e.g., "

    if-eqz v0, :cond_14

    .line 560
    check-cast p4, Lcom/bytedance/retrofit2/http/Header;

    .line 561
    invoke-interface {p4}, Lcom/bytedance/retrofit2/http/Header;->value()Ljava/lang/String;

    move-result-object p4

    .line 563
    invoke-static {p2}, Lcom/bytedance/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 564
    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 565
    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_11

    .line 570
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 571
    invoke-static {v3, p2}, Lcom/bytedance/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 572
    iget-object p2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p1

    .line 573
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$Header;

    invoke-direct {p2, p4, p1}, Lcom/bytedance/retrofit2/ParameterHandler$Header;-><init>(Ljava/lang/String;Lcom/bytedance/retrofit2/Converter;)V

    invoke-virtual {p2}, Lcom/bytedance/retrofit2/ParameterHandler$Header;->iterable()Lcom/bytedance/retrofit2/ParameterHandler;

    move-result-object p1

    return-object p1

    .line 566
    :cond_11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 567
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    .line 566
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 574
    :cond_12
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 575
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/retrofit2/ServiceMethod;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 576
    iget-object p2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p1

    .line 577
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$Header;

    invoke-direct {p2, p4, p1}, Lcom/bytedance/retrofit2/ParameterHandler$Header;-><init>(Ljava/lang/String;Lcom/bytedance/retrofit2/Converter;)V

    invoke-virtual {p2}, Lcom/bytedance/retrofit2/ParameterHandler$Header;->array()Lcom/bytedance/retrofit2/ParameterHandler;

    move-result-object p1

    return-object p1

    .line 579
    :cond_13
    iget-object p1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p1

    .line 580
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$Header;

    invoke-direct {p2, p4, p1}, Lcom/bytedance/retrofit2/ParameterHandler$Header;-><init>(Ljava/lang/String;Lcom/bytedance/retrofit2/Converter;)V

    return-object p2

    .line 583
    :cond_14
    instance-of v0, p4, Lcom/bytedance/retrofit2/http/HeaderList;

    if-eqz v0, :cond_18

    .line 584
    invoke-static {p2}, Lcom/bytedance/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p4

    .line 585
    const-class v0, Ljava/util/List;

    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 588
    const-class v0, Ljava/util/List;

    invoke-static {p2, p4, v0}, Lcom/bytedance/retrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 589
    instance-of p4, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz p4, :cond_16

    .line 592
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 593
    invoke-static {v3, p2}, Lcom/bytedance/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 594
    const-class p4, Lcom/bytedance/retrofit2/client/Header;

    if-ne p4, p2, :cond_15

    .line 597
    iget-object p1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    .line 598
    invoke-virtual {p1, p2, p3}, Lcom/bytedance/retrofit2/Retrofit;->headerConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p1

    .line 600
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$HeaderList;

    invoke-direct {p2, p1}, Lcom/bytedance/retrofit2/ParameterHandler$HeaderList;-><init>(Lcom/bytedance/retrofit2/Converter;)V

    return-object p2

    .line 595
    :cond_15
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "@HeaderList keys must be of type retrofit.client.Header: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_16
    const-string p2, "List must include generic types (e.g., List<Header>)"

    new-array p3, v3, [Ljava/lang/Object;

    .line 590
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_17
    const-string p2, "@HeaderList parameter type must be List."

    new-array p3, v3, [Ljava/lang/Object;

    .line 586
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 602
    :cond_18
    instance-of v0, p4, Lcom/bytedance/retrofit2/http/HeaderMap;

    if-eqz v0, :cond_1c

    .line 603
    invoke-static {p2}, Lcom/bytedance/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p4

    .line 604
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 607
    const-class v0, Ljava/util/Map;

    invoke-static {p2, p4, v0}, Lcom/bytedance/retrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 608
    instance-of p4, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz p4, :cond_1a

    .line 611
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 612
    invoke-static {v3, p2}, Lcom/bytedance/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p4

    .line 613
    const-class v0, Ljava/lang/String;

    if-ne v0, p4, :cond_19

    .line 616
    invoke-static {v2, p2}, Lcom/bytedance/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 617
    iget-object p2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p1

    .line 619
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$HeaderMap;

    invoke-direct {p2, p1}, Lcom/bytedance/retrofit2/ParameterHandler$HeaderMap;-><init>(Lcom/bytedance/retrofit2/Converter;)V

    return-object p2

    .line 614
    :cond_19
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "@HeaderMap keys must be of type String: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1a
    new-array p2, v3, [Ljava/lang/Object;

    .line 609
    invoke-direct {p0, p1, v1, p2}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1b
    const-string p2, "@HeaderMap parameter type must be Map."

    new-array p3, v3, [Ljava/lang/Object;

    .line 605
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 620
    :cond_1c
    instance-of v0, p4, Lcom/bytedance/retrofit2/http/Field;

    if-eqz v0, :cond_21

    .line 621
    iget-boolean v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    if-eqz v0, :cond_20

    .line 624
    check-cast p4, Lcom/bytedance/retrofit2/http/Field;

    .line 625
    invoke-interface {p4}, Lcom/bytedance/retrofit2/http/Field;->value()Ljava/lang/String;

    move-result-object v0

    .line 626
    invoke-interface {p4}, Lcom/bytedance/retrofit2/http/Field;->encode()Z

    move-result p4

    .line 628
    iput-boolean v2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->gotField:Z

    .line 630
    invoke-static {p2}, Lcom/bytedance/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 631
    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 632
    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_1d

    .line 637
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 638
    invoke-static {v3, p2}, Lcom/bytedance/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 639
    iget-object p2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p1

    .line 640
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$Field;

    invoke-direct {p2, v0, p1, p4}, Lcom/bytedance/retrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lcom/bytedance/retrofit2/Converter;Z)V

    invoke-virtual {p2}, Lcom/bytedance/retrofit2/ParameterHandler$Field;->iterable()Lcom/bytedance/retrofit2/ParameterHandler;

    move-result-object p1

    return-object p1

    .line 633
    :cond_1d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 634
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    .line 633
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 641
    :cond_1e
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 642
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/retrofit2/ServiceMethod;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 643
    iget-object p2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p1

    .line 644
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$Field;

    invoke-direct {p2, v0, p1, p4}, Lcom/bytedance/retrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lcom/bytedance/retrofit2/Converter;Z)V

    invoke-virtual {p2}, Lcom/bytedance/retrofit2/ParameterHandler$Field;->array()Lcom/bytedance/retrofit2/ParameterHandler;

    move-result-object p1

    return-object p1

    .line 646
    :cond_1f
    iget-object p1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p1

    .line 647
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$Field;

    invoke-direct {p2, v0, p1, p4}, Lcom/bytedance/retrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lcom/bytedance/retrofit2/Converter;Z)V

    return-object p2

    :cond_20
    const-string p2, "@Field parameters can only be used with form encoding."

    new-array p3, v3, [Ljava/lang/Object;

    .line 622
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 650
    :cond_21
    instance-of v0, p4, Lcom/bytedance/retrofit2/http/FieldMap;

    if-eqz v0, :cond_26

    .line 651
    iget-boolean v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    if-eqz v0, :cond_25

    .line 654
    invoke-static {p2}, Lcom/bytedance/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 655
    const-class v4, Ljava/util/Map;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 658
    const-class v4, Ljava/util/Map;

    invoke-static {p2, v0, v4}, Lcom/bytedance/retrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 659
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_23

    .line 662
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 663
    invoke-static {v3, p2}, Lcom/bytedance/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 664
    const-class v1, Ljava/lang/String;

    if-ne v1, v0, :cond_22

    .line 667
    invoke-static {v2, p2}, Lcom/bytedance/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 668
    iget-object p2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p1

    .line 670
    iput-boolean v2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->gotField:Z

    .line 671
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$FieldMap;

    check-cast p4, Lcom/bytedance/retrofit2/http/FieldMap;

    invoke-interface {p4}, Lcom/bytedance/retrofit2/http/FieldMap;->encode()Z

    move-result p3

    invoke-direct {p2, p1, p3}, Lcom/bytedance/retrofit2/ParameterHandler$FieldMap;-><init>(Lcom/bytedance/retrofit2/Converter;Z)V

    return-object p2

    .line 665
    :cond_22
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "@FieldMap keys must be of type String: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_23
    new-array p2, v3, [Ljava/lang/Object;

    .line 660
    invoke-direct {p0, p1, v1, p2}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_24
    const-string p2, "@FieldMap parameter type must be Map."

    new-array p3, v3, [Ljava/lang/Object;

    .line 656
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_25
    const-string p2, "@FieldMap parameters can only be used with form encoding."

    new-array p3, v3, [Ljava/lang/Object;

    .line 652
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 673
    :cond_26
    instance-of v0, p4, Lcom/bytedance/retrofit2/http/Part;

    if-eqz v0, :cond_29

    .line 674
    iget-boolean v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-eqz v0, :cond_28

    .line 677
    check-cast p4, Lcom/bytedance/retrofit2/http/Part;

    .line 678
    iput-boolean v2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->gotPart:Z

    .line 680
    invoke-interface {p4}, Lcom/bytedance/retrofit2/http/Part;->value()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4}, Lcom/bytedance/retrofit2/http/Part;->encoding()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->partAdapt(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/retrofit2/ParameterHandler;

    move-result-object p1

    if-eqz p1, :cond_27

    return-object p1

    .line 684
    :cond_27
    invoke-interface {p4}, Lcom/bytedance/retrofit2/http/Part;->value()Ljava/lang/String;

    move-result-object p1

    .line 685
    iget-object p4, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    iget-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    .line 686
    invoke-virtual {p4, p2, p3, v0}, Lcom/bytedance/retrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p2

    .line 687
    new-instance p3, Lcom/bytedance/retrofit2/ParameterHandler$Part;

    invoke-direct {p3, p1, p2}, Lcom/bytedance/retrofit2/ParameterHandler$Part;-><init>(Ljava/lang/String;Lcom/bytedance/retrofit2/Converter;)V

    return-object p3

    :cond_28
    const-string p2, "@Part parameters can only be used with multipart encoding."

    new-array p3, v3, [Ljava/lang/Object;

    .line 675
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 688
    :cond_29
    instance-of v0, p4, Lcom/bytedance/retrofit2/http/PartMap;

    if-eqz v0, :cond_2f

    .line 689
    iget-boolean v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-eqz v0, :cond_2e

    .line 692
    iput-boolean v2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->gotPart:Z

    .line 693
    invoke-static {p2}, Lcom/bytedance/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 694
    const-class v4, Ljava/util/Map;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 697
    const-class v4, Ljava/util/Map;

    invoke-static {p2, v0, v4}, Lcom/bytedance/retrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 698
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2c

    .line 701
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 703
    invoke-static {v3, p2}, Lcom/bytedance/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 704
    const-class v1, Ljava/lang/String;

    if-ne v1, v0, :cond_2b

    .line 708
    invoke-direct {p0, p2, p4}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->partMapAdapt(Ljava/lang/reflect/ParameterizedType;Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/ParameterHandler;

    move-result-object p1

    if-eqz p1, :cond_2a

    return-object p1

    .line 712
    :cond_2a
    invoke-static {v2, p2}, Lcom/bytedance/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 713
    iget-object p2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    iget-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    .line 714
    invoke-virtual {p2, p1, p3, v0}, Lcom/bytedance/retrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p1

    .line 716
    check-cast p4, Lcom/bytedance/retrofit2/http/PartMap;

    .line 717
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$PartMap;

    invoke-interface {p4}, Lcom/bytedance/retrofit2/http/PartMap;->encoding()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/bytedance/retrofit2/ParameterHandler$PartMap;-><init>(Lcom/bytedance/retrofit2/Converter;Ljava/lang/String;)V

    return-object p2

    .line 705
    :cond_2b
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "@PartMap keys must be of type String: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_2c
    new-array p2, v3, [Ljava/lang/Object;

    .line 699
    invoke-direct {p0, p1, v1, p2}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_2d
    const-string p2, "@PartMap parameter type must be Map."

    new-array p3, v3, [Ljava/lang/Object;

    .line 695
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_2e
    const-string p2, "@PartMap parameters can only be used with multipart encoding."

    new-array p3, v3, [Ljava/lang/Object;

    .line 690
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 719
    :cond_2f
    instance-of v0, p4, Lcom/bytedance/retrofit2/http/Body;

    if-eqz v0, :cond_33

    .line 720
    iget-boolean p4, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    if-nez p4, :cond_32

    iget-boolean p4, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-nez p4, :cond_32

    .line 723
    iget-boolean p4, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->gotBody:Z

    if-nez p4, :cond_31

    .line 726
    invoke-direct {p0, p2}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->bodyAdapt(Ljava/lang/reflect/Type;)Lcom/bytedance/retrofit2/ParameterHandler;

    move-result-object p4

    if-eqz p4, :cond_30

    .line 728
    iput-boolean v2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->gotBody:Z

    return-object p4

    .line 733
    :cond_30
    :try_start_0
    iget-object p4, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    iget-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    invoke-virtual {p4, p2, p3, v0}, Lcom/bytedance/retrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    iput-boolean v2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->gotBody:Z

    .line 739
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$Body;

    iget-boolean p3, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->isCustomMethod:Z

    invoke-direct {p2, p3, p1}, Lcom/bytedance/retrofit2/ParameterHandler$Body;-><init>(ZLcom/bytedance/retrofit2/Converter;)V

    return-object p2

    :catch_0
    move-exception p3

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p2, p4, v3

    const-string p2, "Unable to create @Body converter for %s"

    .line 736
    invoke-direct {p0, p3, p1, p2, p4}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_31
    const-string p2, "Multiple @Body method annotations found."

    new-array p3, v3, [Ljava/lang/Object;

    .line 724
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_32
    const-string p2, "@Body parameters cannot be used with form or multi-part encoding."

    new-array p3, v3, [Ljava/lang/Object;

    .line 721
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 740
    :cond_33
    instance-of v0, p4, Lcom/bytedance/retrofit2/http/Method;

    if-eqz v0, :cond_35

    .line 741
    iget-boolean v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->gotMethod:Z

    if-nez v0, :cond_34

    .line 744
    iput-boolean v2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->gotMethod:Z

    .line 746
    check-cast p4, Lcom/bytedance/retrofit2/http/Method;

    .line 747
    invoke-interface {p4}, Lcom/bytedance/retrofit2/http/Method;->value()Ljava/lang/String;

    move-result-object p4

    .line 748
    invoke-direct {p0, p1, p4}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->validateMethodName(ILjava/lang/String;)V

    .line 750
    iget-object p1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p1

    .line 751
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$Method;

    invoke-direct {p2, p4, p1}, Lcom/bytedance/retrofit2/ParameterHandler$Method;-><init>(Ljava/lang/String;Lcom/bytedance/retrofit2/Converter;)V

    return-object p2

    :cond_34
    const-string p2, "Multiple @Method method annotations found."

    new-array p3, v3, [Ljava/lang/Object;

    .line 742
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 752
    :cond_35
    instance-of v0, p4, Lcom/bytedance/retrofit2/http/MaxLength;

    if-eqz v0, :cond_36

    .line 755
    :try_start_1
    iget-object p4, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {p4, p2, p3}, Lcom/bytedance/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 760
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$MaxLength;

    invoke-direct {p2, p1}, Lcom/bytedance/retrofit2/ParameterHandler$MaxLength;-><init>(Lcom/bytedance/retrofit2/Converter;)V

    return-object p2

    :catch_1
    move-exception p3

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p2, p4, v3

    const-string p2, "Unable to create @MaxLength converter for %s"

    .line 758
    invoke-direct {p0, p3, p1, p2, p4}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 761
    :cond_36
    instance-of v0, p4, Lcom/bytedance/retrofit2/http/AddCommonParam;

    if-eqz v0, :cond_37

    .line 764
    :try_start_2
    iget-object p4, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {p4, p2, p3}, Lcom/bytedance/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 769
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$AddCommonParam;

    invoke-direct {p2, p1}, Lcom/bytedance/retrofit2/ParameterHandler$AddCommonParam;-><init>(Lcom/bytedance/retrofit2/Converter;)V

    return-object p2

    :catch_2
    move-exception p3

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p2, p4, v3

    const-string p2, "Unable to create @AddCommonParam converter for %s"

    .line 767
    invoke-direct {p0, p3, p1, p2, p4}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 770
    :cond_37
    instance-of v0, p4, Lcom/bytedance/retrofit2/http/ExtraInfo;

    if-eqz v0, :cond_38

    .line 773
    :try_start_3
    iget-object p4, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {p4, p2, p3}, Lcom/bytedance/retrofit2/Retrofit;->objectConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 778
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$ExtraInfo;

    invoke-direct {p2, p1}, Lcom/bytedance/retrofit2/ParameterHandler$ExtraInfo;-><init>(Lcom/bytedance/retrofit2/Converter;)V

    return-object p2

    :catch_3
    move-exception p3

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p2, p4, v3

    const-string p2, "Unable to create @ExtraInfo converter for %s"

    .line 776
    invoke-direct {p0, p3, p1, p2, p4}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 779
    :cond_38
    instance-of p3, p4, Lcom/bytedance/retrofit2/http/ext/QueryObject;

    if-eqz p3, :cond_3a

    .line 780
    invoke-static {p2}, Lcom/bytedance/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p3

    .line 781
    const-class p4, Lcom/bytedance/retrofit2/http/ext/QueryParamObject;

    invoke-virtual {p4, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_39

    .line 782
    new-instance p1, Lcom/bytedance/retrofit2/ParameterHandler$QueryObject;

    invoke-direct {p1}, Lcom/bytedance/retrofit2/ParameterHandler$QueryObject;-><init>()V

    return-object p1

    :cond_39
    new-array p3, v2, [Ljava/lang/Object;

    aput-object p2, p3, v3

    const-string p2, "Unable to create @QueryObject for %s not QueryParamObject type"

    .line 784
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 786
    :cond_3a
    instance-of p3, p4, Lcom/bytedance/retrofit2/http/Tag;

    if-eqz p3, :cond_3e

    .line 787
    invoke-static {p2}, Lcom/bytedance/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    add-int/lit8 p3, p1, -0x1

    :goto_1
    if-ltz p3, :cond_3d

    .line 789
    iget-object p4, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterHandlers:[Lcom/bytedance/retrofit2/ParameterHandler;

    aget-object p4, p4, p3

    .line 790
    instance-of v0, p4, Lcom/bytedance/retrofit2/ParameterHandler$Tag;

    if-eqz v0, :cond_3c

    check-cast p4, Lcom/bytedance/retrofit2/ParameterHandler$Tag;

    iget-object p4, p4, Lcom/bytedance/retrofit2/ParameterHandler$Tag;->cls:Ljava/lang/Class;

    .line 791
    invoke-virtual {p4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_3b

    goto :goto_2

    .line 792
    :cond_3b
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "@Tag type "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 793
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is duplicate of parameter #"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p3, v2

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " and would always overwrite its value."

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    .line 792
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_3c
    :goto_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    .line 797
    :cond_3d
    new-instance p1, Lcom/bytedance/retrofit2/ParameterHandler$Tag;

    invoke-direct {p1, p2}, Lcom/bytedance/retrofit2/ParameterHandler$Tag;-><init>(Ljava/lang/Class;)V

    return-object p1

    :cond_3e
    const/4 p1, 0x0

    return-object p1
.end method

.method private parseSquareMethodAnnotation(Ljava/lang/annotation/Annotation;)V
    .locals 4

    .line 364
    instance-of v0, p1, Lretrofit2/http/DELETE;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 365
    check-cast p1, Lretrofit2/http/DELETE;

    invoke-interface {p1}, Lretrofit2/http/DELETE;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DELETE"

    invoke-direct {p0, v0, p1, v1}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 366
    :cond_0
    instance-of v0, p1, Lretrofit2/http/GET;

    if-eqz v0, :cond_1

    .line 367
    check-cast p1, Lretrofit2/http/GET;

    invoke-interface {p1}, Lretrofit2/http/GET;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET"

    invoke-direct {p0, v0, p1, v1}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 368
    :cond_1
    instance-of v0, p1, Lretrofit2/http/HEAD;

    if-eqz v0, :cond_3

    .line 369
    check-cast p1, Lretrofit2/http/HEAD;

    invoke-interface {p1}, Lretrofit2/http/HEAD;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HEAD"

    invoke-direct {p0, v0, p1, v1}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 370
    const-class p1, Ljava/lang/Void;

    iget-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->responseType:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const-string p1, "HEAD method must use Void as response type."

    new-array v0, v1, [Ljava/lang/Object;

    .line 371
    invoke-direct {p0, p1, v0}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 373
    :cond_3
    instance-of v0, p1, Lretrofit2/http/PATCH;

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 374
    check-cast p1, Lretrofit2/http/PATCH;

    invoke-interface {p1}, Lretrofit2/http/PATCH;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PATCH"

    invoke-direct {p0, v0, p1, v2}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 375
    :cond_4
    instance-of v0, p1, Lretrofit2/http/POST;

    if-eqz v0, :cond_5

    .line 376
    check-cast p1, Lretrofit2/http/POST;

    invoke-interface {p1}, Lretrofit2/http/POST;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "POST"

    invoke-direct {p0, v0, p1, v2}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 377
    :cond_5
    instance-of v0, p1, Lretrofit2/http/PUT;

    if-eqz v0, :cond_6

    .line 378
    check-cast p1, Lretrofit2/http/PUT;

    invoke-interface {p1}, Lretrofit2/http/PUT;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PUT"

    invoke-direct {p0, v0, p1, v2}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 379
    :cond_6
    instance-of v0, p1, Lretrofit2/http/OPTIONS;

    if-eqz v0, :cond_7

    .line 380
    check-cast p1, Lretrofit2/http/OPTIONS;

    invoke-interface {p1}, Lretrofit2/http/OPTIONS;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPTIONS"

    invoke-direct {p0, v0, p1, v1}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 381
    :cond_7
    instance-of v0, p1, Lretrofit2/http/HTTP;

    if-eqz v0, :cond_8

    .line 382
    check-cast p1, Lretrofit2/http/HTTP;

    .line 383
    invoke-interface {p1}, Lretrofit2/http/HTTP;->method()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lretrofit2/http/HTTP;->path()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lretrofit2/http/HTTP;->hasBody()Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 384
    :cond_8
    instance-of v0, p1, Lretrofit2/http/Headers;

    if-eqz v0, :cond_a

    .line 385
    check-cast p1, Lretrofit2/http/Headers;

    invoke-interface {p1}, Lretrofit2/http/Headers;->value()[Ljava/lang/String;

    move-result-object p1

    .line 386
    array-length v0, p1

    if-eqz v0, :cond_9

    .line 389
    invoke-direct {p0, p1}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parseHeaders([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->headers:Ljava/util/List;

    goto :goto_0

    :cond_9
    const-string p1, "@Headers annotation is empty."

    new-array v0, v1, [Ljava/lang/Object;

    .line 387
    invoke-direct {p0, p1, v0}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 390
    :cond_a
    instance-of v0, p1, Lretrofit2/http/Multipart;

    const-string v3, "Only one encoding annotation is allowed."

    if-eqz v0, :cond_c

    .line 391
    iget-boolean p1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    if-nez p1, :cond_b

    .line 394
    iput-boolean v2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->isMultipart:Z

    goto :goto_0

    :cond_b
    new-array p1, v1, [Ljava/lang/Object;

    .line 392
    invoke-direct {p0, v3, p1}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 395
    :cond_c
    instance-of v0, p1, Lretrofit2/http/FormUrlEncoded;

    if-eqz v0, :cond_e

    .line 396
    iget-boolean p1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-nez p1, :cond_d

    .line 399
    iput-boolean v2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    goto :goto_0

    :cond_d
    new-array p1, v1, [Ljava/lang/Object;

    .line 397
    invoke-direct {p0, v3, p1}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 400
    :cond_e
    instance-of p1, p1, Lretrofit2/http/Streaming;

    if-eqz p1, :cond_f

    .line 401
    iput-boolean v2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->isResponseStreaming:Z

    :cond_f
    :goto_0
    return-void
.end method

.method private parseSquareParameterAnnotation(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/ParameterHandler;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lcom/bytedance/retrofit2/ParameterHandler<",
            "*>;"
        }
    .end annotation

    .line 804
    instance-of v0, p4, Lretrofit2/http/Url;

    const-string v1, "@Path parameters may not be used with @Url."

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 805
    iget-boolean p3, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->gotUrl:Z

    if-nez p3, :cond_5

    .line 808
    iget-boolean p3, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->gotPath:Z

    if-nez p3, :cond_4

    .line 811
    iget-boolean p3, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->gotQuery:Z

    if-nez p3, :cond_3

    .line 814
    iget-object p3, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->relativeUrl:Ljava/lang/String;

    if-nez p3, :cond_2

    .line 818
    iput-boolean v2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->gotUrl:Z

    .line 820
    const-class p3, Ljava/lang/String;

    if-eq p2, p3, :cond_1

    const-class p3, Ljava/net/URI;

    if-eq p2, p3, :cond_1

    instance-of p3, p2, Ljava/lang/Class;

    if-eqz p3, :cond_0

    check-cast p2, Ljava/lang/Class;

    .line 821
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "android.net.Uri"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "@Url must be String, java.net.URI, or android.net.Uri type."

    new-array p3, v3, [Ljava/lang/Object;

    .line 824
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 822
    :cond_1
    :goto_0
    new-instance p1, Lcom/bytedance/retrofit2/ParameterHandler$RelativeUrl;

    invoke-direct {p1}, Lcom/bytedance/retrofit2/ParameterHandler$RelativeUrl;-><init>()V

    return-object p1

    :cond_2
    new-array p2, v2, [Ljava/lang/Object;

    .line 815
    iget-object p3, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->httpMethod:Ljava/lang/String;

    aput-object p3, p2, v3

    const-string p3, "@Url cannot be used with @%s URL"

    invoke-direct {p0, p1, p3, p2}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_3
    const-string p2, "A @Url parameter must not come after a @Query"

    new-array p3, v3, [Ljava/lang/Object;

    .line 812
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_4
    new-array p2, v3, [Ljava/lang/Object;

    .line 809
    invoke-direct {p0, p1, v1, p2}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_5
    const-string p2, "Multiple @Url method annotations found."

    new-array p3, v3, [Ljava/lang/Object;

    .line 806
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 826
    :cond_6
    instance-of v0, p4, Lretrofit2/http/Path;

    if-eqz v0, :cond_a

    .line 827
    iget-boolean v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->gotQuery:Z

    if-nez v0, :cond_9

    .line 830
    iget-boolean v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->gotUrl:Z

    if-nez v0, :cond_8

    .line 833
    iget-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->relativeUrl:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 836
    iput-boolean v2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->gotPath:Z

    .line 838
    check-cast p4, Lretrofit2/http/Path;

    .line 839
    invoke-interface {p4}, Lretrofit2/http/Path;->value()Ljava/lang/String;

    move-result-object v0

    .line 840
    invoke-direct {p0, p1, v0}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->validatePathName(ILjava/lang/String;)V

    .line 842
    iget-object p1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p1

    .line 843
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$Path;

    invoke-interface {p4}, Lretrofit2/http/Path;->encoded()Z

    move-result p3

    xor-int/2addr p3, v2

    invoke-direct {p2, v0, p1, p3}, Lcom/bytedance/retrofit2/ParameterHandler$Path;-><init>(Ljava/lang/String;Lcom/bytedance/retrofit2/Converter;Z)V

    return-object p2

    :cond_7
    new-array p2, v2, [Ljava/lang/Object;

    .line 834
    iget-object p3, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->httpMethod:Ljava/lang/String;

    aput-object p3, p2, v3

    const-string p3, "@Path can only be used with relative url on @%s"

    invoke-direct {p0, p1, p3, p2}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_8
    new-array p2, v3, [Ljava/lang/Object;

    .line 831
    invoke-direct {p0, p1, v1, p2}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_9
    const-string p2, "A @Path parameter must not come after a @Query."

    new-array p3, v3, [Ljava/lang/Object;

    .line 828
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 845
    :cond_a
    instance-of v0, p4, Lretrofit2/http/Query;

    const-string v1, "<String>)"

    const-string v4, " must include generic type (e.g., "

    if-eqz v0, :cond_e

    .line 846
    check-cast p4, Lretrofit2/http/Query;

    .line 847
    invoke-interface {p4}, Lretrofit2/http/Query;->value()Ljava/lang/String;

    move-result-object v0

    .line 848
    invoke-interface {p4}, Lretrofit2/http/Query;->encoded()Z

    move-result p4

    .line 850
    invoke-static {p2}, Lcom/bytedance/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    .line 851
    iput-boolean v2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->gotQuery:Z

    .line 852
    const-class v6, Ljava/lang/Iterable;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 853
    instance-of v6, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_b

    .line 858
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 859
    invoke-static {v3, p2}, Lcom/bytedance/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 860
    iget-object p2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p1

    .line 862
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$Query;

    xor-int/lit8 p3, p4, 0x1

    invoke-direct {p2, v0, p1, p3}, Lcom/bytedance/retrofit2/ParameterHandler$Query;-><init>(Ljava/lang/String;Lcom/bytedance/retrofit2/Converter;Z)V

    invoke-virtual {p2}, Lcom/bytedance/retrofit2/ParameterHandler$Query;->iterable()Lcom/bytedance/retrofit2/ParameterHandler;

    move-result-object p1

    return-object p1

    .line 854
    :cond_b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 855
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    .line 854
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 863
    :cond_c
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 864
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/retrofit2/ServiceMethod;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 865
    iget-object p2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p1

    .line 867
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$Query;

    xor-int/lit8 p3, p4, 0x1

    invoke-direct {p2, v0, p1, p3}, Lcom/bytedance/retrofit2/ParameterHandler$Query;-><init>(Ljava/lang/String;Lcom/bytedance/retrofit2/Converter;Z)V

    invoke-virtual {p2}, Lcom/bytedance/retrofit2/ParameterHandler$Query;->array()Lcom/bytedance/retrofit2/ParameterHandler;

    move-result-object p1

    return-object p1

    .line 869
    :cond_d
    iget-object p1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p1

    .line 871
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$Query;

    xor-int/lit8 p3, p4, 0x1

    invoke-direct {p2, v0, p1, p3}, Lcom/bytedance/retrofit2/ParameterHandler$Query;-><init>(Ljava/lang/String;Lcom/bytedance/retrofit2/Converter;Z)V

    return-object p2

    .line 874
    :cond_e
    instance-of v0, p4, Lretrofit2/http/QueryName;

    if-eqz v0, :cond_12

    .line 875
    check-cast p4, Lretrofit2/http/QueryName;

    .line 876
    invoke-interface {p4}, Lretrofit2/http/QueryName;->encoded()Z

    move-result p4

    .line 878
    invoke-static {p2}, Lcom/bytedance/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 879
    iput-boolean v2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->gotQuery:Z

    .line 880
    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 881
    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_f

    .line 886
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 887
    invoke-static {v3, p2}, Lcom/bytedance/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 888
    iget-object p2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p1

    .line 889
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$QueryName;

    invoke-direct {p2, p1, p4}, Lcom/bytedance/retrofit2/ParameterHandler$QueryName;-><init>(Lcom/bytedance/retrofit2/Converter;Z)V

    invoke-virtual {p2}, Lcom/bytedance/retrofit2/ParameterHandler$QueryName;->iterable()Lcom/bytedance/retrofit2/ParameterHandler;

    move-result-object p1

    return-object p1

    .line 882
    :cond_f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 883
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    .line 882
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 890
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 891
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/retrofit2/ServiceMethod;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 892
    iget-object p2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p1

    .line 893
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$QueryName;

    invoke-direct {p2, p1, p4}, Lcom/bytedance/retrofit2/ParameterHandler$QueryName;-><init>(Lcom/bytedance/retrofit2/Converter;Z)V

    invoke-virtual {p2}, Lcom/bytedance/retrofit2/ParameterHandler$QueryName;->array()Lcom/bytedance/retrofit2/ParameterHandler;

    move-result-object p1

    return-object p1

    .line 895
    :cond_11
    iget-object p1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p1

    .line 896
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$QueryName;

    invoke-direct {p2, p1, p4}, Lcom/bytedance/retrofit2/ParameterHandler$QueryName;-><init>(Lcom/bytedance/retrofit2/Converter;Z)V

    return-object p2

    .line 899
    :cond_12
    instance-of v0, p4, Lretrofit2/http/QueryMap;

    const-string v5, "Map must include generic types (e.g., Map<String, String>)"

    if-eqz v0, :cond_16

    .line 900
    invoke-static {p2}, Lcom/bytedance/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 901
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 904
    const-class v1, Ljava/util/Map;

    invoke-static {p2, v0, v1}, Lcom/bytedance/retrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 905
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_14

    .line 908
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 909
    invoke-static {v3, p2}, Lcom/bytedance/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 910
    const-class v1, Ljava/lang/String;

    if-ne v1, v0, :cond_13

    .line 913
    invoke-static {v2, p2}, Lcom/bytedance/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 914
    iget-object p2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p1

    .line 917
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$QueryMap;

    check-cast p4, Lretrofit2/http/QueryMap;

    .line 918
    invoke-interface {p4}, Lretrofit2/http/QueryMap;->encoded()Z

    move-result p3

    xor-int/2addr p3, v2

    invoke-direct {p2, p1, p3}, Lcom/bytedance/retrofit2/ParameterHandler$QueryMap;-><init>(Lcom/bytedance/retrofit2/Converter;Z)V

    return-object p2

    .line 911
    :cond_13
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "@QueryMap keys must be of type String: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_14
    new-array p2, v3, [Ljava/lang/Object;

    .line 906
    invoke-direct {p0, p1, v5, p2}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_15
    const-string p2, "@QueryMap parameter type must be Map."

    new-array p3, v3, [Ljava/lang/Object;

    .line 902
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 920
    :cond_16
    instance-of v0, p4, Lretrofit2/http/Header;

    if-eqz v0, :cond_1a

    .line 921
    check-cast p4, Lretrofit2/http/Header;

    .line 922
    invoke-interface {p4}, Lretrofit2/http/Header;->value()Ljava/lang/String;

    move-result-object p4

    .line 924
    invoke-static {p2}, Lcom/bytedance/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 925
    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 926
    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_17

    .line 931
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 932
    invoke-static {v3, p2}, Lcom/bytedance/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 933
    iget-object p2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p1

    .line 934
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$Header;

    invoke-direct {p2, p4, p1}, Lcom/bytedance/retrofit2/ParameterHandler$Header;-><init>(Ljava/lang/String;Lcom/bytedance/retrofit2/Converter;)V

    invoke-virtual {p2}, Lcom/bytedance/retrofit2/ParameterHandler$Header;->iterable()Lcom/bytedance/retrofit2/ParameterHandler;

    move-result-object p1

    return-object p1

    .line 927
    :cond_17
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 928
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    .line 927
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 935
    :cond_18
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 936
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/retrofit2/ServiceMethod;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 937
    iget-object p2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p1

    .line 938
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$Header;

    invoke-direct {p2, p4, p1}, Lcom/bytedance/retrofit2/ParameterHandler$Header;-><init>(Ljava/lang/String;Lcom/bytedance/retrofit2/Converter;)V

    invoke-virtual {p2}, Lcom/bytedance/retrofit2/ParameterHandler$Header;->array()Lcom/bytedance/retrofit2/ParameterHandler;

    move-result-object p1

    return-object p1

    .line 940
    :cond_19
    iget-object p1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p1

    .line 941
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$Header;

    invoke-direct {p2, p4, p1}, Lcom/bytedance/retrofit2/ParameterHandler$Header;-><init>(Ljava/lang/String;Lcom/bytedance/retrofit2/Converter;)V

    return-object p2

    .line 944
    :cond_1a
    instance-of v0, p4, Lretrofit2/http/HeaderMap;

    if-eqz v0, :cond_1e

    .line 945
    invoke-static {p2}, Lcom/bytedance/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p4

    .line 946
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 949
    const-class v0, Ljava/util/Map;

    invoke-static {p2, p4, v0}, Lcom/bytedance/retrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 950
    instance-of p4, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz p4, :cond_1c

    .line 953
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 954
    invoke-static {v3, p2}, Lcom/bytedance/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p4

    .line 955
    const-class v0, Ljava/lang/String;

    if-ne v0, p4, :cond_1b

    .line 958
    invoke-static {v2, p2}, Lcom/bytedance/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 959
    iget-object p2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p1

    .line 961
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$HeaderMap;

    invoke-direct {p2, p1}, Lcom/bytedance/retrofit2/ParameterHandler$HeaderMap;-><init>(Lcom/bytedance/retrofit2/Converter;)V

    return-object p2

    .line 956
    :cond_1b
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "@HeaderMap keys must be of type String: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1c
    new-array p2, v3, [Ljava/lang/Object;

    .line 951
    invoke-direct {p0, p1, v5, p2}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1d
    const-string p2, "@HeaderMap parameter type must be Map."

    new-array p3, v3, [Ljava/lang/Object;

    .line 947
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 963
    :cond_1e
    instance-of v0, p4, Lretrofit2/http/Field;

    if-eqz v0, :cond_23

    .line 964
    iget-boolean v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    if-eqz v0, :cond_22

    .line 967
    check-cast p4, Lretrofit2/http/Field;

    .line 968
    invoke-interface {p4}, Lretrofit2/http/Field;->value()Ljava/lang/String;

    move-result-object v0

    .line 969
    invoke-interface {p4}, Lretrofit2/http/Field;->encoded()Z

    move-result p4

    .line 971
    iput-boolean v2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->gotField:Z

    .line 973
    invoke-static {p2}, Lcom/bytedance/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    .line 974
    const-class v6, Ljava/lang/Iterable;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 975
    instance-of v6, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_1f

    .line 980
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 981
    invoke-static {v3, p2}, Lcom/bytedance/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 982
    iget-object p2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p1

    .line 985
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$Field;

    xor-int/lit8 p3, p4, 0x1

    invoke-direct {p2, v0, p1, p3}, Lcom/bytedance/retrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lcom/bytedance/retrofit2/Converter;Z)V

    invoke-virtual {p2}, Lcom/bytedance/retrofit2/ParameterHandler$Field;->iterable()Lcom/bytedance/retrofit2/ParameterHandler;

    move-result-object p1

    return-object p1

    .line 976
    :cond_1f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 977
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    .line 976
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 986
    :cond_20
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 987
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/retrofit2/ServiceMethod;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 988
    iget-object p2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p1

    .line 990
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$Field;

    xor-int/lit8 p3, p4, 0x1

    invoke-direct {p2, v0, p1, p3}, Lcom/bytedance/retrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lcom/bytedance/retrofit2/Converter;Z)V

    invoke-virtual {p2}, Lcom/bytedance/retrofit2/ParameterHandler$Field;->array()Lcom/bytedance/retrofit2/ParameterHandler;

    move-result-object p1

    return-object p1

    .line 992
    :cond_21
    iget-object p1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p1

    .line 994
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$Field;

    xor-int/lit8 p3, p4, 0x1

    invoke-direct {p2, v0, p1, p3}, Lcom/bytedance/retrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lcom/bytedance/retrofit2/Converter;Z)V

    return-object p2

    :cond_22
    const-string p2, "@Field parameters can only be used with form encoding."

    new-array p3, v3, [Ljava/lang/Object;

    .line 965
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 997
    :cond_23
    instance-of v0, p4, Lretrofit2/http/FieldMap;

    if-eqz v0, :cond_28

    .line 998
    iget-boolean v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    if-eqz v0, :cond_27

    .line 1001
    invoke-static {p2}, Lcom/bytedance/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 1002
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1005
    const-class v1, Ljava/util/Map;

    invoke-static {p2, v0, v1}, Lcom/bytedance/retrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 1006
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_25

    .line 1009
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 1010
    invoke-static {v3, p2}, Lcom/bytedance/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1011
    const-class v1, Ljava/lang/String;

    if-ne v1, v0, :cond_24

    .line 1014
    invoke-static {v2, p2}, Lcom/bytedance/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 1015
    iget-object p2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p1

    .line 1017
    iput-boolean v2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->gotField:Z

    .line 1019
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$FieldMap;

    check-cast p4, Lretrofit2/http/FieldMap;

    .line 1020
    invoke-interface {p4}, Lretrofit2/http/FieldMap;->encoded()Z

    move-result p3

    xor-int/2addr p3, v2

    invoke-direct {p2, p1, p3}, Lcom/bytedance/retrofit2/ParameterHandler$FieldMap;-><init>(Lcom/bytedance/retrofit2/Converter;Z)V

    return-object p2

    .line 1012
    :cond_24
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "@FieldMap keys must be of type String: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_25
    new-array p2, v3, [Ljava/lang/Object;

    .line 1007
    invoke-direct {p0, p1, v5, p2}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_26
    const-string p2, "@FieldMap parameter type must be Map."

    new-array p3, v3, [Ljava/lang/Object;

    .line 1003
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_27
    const-string p2, "@FieldMap parameters can only be used with form encoding."

    new-array p3, v3, [Ljava/lang/Object;

    .line 999
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1022
    :cond_28
    instance-of v0, p4, Lretrofit2/http/Part;

    if-eqz v0, :cond_2b

    .line 1023
    iget-boolean v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-eqz v0, :cond_2a

    .line 1026
    check-cast p4, Lretrofit2/http/Part;

    .line 1027
    iput-boolean v2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->gotPart:Z

    .line 1028
    invoke-interface {p4}, Lretrofit2/http/Part;->value()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4}, Lretrofit2/http/Part;->encoding()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->partAdapt(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/retrofit2/ParameterHandler;

    move-result-object p1

    if-eqz p1, :cond_29

    return-object p1

    .line 1032
    :cond_29
    invoke-interface {p4}, Lretrofit2/http/Part;->value()Ljava/lang/String;

    move-result-object p1

    .line 1033
    iget-object p4, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    iget-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    .line 1034
    invoke-virtual {p4, p2, p3, v0}, Lcom/bytedance/retrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p2

    .line 1035
    new-instance p3, Lcom/bytedance/retrofit2/ParameterHandler$Part;

    invoke-direct {p3, p1, p2}, Lcom/bytedance/retrofit2/ParameterHandler$Part;-><init>(Ljava/lang/String;Lcom/bytedance/retrofit2/Converter;)V

    return-object p3

    :cond_2a
    const-string p2, "@Part parameters can only be used with multipart encoding."

    new-array p3, v3, [Ljava/lang/Object;

    .line 1024
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1036
    :cond_2b
    instance-of v0, p4, Lretrofit2/http/PartMap;

    if-eqz v0, :cond_31

    .line 1037
    iget-boolean v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-eqz v0, :cond_30

    .line 1040
    iput-boolean v2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->gotPart:Z

    .line 1041
    invoke-static {p2}, Lcom/bytedance/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 1042
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1045
    const-class v1, Ljava/util/Map;

    invoke-static {p2, v0, v1}, Lcom/bytedance/retrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 1046
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2e

    .line 1049
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 1051
    invoke-static {v3, p2}, Lcom/bytedance/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1052
    const-class v1, Ljava/lang/String;

    if-ne v1, v0, :cond_2d

    .line 1055
    invoke-direct {p0, p2, p4}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->partMapAdapt(Ljava/lang/reflect/ParameterizedType;Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/ParameterHandler;

    move-result-object p1

    if-eqz p1, :cond_2c

    return-object p1

    .line 1060
    :cond_2c
    invoke-static {v2, p2}, Lcom/bytedance/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 1061
    iget-object p2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    iget-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    .line 1062
    invoke-virtual {p2, p1, p3, v0}, Lcom/bytedance/retrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p1

    .line 1064
    check-cast p4, Lretrofit2/http/PartMap;

    .line 1065
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$PartMap;

    invoke-interface {p4}, Lretrofit2/http/PartMap;->encoding()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/bytedance/retrofit2/ParameterHandler$PartMap;-><init>(Lcom/bytedance/retrofit2/Converter;Ljava/lang/String;)V

    return-object p2

    .line 1053
    :cond_2d
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "@PartMap keys must be of type String: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_2e
    new-array p2, v3, [Ljava/lang/Object;

    .line 1047
    invoke-direct {p0, p1, v5, p2}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_2f
    const-string p2, "@PartMap parameter type must be Map."

    new-array p3, v3, [Ljava/lang/Object;

    .line 1043
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_30
    const-string p2, "@PartMap parameters can only be used with multipart encoding."

    new-array p3, v3, [Ljava/lang/Object;

    .line 1038
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1067
    :cond_31
    instance-of p4, p4, Lretrofit2/http/Body;

    if-eqz p4, :cond_35

    .line 1068
    iget-boolean p4, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    if-nez p4, :cond_34

    iget-boolean p4, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-nez p4, :cond_34

    .line 1071
    iget-boolean p4, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->gotBody:Z

    if-nez p4, :cond_33

    .line 1074
    invoke-direct {p0, p2}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->bodyAdapt(Ljava/lang/reflect/Type;)Lcom/bytedance/retrofit2/ParameterHandler;

    move-result-object p4

    if-eqz p4, :cond_32

    .line 1076
    iput-boolean v2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->gotBody:Z

    return-object p4

    .line 1081
    :cond_32
    :try_start_0
    iget-object p4, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->retrofit:Lcom/bytedance/retrofit2/Retrofit;

    iget-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    invoke-virtual {p4, p2, p3, v0}, Lcom/bytedance/retrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/Converter;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1086
    iput-boolean v2, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->gotBody:Z

    .line 1087
    new-instance p2, Lcom/bytedance/retrofit2/ParameterHandler$Body;

    iget-boolean p3, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->isCustomMethod:Z

    invoke-direct {p2, p3, p1}, Lcom/bytedance/retrofit2/ParameterHandler$Body;-><init>(ZLcom/bytedance/retrofit2/Converter;)V

    return-object p2

    :catch_0
    move-exception p3

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p2, p4, v3

    const-string p2, "Unable to create @Body converter for %s"

    .line 1084
    invoke-direct {p0, p3, p1, p2, p4}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_33
    const-string p2, "Multiple @Body method annotations found."

    new-array p3, v3, [Ljava/lang/Object;

    .line 1072
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_34
    const-string p2, "@Body parameters cannot be used with form or multi-part encoding."

    new-array p3, v3, [Ljava/lang/Object;

    .line 1069
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_35
    const/4 p1, 0x0

    return-object p1
.end method

.method private partAdapt(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/retrofit2/ParameterHandler;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/bytedance/retrofit2/ParameterHandler<",
            "*>;"
        }
    .end annotation

    .line 1129
    invoke-static {p1}, Lcom/bytedance/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 1131
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 1132
    const-class p2, Ljava/lang/Iterable;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1133
    instance-of p2, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez p2, :cond_0

    return-object v3

    .line 1136
    :cond_0
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 1137
    invoke-static {v2, p1}, Lcom/bytedance/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 1138
    const-class p2, Losdk/okhttp3/MultipartBody$Part;

    invoke-static {p1}, Lcom/bytedance/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1139
    sget-object p1, Lcom/bytedance/retrofit2/ParameterHandler$ConverterRawPart;->INSTANCE:Lcom/bytedance/retrofit2/ParameterHandler$ConverterRawPart;

    invoke-virtual {p1}, Lcom/bytedance/retrofit2/ParameterHandler$ConverterRawPart;->iterable()Lcom/bytedance/retrofit2/ParameterHandler;

    move-result-object p1

    return-object p1

    .line 1141
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1142
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 1143
    const-class p2, Losdk/okhttp3/MultipartBody$Part;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1144
    sget-object p1, Lcom/bytedance/retrofit2/ParameterHandler$ConverterRawPart;->INSTANCE:Lcom/bytedance/retrofit2/ParameterHandler$ConverterRawPart;

    invoke-virtual {p1}, Lcom/bytedance/retrofit2/ParameterHandler$ConverterRawPart;->array()Lcom/bytedance/retrofit2/ParameterHandler;

    move-result-object p1

    return-object p1

    .line 1146
    :cond_2
    const-class p1, Losdk/okhttp3/MultipartBody$Part;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1147
    sget-object p1, Lcom/bytedance/retrofit2/ParameterHandler$ConverterRawPart;->INSTANCE:Lcom/bytedance/retrofit2/ParameterHandler$ConverterRawPart;

    return-object p1

    .line 1150
    :cond_3
    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1151
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_4

    return-object v3

    .line 1154
    :cond_4
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 1155
    invoke-static {v2, p1}, Lcom/bytedance/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 1156
    const-class v0, Losdk/okhttp3/RequestBody;

    invoke-static {p1}, Lcom/bytedance/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1157
    new-instance p1, Lcom/bytedance/retrofit2/ParameterHandler$ConverterPart;

    invoke-direct {p0, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->getRequestBodyHeader(Ljava/lang/String;Ljava/lang/String;)Losdk/okhttp3/Headers;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bytedance/retrofit2/ParameterHandler$ConverterPart;-><init>(Losdk/okhttp3/Headers;)V

    invoke-virtual {p1}, Lcom/bytedance/retrofit2/ParameterHandler$ConverterPart;->iterable()Lcom/bytedance/retrofit2/ParameterHandler;

    move-result-object p1

    return-object p1

    .line 1159
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1160
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/retrofit2/ServiceMethod;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 1161
    const-class v0, Losdk/okhttp3/RequestBody;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1162
    new-instance p1, Lcom/bytedance/retrofit2/ParameterHandler$ConverterPart;

    invoke-direct {p0, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->getRequestBodyHeader(Ljava/lang/String;Ljava/lang/String;)Losdk/okhttp3/Headers;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bytedance/retrofit2/ParameterHandler$ConverterPart;-><init>(Losdk/okhttp3/Headers;)V

    invoke-virtual {p1}, Lcom/bytedance/retrofit2/ParameterHandler$ConverterPart;->array()Lcom/bytedance/retrofit2/ParameterHandler;

    move-result-object p1

    return-object p1

    .line 1164
    :cond_6
    const-class p1, Losdk/okhttp3/RequestBody;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1165
    new-instance p1, Lcom/bytedance/retrofit2/ParameterHandler$ConverterPart;

    invoke-direct {p0, p2, p3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->getRequestBodyHeader(Ljava/lang/String;Ljava/lang/String;)Losdk/okhttp3/Headers;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bytedance/retrofit2/ParameterHandler$ConverterPart;-><init>(Losdk/okhttp3/Headers;)V

    return-object p1

    :cond_7
    return-object v3
.end method

.method private partMapAdapt(Ljava/lang/reflect/ParameterizedType;Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/ParameterHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lcom/bytedance/retrofit2/ParameterHandler<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1172
    invoke-static {v0, p1}, Lcom/bytedance/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 1173
    const-class v0, Losdk/okhttp3/RequestBody;

    invoke-static {p1}, Lcom/bytedance/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1174
    check-cast p2, Lcom/bytedance/retrofit2/http/PartMap;

    .line 1175
    new-instance p1, Lcom/bytedance/retrofit2/ParameterHandler$ConverterPartMap;

    invoke-interface {p2}, Lcom/bytedance/retrofit2/http/PartMap;->encoding()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bytedance/retrofit2/ParameterHandler$ConverterPartMap;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private validateMethodName(ILjava/lang/String;)V
    .locals 4

    .line 1194
    sget-object v0, Lcom/bytedance/retrofit2/ServiceMethod;->PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    .line 1199
    iget-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->methodParamName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    .line 1200
    iget-object v3, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->httpMethod:Ljava/lang/String;

    aput-object v3, v0, v2

    aput-object p2, v0, v1

    const-string p2, "Method \"%s\" does not contain \"{%s}\"."

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-array v0, v3, [Ljava/lang/Object;

    .line 1195
    sget-object v3, Lcom/bytedance/retrofit2/ServiceMethod;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    .line 1196
    invoke-virtual {v3}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    aput-object p2, v0, v1

    const-string p2, "@Method parameter name must match %s. Found: %s"

    .line 1195
    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private validatePathName(ILjava/lang/String;)V
    .locals 4

    .line 1205
    sget-object v0, Lcom/bytedance/retrofit2/ServiceMethod;->PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    .line 1210
    iget-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->relativeUrlParamNames:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    .line 1211
    iget-object v3, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->relativeUrl:Ljava/lang/String;

    aput-object v3, v0, v2

    aput-object p2, v0, v1

    const-string p2, "URL \"%s\" does not contain \"{%s}\"."

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    .line 1206
    sget-object v3, Lcom/bytedance/retrofit2/ServiceMethod;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    .line 1207
    invoke-virtual {v3}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    aput-object p2, v0, v1

    const-string p2, "@Path parameter name must match %s. Found: %s"

    .line 1206
    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public build()Lcom/bytedance/retrofit2/ServiceMethod;
    .locals 6

    .line 236
    invoke-direct {p0}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->createCallAdapter()Lcom/bytedance/retrofit2/CallAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->callAdapter:Lcom/bytedance/retrofit2/CallAdapter;

    .line 237
    invoke-interface {v0}, Lcom/bytedance/retrofit2/CallAdapter;->responseType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->responseType:Ljava/lang/reflect/Type;

    .line 238
    const-class v1, Lcom/bytedance/retrofit2/client/Response;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_11

    .line 242
    invoke-direct {p0}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->createResponseConverter()Lcom/bytedance/retrofit2/Converter;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->responseConverter:Lcom/bytedance/retrofit2/Converter;

    .line 244
    iget-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 245
    invoke-direct {p0, v4}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parseMethodAnnotation(Ljava/lang/annotation/Annotation;)V

    .line 246
    invoke-static {}, Lcom/bytedance/retrofit2/Platform;->squareRetrofitExists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 247
    invoke-direct {p0, v4}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parseSquareMethodAnnotation(Ljava/lang/annotation/Annotation;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->httpMethod:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 255
    iget-boolean v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->hasBody:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->isCustomMethod:Z

    if-nez v0, :cond_4

    .line 256
    iget-boolean v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-nez v0, :cond_3

    .line 260
    iget-boolean v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST)."

    new-array v1, v2, [Ljava/lang/Object;

    .line 261
    invoke-direct {p0, v0, v1}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_3
    const-string v0, "Multipart can only be specified on HTTP methods with request body (e.g., @POST)."

    new-array v1, v2, [Ljava/lang/Object;

    .line 257
    invoke-direct {p0, v0, v1}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 266
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterAnnotationsArray:[[Ljava/lang/annotation/Annotation;

    array-length v0, v0

    .line 267
    new-array v1, v0, [Lcom/bytedance/retrofit2/ParameterHandler;

    iput-object v1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterHandlers:[Lcom/bytedance/retrofit2/ParameterHandler;

    const/4 v1, 0x0

    :goto_2
    const/4 v3, 0x1

    if-ge v1, v0, :cond_7

    .line 269
    iget-object v4, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterTypes:[Ljava/lang/reflect/Type;

    aget-object v4, v4, v1

    .line 270
    invoke-static {v4}, Lcom/bytedance/retrofit2/Utils;->hasUnresolvableType(Ljava/lang/reflect/Type;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 275
    iget-object v3, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterAnnotationsArray:[[Ljava/lang/annotation/Annotation;

    aget-object v3, v3, v1

    if-eqz v3, :cond_5

    .line 280
    iget-object v5, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterHandlers:[Lcom/bytedance/retrofit2/ParameterHandler;

    invoke-direct {p0, v1, v4, v3}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parseParameter(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lcom/bytedance/retrofit2/ParameterHandler;

    move-result-object v3

    aput-object v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    const-string v0, "No Retrofit annotation found."

    new-array v2, v2, [Ljava/lang/Object;

    .line 277
    invoke-direct {p0, v1, v0, v2}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_6
    new-array v0, v3, [Ljava/lang/Object;

    aput-object v4, v0, v2

    const-string v2, "Parameter type must not include a type variable or wildcard: %s"

    .line 271
    invoke-direct {p0, v1, v2, v0}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 283
    :cond_7
    iget-object v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->relativeUrl:Ljava/lang/String;

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->gotUrl:Z

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    new-array v0, v3, [Ljava/lang/Object;

    .line 284
    iget-object v1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->httpMethod:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "Missing either @%s URL or @Url parameter."

    invoke-direct {p0, v1, v0}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 286
    :cond_9
    :goto_3
    iget-boolean v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    if-nez v0, :cond_b

    iget-boolean v1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->hasBody:Z

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->isCustomMethod:Z

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->gotBody:Z

    if-nez v1, :cond_a

    goto :goto_4

    :cond_a
    const-string v0, "Non-body HTTP method cannot contain @Body."

    new-array v1, v2, [Ljava/lang/Object;

    .line 287
    invoke-direct {p0, v0, v1}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_b
    :goto_4
    if-eqz v0, :cond_d

    .line 289
    iget-boolean v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->gotField:Z

    if-eqz v0, :cond_c

    goto :goto_5

    :cond_c
    const-string v0, "Form-encode method must contain at least one @Field."

    new-array v1, v2, [Ljava/lang/Object;

    .line 290
    invoke-direct {p0, v0, v1}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 292
    :cond_d
    :goto_5
    iget-boolean v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->gotPart:Z

    if-eqz v0, :cond_e

    goto :goto_6

    :cond_e
    const-string v0, "Multipart method must contain at least one @Part."

    new-array v1, v2, [Ljava/lang/Object;

    .line 293
    invoke-direct {p0, v0, v1}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 296
    :cond_f
    :goto_6
    new-instance v0, Lcom/bytedance/retrofit2/ServiceMethod;

    invoke-direct {v0, p0}, Lcom/bytedance/retrofit2/ServiceMethod;-><init>(Lcom/bytedance/retrofit2/ServiceMethod$Builder;)V

    return-object v0

    :cond_10
    const-string v0, "HTTP method annotation is required (e.g., @GET, @POST, etc.)."

    new-array v1, v2, [Ljava/lang/Object;

    .line 252
    invoke-direct {p0, v0, v1}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 239
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->responseType:Ljava/lang/reflect/Type;

    .line 240
    invoke-static {v1}, Lcom/bytedance/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' is not a valid response body type."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 239
    invoke-direct {p0, v0, v1}, Lcom/bytedance/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
