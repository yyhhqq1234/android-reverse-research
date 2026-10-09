.class public final Lcom/netease/mobile/link/f5$a;
.super Lcom/netease/mobile/link/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mobile/link/f5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mobile/link/g<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/netease/mobile/link/v4<",
        "TData;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic m:Lcom/netease/mobile/link/f5;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/f5;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/f5$a;->m:Lcom/netease/mobile/link/f5;

    invoke-direct {p0}, Lcom/netease/mobile/link/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    .line 1
    iget-object p1, p0, Lcom/netease/mobile/link/f5$a;->m:Lcom/netease/mobile/link/f5;

    .line 2
    invoke-virtual {p1}, Lcom/netease/mobile/link/f5;->b()Lcom/netease/mobile/link/v4;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mobile/link/f5;->a(Lcom/netease/mobile/link/v4;)Lcom/netease/mobile/link/v4;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/netease/mobile/link/v4;

    .line 3
    iget-object v0, p0, Lcom/netease/mobile/link/f5$a;->m:Lcom/netease/mobile/link/f5;

    .line 4
    iget-object v0, v0, Lcom/netease/mobile/link/f5;->a:Lcom/netease/mobile/link/n;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcom/netease/mobile/link/n;->a(Lcom/netease/mobile/link/v4;)V

    :goto_0
    return-void
.end method
