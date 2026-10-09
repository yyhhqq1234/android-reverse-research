.class public final Lcom/onesignal/ContinueResult;
.super Ljava/lang/Object;
.source "Continue.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0008\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B!\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00018\u0000\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008R\u0015\u0010\u0005\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\n\n\u0002\u0010\u000b\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0003\u0010\u000cR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onesignal/ContinueResult;",
        "R",
        "",
        "isSuccess",
        "",
        "data",
        "throwable",
        "",
        "(ZLjava/lang/Object;Ljava/lang/Throwable;)V",
        "getData",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "()Z",
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
.field private final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final isSuccess:Z

.field private final throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(ZLjava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTR;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean p1, p0, Lcom/onesignal/ContinueResult;->isSuccess:Z

    .line 23
    iput-object p2, p0, Lcom/onesignal/ContinueResult;->data:Ljava/lang/Object;

    .line 27
    iput-object p3, p0, Lcom/onesignal/ContinueResult;->throwable:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/onesignal/ContinueResult;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public final getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/onesignal/ContinueResult;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final isSuccess()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/onesignal/ContinueResult;->isSuccess:Z

    return v0
.end method
