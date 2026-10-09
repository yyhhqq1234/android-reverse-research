.class Lcom/subao/gamemaster/GameMaster$f;
.super Ljava/lang/Object;
.source "GameMaster.java"

# interfaces
.implements Lcom/subao/common/a/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/gamemaster/GameMaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/subao/common/a/e;
    .locals 1

    .prologue
    .line 1941
    invoke-static {}, Lcom/subao/gamemaster/GameMasterVpnService;->c()Lcom/subao/gamemaster/GameMasterVpnService;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 1946
    invoke-static {p1}, Lcom/subao/gamemaster/GameMasterVpnService;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
