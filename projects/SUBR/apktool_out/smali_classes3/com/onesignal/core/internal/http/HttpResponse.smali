.class public final Lcom/onesignal/core/internal/http/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\nR\u0011\u0010\u000b\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\rR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0015\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u0012\u001a\u0004\u0008\u0010\u0010\u0011R\u0015\u0010\t\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onesignal/core/internal/http/HttpResponse;",
        "",
        "statusCode",
        "",
        "payload",
        "",
        "throwable",
        "",
        "retryAfterSeconds",
        "retryLimit",
        "(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/Integer;Ljava/lang/Integer;)V",
        "isSuccess",
        "",
        "()Z",
        "getPayload",
        "()Ljava/lang/String;",
        "getRetryAfterSeconds",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getRetryLimit",
        "getStatusCode",
        "()I",
        "getThrowable",
        "()Ljava/lang/Throwable;",
        "com.onesignal.core"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final payload:Ljava/lang/String;

.field private final retryAfterSeconds:Ljava/lang/Integer;

.field private final retryLimit:Ljava/lang/Integer;

.field private final statusCode:I

.field private final throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/onesignal/core/internal/http/HttpResponse;->statusCode:I

    .line 16
    iput-object p2, p0, Lcom/onesignal/core/internal/http/HttpResponse;->payload:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/onesignal/core/internal/http/HttpResponse;->throwable:Ljava/lang/Throwable;

    .line 25
    iput-object p4, p0, Lcom/onesignal/core/internal/http/HttpResponse;->retryAfterSeconds:Ljava/lang/Integer;

    .line 30
    iput-object p5, p0, Lcom/onesignal/core/internal/http/HttpResponse;->retryLimit:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, p4

    :goto_1
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    move-object v6, v0

    goto :goto_2

    :cond_2
    move-object v6, p5

    :goto_2
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    .line 8
    invoke-direct/range {v1 .. v6}, Lcom/onesignal/core/internal/http/HttpResponse;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final getPayload()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/onesignal/core/internal/http/HttpResponse;->payload:Ljava/lang/String;

    return-object v0
.end method

.method public final getRetryAfterSeconds()Ljava/lang/Integer;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/onesignal/core/internal/http/HttpResponse;->retryAfterSeconds:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getRetryLimit()Ljava/lang/Integer;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/onesignal/core/internal/http/HttpResponse;->retryLimit:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getStatusCode()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/onesignal/core/internal/http/HttpResponse;->statusCode:I

    return v0
.end method

.method public final getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/onesignal/core/internal/http/HttpResponse;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final isSuccess()Z
    .locals 2

    .line 36
    iget v0, p0, Lcom/onesignal/core/internal/http/HttpResponse;->statusCode:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    const/16 v1, 0xca

    if-eq v0, v1, :cond_1

    const/16 v1, 0x130

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
