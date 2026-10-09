.class public final Lcom/netease/mobile/link/b6;
.super Lcom/netease/mobile/link/f5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mobile/link/f5<",
        "Lcom/netease/mobile/link/q5;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/a6;Lcom/netease/mobile/link/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mobile/link/a6;",
            "Lcom/netease/mobile/link/n<",
            "Lcom/netease/mobile/link/q5;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/netease/mobile/link/f5;-><init>(Lcom/netease/mobile/link/t4;Lcom/netease/mobile/link/n;)V

    return-void
.end method

.method public constructor <init>(Lcom/netease/mobile/link/f6$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mobile/link/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mobile/link/f6$a;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/netease/mobile/link/n<",
            "Lcom/netease/mobile/link/q5;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/netease/mobile/link/a6;

    invoke-direct {v0, p1, p2, p3}, Lcom/netease/mobile/link/a6;-><init>(Lcom/netease/mobile/link/f6$a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/netease/mobile/link/a6;->b(Ljava/lang/String;)Lcom/netease/mobile/link/a6;

    move-result-object p1

    invoke-direct {p0, p1, p5}, Lcom/netease/mobile/link/f5;-><init>(Lcom/netease/mobile/link/t4;Lcom/netease/mobile/link/n;)V

    return-void
.end method


# virtual methods
.method public final b()Lcom/netease/mobile/link/v4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netease/mobile/link/v4<",
            "Lcom/netease/mobile/link/q5;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/netease/mobile/link/f5;->b()Lcom/netease/mobile/link/v4;

    move-result-object v0

    return-object v0
.end method
