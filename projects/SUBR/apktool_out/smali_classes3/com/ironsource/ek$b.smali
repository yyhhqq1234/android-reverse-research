.class public final Lcom/ironsource/ek$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/ek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u0012\u0006\u0010\u0011\u001a\u00020\u000c\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u000b\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\t\u001a\u0004\u0008\u0003\u0010\nR\u0017\u0010\u0011\u001a\u00020\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0015\u001a\u00020\u00128\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0013\u001a\u0004\u0008\r\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/ironsource/ek$b;",
        "",
        "Lcom/ironsource/l1;",
        "a",
        "Lcom/ironsource/l1;",
        "b",
        "()Lcom/ironsource/l1;",
        "adTools",
        "Lcom/ironsource/tc;",
        "Lcom/ironsource/tc;",
        "()Lcom/ironsource/tc;",
        "adControllerFactory",
        "Lcom/ironsource/ye;",
        "c",
        "Lcom/ironsource/ye;",
        "d",
        "()Lcom/ironsource/ye;",
        "provider",
        "Lcom/ironsource/n9;",
        "Lcom/ironsource/n9;",
        "()Lcom/ironsource/n9;",
        "currentTimeProvider",
        "<init>",
        "(Lcom/ironsource/l1;Lcom/ironsource/tc;Lcom/ironsource/ye;Lcom/ironsource/n9;)V",
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
.field private final a:Lcom/ironsource/l1;

.field private final b:Lcom/ironsource/tc;

.field private final c:Lcom/ironsource/ye;

.field private final d:Lcom/ironsource/n9;


# direct methods
.method public constructor <init>(Lcom/ironsource/l1;Lcom/ironsource/tc;Lcom/ironsource/ye;Lcom/ironsource/n9;)V
    .locals 1

    const-string v0, "adTools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adControllerFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentTimeProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/ek$b;->a:Lcom/ironsource/l1;

    iput-object p2, p0, Lcom/ironsource/ek$b;->b:Lcom/ironsource/tc;

    iput-object p3, p0, Lcom/ironsource/ek$b;->c:Lcom/ironsource/ye;

    iput-object p4, p0, Lcom/ironsource/ek$b;->d:Lcom/ironsource/n9;

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/tc;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/ek$b;->b:Lcom/ironsource/tc;

    return-object v0
.end method

.method public final b()Lcom/ironsource/l1;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/ek$b;->a:Lcom/ironsource/l1;

    return-object v0
.end method

.method public final c()Lcom/ironsource/n9;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/ek$b;->d:Lcom/ironsource/n9;

    return-object v0
.end method

.method public final d()Lcom/ironsource/ye;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/ek$b;->c:Lcom/ironsource/ye;

    return-object v0
.end method
