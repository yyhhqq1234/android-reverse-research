.class Lcom/subao/gamemaster/GameMaster$e;
.super Ljava/lang/Object;
.source "GameMaster.java"

# interfaces
.implements Lcom/subao/common/j/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/gamemaster/GameMaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field private final a:Lcom/subao/gamemaster/GameMaster$I2;


# direct methods
.method constructor <init>(Lcom/subao/gamemaster/GameMaster$I2;)V
    .locals 0

    .prologue
    .line 1869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1870
    iput-object p1, p0, Lcom/subao/gamemaster/GameMaster$e;->a:Lcom/subao/gamemaster/GameMaster$I2;

    .line 1871
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 1875
    iget-object v0, p0, Lcom/subao/gamemaster/GameMaster$e;->a:Lcom/subao/gamemaster/GameMaster$I2;

    invoke-interface {v0, p1}, Lcom/subao/gamemaster/GameMaster$I2;->a(I)V

    .line 1876
    return-void
.end method
