.class public final Lcom/ironsource/n5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/n4$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/n5;->a(Lcom/ironsource/n4;Lcom/ironsource/o5;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/ironsource/n5$a",
        "Lcom/ironsource/n4$d;",
        "Lcom/ironsource/n4;",
        "auction",
        "",
        "a",
        "",
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
.field final synthetic a:Lcom/ironsource/n5;

.field final synthetic b:Lcom/ironsource/o5;


# direct methods
.method constructor <init>(Lcom/ironsource/n5;Lcom/ironsource/o5;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/n5$a;->a:Lcom/ironsource/n5;

    iput-object p2, p0, Lcom/ironsource/n5$a;->b:Lcom/ironsource/o5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/n4;)V
    .locals 2

    const-string v0, "auction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/n5$a;->a:Lcom/ironsource/n5;

    iget-object v1, p0, Lcom/ironsource/n5$a;->b:Lcom/ironsource/o5;

    invoke-static {v0, p1, v1}, Lcom/ironsource/n5;->a(Lcom/ironsource/n5;Lcom/ironsource/n4;Lcom/ironsource/o5;)V

    return-void
.end method

.method public a(Lcom/ironsource/n4;Ljava/lang/String;)V
    .locals 1

    const-string v0, "auction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ironsource/n5$a;->a:Lcom/ironsource/n5;

    iget-object v0, p0, Lcom/ironsource/n5$a;->b:Lcom/ironsource/o5;

    invoke-static {p2, p1, v0}, Lcom/ironsource/n5;->a(Lcom/ironsource/n5;Lcom/ironsource/n4;Lcom/ironsource/o5;)V

    return-void
.end method
