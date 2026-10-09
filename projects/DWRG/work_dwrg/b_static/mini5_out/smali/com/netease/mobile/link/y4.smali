.class public final Lcom/netease/mobile/link/y4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/netease/mobile/link/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mobile/link/n<",
        "Lcom/netease/mobile/link/q5;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/netease/mobile/link/m0;

.field public final synthetic b:Lcom/netease/mobile/link/y;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/m0;Lcom/netease/mobile/link/y;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobile/link/y4;->a:Lcom/netease/mobile/link/m0;

    iput-object p2, p0, Lcom/netease/mobile/link/y4;->b:Lcom/netease/mobile/link/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netease/mobile/link/v4;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mobile/link/v4<",
            "Lcom/netease/mobile/link/q5;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/netease/mobile/link/p4;->b()Lcom/netease/mobile/link/p4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mobile/link/p4;->a()V

    iget-boolean p1, p1, Lcom/netease/mobile/link/v4;->a:Z

    const-string v0, ""

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netease/mobile/link/y4;->a:Lcom/netease/mobile/link/m0;

    iget-object v1, p1, Lcom/netease/mobile/link/m0;->b:Lcom/netease/mobile/link/b5;

    iget-object p1, p1, Lcom/netease/mobile/link/m0;->e:Lcom/netease/mobile/link/r3;

    .line 1
    new-instance v2, Lcom/netease/mobile/link/m0;

    const-class v3, Lcom/netease/mobile/link/f7;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3, v0, p1}, Lcom/netease/mobile/link/m0;-><init>(Lcom/netease/mobile/link/b5;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mobile/link/r3;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/netease/mobile/link/y4;->a:Lcom/netease/mobile/link/m0;

    iget-object v1, p1, Lcom/netease/mobile/link/m0;->b:Lcom/netease/mobile/link/b5;

    iget-object p1, p1, Lcom/netease/mobile/link/m0;->e:Lcom/netease/mobile/link/r3;

    invoke-static {v1, v0, p1}, Lcom/netease/mobile/link/p0;->d(Lcom/netease/mobile/link/b5;Ljava/lang/String;Lcom/netease/mobile/link/r3;)Lcom/netease/mobile/link/m0;

    move-result-object v2

    :goto_0
    iget-object p1, p0, Lcom/netease/mobile/link/y4;->b:Lcom/netease/mobile/link/y;

    invoke-virtual {p1, v2}, Lcom/netease/mobile/link/y;->a(Lcom/netease/mobile/link/m0;)V

    return-void
.end method
