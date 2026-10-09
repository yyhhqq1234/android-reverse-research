.class Lcom/subao/common/l/c$m$a;
.super Ljava/lang/Object;
.source "QosManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/l/c$m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Lcom/subao/common/i/n$a;


# direct methods
.method private constructor <init>(ILjava/lang/String;Lcom/subao/common/i/n$a;)V
    .locals 0

    .prologue
    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 665
    iput p1, p0, Lcom/subao/common/l/c$m$a;->a:I

    .line 666
    iput-object p2, p0, Lcom/subao/common/l/c$m$a;->b:Ljava/lang/String;

    .line 667
    iput-object p3, p0, Lcom/subao/common/l/c$m$a;->c:Lcom/subao/common/i/n$a;

    .line 668
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 661
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/subao/common/l/c$m$a;-><init>(ILjava/lang/String;Lcom/subao/common/i/n$a;)V

    .line 662
    return-void
.end method

.method private static a(Lcom/subao/common/l/c$a;ILcom/subao/common/l/h;Ljava/lang/Exception;[B)Lcom/subao/common/i/n$a;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 682
    if-eqz p1, :cond_0

    .line 683
    new-instance v0, Lcom/subao/common/l/a;

    invoke-direct {v0, p0, p1}, Lcom/subao/common/l/a;-><init>(Lcom/subao/common/l/c$a;I)V

    .line 684
    invoke-virtual {v0, p2}, Lcom/subao/common/l/a;->a(Lcom/subao/common/l/h;)V

    .line 685
    invoke-virtual {v0, p3}, Lcom/subao/common/l/a;->a(Ljava/lang/Exception;)V

    .line 686
    invoke-virtual {v0, p4}, Lcom/subao/common/l/a;->a([B)V

    .line 687
    invoke-virtual {v0}, Lcom/subao/common/l/a;->a()Lcom/subao/common/i/n$a;

    move-result-object v0

    .line 689
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Lcom/subao/common/l/c$a;ILcom/subao/common/l/h;Ljava/lang/Exception;)Lcom/subao/common/l/c$m$a;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 672
    new-instance v0, Lcom/subao/common/l/c$m$a;

    invoke-static {p0, p1, p2, p3, v2}, Lcom/subao/common/l/c$m$a;->a(Lcom/subao/common/l/c$a;ILcom/subao/common/l/h;Ljava/lang/Exception;[B)Lcom/subao/common/i/n$a;

    move-result-object v1

    invoke-direct {v0, p1, v2, v1}, Lcom/subao/common/l/c$m$a;-><init>(ILjava/lang/String;Lcom/subao/common/i/n$a;)V

    return-object v0
.end method

.method static a(Lcom/subao/common/l/c$a;ILcom/subao/common/l/h;[B)Lcom/subao/common/l/c$m$a;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 677
    new-instance v0, Lcom/subao/common/l/c$m$a;

    invoke-static {p0, p1, p2, v2, p3}, Lcom/subao/common/l/c$m$a;->a(Lcom/subao/common/l/c$a;ILcom/subao/common/l/h;Ljava/lang/Exception;[B)Lcom/subao/common/i/n$a;

    move-result-object v1

    invoke-direct {v0, p1, v2, v1}, Lcom/subao/common/l/c$m$a;-><init>(ILjava/lang/String;Lcom/subao/common/i/n$a;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 695
    if-ne p1, p0, :cond_1

    .line 707
    :cond_0
    :goto_0
    return v0

    .line 698
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 699
    goto :goto_0

    .line 701
    :cond_2
    instance-of v2, p1, Lcom/subao/common/l/c$m$a;

    if-nez v2, :cond_3

    move v0, v1

    .line 702
    goto :goto_0

    .line 704
    :cond_3
    check-cast p1, Lcom/subao/common/l/c$m$a;

    .line 705
    iget v2, p0, Lcom/subao/common/l/c$m$a;->a:I

    iget v3, p1, Lcom/subao/common/l/c$m$a;->a:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/subao/common/l/c$m$a;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/l/c$m$a;->b:Ljava/lang/String;

    .line 706
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/subao/common/l/c$m$a;->c:Lcom/subao/common/i/n$a;

    iget-object v3, p1, Lcom/subao/common/l/c$m$a;->c:Lcom/subao/common/i/n$a;

    .line 707
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 712
    sget-object v1, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v2, "[error=%d, token=%s, event=%s]"

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget v4, p0, Lcom/subao/common/l/c$m$a;->a:I

    .line 713
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/subao/common/l/c$m$a;->b:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/subao/common/l/c$m$a;->c:Lcom/subao/common/i/n$a;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    aput-object v0, v3, v4

    .line 712
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/subao/common/l/c$m$a;->c:Lcom/subao/common/i/n$a;

    iget-object v0, v0, Lcom/subao/common/i/n$a;->a:Ljava/lang/String;

    goto :goto_0
.end method
