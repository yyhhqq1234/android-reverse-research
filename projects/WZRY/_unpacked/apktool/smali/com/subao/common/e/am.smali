.class public Lcom/subao/common/e/am;
.super Lcom/subao/common/g;
.source "SubaoIdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/e/am$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/subao/common/g",
        "<",
        "Lcom/subao/common/e/am$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/subao/common/e/am;


# instance fields
.field private b:[Lcom/subao/common/f/c;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/subao/common/e/am;

    invoke-direct {v0}, Lcom/subao/common/e/am;-><init>()V

    sput-object v0, Lcom/subao/common/e/am;->a:Lcom/subao/common/e/am;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/subao/common/g;-><init>()V

    .line 62
    return-void
.end method

.method private static a(Lcom/subao/common/f/c;)Ljava/lang/String;
    .locals 6
    .param p0    # Lcom/subao/common/f/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 191
    const/4 v1, 0x0

    .line 192
    invoke-interface {p0}, Lcom/subao/common/f/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const/16 v0, 0x200

    :try_start_0
    invoke-interface {p0, v0}, Lcom/subao/common/f/c;->a(I)[B

    move-result-object v2

    .line 195
    if-eqz v2, :cond_2

    .line 196
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v1, v0

    .line 201
    :cond_0
    :goto_1
    invoke-static {}, Lcom/subao/common/e/am;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    const-string v0, "SubaoData"

    const-string v2, "Load SubaoId [%s] from \"%s\""

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 203
    invoke-static {v1}, Lcom/subao/common/n/h;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 204
    invoke-interface {p0}, Lcom/subao/common/f/c;->f()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 202
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_1
    return-object v1

    .line 198
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private static a([Lcom/subao/common/f/c;)Ljava/lang/String;
    .locals 3
    .param p0    # [Lcom/subao/common/f/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 106
    invoke-static {p0}, Lcom/subao/common/e/am;->b([Lcom/subao/common/f/c;)Landroid/util/Pair;

    move-result-object v1

    .line 107
    if-nez v1, :cond_1

    .line 109
    const-string v0, "SubaoData"

    const-string v1, "No SubaoId load, maybe first install"

    invoke-static {v0, v1}, Lcom/subao/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x0

    .line 117
    :cond_0
    :goto_0
    return-object v0

    .line 112
    :cond_1
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 114
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    array-length v2, p0

    if-eq v1, v2, :cond_0

    .line 115
    invoke-static {p0, v0}, Lcom/subao/common/e/am;->a([Lcom/subao/common/f/c;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 165
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x24

    if-eq v0, v1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    .line 169
    :goto_1
    if-ltz v2, :cond_2

    .line 170
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 171
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Lcom/subao/common/n/h;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 173
    new-instance v1, Landroid/util/Pair;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_2
    if-gez v2, :cond_0

    .line 180
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    :cond_3
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    .line 178
    goto :goto_1
.end method

.method private static a([Lcom/subao/common/f/c;Ljava/lang/String;)V
    .locals 8
    .param p0    # [Lcom/subao/common/f/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    invoke-static {p0}, Lcom/subao/common/e/am;->c([Lcom/subao/common/f/c;)V

    .line 226
    :cond_0
    return-void

    .line 217
    :cond_1
    invoke-static {}, Lcom/subao/common/e/am;->d()Z

    move-result v2

    .line 218
    array-length v3, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, p0, v1

    .line 219
    if-eqz v0, :cond_2

    .line 220
    invoke-static {v0, p1}, Lcom/subao/common/e/am;->a(Lcom/subao/common/f/c;Ljava/lang/String;)Z

    move-result v4

    .line 221
    if-eqz v2, :cond_2

    .line 222
    const-string v5, "SubaoData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Save SubaoId to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Lcom/subao/common/f/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v4, :cond_3

    const-string v0, " ok"

    :goto_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 222
    :cond_3
    const-string v0, " failed"

    goto :goto_1
.end method

.method private static a(Lcom/subao/common/f/c;Ljava/lang/String;)Z
    .locals 4
    .param p0    # Lcom/subao/common/f/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 235
    :try_start_0
    invoke-interface {p0}, Lcom/subao/common/f/c;->c()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 236
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 237
    const/4 v0, 0x1

    .line 241
    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    .line 243
    :goto_0
    return v0

    .line 238
    :catch_0
    move-exception v1

    .line 239
    :goto_1
    const/4 v1, 0x0

    .line 241
    invoke-static {v0}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    move v0, v1

    .line 242
    goto :goto_0

    .line 241
    :catchall_0
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    :goto_2
    invoke-static {v3}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v2

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    goto :goto_2

    .line 238
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 75
    if-eqz p0, :cond_0

    .line 76
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    const-string v0, "00000000-0000-0000-0000-000000000000"

    .line 77
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b([Lcom/subao/common/f/c;)Landroid/util/Pair;
    .locals 5
    .param p0    # [Lcom/subao/common/f/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/subao/common/f/c;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p0, v0

    .line 143
    if-eqz v3, :cond_0

    .line 144
    invoke-static {v3}, Lcom/subao/common/e/am;->a(Lcom/subao/common/f/c;)Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-static {v1, v3}, Lcom/subao/common/e/am;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 142
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_1
    const/4 v2, 0x0

    .line 150
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 151
    if-eqz v2, :cond_2

    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v4, v1, :cond_4

    :cond_2
    :goto_2
    move-object v2, v0

    .line 154
    goto :goto_1

    .line 155
    :cond_3
    return-object v2

    :cond_4
    move-object v0, v2

    goto :goto_2
.end method

.method public static b()Lcom/subao/common/e/am;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/subao/common/e/am;->a:Lcom/subao/common/e/am;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)[Lcom/subao/common/f/c;
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/subao/common/f/c;

    .line 93
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 94
    const/4 v2, 0x0

    new-instance v3, Ljava/io/File;

    const-string v4, ".sys"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/subao/common/f/d;->a(Ljava/io/File;)Lcom/subao/common/f/c;

    move-result-object v3

    aput-object v3, v0, v2

    .line 95
    const/4 v2, 0x1

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    const-string v5, "Android"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v5, ".sys"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/subao/common/f/d;->a(Ljava/io/File;)Lcom/subao/common/f/c;

    move-result-object v3

    aput-object v3, v0, v2

    .line 96
    const/4 v2, 0x2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    const-string v5, "9C52E85A-374A-4709-866F-0E708AE2B727"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, ".sys"

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/subao/common/f/d;->a(Ljava/io/File;)Lcom/subao/common/f/c;

    move-result-object v1

    aput-object v1, v0, v2

    .line 97
    const/4 v1, 0x3

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, ".sys"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/subao/common/f/d;->a(Ljava/io/File;)Lcom/subao/common/f/c;

    move-result-object v2

    aput-object v2, v0, v1

    .line 98
    return-object v0
.end method

.method private static c([Lcom/subao/common/f/c;)V
    .locals 8
    .param p0    # [Lcom/subao/common/f/c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 250
    if-nez p0, :cond_1

    .line 266
    :cond_0
    return-void

    .line 253
    :cond_1
    array-length v3, p0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, p0, v2

    .line 254
    if-eqz v4, :cond_2

    .line 257
    :try_start_0
    invoke-interface {v4}, Lcom/subao/common/f/c;->d()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 261
    :goto_1
    invoke-static {}, Lcom/subao/common/e/am;->d()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 262
    const-string v5, "SubaoData"

    const-string v6, "Delete file \"%s\" %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v4}, Lcom/subao/common/f/c;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v1

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    const-string v0, "OK"

    :goto_2
    aput-object v0, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/subao/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    move v0, v1

    .line 259
    goto :goto_1

    .line 262
    :cond_3
    const-string v0, "failed"

    goto :goto_2
.end method

.method private static d()Z
    .locals 1

    .prologue
    .line 84
    const-string v0, "SubaoData"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/subao/common/e/am;->a(Landroid/content/Context;[Lcom/subao/common/f/c;)V

    .line 275
    return-void
.end method

.method a(Landroid/content/Context;[Lcom/subao/common/f/c;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Lcom/subao/common/f/c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 284
    if-nez p2, :cond_0

    .line 285
    invoke-static {p1}, Lcom/subao/common/e/am;->b(Landroid/content/Context;)[Lcom/subao/common/f/c;

    move-result-object p2

    .line 287
    :cond_0
    iput-object p2, p0, Lcom/subao/common/e/am;->b:[Lcom/subao/common/f/c;

    .line 288
    invoke-static {p2}, Lcom/subao/common/e/am;->a([Lcom/subao/common/f/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/subao/common/e/am;->b(Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 306
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/subao/common/e/am;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    const-string v0, "SubaoData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set SubaoId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/subao/common/e/am;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/subao/common/n/h;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 310
    iput-object p1, p0, Lcom/subao/common/e/am;->c:Ljava/lang/String;

    .line 311
    iget-object v0, p0, Lcom/subao/common/e/am;->b:[Lcom/subao/common/f/c;

    invoke-static {v0, p1}, Lcom/subao/common/e/am;->a([Lcom/subao/common/f/c;Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Lcom/subao/common/e/am;->a()Ljava/util/List;

    move-result-object v0

    .line 314
    if-eqz v0, :cond_1

    .line 315
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subao/common/e/am$a;

    .line 316
    invoke-interface {v0, p1}, Lcom/subao/common/e/am$a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 320
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/subao/common/e/am;->c:Ljava/lang/String;

    return-object v0
.end method
