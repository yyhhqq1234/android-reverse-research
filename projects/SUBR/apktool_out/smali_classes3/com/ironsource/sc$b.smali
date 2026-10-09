.class public final Lcom/ironsource/sc$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/fd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sc;-><init>(Lcom/ironsource/vc;Lcom/ironsource/l1;Lcom/ironsource/c1;Lcom/ironsource/hd$b;Lcom/ironsource/u1;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/ironsource/sc$b",
        "Lcom/ironsource/fd;",
        "",
        "isPublisherLoad",
        "Lcom/ironsource/ed;",
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
.field final synthetic a:Lcom/ironsource/u1;

.field final synthetic b:Lcom/ironsource/sc;

.field final synthetic c:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/ironsource/t1;",
            "Lcom/ironsource/gd;",
            "Lcom/ironsource/ed;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/ironsource/u1;Lcom/ironsource/sc;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/u1;",
            "Lcom/ironsource/sc;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/ironsource/t1;",
            "-",
            "Lcom/ironsource/gd;",
            "Lcom/ironsource/ed;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ironsource/sc$b;->a:Lcom/ironsource/u1;

    iput-object p2, p0, Lcom/ironsource/sc$b;->b:Lcom/ironsource/sc;

    iput-object p3, p0, Lcom/ironsource/sc$b;->c:Lkotlin/jvm/functions/Function2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)Lcom/ironsource/ed;
    .locals 2

    iget-object v0, p0, Lcom/ironsource/sc$b;->a:Lcom/ironsource/u1;

    iget-object v1, p0, Lcom/ironsource/sc$b;->b:Lcom/ironsource/sc;

    invoke-static {v1}, Lcom/ironsource/sc;->a(Lcom/ironsource/sc;)Lcom/ironsource/c1;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/ironsource/u1;->a(ZLcom/ironsource/c1;)Lcom/ironsource/t1;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/sc$b;->c:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Lcom/ironsource/sc$b;->b:Lcom/ironsource/sc;

    invoke-interface {v0, p1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/ed;

    return-object p1
.end method
