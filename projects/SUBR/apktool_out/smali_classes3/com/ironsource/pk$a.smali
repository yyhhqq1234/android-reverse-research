.class public final Lcom/ironsource/pk$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/u1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/pk;-><init>(Ljava/lang/String;Lcom/ironsource/l1;Lcom/ironsource/tc;Lcom/ironsource/ye;Lcom/ironsource/n9;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/ironsource/pk$a",
        "Lcom/ironsource/u1;",
        "",
        "isPublisherLoad",
        "Lcom/ironsource/c1;",
        "adProperties",
        "Lcom/ironsource/t1;",
        "a",
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
.field final synthetic a:Lcom/ironsource/ye;


# direct methods
.method constructor <init>(Lcom/ironsource/ye;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/pk$a;->a:Lcom/ironsource/ye;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/ironsource/c1;)Lcom/ironsource/t1;
    .locals 2

    const-string v0, "adProperties"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/ironsource/np;->A:Lcom/ironsource/np$a;

    iget-object v1, p0, Lcom/ironsource/pk$a;->a:Lcom/ironsource/ye;

    invoke-interface {v1}, Lcom/ironsource/ye;->s()Lcom/ironsource/vg;

    move-result-object v1

    invoke-interface {v1}, Lcom/ironsource/vg;->a()Lcom/ironsource/ck;

    move-result-object v1

    invoke-virtual {v0, p2, v1, p1}, Lcom/ironsource/np$a;->a(Lcom/ironsource/c1;Lcom/ironsource/ck;Z)Lcom/ironsource/np;

    move-result-object p1

    return-object p1
.end method
