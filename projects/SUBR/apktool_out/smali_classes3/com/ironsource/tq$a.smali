.class public final Lcom/ironsource/tq$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/lq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/tq;->a(Landroid/content/Context;Lcom/ironsource/mq;Lcom/ironsource/lq;Z)V
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
        "com/ironsource/tq$a",
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
.field final synthetic a:Lcom/ironsource/lq;


# direct methods
.method public static synthetic $r8$lambda$6Vsu9i6G43BG2e25nNhRL_D__UI(Lcom/ironsource/lq;Lcom/ironsource/hq;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ironsource/tq$a;->a(Lcom/ironsource/lq;Lcom/ironsource/hq;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I8JSoISqUAAKNx7NPV5WKe2Rfl4(Lcom/ironsource/fq;Lcom/ironsource/lq;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ironsource/tq$a;->a(Lcom/ironsource/fq;Lcom/ironsource/lq;)V

    return-void
.end method

.method constructor <init>(Lcom/ironsource/lq;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/tq$a;->a:Lcom/ironsource/lq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(Lcom/ironsource/fq;Lcom/ironsource/lq;)V
    .locals 1

    const-string v0, "$sdkConfig"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/ironsource/tq;->a:Lcom/ironsource/tq;

    invoke-static {v0, p0, p1}, Lcom/ironsource/tq;->a(Lcom/ironsource/tq;Lcom/ironsource/fq;Lcom/ironsource/lq;)V

    return-void
.end method

.method private static final a(Lcom/ironsource/lq;Lcom/ironsource/hq;)V
    .locals 1

    const-string v0, "$listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/ironsource/lq;->a(Lcom/ironsource/hq;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/fq;)V
    .locals 3

    const-string v0, "sdkConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/ironsource/tq;->a()Lcom/ironsource/wq;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/tq$a;->a:Lcom/ironsource/lq;

    new-instance v2, Lcom/ironsource/tq$a$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, v1}, Lcom/ironsource/tq$a$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/fq;Lcom/ironsource/lq;)V

    invoke-virtual {v0, v2}, Lcom/ironsource/wq;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/ironsource/hq;)V
    .locals 3

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/ironsource/tq;->a()Lcom/ironsource/wq;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/tq$a;->a:Lcom/ironsource/lq;

    new-instance v2, Lcom/ironsource/tq$a$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Lcom/ironsource/tq$a$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/lq;Lcom/ironsource/hq;)V

    invoke-virtual {v0, v2}, Lcom/ironsource/wq;->d(Ljava/lang/Runnable;)V

    return-void
.end method
