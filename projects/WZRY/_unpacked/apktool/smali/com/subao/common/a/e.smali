.class public abstract Lcom/subao/common/a/e;
.super Landroid/net/VpnService;
.source "SubaoVpnService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/a/e$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/net/VpnService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Iterable;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract a()V
.end method

.method public abstract b()Z
.end method
