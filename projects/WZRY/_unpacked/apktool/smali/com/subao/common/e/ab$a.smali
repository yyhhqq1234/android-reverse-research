.class public abstract Lcom/subao/common/e/ab$a;
.super Lcom/subao/common/e/v;
.source "PortalDataDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/e/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/subao/common/e/al;Lcom/subao/common/j/j;)V
    .locals 1

    .prologue
    .line 451
    invoke-static {p3}, Lcom/subao/common/e/ab$a;->a(Lcom/subao/common/e/al;)Lcom/subao/common/e/al;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/subao/common/e/v;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/subao/common/e/al;Lcom/subao/common/j/j;)V

    .line 452
    return-void
.end method

.method private static a(Lcom/subao/common/e/al;)Lcom/subao/common/e/al;
    .locals 3

    .prologue
    .line 455
    if-nez p0, :cond_0

    .line 456
    new-instance p0, Lcom/subao/common/e/al;

    const-string v0, "https"

    sget-object v1, Lcom/subao/common/e/f$a;->c:Lcom/subao/common/e/f$a;

    iget-object v1, v1, Lcom/subao/common/e/f$a;->a:Ljava/lang/String;

    sget-object v2, Lcom/subao/common/e/f$a;->c:Lcom/subao/common/e/f$a;

    iget v2, v2, Lcom/subao/common/e/f$a;->b:I

    invoke-direct {p0, v0, v1, v2}, Lcom/subao/common/e/al;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 458
    :cond_0
    return-object p0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Lcom/subao/common/f/c;
.end method
