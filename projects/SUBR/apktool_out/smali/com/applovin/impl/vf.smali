.class public abstract Lcom/applovin/impl/vf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/vf$d;,
        Lcom/applovin/impl/vf$c;,
        Lcom/applovin/impl/vf$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/uf;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/applovin/impl/vf;-><init>()V

    return-void
.end method

.method public static a()Lcom/applovin/impl/vf$d;
    .locals 1

    .line 158
    invoke-static {}, Lcom/applovin/impl/vg;->a()Lcom/applovin/impl/vg;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/vf;->a(Ljava/util/Comparator;)Lcom/applovin/impl/vf$d;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Comparator;)Lcom/applovin/impl/vf$d;
    .locals 1

    .line 156
    invoke-static {p0}, Lcom/applovin/exoplayer2/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-instance v0, Lcom/applovin/impl/vf$a;

    invoke-direct {v0, p0}, Lcom/applovin/impl/vf$a;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method
