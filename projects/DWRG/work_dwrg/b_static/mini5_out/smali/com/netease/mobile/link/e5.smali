.class public final Lcom/netease/mobile/link/e5;
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
.method public constructor <init>(Lcom/netease/mobile/link/f6$a;Ljava/lang/String;Ljava/lang/String;IILcom/netease/mobile/link/n;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mobile/link/f6$a;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/netease/mobile/link/n<",
            "Lcom/netease/mobile/link/q5;",
            ">;)V"
        }
    .end annotation

    new-instance v6, Lcom/netease/mobile/link/d5;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/netease/mobile/link/d5;-><init>(Lcom/netease/mobile/link/f6$a;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-direct {p0, v6, p6}, Lcom/netease/mobile/link/f5;-><init>(Lcom/netease/mobile/link/t4;Lcom/netease/mobile/link/n;)V

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
