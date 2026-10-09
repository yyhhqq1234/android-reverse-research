.class public Lcom/subao/common/e/z;
.super Lcom/subao/common/e/ab;
.source "ParallelConfigDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/e/z$a;
    }
.end annotation


# static fields
.field private static a:Z


# instance fields
.field private final b:Lcom/subao/common/g/c;


# direct methods
.method private constructor <init>(Lcom/subao/common/e/ab$a;Lcom/subao/common/g/c;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/subao/common/e/ab;-><init>(Lcom/subao/common/e/ab$a;)V

    .line 37
    iput-object p2, p0, Lcom/subao/common/e/z;->b:Lcom/subao/common/g/c;

    .line 38
    return-void
.end method

.method public static a(Lcom/subao/common/e/ab$a;Lcom/subao/common/g/c;)V
    .locals 4

    .prologue
    .line 44
    new-instance v0, Lcom/subao/common/e/z;

    invoke-direct {v0, p0, p1}, Lcom/subao/common/e/z;-><init>(Lcom/subao/common/e/ab$a;Lcom/subao/common/g/c;)V

    .line 45
    invoke-virtual {v0}, Lcom/subao/common/e/z;->j()Lcom/subao/common/e/ac;

    move-result-object v1

    .line 46
    invoke-direct {v0, v1}, Lcom/subao/common/e/z;->b(Lcom/subao/common/e/ac;)V

    .line 47
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/subao/common/e/ac;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/subao/common/e/z;->b([Lcom/subao/common/e/ac;)Z

    .line 48
    return-void
.end method

.method private static a(Lcom/subao/common/e/z$a;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 67
    if-gtz p1, :cond_0

    .line 68
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 70
    :cond_0
    const/16 v2, 0x15

    if-ge p1, v2, :cond_2

    .line 71
    const-string v1, "SubaoParallel"

    const-string v2, "Android SDK version too low"

    invoke-static {v1, v2}, Lcom/subao/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_1
    :goto_0
    return v0

    .line 74
    :cond_2
    if-eqz p0, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/subao/common/e/z$a;->a()Z

    move-result v2

    if-nez v2, :cond_3

    .line 78
    const-string v1, "SubaoParallel"

    const-string v2, "Parallel-Accel switch off"

    invoke-static {v1, v2}, Lcom/subao/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_3
    if-nez p2, :cond_4

    .line 82
    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 84
    :cond_4
    invoke-virtual {p0, p2}, Lcom/subao/common/e/z$a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 85
    const-string v2, "SubaoParallel"

    const-string v3, "The model \'%s\' matched"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p2, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/subao/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 86
    goto :goto_0

    .line 88
    :cond_5
    const-string v2, "SubaoParallel"

    const-string v3, "The model \'%s\' is not matched, check CPU ..."

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p2, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/subao/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    if-nez p3, :cond_6

    .line 90
    invoke-static {}, Lcom/subao/common/n/e$a;->a()Ljava/lang/String;

    move-result-object p3

    .line 92
    :cond_6
    invoke-virtual {p0, p3}, Lcom/subao/common/e/z$a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 93
    const-string v2, "SubaoParallel"

    const-string v3, "The CPU \'%s\' matched"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p3, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/subao/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 94
    goto :goto_0

    .line 96
    :cond_7
    const-string v2, "SubaoParallel"

    const-string v3, "The CPU \'%s\' is not matched"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v0

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/subao/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Lcom/subao/common/e/ac;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 120
    sput-boolean v1, Lcom/subao/common/e/z;->a:Z

    .line 121
    invoke-static {p1}, Lcom/subao/common/e/z$a;->a(Lcom/subao/common/e/ac;)Lcom/subao/common/e/z$a;

    move-result-object v0

    .line 122
    const/4 v2, -0x1

    invoke-static {v0, v2, v3, v3}, Lcom/subao/common/e/z;->a(Lcom/subao/common/e/z$a;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/subao/common/e/z;->a:Z

    .line 123
    iget-object v3, p0, Lcom/subao/common/e/z;->b:Lcom/subao/common/g/c;

    const-string v4, "key_enable_qpp"

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v1, v4, v0}, Lcom/subao/common/g/c;->a(ILjava/lang/String;I)V

    .line 124
    const-string v0, "SubaoParallel"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const-string v1, "SubaoParallel"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Now switch turn to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v2, :cond_2

    const-string v0, "on"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 123
    goto :goto_0

    .line 125
    :cond_2
    const-string v0, "off"

    goto :goto_1
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/subao/common/e/z;->a:Z

    return v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string v0, "configs/parallel"

    return-object v0
.end method

.method protected a(Lcom/subao/common/e/ac;)V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/subao/common/e/ab;->a(Lcom/subao/common/e/ac;)V

    .line 114
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/subao/common/e/ac;->d:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0, p1}, Lcom/subao/common/e/z;->b(Lcom/subao/common/e/ac;)V

    .line 117
    :cond_0
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string v0, "Parallel"

    return-object v0
.end method
