.class public Lcom/subao/common/i/k;
.super Ljava/lang/Object;
.source "MessageUserId.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/subao/common/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/i/k$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/subao/common/i/k;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Lcom/subao/common/i/k$a;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:I

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Lcom/subao/common/i/b;


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final d:I

.field public final e:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final f:Lcom/subao/common/i/b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/subao/common/i/k$1;

    invoke-direct {v0}, Lcom/subao/common/i/k$1;-><init>()V

    sput-object v0, Lcom/subao/common/i/k;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/subao/common/i/b;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/subao/common/i/b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/subao/common/i/k;->a:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lcom/subao/common/i/k;->b:Ljava/lang/String;

    .line 99
    iput-object p3, p0, Lcom/subao/common/i/k;->c:Ljava/lang/String;

    .line 100
    iput p4, p0, Lcom/subao/common/i/k;->d:I

    .line 101
    iput-object p5, p0, Lcom/subao/common/i/k;->e:Ljava/lang/String;

    .line 102
    iput-object p6, p0, Lcom/subao/common/i/k;->f:Lcom/subao/common/i/b;

    .line 103
    return-void
.end method

.method public static a()Lcom/subao/common/i/k;
    .locals 7

    .prologue
    .line 125
    new-instance v0, Lcom/subao/common/i/k;

    invoke-static {}, Lcom/subao/common/i/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/subao/common/i/k;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/subao/common/i/k;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/subao/common/i/k;->e()I

    move-result v4

    invoke-static {}, Lcom/subao/common/i/k;->f()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/subao/common/i/k;->g()Lcom/subao/common/i/b;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/subao/common/i/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/subao/common/i/b;)V

    return-object v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 143
    const-class v1, Lcom/subao/common/i/k;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/subao/common/i/k;->h:Ljava/lang/String;

    .line 144
    invoke-static {}, Lcom/subao/common/i/k;->h()Lcom/subao/common/i/k$a;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v0, p0}, Lcom/subao/common/i/k$a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :cond_0
    monitor-exit v1

    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 242
    if-eqz p0, :cond_0

    sget-object v0, Lcom/subao/common/i/k;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    sput-object p1, Lcom/subao/common/i/k;->l:Ljava/lang/String;

    .line 245
    :cond_0
    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/subao/common/i/b;)V
    .locals 2

    .prologue
    .line 175
    const-class v1, Lcom/subao/common/i/k;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/subao/common/i/k;->i:Ljava/lang/String;

    .line 176
    sput-object p1, Lcom/subao/common/i/k;->j:Ljava/lang/String;

    .line 177
    sput p2, Lcom/subao/common/i/k;->k:I

    .line 178
    const/4 v0, 0x0

    sput-object v0, Lcom/subao/common/i/k;->l:Ljava/lang/String;

    .line 179
    sput-object p3, Lcom/subao/common/i/k;->m:Ljava/lang/String;

    .line 180
    sput-object p4, Lcom/subao/common/i/k;->n:Lcom/subao/common/i/b;

    .line 181
    invoke-static {}, Lcom/subao/common/i/k;->h()Lcom/subao/common/i/k$a;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_0

    .line 183
    invoke-interface {v0, p0, p1, p2}, Lcom/subao/common/i/k$a;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :cond_0
    monitor-exit v1

    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    const-class v0, Lcom/subao/common/i/k;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/subao/common/i/k;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 156
    sput-object p0, Lcom/subao/common/i/k;->i:Ljava/lang/String;

    .line 157
    sput-object v1, Lcom/subao/common/i/k;->j:Ljava/lang/String;

    .line 158
    const/4 v0, 0x0

    sput v0, Lcom/subao/common/i/k;->k:I

    .line 159
    sput-object v1, Lcom/subao/common/i/k;->l:Ljava/lang/String;

    .line 160
    sput-object v1, Lcom/subao/common/i/k;->m:Ljava/lang/String;

    .line 161
    sput-object v1, Lcom/subao/common/i/k;->n:Lcom/subao/common/i/b;

    .line 162
    return-void
.end method

