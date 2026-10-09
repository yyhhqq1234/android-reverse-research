.class public abstract Lcom/ironsource/hd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/hd$c;,
        Lcom/ironsource/hd$a;,
        Lcom/ironsource/hd$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008&\u0018\u00002\u00020\u0001:\u0003\u0005\r\u000bB\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J\u0018\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H&R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\t\u001a\u0004\u0018\u00010\u00088\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000f\u001a\u0004\u0008\r\u0010\u0010\"\u0004\u0008\u0005\u0010\u0011\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/ironsource/hd;",
        "",
        "Lcom/ironsource/k2;",
        "adUnitLoadStrategyListener",
        "",
        "a",
        "Landroid/app/Activity;",
        "activity",
        "Lcom/ironsource/w1;",
        "adUnitDisplayStrategyListener",
        "Lcom/ironsource/k2;",
        "c",
        "()Lcom/ironsource/k2;",
        "b",
        "(Lcom/ironsource/k2;)V",
        "Lcom/ironsource/w1;",
        "()Lcom/ironsource/w1;",
        "(Lcom/ironsource/w1;)V",
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
.field private a:Lcom/ironsource/k2;

.field private b:Lcom/ironsource/w1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/app/Activity;Lcom/ironsource/w1;)V
.end method

.method public abstract a(Lcom/ironsource/k2;)V
.end method

.method public a(Lcom/ironsource/w1;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/hd;->b:Lcom/ironsource/w1;

    return-void
.end method

.method public b()Lcom/ironsource/w1;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/hd;->b:Lcom/ironsource/w1;

    return-object v0
.end method

.method public b(Lcom/ironsource/k2;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/hd;->a:Lcom/ironsource/k2;

    return-void
.end method

.method public c()Lcom/ironsource/k2;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/hd;->a:Lcom/ironsource/k2;

    return-object v0
.end method
