.class public Lcom/subao/common/e/b;
.super Ljava/lang/Object;
.source "AccelGame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/e/b$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:Z

.field private final e:Ljava/lang/String;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/e/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/e/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/e/b$a;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/e/b$a;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/subao/common/e/b;->a:Ljava/lang/String;

    .line 43
    iput p2, p0, Lcom/subao/common/e/b;->b:I

    .line 44
    iput-object p3, p0, Lcom/subao/common/e/b;->e:Ljava/lang/String;

    .line 45
    iput p4, p0, Lcom/subao/common/e/b;->c:I

    .line 46
    iget-object v0, p0, Lcom/subao/common/e/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/subao/common/e/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/subao/common/e/b;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/subao/common/e/b;->d:Z

    .line 52
    :goto_0
    iput-object p5, p0, Lcom/subao/common/e/b;->f:Ljava/util/List;

    .line 53
    iput-object p6, p0, Lcom/subao/common/e/b;->g:Ljava/util/List;

    .line 55
    iput-object p7, p0, Lcom/subao/common/e/b;->i:Ljava/util/List;

    .line 56
    iput-object p8, p0, Lcom/subao/common/e/b;->h:Ljava/util/List;

    .line 57
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/subao/common/e/b;->d:Z

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/subao/common/e/b;
    .locals 9
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/e/b$a;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/e/b$a;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/subao/common/e/b;"
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/subao/common/e/b;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/subao/common/e/b;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 61
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 62
    const/16 v2, 0x20

    if-lt v1, v2, :cond_0

    const/16 v2, 0x7f

    if-le v1, v2, :cond_1

    .line 63
    :cond_0
    const/4 v0, 0x0

    .line 67
    :goto_1
    return v0

    .line 60
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 67
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method a(I)Lcom/subao/common/e/b;
    .locals 9
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lcom/subao/common/e/b;

    iget-object v1, p0, Lcom/subao/common/e/b;->a:Ljava/lang/String;

    iget v2, p0, Lcom/subao/common/e/b;->b:I

    iget-object v3, p0, Lcom/subao/common/e/b;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/subao/common/e/b;->f:Ljava/util/List;

    iget-object v6, p0, Lcom/subao/common/e/b;->g:Ljava/util/List;

    iget-object v7, p0, Lcom/subao/common/e/b;->i:Ljava/util/List;

    iget-object v8, p0, Lcom/subao/common/e/b;->h:Ljava/util/List;

    move v4, p1

    invoke-direct/range {v0 .. v8}, Lcom/subao/common/e/b;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/subao/common/e/b;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/subao/common/e/b;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 98
    iget v0, p0, Lcom/subao/common/e/b;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Lcom/subao/common/j/l;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 106
    iget v0, p0, Lcom/subao/common/e/b;->c:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 107
    iget v0, p0, Lcom/subao/common/e/b;->c:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    .line 108
    sget-object v0, Lcom/subao/common/j/l;->c:Lcom/subao/common/j/l;

    .line 115
    :goto_0
    return-object v0

    .line 110
    :cond_0
    sget-object v0, Lcom/subao/common/j/l;->a:Lcom/subao/common/j/l;

    goto :goto_0

    .line 112
    :cond_1
    iget v0, p0, Lcom/subao/common/e/b;->c:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2

    .line 113
    sget-object v0, Lcom/subao/common/j/l;->b:Lcom/subao/common/j/l;

    goto :goto_0

    .line 115
    :cond_2
    sget-object v0, Lcom/subao/common/j/l;->c:Lcom/subao/common/j/l;

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/subao/common/e/b;->c:I

    return v0
.end method

.method public f()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/subao/common/e/b$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/subao/common/e/b;->f:Ljava/util/List;

    return-object v0
.end method

.method public g()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/subao/common/e/b$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/subao/common/e/b;->g:Ljava/util/List;

    return-object v0
.end method

.method public h()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/subao/common/e/b;->h:Ljava/util/List;

    return-object v0
.end method

.method public i()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/subao/common/e/b;->i:Ljava/util/List;

    return-object v0
.end method
