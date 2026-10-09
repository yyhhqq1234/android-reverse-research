.class public Lcom/subao/common/l/f;
.super Ljava/lang/Object;
.source "QosParam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/l/f$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/subao/common/l/f;


# instance fields
.field public final b:Lcom/subao/common/l/f$a;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/subao/common/l/f$a;->a:Lcom/subao/common/l/f$a;

    invoke-static {v0}, Lcom/subao/common/l/f;->a(Lcom/subao/common/l/f$a;)Lcom/subao/common/l/f;

    move-result-object v0

    sput-object v0, Lcom/subao/common/l/f;->a:Lcom/subao/common/l/f;

    return-void
.end method

.method public constructor <init>(IILcom/subao/common/l/f$a;II)V
    .locals 0
    .param p3    # Lcom/subao/common/l/f$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/subao/common/l/f;->c:I

    .line 51
    iput p2, p0, Lcom/subao/common/l/f;->d:I

    .line 52
    iput-object p3, p0, Lcom/subao/common/l/f;->b:Lcom/subao/common/l/f$a;

    .line 53
    iput p4, p0, Lcom/subao/common/l/f;->e:I

    .line 54
    iput p5, p0, Lcom/subao/common/l/f;->f:I

    .line 55
    return-void
.end method

.method private static a([Ljava/lang/Integer;II)I
    .locals 1

    .prologue
    .line 81
    if-eqz p0, :cond_0

    array-length v0, p0

    if-gt v0, p1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return p2

    .line 84
    :cond_1
    aget-object v0, p0, p1

    .line 85
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0
.end method

.method public static a(Lcom/subao/common/l/f$a;)Lcom/subao/common/l/f;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 58
    new-instance v0, Lcom/subao/common/l/f;

    const/16 v2, 0x384

    move-object v3, p0

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/subao/common/l/f;-><init>(IILcom/subao/common/l/f$a;II)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/subao/common/l/f;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 67
    invoke-static {p0}, Lcom/subao/common/l/f;->b(Ljava/lang/String;)[Ljava/lang/Integer;

    move-result-object v5

    .line 68
    if-nez v5, :cond_0

    .line 69
    sget-object v0, Lcom/subao/common/l/f;->a:Lcom/subao/common/l/f;

    .line 76
    :goto_0
    return-object v0

    .line 71
    :cond_0
    new-instance v0, Lcom/subao/common/l/f;

    .line 72
    invoke-static {v5, v7, v7}, Lcom/subao/common/l/f;->a([Ljava/lang/Integer;II)I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x384

    .line 73
    invoke-static {v5, v2, v3}, Lcom/subao/common/l/f;->a([Ljava/lang/Integer;II)I

    move-result v2

    const/4 v3, 0x3

    sget-object v4, Lcom/subao/common/l/f$a;->a:Lcom/subao/common/l/f$a;

    iget v4, v4, Lcom/subao/common/l/f$a;->g:I

    .line 74
    invoke-static {v5, v3, v4}, Lcom/subao/common/l/f;->a([Ljava/lang/Integer;II)I

    move-result v3

    invoke-static {v3}, Lcom/subao/common/l/f$a;->a(I)Lcom/subao/common/l/f$a;

    move-result-object v3

    const/4 v4, 0x4

    .line 75
    invoke-static {v5, v4, v7}, Lcom/subao/common/l/f;->a([Ljava/lang/Integer;II)I

    move-result v4

    const/4 v6, 0x5

    .line 76
    invoke-static {v5, v6, v7}, Lcom/subao/common/l/f;->a([Ljava/lang/Integer;II)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/subao/common/l/f;-><init>(IILcom/subao/common/l/f$a;II)V

    goto :goto_0
.end method

.method static b(Ljava/lang/String;)[Ljava/lang/Integer;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 89
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-object v1

    .line 92
    :cond_1
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 93
    array-length v0, v4

    new-array v2, v0, [Ljava/lang/Integer;

    .line 94
    const/4 v0, 0x0

    array-length v5, v4

    move v3, v0

    :goto_1
    if-ge v3, v5, :cond_2

    .line 97
    :try_start_0
    aget-object v0, v4, v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 101
    :goto_2
    aput-object v0, v2, v3

    .line 94
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 98
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 99
    goto :goto_2

    :cond_2
    move-object v1, v2

    .line 103
    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x2c

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 133
    iget v1, p0, Lcom/subao/common/l/f;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/subao/common/l/f;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/subao/common/l/f;->b:Lcom/subao/common/l/f$a;

    iget v2, v2, Lcom/subao/common/l/f$a;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/subao/common/l/f;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/subao/common/l/f;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 108
    if-nez p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v1

    .line 111
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v0

    .line 112
    goto :goto_0

    .line 114
    :cond_2
    instance-of v2, p1, Lcom/subao/common/l/f;

    if-eqz v2, :cond_0

    .line 117
    check-cast p1, Lcom/subao/common/l/f;

    .line 118
    iget v2, p0, Lcom/subao/common/l/f;->c:I

    iget v3, p1, Lcom/subao/common/l/f;->c:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/subao/common/l/f;->d:I

    iget v3, p1, Lcom/subao/common/l/f;->d:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/subao/common/l/f;->b:Lcom/subao/common/l/f$a;

    iget-object v3, p1, Lcom/subao/common/l/f;->b:Lcom/subao/common/l/f$a;

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/subao/common/l/f;->e:I

    iget v3, p1, Lcom/subao/common/l/f;->e:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/subao/common/l/f;->f:I

    iget v3, p1, Lcom/subao/common/l/f;->f:I

    if-ne v2, v3, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/subao/common/l/f;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
