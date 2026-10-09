.class Lcom/subao/gamemaster/GameMaster$a;
.super Landroid/os/ConditionVariable;
.source "GameMaster.java"

# interfaces
.implements Lcom/subao/common/j/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/gamemaster/GameMaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/subao/common/j/d$c;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1920
    invoke-direct {p0}, Landroid/os/ConditionVariable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/subao/gamemaster/GameMaster$1;)V
    .locals 0

    .prologue
    .line 1920
    invoke-direct {p0}, Lcom/subao/gamemaster/GameMaster$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/subao/common/j/d$c;
    .locals 1

    .prologue
    .line 1931
    invoke-virtual {p0}, Lcom/subao/gamemaster/GameMaster$a;->block()V

    .line 1932
    iget-object v0, p0, Lcom/subao/gamemaster/GameMaster$a;->a:Lcom/subao/common/j/d$c;

    return-object v0
.end method

.method public a(Ljava/lang/Object;Lcom/subao/common/j/d$c;)V
    .locals 0

    .prologue
    .line 1926
    iput-object p2, p0, Lcom/subao/gamemaster/GameMaster$a;->a:Lcom/subao/common/j/d$c;

    .line 1927
    invoke-virtual {p0}, Lcom/subao/gamemaster/GameMaster$a;->open()V

    .line 1928
    return-void
.end method
