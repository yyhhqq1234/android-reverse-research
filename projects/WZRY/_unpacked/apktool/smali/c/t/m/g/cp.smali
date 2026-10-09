.class public Lc/t/m/g/cp;
.super Ljava/lang/Object;
.source "TL"


# static fields
.field private static f:Lc/t/m/g/cp;


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lc/t/m/g/cp;->f:Lc/t/m/g/cp;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, Lc/t/m/g/cp;->a:F

    .line 31
    iput v0, p0, Lc/t/m/g/cp;->b:F

    .line 32
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lc/t/m/g/cp;->c:F

    .line 34
    iput-boolean v1, p0, Lc/t/m/g/cp;->d:Z

    .line 35
    iput-boolean v1, p0, Lc/t/m/g/cp;->e:Z

    .line 37
    return-void
.end method

.method public static a()Lc/t/m/g/cp;
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lc/t/m/g/cp;->f:Lc/t/m/g/cp;

    if-nez v0, :cond_1

    .line 55
    const-class v1, Lc/t/m/g/cp;

    monitor-enter v1

    .line 56
    :try_start_0
    sget-object v0, Lc/t/m/g/cp;->f:Lc/t/m/g/cp;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lc/t/m/g/cp;

    invoke-direct {v0}, Lc/t/m/g/cp;-><init>()V

    sput-object v0, Lc/t/m/g/cp;->f:Lc/t/m/g/cp;

    .line 59
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_1
    sget-object v0, Lc/t/m/g/cp;->f:Lc/t/m/g/cp;

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/util/List;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v3, 0x0

    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u9897\u536b\u661f,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v8, :cond_b

    .line 95
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [F

    move v1, v2

    .line 96
    :goto_0
    array-length v0, v5

    if-ge v1, v0, :cond_1

    .line 97
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 98
    if-nez v0, :cond_0

    move v0, v3

    :goto_1
    aput v0, v5, v1

    .line 96
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1

    .line 101
    :cond_1
    invoke-static {v5}, Ljava/util/Arrays;->sort([F)V

    .line 102
    new-array v1, v8, [F

    move v0, v2

    .line 104
    :goto_2
    if-ge v0, v8, :cond_2

    .line 105
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v0

    aget v6, v5, v6

    aput v6, v1, v0

    .line 106
    aget v6, v1, v0

    add-float/2addr v3, v6

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 109
    :cond_2
    const/high16 v0, 0x40a00000    # 5.0f

    div-float v0, v3, v0

    .line 110
    const-string v3, "\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string/jumbo v3, "\u7edd\u5bf9\u5224\u65ad\uff1a"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    aget v1, v1, v2

    const/high16 v3, 0x420c0000    # 35.0f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_c

    .line 121
    iput-boolean v7, p0, Lc/t/m/g/cp;->d:Z

    .line 122
    const-string/jumbo v1, "\u5ba4\u5916|"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_3
    :goto_3
    const/high16 v1, 0x41b00000    # 22.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_4

    .line 128
    const-string/jumbo v1, "\u5ba4\u5185|"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iput-boolean v2, p0, Lc/t/m/g/cp;->d:Z

    .line 142
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "avg"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "avg\'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lc/t/m/g/cp;->a:F

    sub-float v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "avgMax"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lc/t/m/g/cp;->b:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "avgMin"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lc/t/m/g/cp;->c:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-boolean v1, p0, Lc/t/m/g/cp;->d:Z

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 147
    const-string v1, "\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget v1, p0, Lc/t/m/g/cp;->b:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_5

    .line 150
    iput v0, p0, Lc/t/m/g/cp;->b:F

    .line 152
    :cond_5
    iget v1, p0, Lc/t/m/g/cp;->c:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_6

    .line 153
    iput v0, p0, Lc/t/m/g/cp;->c:F

    .line 155
    :cond_6
    iput v0, p0, Lc/t/m/g/cp;->a:F

    .line 157
    const-string/jumbo v1, "\u76f8\u5bf9\u5224\u65ad\uff1a"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget v1, p0, Lc/t/m/g/cp;->a:F

    sub-float v1, v0, v1

    const/high16 v3, 0x40400000    # 3.0f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_7

    .line 159
    const-string/jumbo v1, "\u4fe1\u53f7\u589e\u5f3a"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_7
    iget v1, p0, Lc/t/m/g/cp;->a:F

    sub-float/2addr v1, v0

    cmpl-float v1, v1, v9

    if-lez v1, :cond_8

    .line 163
    const-string/jumbo v1, "\u4fe1\u53f7\u8870\u5f31"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iput-boolean v2, p0, Lc/t/m/g/cp;->e:Z

    .line 166
    :cond_8
    iget v1, p0, Lc/t/m/g/cp;->b:F

    iget v3, p0, Lc/t/m/g/cp;->c:F

    add-float/2addr v1, v3

    div-float/2addr v1, v9

    cmpl-float v1, v0, v1

    if-lez v1, :cond_d

    .line 167
    iput-boolean v7, p0, Lc/t/m/g/cp;->e:Z

    .line 178
    :cond_9
    :goto_4
    iget-boolean v0, p0, Lc/t/m/g/cp;->d:Z

    iget-boolean v1, p0, Lc/t/m/g/cp;->e:Z

    if-eq v0, v1, :cond_a

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n\u51b2\u7a81"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lc/t/m/g/cp;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lc/t/m/g/cp;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n\u6700\u7ec8\u7ed3\u679c"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lc/t/m/g/cp;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    iget-boolean v0, p0, Lc/t/m/g/cp;->e:Z

    return v0

    .line 123
    :cond_c
    const/high16 v1, 0x41f00000    # 30.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    .line 124
    iput-boolean v7, p0, Lc/t/m/g/cp;->d:Z

    .line 125
    const-string/jumbo v1, "\u5ba4\u5916|"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 170
    :cond_d
    const/high16 v1, 0x41b00000    # 22.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    .line 171
    iput-boolean v2, p0, Lc/t/m/g/cp;->e:Z

    goto :goto_4
.end method
