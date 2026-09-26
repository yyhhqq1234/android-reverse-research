.class Lcom/netease/mpay/widget/b/v$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/widget/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:[I


# direct methods
.method public constructor <init>(IIII)V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    const/4 v1, 0x3

    aput p4, v0, v1

    invoke-direct {p0, v0}, Lcom/netease/mpay/widget/b/v$a;-><init>([I)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/widget/b/v$a;->a:[I

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/widget/b/v$a;)I
    .locals 4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v0, 0x4

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/widget/b/v$a;->a:[I

    aget v0, v0, v2

    iget-object v3, p1, Lcom/netease/mpay/widget/b/v$a;->a:[I

    aget v3, v3, v2

    sub-int/2addr v0, v3

    if-eqz v0, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/netease/mpay/widget/b/v$a;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/widget/b/v$a;->a(Lcom/netease/mpay/widget/b/v$a;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/netease/mpay/widget/b/v$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lcom/netease/mpay/widget/b/v$a;

    iget-object v0, p0, Lcom/netease/mpay/widget/b/v$a;->a:[I

    iget-object v1, p1, Lcom/netease/mpay/widget/b/v$a;->a:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/b/v$a;->a:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method
