.class public final Lcom/netease/codescanner/common/a/b;
.super Lcom/netease/codescanner/common/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/codescanner/common/a",
        "<",
        "Lcom/netease/codescanner/common/a/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-class v0, Lcom/netease/codescanner/common/a/a;

    const-class v1, Lcom/netease/codescanner/common/a/c;

    invoke-direct {p0, v0, v1}, Lcom/netease/codescanner/common/a;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    const/16 v0, 0xb

    const-class v1, Lcom/netease/codescanner/common/a/d;

    invoke-virtual {p0, v0, v1}, Lcom/netease/codescanner/common/a/b;->a(ILjava/lang/Class;)V

    return-void
.end method
