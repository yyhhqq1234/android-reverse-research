.class final Lcom/ironsource/rt$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/rt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/rt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016R\u0014\u0010\t\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/ironsource/rt$e;",
        "Lcom/ironsource/rt;",
        "Lcom/ironsource/rt$a;",
        "callback",
        "",
        "a",
        "cancel",
        "Lcom/ironsource/tt;",
        "Lcom/ironsource/tt;",
        "timer",
        "<init>",
        "(Lcom/ironsource/tt;)V",
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
.field private final a:Lcom/ironsource/tt;


# direct methods
.method public constructor <init>(Lcom/ironsource/tt;)V
    .locals 1

    const-string v0, "timer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/rt$e;->a:Lcom/ironsource/tt;

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/rt$a;)V
    .locals 2

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/rt$e;->a:Lcom/ironsource/tt;

    new-instance v1, Lcom/ironsource/rt$e$a;

    invoke-direct {v1, p1}, Lcom/ironsource/rt$e$a;-><init>(Lcom/ironsource/rt$a;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/tt;->a(Lcom/ironsource/tt$a;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/ironsource/rt$e;->a:Lcom/ironsource/tt;

    invoke-virtual {v0}, Lcom/ironsource/tt;->e()V

    return-void
.end method
