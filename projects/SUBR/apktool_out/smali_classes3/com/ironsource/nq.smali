.class public final Lcom/ironsource/nq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\r\u001a\u00020\u00088\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0012\u001a\u00020\u000e8\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0016\u001a\u00020\u00138\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0014\u001a\u0004\u0008\u0003\u0010\u0015R\u001a\u0010\u001a\u001a\u00020\u00178\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0018\u001a\u0004\u0008\t\u0010\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/ironsource/nq;",
        "",
        "Lcom/ironsource/gr;",
        "a",
        "Lcom/ironsource/gr;",
        "c",
        "()Lcom/ironsource/gr;",
        "fullResponse",
        "Lcom/ironsource/uo;",
        "b",
        "Lcom/ironsource/uo;",
        "d",
        "()Lcom/ironsource/uo;",
        "providerOrder",
        "Lcom/ironsource/wo;",
        "Lcom/ironsource/wo;",
        "e",
        "()Lcom/ironsource/wo;",
        "providerSettings",
        "Lcom/ironsource/q8;",
        "Lcom/ironsource/q8;",
        "()Lcom/ironsource/q8;",
        "configurations",
        "Lcom/ironsource/bc;",
        "Lcom/ironsource/bc;",
        "()Lcom/ironsource/bc;",
        "experiments",
        "<init>",
        "(Lcom/ironsource/gr;)V",
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
.field private final a:Lcom/ironsource/gr;

.field private final b:Lcom/ironsource/uo;

.field private final c:Lcom/ironsource/wo;

.field private final d:Lcom/ironsource/q8;

.field private final e:Lcom/ironsource/bc;


# direct methods
.method public constructor <init>(Lcom/ironsource/gr;)V
    .locals 3

    const-string v0, "fullResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/nq;->a:Lcom/ironsource/gr;

    new-instance v0, Lcom/ironsource/uo;

    invoke-virtual {p1}, Lcom/ironsource/gr;->i()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "providerOrder"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    invoke-direct {v0, v1}, Lcom/ironsource/uo;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/ironsource/nq;->b:Lcom/ironsource/uo;

    new-instance v0, Lcom/ironsource/wo;

    invoke-virtual {p1}, Lcom/ironsource/gr;->i()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "providerSettings"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :cond_1
    invoke-direct {v0, v1}, Lcom/ironsource/wo;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/ironsource/nq;->c:Lcom/ironsource/wo;

    new-instance v0, Lcom/ironsource/q8;

    invoke-virtual {p1}, Lcom/ironsource/gr;->i()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "configurations"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :cond_2
    invoke-direct {v0, v1}, Lcom/ironsource/q8;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/ironsource/nq;->d:Lcom/ironsource/q8;

    new-instance v0, Lcom/ironsource/bc;

    invoke-virtual {p1}, Lcom/ironsource/gr;->i()Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "experiments"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_3

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_3
    invoke-direct {v0, p1}, Lcom/ironsource/bc;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/ironsource/nq;->e:Lcom/ironsource/bc;

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/q8;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/nq;->d:Lcom/ironsource/q8;

    return-object v0
.end method

.method public final b()Lcom/ironsource/bc;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/nq;->e:Lcom/ironsource/bc;

    return-object v0
.end method

.method public final c()Lcom/ironsource/gr;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/nq;->a:Lcom/ironsource/gr;

    return-object v0
.end method

.method public final d()Lcom/ironsource/uo;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/nq;->b:Lcom/ironsource/uo;

    return-object v0
.end method

.method public final e()Lcom/ironsource/wo;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/nq;->c:Lcom/ironsource/wo;

    return-object v0
.end method
