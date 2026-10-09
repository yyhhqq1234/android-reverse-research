.class public final Lcom/tencent/beacon/cover/g;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field private static e:Lcom/tencent/beacon/cover/g;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/beacon/cover/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/tencent/beacon/cover/g;->a:Ljava/lang/String;

    .line 18
    sput-object v0, Lcom/tencent/beacon/cover/g;->b:Ljava/lang/String;

    .line 25
    sput-object v0, Lcom/tencent/beacon/cover/g;->e:Lcom/tencent/beacon/cover/g;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/beacon/cover/g;->d:Ljava/util/List;

    .line 35
    if-nez p1, :cond_0

    .line 36
    const-string v0, "W"

    const-string v1, "context is null!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/beacon/cover/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/cover/g;->c:Landroid/content/Context;

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 187
    const-wide/16 v0, 0x0

    .line 189
    :try_start_0
    const-string v2, "\\."

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 192
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/beacon/cover/g;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/tencent/beacon/cover/g;->e:Lcom/tencent/beacon/cover/g;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/tencent/beacon/cover/g;

    invoke-direct {v0, p0}, Lcom/tencent/beacon/cover/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/beacon/cover/g;->e:Lcom/tencent/beacon/cover/g;

    .line 31
    :cond_0
    sget-object v0, Lcom/tencent/beacon/cover/g;->e:Lcom/tencent/beacon/cover/g;

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/beacon/cover/a;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/beacon/cover/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 199
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 200
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/cover/a;

    .line 203
    iget-object v1, p0, Lcom/tencent/beacon/cover/g;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v2, v3

    move v4, v3

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/beacon/cover/a;

    .line 204
    iget v9, v0, Lcom/tencent/beacon/cover/a;->a:I

    iget v10, v1, Lcom/tencent/beacon/cover/a;->a:I

    if-ne v9, v10, :cond_5

    .line 206
    iget-object v2, v0, Lcom/tencent/beacon/cover/a;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/beacon/cover/g;->a(Ljava/lang/String;)J

    move-result-wide v10

    .line 207
    iget-object v1, v1, Lcom/tencent/beacon/cover/a;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/beacon/cover/g;->a(Ljava/lang/String;)J

    move-result-wide v12

    .line 208
    cmp-long v1, v10, v12

    if-lez v1, :cond_4

    move v1, v5

    move v4, v5

    :goto_2
    move v2, v1

    .line 210
    goto :goto_1

    .line 211
    :cond_1
    if-nez v4, :cond_2

    if-nez v2, :cond_0

    .line 212
    :cond_2
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 214
    :cond_3
    return-object v6

    :cond_4
    move v1, v5

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method private a(Lcom/tencent/beacon/cover/a;)V
    .locals 4

    .prologue
    .line 172
    const/4 v2, -0x1

    .line 173
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/tencent/beacon/cover/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/tencent/beacon/cover/g;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/cover/a;

    .line 175
    iget v3, p1, Lcom/tencent/beacon/cover/a;->a:I

    iget v0, v0, Lcom/tencent/beacon/cover/a;->a:I

    if-ne v3, v0, :cond_1

    .line 180
    :goto_1
    if-ltz v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/tencent/beacon/cover/g;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/tencent/beacon/cover/g;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    return-void

    .line 173
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private a(J)Z
    .locals 5

    .prologue
    .line 138
    const-wide/16 v0, 0x0

    .line 140
    :try_start_0
    iget-object v2, p0, Lcom/tencent/beacon/cover/g;->c:Landroid/content/Context;

    const-string v3, "LAST_UPDATE_TIME"

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Lcom/tencent/beacon/cover/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 143
    :goto_0
    sub-long v0, p1, v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private b()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/beacon/cover/g;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "beacon/comp"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x0

    .line 149
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 152
    if-eqz v2, :cond_0

    array-length v1, v2

    if-lez v1, :cond_0

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/tencent/beacon/cover/f;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    :cond_0
    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 221
    iget-object v0, p0, Lcom/tencent/beacon/cover/g;->c:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "beaconcomp"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "comp_list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/beacon/cover/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {v0}, Lcom/tencent/beacon/cover/f;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 224
    invoke-direct {p0, v0}, Lcom/tencent/beacon/cover/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 227
    const/16 v0, 0x800

    new-array v6, v0, [B

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/beacon/cover/g;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "beacon/comp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 229
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/tencent/beacon/cover/a;

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "beaconcomp"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/tencent/beacon/cover/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 234
    iget v0, v7, Lcom/tencent/beacon/cover/a;->c:I

    sget v3, Lcom/tencent/beacon/cover/f;->b:I

    if-ne v0, v3, :cond_4

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v7, Lcom/tencent/beacon/cover/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".jar"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/tencent/beacon/cover/a;->d:Ljava/lang/String;

    .line 237
    iget-object v0, p0, Lcom/tencent/beacon/cover/g;->c:Landroid/content/Context;

    iget-object v3, v7, Lcom/tencent/beacon/cover/a;->d:Ljava/lang/String;

    iget v4, v7, Lcom/tencent/beacon/cover/a;->f:I

    int-to-long v4, v4

    invoke-static/range {v0 .. v6}, Lcom/tencent/beacon/cover/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[B)Z

    move-result v0

    .line 241
    :goto_1
    iget v3, v7, Lcom/tencent/beacon/cover/a;->c:I

    sget v4, Lcom/tencent/beacon/cover/f;->c:I

    if-ne v3, v4, :cond_1

    iget-object v3, v7, Lcom/tencent/beacon/cover/a;->h:Ljava/lang/String;

    .line 242
    invoke-static {}, Lcom/tencent/beacon/cover/f;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 244
    iget-object v0, v7, Lcom/tencent/beacon/cover/a;->d:Ljava/lang/String;

    iget-object v3, v7, Lcom/tencent/beacon/cover/a;->d:Ljava/lang/String;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/tencent/beacon/cover/a;->d:Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lcom/tencent/beacon/cover/g;->c:Landroid/content/Context;

    iget-object v3, v7, Lcom/tencent/beacon/cover/a;->d:Ljava/lang/String;

    iget v4, v7, Lcom/tencent/beacon/cover/a;->f:I

    int-to-long v4, v4

    invoke-static/range {v0 .. v6}, Lcom/tencent/beacon/cover/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[B)Z

    move-result v0

    .line 249
    :cond_1
    if-eqz v0, :cond_0

    .line 250
    invoke-direct {p0, v7}, Lcom/tencent/beacon/cover/g;->a(Lcom/tencent/beacon/cover/a;)V

    goto :goto_0

    .line 255
    :cond_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 256
    iget-object v0, p0, Lcom/tencent/beacon/cover/g;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/tencent/beacon/cover/f;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lcom/tencent/beacon/cover/g;->c:Landroid/content/Context;

    const-string v2, "COMP_INFO"

    invoke-static {v1, v2, v0}, Lcom/tencent/beacon/cover/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 260
    :goto_2
    return-object v0

    :cond_3
    const-string v0, ""

    goto :goto_2

    :cond_4
    move v0, v8

    goto :goto_1
.end method


# virtual methods
.method final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/beacon/cover/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/tencent/beacon/cover/g;->d:Ljava/util/List;

    return-object v0
.end method

.method public final run()V
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 44
    .line 1055
    iget-object v0, p0, Lcom/tencent/beacon/cover/g;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1060
    const-string v5, "check"

    .line 1061
    iget-object v0, p0, Lcom/tencent/beacon/cover/g;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/cover/d;->a(Landroid/content/Context;)Lcom/tencent/beacon/cover/d;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/tencent/beacon/cover/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1265
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/beacon/cover/g;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "beacon/comp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1266
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1267
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1269
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/beacon/cover/g;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "beacon/odex"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1270
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1271
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1064
    :cond_1
    iget-object v0, p0, Lcom/tencent/beacon/cover/g;->c:Landroid/content/Context;

    const-string v1, "COMP_INFO"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/tencent/beacon/cover/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1066
    invoke-static {v0}, Lcom/tencent/beacon/cover/f;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1069
    iget-object v1, p0, Lcom/tencent/beacon/cover/g;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/beacon/cover/f;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1070
    iget-object v2, p0, Lcom/tencent/beacon/cover/g;->c:Landroid/content/Context;

    const-string v6, "APP_VER"

    const-string v7, ""

    invoke-static {v2, v6, v7}, Lcom/tencent/beacon/cover/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1071
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1072
    invoke-direct {p0}, Lcom/tencent/beacon/cover/g;->c()Ljava/lang/String;

    .line 1073
    iget-object v2, p0, Lcom/tencent/beacon/cover/g;->c:Landroid/content/Context;

    const-string v6, "APP_VER"

    invoke-static {v2, v6, v1}, Lcom/tencent/beacon/cover/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1076
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 1077
    const-string v1, "W"

    const-string v2, "comp config has error!"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v6}, Lcom/tencent/beacon/cover/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1080
    :cond_3
    invoke-direct {p0}, Lcom/tencent/beacon/cover/g;->b()Ljava/util/List;

    move-result-object v6

    .line 1082
    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    .line 1083
    :cond_4
    const-string v0, "W"

    const-string v1, "local comps has error!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/beacon/cover/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v4

    .line 1110
    :cond_5
    if-eqz v2, :cond_6

    .line 1111
    const-string v0, "W"

    const-string v1, "start thread to load component."

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v6}, Lcom/tencent/beacon/cover/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1112
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/tencent/beacon/cover/g;->c:Landroid/content/Context;

    iget-object v6, p0, Lcom/tencent/beacon/cover/g;->d:Ljava/util/List;

    invoke-static {v1, v6}, Lcom/tencent/beacon/cover/b;->a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/beacon/cover/b;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1117
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1119
    if-eqz v2, :cond_7

    invoke-direct {p0, v0, v1}, Lcom/tencent/beacon/cover/g;->a(J)Z

    move-result v2

    if-nez v2, :cond_7

    move v3, v4

    .line 1122
    :cond_7
    if-eqz v3, :cond_8

    .line 1124
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/tencent/beacon/cover/h;

    iget-object v4, p0, Lcom/tencent/beacon/cover/g;->c:Landroid/content/Context;

    iget-object v6, p0, Lcom/tencent/beacon/cover/g;->d:Ljava/util/List;

    invoke-direct {v3, v4, v6}, Lcom/tencent/beacon/cover/h;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1125
    iget-object v2, p0, Lcom/tencent/beacon/cover/g;->c:Landroid/content/Context;

    const-string v3, "LAST_UPDATE_TIME"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/tencent/beacon/cover/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1128
    :cond_8
    iget-object v0, p0, Lcom/tencent/beacon/cover/g;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/cover/d;->a(Landroid/content/Context;)Lcom/tencent/beacon/cover/d;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/tencent/beacon/cover/d;->b(Ljava/lang/String;)V

    .line 45
    :cond_9
    return-void

    .line 1087
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v3

    :cond_b
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/cover/a;

    .line 1088
    if-eqz v0, :cond_b

    .line 1091
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1092
    const-string v9, ","

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1093
    array-length v9, v1

    const/4 v10, 0x3

    if-ne v9, v10, :cond_c

    .line 1094
    iget-object v9, v0, Lcom/tencent/beacon/cover/a;->d:Ljava/lang/String;

    aget-object v10, v1, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    iget v9, v0, Lcom/tencent/beacon/cover/a;->f:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aget-object v10, v1, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, v0, Lcom/tencent/beacon/cover/a;->g:Ljava/lang/String;

    const/4 v10, 0x2

    aget-object v1, v1, v10

    .line 1095
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1097
    iget-object v1, p0, Lcom/tencent/beacon/cover/g;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v3

    .line 1102
    :goto_1
    if-nez v0, :cond_d

    .line 1103
    const-string v0, "W"

    const-string/jumbo v1, "the config is not match local comp!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/beacon/cover/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v4

    :goto_2
    move v2, v0

    .line 1106
    goto :goto_0

    :cond_d
    move v0, v2

    goto :goto_2

    :cond_e
    move v0, v4

    goto :goto_1
.end method
