.class public final Lc/t/m/g/de;
.super Ljava/lang/Object;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/t/m/g/de$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lc/t/m/g/de$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lc/t/m/g/cs;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lc/t/m/g/de;->c:Ljava/util/LinkedList;

    .line 47
    const/16 v0, 0xa

    iput v0, p0, Lc/t/m/g/de;->a:I

    .line 48
    const/4 v0, 0x4

    iput v0, p0, Lc/t/m/g/de;->b:I

    .line 49
    new-instance v0, Lc/t/m/g/cs;

    invoke-direct {v0}, Lc/t/m/g/cs;-><init>()V

    iput-object v0, p0, Lc/t/m/g/de;->d:Lc/t/m/g/cs;

    .line 53
    return-void
.end method

.method private declared-synchronized a(Lc/t/m/g/de$a;Lc/t/m/g/cj;)Z
    .locals 16

    .prologue
    .line 176
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lc/t/m/g/de;->c:Ljava/util/LinkedList;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lc/t/m/g/de;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 177
    :cond_0
    const/4 v2, 0x1

    .line 218
    :goto_0
    monitor-exit p0

    return v2

    .line 178
    :cond_1
    :try_start_1
    move-object/from16 v0, p1

    iget v2, v0, Lc/t/m/g/de$a;->d:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 179
    const/4 v2, 0x1

    goto :goto_0

    .line 182
    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Lc/t/m/g/de$a;->d:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 183
    invoke-static/range {p2 .. p2}, Lc/t/m/g/eb;->a(Lc/t/m/g/cj;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static/range {p2 .. p2}, Lc/t/m/g/eb;->b(Lc/t/m/g/cj;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 184
    const/4 v2, 0x1

    goto :goto_0

    .line 187
    :cond_3
    move-object/from16 v0, p1

    iget-wide v4, v0, Lc/t/m/g/de$a;->c:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lc/t/m/g/de;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/t/m/g/de$a;

    iget-wide v2, v2, Lc/t/m/g/de$a;->c:J

    sub-long v2, v4, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lc/t/m/g/de;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 189
    const/4 v2, 0x1

    goto :goto_0

    .line 191
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lc/t/m/g/de;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lc/t/m/g/de;->b:I

    if-lt v2, v3, :cond_5

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_7

    .line 192
    const/4 v14, 0x0

    .line 193
    const/4 v11, 0x0

    .line 194
    const-wide/16 v12, 0x0

    .line 197
    const-wide/16 v6, 0x0

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lc/t/m/g/de;->c:Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lc/t/m/g/de;->c:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v15

    .line 199
    :goto_2
    invoke-interface {v15}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 200
    invoke-interface {v15}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lc/t/m/g/de$a;

    move-object v10, v0

    .line 201
    iget-wide v2, v10, Lc/t/m/g/de$a;->a:D

    iget-wide v4, v10, Lc/t/m/g/de$a;->b:D

    move-object/from16 v0, p1

    iget-wide v6, v0, Lc/t/m/g/de$a;->a:D

    move-object/from16 v0, p1

    iget-wide v8, v0, Lc/t/m/g/de$a;->b:D

    invoke-static/range {v2 .. v9}, Lc/t/m/g/f$a;->a(DDDD)D

    move-result-wide v2

    iget-wide v4, v10, Lc/t/m/g/de$a;->c:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lc/t/m/g/de$a;->c:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    div-double v6, v2, v4

    .line 203
    add-double v2, v12, v6

    .line 204
    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    cmpl-double v4, v6, v4

    if-lez v4, :cond_a

    .line 205
    add-int/lit8 v9, v14, 0x1

    .line 207
    :goto_3
    add-int/lit8 v8, v11, 0x1

    .line 208
    move-object/from16 v0, p0

    iget v4, v0, Lc/t/m/g/de;->b:I

    if-le v8, v4, :cond_9

    move-wide v4, v2

    .line 209
    :goto_4
    const/4 v2, 0x1

    if-le v9, v2, :cond_6

    .line 213
    const-string v2, "TxTrace"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "badPoints="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 191
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 216
    :cond_6
    invoke-static {}, Lc/t/m/g/cy;->b()Lc/t/m/g/cy;

    move-result-object v2

    const/4 v3, 0x1

    int-to-double v8, v8

    div-double/2addr v4, v8

    move-object/from16 v0, p1

    iget-wide v8, v0, Lc/t/m/g/de$a;->c:J

    invoke-virtual/range {v2 .. v9}, Lc/t/m/g/cy;->a(IDDJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    :cond_7
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 176
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_8
    move-wide v4, v12

    move v8, v11

    move v9, v14

    goto :goto_4

    :cond_9
    move-wide v12, v2

    move v11, v8

    move v14, v9

    goto :goto_2

    :cond_a
    move v9, v14

    goto :goto_3
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc/t/m/g/de;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 125
    iget-object v0, p0, Lc/t/m/g/de;->d:Lc/t/m/g/cs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/tencent/map/geolocation/TencentLocation;)V
    .locals 2

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc/t/m/g/de;->c:Ljava/util/LinkedList;

    invoke-static {p1}, Lc/t/m/g/de$a;->a(Lcom/tencent/map/geolocation/TencentLocation;)Lc/t/m/g/de$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lc/t/m/g/de;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lc/t/m/g/de;->a:I

    if-le v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lc/t/m/g/de;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :cond_0
    monitor-exit p0

    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/tencent/map/geolocation/TencentLocation;Lc/t/m/g/cj;)Z
    .locals 1

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lc/t/m/g/de$a;->a(Lcom/tencent/map/geolocation/TencentLocation;)Lc/t/m/g/de$a;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lc/t/m/g/de;->a(Lc/t/m/g/de$a;Lc/t/m/g/cj;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 0

    .prologue
    .line 149
    monitor-enter p0

    monitor-exit p0

    return-void
.end method
