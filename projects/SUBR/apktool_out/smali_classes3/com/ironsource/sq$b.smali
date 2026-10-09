.class public final Lcom/ironsource/sq$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/lq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sq;->a(Landroid/content/Context;Lcom/ironsource/mq;Lcom/ironsource/lq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/ironsource/sq$b",
        "Lcom/ironsource/lq;",
        "Lcom/ironsource/fq;",
        "sdkConfig",
        "",
        "a",
        "Lcom/ironsource/hq;",
        "error",
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
.field final synthetic a:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$8SKmkQbknMUdIQ91S6-uONGZYqs(Landroid/content/Context;Lcom/ironsource/fq;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ironsource/sq$b;->a(Landroid/content/Context;Lcom/ironsource/fq;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Clkv8TaVt7tLWtQtJOKHw0CaNKo(Lcom/ironsource/hq;)V
    .locals 0

    invoke-static {p0}, Lcom/ironsource/sq$b;->b(Lcom/ironsource/hq;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/sq$b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(Landroid/content/Context;Lcom/ironsource/fq;)V
    .locals 2

    const-string v0, "$sdkConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/ironsource/sq;->a:Lcom/ironsource/sq;

    const-string v1, "applicationContext"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0, p1}, Lcom/ironsource/sq;->a(Lcom/ironsource/sq;Landroid/content/Context;Lcom/ironsource/fq;)V

    return-void
.end method

.method private static final b(Lcom/ironsource/hq;)V
    .locals 1

    const-string v0, "$error"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/ironsource/sq;->a:Lcom/ironsource/sq;

    invoke-static {v0, p0}, Lcom/ironsource/sq;->a(Lcom/ironsource/sq;Lcom/ironsource/hq;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/fq;)V
    .locals 3

    const-string v0, "sdkConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/ironsource/sq;->a()Lcom/ironsource/wq;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sq$b;->a:Landroid/content/Context;

    new-instance v2, Lcom/ironsource/sq$b$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Lcom/ironsource/sq$b$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lcom/ironsource/fq;)V

    invoke-virtual {v0, v2}, Lcom/ironsource/wq;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/ironsource/hq;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/ironsource/sq;->a()Lcom/ironsource/wq;

    move-result-object v0

    new-instance v1, Lcom/ironsource/sq$b$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/ironsource/sq$b$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/hq;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/wq;->a(Ljava/lang/Runnable;)V

    return-void
.end method
