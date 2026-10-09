.class public Lcom/subao/common/b/o;
.super Ljava/lang/Object;
.source "UserConfig.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Z

.field public final d:C


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/16 v3, 0x30

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/subao/common/b/o;->a:Ljava/lang/String;

    .line 36
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v3, v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/subao/common/b/o;->b:Z

    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v3, v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/subao/common/b/o;->c:Z

    .line 38
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/subao/common/b/o;->d:C

    .line 39
    return-void

    :cond_0
    move v0, v2

    .line 36
    goto :goto_0

    :cond_1
    move v1, v2

    .line 37
    goto :goto_1
.end method

.method public constructor <init>(ZZC)V
    .locals 6

    .prologue
    const/16 v1, 0x31

    const/16 v2, 0x30

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean p1, p0, Lcom/subao/common/b/o;->b:Z

    .line 43
    iput-boolean p2, p0, Lcom/subao/common/b/o;->c:Z

    .line 44
    iput-char p3, p0, Lcom/subao/common/b/o;->d:C

    .line 45
    const-string v3, "%c%c%c"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    :goto_1
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/b/o;->a:Ljava/lang/String;

    .line 46
    return-void

    :cond_0
    move v0, v2

    .line 45
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Lcom/subao/common/b/o;
    .locals 2

    .prologue
    .line 28
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/subao/common/b/o;

    invoke-direct {v0, p0}, Lcom/subao/common/b/o;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 55
    if-ne p0, p1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v0

    .line 58
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 59
    goto :goto_0

    .line 61
    :cond_2
    instance-of v2, p1, Lcom/subao/common/b/o;

    if-nez v2, :cond_3

    move v0, v1

    .line 62
    goto :goto_0

    .line 64
    :cond_3
    check-cast p1, Lcom/subao/common/b/o;

    .line 65
    iget-boolean v2, p0, Lcom/subao/common/b/o;->b:Z

    iget-boolean v3, p1, Lcom/subao/common/b/o;->b:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/subao/common/b/o;->c:Z

    iget-boolean v3, p1, Lcom/subao/common/b/o;->c:Z

    if-ne v2, v3, :cond_4

    iget-char v2, p0, Lcom/subao/common/b/o;->d:C

    iget-char v3, p1, Lcom/subao/common/b/o;->d:C

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/subao/common/b/o;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/b/o;->a:Ljava/lang/String;

    .line 68
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/subao/common/b/o;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "(null)"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/subao/common/b/o;->a:Ljava/lang/String;

    goto :goto_0
.end method
