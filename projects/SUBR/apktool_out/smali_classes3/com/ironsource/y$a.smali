.class final Lcom/ironsource/y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u001a\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/ironsource/y$a;",
        "Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;",
        "",
        "onInitSuccess",
        "",
        "errorCode",
        "",
        "errorMessage",
        "onInitFailed",
        "<init>",
        "(Lcom/ironsource/y;)V",
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
.field final synthetic a:Lcom/ironsource/y;


# direct methods
.method public static synthetic $r8$lambda$7j5RkL4Bk-JHFQyOEXHe6j1yf8A(Lcom/ironsource/y;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/ironsource/y$a;->a(Lcom/ironsource/y;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vZAF7wojdhx6fJzS8hMZ72BM1Ho(Lcom/ironsource/y;)V
    .locals 0

    invoke-static {p0}, Lcom/ironsource/y$a;->a(Lcom/ironsource/y;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ironsource/y$a;->a:Lcom/ironsource/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(Lcom/ironsource/y;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/ironsource/y;->b(Lcom/ironsource/y;)V

    return-void
.end method

.method private static final a(Lcom/ironsource/y;ILjava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/ironsource/y;->a(Lcom/ironsource/y;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onInitFailed(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/y$a;->a:Lcom/ironsource/y;

    new-instance v1, Lcom/ironsource/y$a$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p1, p2}, Lcom/ironsource/y$a$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/y;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/y;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInitSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/y$a;->a:Lcom/ironsource/y;

    new-instance v1, Lcom/ironsource/y$a$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/ironsource/y$a$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/y;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/y;->a(Ljava/lang/Runnable;)V

    return-void
.end method
