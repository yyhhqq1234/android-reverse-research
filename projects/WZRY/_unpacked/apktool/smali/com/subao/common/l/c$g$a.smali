.class Lcom/subao/common/l/c$g$a;
.super Lcom/subao/common/e/p;
.source "QosManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/l/c$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/subao/common/e/p",
        "<",
        "Lcom/subao/common/e/f$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 500
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/subao/common/e/f$a;

    const/4 v1, 0x0

    new-instance v2, Lcom/subao/common/e/f$a;

    const-string v3, "120.196.166.156"

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Lcom/subao/common/e/f$a;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/subao/common/e/p;-><init>([Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 501
    return-void
.end method
