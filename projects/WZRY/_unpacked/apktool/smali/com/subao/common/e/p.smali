.class public Lcom/subao/common/e/p;
.super Ljava/lang/Object;
.source "DataSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/e/p$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;[TT;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {p1}, Lcom/subao/common/e/p;->a([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lcom/subao/common/e/p;->a:[Ljava/lang/Object;

    .line 16
    invoke-static {p2}, Lcom/subao/common/e/p;->a([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    iput-object v0, p0, Lcom/subao/common/e/p;->b:[Ljava/lang/Object;

    .line 17
    return-void

    :cond_1
    move-object v0, p2

    .line 16
    goto :goto_0
.end method

.method private static a(I)I
    .locals 4

    .prologue
    .line 41
    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 44
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    rem-int/2addr v0, p0

    goto :goto_0
.end method

.method private static a([Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-static {p0}, Lcom/subao/common/e/p;->a([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    :cond_0
    :goto_0
    return-object v0

    .line 27
    :cond_1
    array-length v2, p0

    .line 28
    invoke-static {v2}, Lcom/subao/common/e/p;->a(I)I

    move-result v3

    .line 29
    aget-object v1, p0, v3

    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 31
    const/4 v1, 0x1

    if-eq v2, v1, :cond_0

    .line 34
    add-int/lit8 v0, v3, 0x1

    rem-int/2addr v0, v2

    aget-object v0, p0, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private static a([Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .prologue
    .line 20
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/subao/common/e/p$a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subao/common/e/p$a;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 55
    sget-object v0, Lcom/subao/common/e/p$a;->c:Lcom/subao/common/e/p$a;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/subao/common/e/p;->b:[Ljava/lang/Object;

    .line 56
    :goto_0
    invoke-static {v0, p2}, Lcom/subao/common/e/p;->a([Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    sget-object v1, Lcom/subao/common/e/p$a;->a:Lcom/subao/common/e/p$a;

    if-ne p1, v1, :cond_0

    .line 58
    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/subao/common/e/p;->b:[Ljava/lang/Object;

    invoke-static {v0, p2}, Lcom/subao/common/e/p;->a([Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    :cond_0
    return-object v0

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/subao/common/e/p;->a:[Ljava/lang/Object;

    goto :goto_0
.end method
