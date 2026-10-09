.class public Lcom/ironsource/fq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fB\u0011\u0008\u0016\u0012\u0006\u0010 \u001a\u00020\u0000\u00a2\u0006\u0004\u0008\u001e\u0010!J\u0008\u0010\u0003\u001a\u00020\u0002H\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\n\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\r\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u000cR\u0011\u0010\u0011\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0015\u001a\u00020\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0019\u001a\u00020\u00168F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u001d\u001a\u00020\u001a8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\""
    }
    d2 = {
        "Lcom/ironsource/fq;",
        "",
        "Lcom/ironsource/nq;",
        "g",
        "a",
        "Lcom/ironsource/nq;",
        "sdkInitResponse",
        "Lcom/ironsource/gr;",
        "d",
        "()Lcom/ironsource/gr;",
        "legacyInitResponse",
        "Lcom/ironsource/h4;",
        "()Lcom/ironsource/h4;",
        "applicationGeneralSettings",
        "Lcom/ironsource/dl;",
        "e",
        "()Lcom/ironsource/dl;",
        "loggerSettings",
        "Lcom/ironsource/a4;",
        "b",
        "()Lcom/ironsource/a4;",
        "crashReporterSettings",
        "Lcom/ironsource/bc;",
        "c",
        "()Lcom/ironsource/bc;",
        "experiments",
        "Lcom/ironsource/gr$a;",
        "f",
        "()Lcom/ironsource/gr$a;",
        "responseOrigin",
        "<init>",
        "(Lcom/ironsource/nq;)V",
        "sdkConfig",
        "(Lcom/ironsource/fq;)V",
        "mediationsdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lcom/ironsource/nq;


# direct methods
.method public constructor <init>(Lcom/ironsource/fq;)V
    .locals 1

    const-string v0, "sdkConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/ironsource/fq;->a:Lcom/ironsource/nq;

    invoke-direct {p0, p1}, Lcom/ironsource/fq;-><init>(Lcom/ironsource/nq;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/nq;)V
    .locals 1

    const-string v0, "sdkInitResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/fq;->a:Lcom/ironsource/nq;

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/h4;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/fq;->a:Lcom/ironsource/nq;

    invoke-virtual {v0}, Lcom/ironsource/nq;->a()Lcom/ironsource/q8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/q8;->b()Lcom/ironsource/w3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/w3;->c()Lcom/ironsource/h4;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/ironsource/a4;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/fq;->a:Lcom/ironsource/nq;

    invoke-virtual {v0}, Lcom/ironsource/nq;->a()Lcom/ironsource/q8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/q8;->b()Lcom/ironsource/w3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/w3;->b()Lcom/ironsource/a4;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/ironsource/bc;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/fq;->a:Lcom/ironsource/nq;

    invoke-virtual {v0}, Lcom/ironsource/nq;->b()Lcom/ironsource/bc;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/ironsource/gr;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/fq;->a:Lcom/ironsource/nq;

    invoke-virtual {v0}, Lcom/ironsource/nq;->c()Lcom/ironsource/gr;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/ironsource/dl;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/fq;->a:Lcom/ironsource/nq;

    invoke-virtual {v0}, Lcom/ironsource/nq;->a()Lcom/ironsource/q8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/q8;->b()Lcom/ironsource/w3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/w3;->e()Lcom/ironsource/dl;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/ironsource/gr$a;
    .locals 2

    iget-object v0, p0, Lcom/ironsource/fq;->a:Lcom/ironsource/nq;

    invoke-virtual {v0}, Lcom/ironsource/nq;->c()Lcom/ironsource/gr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/gr;->h()Lcom/ironsource/gr$a;

    move-result-object v0

    const-string v1, "sdkInitResponse.fullResponse.origin"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final g()Lcom/ironsource/nq;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/fq;->a:Lcom/ironsource/nq;

    return-object v0
.end method