.method public static declared-synchronized c()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 194
    const-class v0, Lcom/subao/common/i/k;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/subao/common/i/k;->i:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized d()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 204
    const-class v0, Lcom/subao/common/i/k;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/subao/common/i/k;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized e()I
    .locals 2

    .prologue
    .line 213
    const-class v0, Lcom/subao/common/i/k;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/subao/common/i/k;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized f()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 223
    const-class v0, Lcom/subao/common/i/k;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/subao/common/i/k;->l:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static g()Lcom/subao/common/i/b;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 238
    sget-object v0, Lcom/subao/common/i/k;->n:Lcom/subao/common/i/b;

    return-object v0
.end method

.method private static declared-synchronized h()Lcom/subao/common/i/k$a;
    .locals 2

    .prologue
    .line 106
    const-class v0, Lcom/subao/common/i/k;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/subao/common/i/k;->g:Lcom/subao/common/i/k$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 254
    if-ne p0, p1, :cond_1

    .line 269
    :cond_0
    :goto_0
    return v0

    .line 257
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 258
    goto :goto_0

    .line 260
    :cond_2
    instance-of v2, p1, Lcom/subao/common/i/k;

    if-nez v2, :cond_3

    move v0, v1

    .line 261
    goto :goto_0

    .line 263
    :cond_3
    check-cast p1, Lcom/subao/common/i/k;

    .line 264
    iget v2, p0, Lcom/subao/common/i/k;->d:I

    iget v3, p1, Lcom/subao/common/i/k;->d:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/subao/common/i/k;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/i/k;->a:Ljava/lang/String;

    .line 265
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/subao/common/i/k;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/i/k;->b:Ljava/lang/String;

    .line 266
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/subao/common/i/k;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/i/k;->c:Ljava/lang/String;

    .line 267
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/subao/common/i/k;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/i/k;->e:Ljava/lang/String;

    .line 268
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/subao/common/i/k;->f:Lcom/subao/common/i/b;

    iget-object v3, p1, Lcom/subao/common/i/k;->f:Lcom/subao/common/i/b;

    .line 269
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 274
    iget v0, p0, Lcom/subao/common/i/k;->d:I

    .line 275
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/subao/common/i/k;->a:Ljava/lang/String;

    aput-object v3, v2, v1

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/subao/common/i/k;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/subao/common/i/k;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/subao/common/i/k;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/subao/common/i/k;->f:Lcom/subao/common/i/b;

    aput-object v4, v2, v3

    .line 278
    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 279
    if-eqz v4, :cond_0

    .line 280
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    xor-int/2addr v0, v4

    .line 278
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    :cond_1
    return v0
.end method

.method public serialize(Landroid/util/JsonWriter;)V
    .locals 4

    .prologue
    .line 295
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 296
    const-string v0, "id"

    iget-object v1, p0, Lcom/subao/common/i/k;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 297
    const-string/jumbo v0, "userId"

    iget-object v1, p0, Lcom/subao/common/i/k;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 298
    const-string v0, "serviceId"

    iget-object v1, p0, Lcom/subao/common/i/k;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 299
    const-string v0, "stat"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v1, p0, Lcom/subao/common/i/k;->d:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 300
    const-string v0, "config"

    iget-object v1, p0, Lcom/subao/common/i/k;->e:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 301
    const-string v0, "credit"

    iget-object v1, p0, Lcom/subao/common/i/k;->f:Lcom/subao/common/i/b;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Lcom/subao/common/c;)Landroid/util/JsonWriter;

    .line 302
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 303
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 249
    sget-object v0, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v1, "[subaoId=%s, userId=%s, serviceId=%s, userStatus=%d, config=%s]"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/subao/common/i/k;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/subao/common/i/k;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/subao/common/i/k;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/subao/common/i/k;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/subao/common/i/k;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 312
    iget-object v0, p0, Lcom/subao/common/i/k;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/subao/common/i/k;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/subao/common/i/k;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 315
    iget v0, p0, Lcom/subao/common/i/k;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    iget-object v0, p0, Lcom/subao/common/i/k;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/subao/common/i/k;->f:Lcom/subao/common/i/b;

    if-nez v0, :cond_0

    .line 318
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    :goto_0
    return-void

    .line 320
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    iget-object v0, p0, Lcom/subao/common/i/k;->f:Lcom/subao/common/i/b;

    invoke-virtual {v0, p1, v1}, Lcom/subao/common/i/b;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0
.end method
