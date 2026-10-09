.class public abstract Lcom/ironsource/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008&\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/ironsource/n;",
        "",
        "Lcom/ironsource/vg;",
        "a",
        "Lcom/ironsource/vg;",
        "g",
        "()Lcom/ironsource/vg;",
        "sdkConfigService",
        "<init>",
        "()V",
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
.field private final a:Lcom/ironsource/vg;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/ironsource/jl;->q:Lcom/ironsource/jl$b;

    invoke-virtual {v0}, Lcom/ironsource/jl$b;->d()Lcom/ironsource/ye;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/ye;->s()Lcom/ironsource/vg;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/n;->a:Lcom/ironsource/vg;

    return-void
.end method


# virtual methods
.method public final g()Lcom/ironsource/vg;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/n;->a:Lcom/ironsource/vg;

    return-object v0
.end method
