.class final Lcom/subao/common/e/r$1;
.super Ljava/lang/Object;
.source "GameServerIpDownloader.java"

# interfaces
.implements Lcom/subao/common/e/x$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subao/common/e/r;->d()Lcom/subao/common/e/x$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/subao/common/e/ab$a;Lcom/subao/common/g/c;)Lcom/subao/common/e/x;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/subao/common/e/r;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/subao/common/e/r;-><init>(Lcom/subao/common/e/ab$a;Lcom/subao/common/g/c;Lcom/subao/common/e/r$1;)V

    return-object v0
.end method
