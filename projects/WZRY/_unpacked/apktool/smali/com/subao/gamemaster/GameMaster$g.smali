.class Lcom/subao/gamemaster/GameMaster$g;
.super Ljava/lang/Object;
.source "GameMaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/gamemaster/GameMaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1962
    iput-object p1, p0, Lcom/subao/gamemaster/GameMaster$g;->a:Ljava/lang/String;

    .line 1963
    iput-object p2, p0, Lcom/subao/gamemaster/GameMaster$g;->b:Ljava/lang/String;

    .line 1964
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Lcom/subao/gamemaster/GameMaster$g;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1968
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1969
    :cond_0
    const/4 v0, 0x0

    .line 1971
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/subao/gamemaster/GameMaster$g;

    invoke-direct {v0, p0, p1}, Lcom/subao/gamemaster/GameMaster$g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1977
    if-nez p1, :cond_1

    .line 1988
    :cond_0
    :goto_0
    return v1

    .line 1980
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v0

    .line 1981
    goto :goto_0

    .line 1983
    :cond_2
    instance-of v2, p1, Lcom/subao/gamemaster/GameMaster$g;

    if-eqz v2, :cond_0

    .line 1986
    check-cast p1, Lcom/subao/gamemaster/GameMaster$g;

    .line 1987
    iget-object v2, p1, Lcom/subao/gamemaster/GameMaster$g;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/subao/gamemaster/GameMaster$g;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/subao/gamemaster/GameMaster$g;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/subao/gamemaster/GameMaster$g;->b:Ljava/lang/String;

    .line 1988
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1993
    iget-object v0, p0, Lcom/subao/gamemaster/GameMaster$g;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/subao/gamemaster/GameMaster$g;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
