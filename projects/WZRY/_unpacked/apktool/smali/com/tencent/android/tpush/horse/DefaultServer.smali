.class public Lcom/tencent/android/tpush/horse/DefaultServer;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/util/ArrayList;

.field public static c:[Ljava/lang/String;

.field public static d:[Ljava/lang/String;

.field public static e:[Ljava/lang/String;

.field public static final f:Lcom/tencent/android/tpush/horse/DefaultServer$ENV;

.field public static final g:Ljava/util/ArrayList;

.field private static h:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x1bb

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 23
    const-string/jumbo v0, "tpns.qq.com"

    sput-object v0, Lcom/tencent/android/tpush/horse/DefaultServer;->a:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/16 v2, 0x1f90

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/16 v2, 0x50

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x3

    const/16 v3, 0x36b0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/tencent/android/tpush/horse/DefaultServer;->b:Ljava/util/ArrayList;

    .line 28
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "183.232.98.178"

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/android/tpush/horse/DefaultServer;->c:[Ljava/lang/String;

    .line 31
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "58.251.139.182"

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/android/tpush/horse/DefaultServer;->d:[Ljava/lang/String;

    .line 33
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "183.61.46.193"

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/android/tpush/horse/DefaultServer;->e:[Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/tencent/android/tpush/horse/DefaultServer$ENV;->RELEASE:Lcom/tencent/android/tpush/horse/DefaultServer$ENV;

    sput-object v0, Lcom/tencent/android/tpush/horse/DefaultServer;->f:Lcom/tencent/android/tpush/horse/DefaultServer$ENV;

    .line 43
    sget-object v0, Lcom/tencent/android/tpush/horse/DefaultServer;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 44
    const-string/jumbo v0, "tpns.qq.com"

    sput-object v0, Lcom/tencent/android/tpush/horse/DefaultServer;->a:Ljava/lang/String;

    .line 45
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "183.232.98.178"

    aput-object v1, v0, v4

    const-string v1, "111.30.131.23"

    aput-object v1, v0, v5

    sput-object v0, Lcom/tencent/android/tpush/horse/DefaultServer;->c:[Ljava/lang/String;

    .line 46
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "58.251.139.182"

    aput-object v1, v0, v4

    const-string v1, "125.39.240.55"

    aput-object v1, v0, v5

    sput-object v0, Lcom/tencent/android/tpush/horse/DefaultServer;->d:[Ljava/lang/String;

    .line 47
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "183.61.46.193"

    aput-object v1, v0, v4

    const-string v1, "123.151.152.50"

    aput-object v1, v0, v5

    sput-object v0, Lcom/tencent/android/tpush/horse/DefaultServer;->e:[Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/horse/DefaultServer;->g:Ljava/util/ArrayList;

    .line 66
    sget-object v0, Lcom/tencent/android/tpush/horse/DefaultServer;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/android/tpush/horse/data/ServerItem;

    const-string v2, "183.61.46.193"

    invoke-direct {v1, v2, v7, v4}, Lcom/tencent/android/tpush/horse/data/ServerItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/horse/DefaultServer;->h:Ljava/util/ArrayList;

    return-void
.end method

.method public static a()I
    .locals 2

    .prologue
    .line 73
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/horse/DefaultServer;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lcom/tencent/android/tpush/horse/DefaultServer;->h:Ljava/util/ArrayList;

    sget-object v1, Lcom/tencent/android/tpush/horse/DefaultServer;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 75
    sget-object v0, Lcom/tencent/android/tpush/horse/DefaultServer;->h:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 77
    :cond_0
    sget-object v0, Lcom/tencent/android/tpush/horse/DefaultServer;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    sget-object v0, Lcom/tencent/android/tpush/horse/DefaultServer;->h:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 82
    :goto_0
    return v0

    .line 80
    :catch_0
    move-exception v0

    .line 82
    :cond_1
    const/16 v0, 0x50

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 87
    if-nez p0, :cond_0

    .line 88
    new-instance v0, Lcom/tencent/android/tpush/service/channel/exception/NullReturnException;

    const-string v1, "createDefaultItems return null,because key is null"

    invoke-direct {v0, v1}, Lcom/tencent/android/tpush/service/channel/exception/NullReturnException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 92
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    sget-object v0, Lcom/tencent/android/tpush/horse/DefaultServer;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v0, v1

    .line 94
    :goto_0
    sget-object v5, Lcom/tencent/android/tpush/horse/DefaultServer;->c:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_1

    .line 95
    new-instance v5, Lcom/tencent/android/tpush/horse/data/ServerItem;

    sget-object v6, Lcom/tencent/android/tpush/horse/DefaultServer;->c:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-direct {v5, v6, v4, v9}, Lcom/tencent/android/tpush/horse/data/ServerItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_2
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 100
    sget-object v0, Lcom/tencent/android/tpush/horse/DefaultServer;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v0, v1

    .line 101
    :goto_1
    sget-object v5, Lcom/tencent/android/tpush/horse/DefaultServer;->e:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_3

    .line 102
    new-instance v5, Lcom/tencent/android/tpush/horse/data/ServerItem;

    sget-object v6, Lcom/tencent/android/tpush/horse/DefaultServer;->e:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-direct {v5, v6, v4, v7}, Lcom/tencent/android/tpush/horse/data/ServerItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 106
    :cond_4
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 107
    sget-object v0, Lcom/tencent/android/tpush/horse/DefaultServer;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v0, v1

    .line 108
    :goto_2
    sget-object v5, Lcom/tencent/android/tpush/horse/DefaultServer;->d:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_5

    .line 109
    new-instance v5, Lcom/tencent/android/tpush/horse/data/ServerItem;

    sget-object v6, Lcom/tencent/android/tpush/horse/DefaultServer;->d:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-direct {v5, v6, v4, v8}, Lcom/tencent/android/tpush/horse/data/ServerItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 116
    :cond_6
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 119
    sget-object v0, Lcom/tencent/android/tpush/horse/DefaultServer;->a:Ljava/lang/String;

    .line 122
    :cond_7
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 158
    :goto_3
    sget-object v0, Lcom/tencent/android/tpush/horse/DefaultServer;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 159
    new-instance v5, Lcom/tencent/android/tpush/horse/data/ServerItem;

    invoke-direct {v5, v2, v0, v1}, Lcom/tencent/android/tpush/horse/data/ServerItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 146
    :catch_0
    move-exception v0

    .line 147
    const-string v2, "XGService"

    const-string v4, ""

    invoke-static {v2, v4, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    sget-object v0, Lcom/tencent/android/tpush/horse/DefaultServer;->c:[Ljava/lang/String;

    aget-object v0, v0, v1

    move-object v2, v0

    goto :goto_3

    .line 169
    :cond_8
    return-object v3
.end method

.method public static a(Lcom/tencent/android/tpush/service/channel/protocol/ApList;)V
    .locals 15

    .prologue
    .line 174
    iget-object v2, p0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->primary:Ljava/util/Map;

    .line 175
    iget-object v3, p0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->secondary:Ljava/util/Map;

    .line 176
    iget-object v4, p0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->portList:Ljava/util/ArrayList;

    .line 177
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 178
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 179
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 180
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    .line 182
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/tencent/android/tpush/service/e/h;->a(J)Ljava/lang/String;

    move-result-object v9

    .line 183
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 187
    new-instance v11, Lcom/tencent/android/tpush/horse/data/ServerItem;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v0}, Ljava/lang/Byte;->intValue()I

    move-result v13

    invoke-direct {v11, v9, v12, v13}, Lcom/tencent/android/tpush/horse/data/ServerItem;-><init>(Ljava/lang/String;II)V

    .line 188
    const-string v12, "TPush"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "apList.primary serverItem ip:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",port:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    const/4 v12, 0x3

    if-ne v1, v12, :cond_2

    .line 193
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    const/4 v12, 0x1

    if-ne v1, v12, :cond_3

    .line 196
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    const/4 v12, 0x2

    if-ne v1, v12, :cond_1

    .line 199
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    :cond_4
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    .line 205
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/tencent/android/tpush/service/e/h;->a(J)Ljava/lang/String;

    move-result-object v8

    .line 206
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 209
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 210
    new-instance v10, Lcom/tencent/android/tpush/horse/data/ServerItem;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v0}, Ljava/lang/Byte;->intValue()I

    move-result v12

    invoke-direct {v10, v8, v11, v12}, Lcom/tencent/android/tpush/horse/data/ServerItem;-><init>(Ljava/lang/String;II)V

    .line 211
    const-string v11, "TPush"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "apList.secondary serverItem ip:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",port:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    const/4 v11, 0x3

    if-ne v1, v11, :cond_7

    .line 215
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    const/4 v11, 0x1

    if-ne v1, v11, :cond_8

    .line 218
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    const/4 v11, 0x2

    if-ne v1, v11, :cond_6

    .line 221
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 225
    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 226
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "3"

    invoke-static {v0, v1, v5}, Lcom/tencent/android/tpush/service/cache/CacheManager;->addServerItems(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 229
    :cond_a
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 230
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v0, v1, v6}, Lcom/tencent/android/tpush/service/cache/CacheManager;->addServerItems(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 233
    :cond_b
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 234
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "2"

    invoke-static {v0, v1, v7}, Lcom/tencent/android/tpush/service/cache/CacheManager;->addServerItems(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 239
    :cond_c
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->speedTestIpList:Ljava/util/ArrayList;

    .line 240
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 241
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 242
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 245
    const-string v6, "TPush"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "apList.speedTestIpList serverItem ip:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",port:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    new-instance v6, Lcom/tencent/android/tpush/horse/data/ServerItem;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v7, 0x0

    invoke-direct {v6, v8, v9, v1, v7}, Lcom/tencent/android/tpush/horse/data/ServerItem;-><init>(JII)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 249
    :cond_e
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/service/cache/CacheManager;->saveSpeedTestList(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 253
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->domain:Ljava/lang/String;

    .line 254
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 257
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/android/tpush/service/cache/CacheManager;->clearDomainServerItem(Landroid/content/Context;)V

    .line 258
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->saveDomain(Landroid/content/Context;Ljava/lang/String;)V

    .line 260
    :cond_f
    return-void
.end method

.method public static b()Ljava/util/ArrayList;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 276
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 277
    sget-object v0, Lcom/tencent/android/tpush/horse/DefaultServer;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v0, v1

    .line 278
    :goto_0
    sget-object v5, Lcom/tencent/android/tpush/horse/DefaultServer;->c:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_1

    .line 279
    new-instance v5, Lcom/tencent/android/tpush/horse/data/ServerItem;

    sget-object v6, Lcom/tencent/android/tpush/horse/DefaultServer;->c:[Ljava/lang/String;

    aget-object v6, v6, v0

    const/4 v7, 0x3

    invoke-direct {v5, v6, v4, v7}, Lcom/tencent/android/tpush/horse/data/ServerItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 282
    :goto_1
    sget-object v5, Lcom/tencent/android/tpush/horse/DefaultServer;->e:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 283
    new-instance v5, Lcom/tencent/android/tpush/horse/data/ServerItem;

    sget-object v6, Lcom/tencent/android/tpush/horse/DefaultServer;->e:[Ljava/lang/String;

    aget-object v6, v6, v0

    const/4 v7, 0x1

    invoke-direct {v5, v6, v4, v7}, Lcom/tencent/android/tpush/horse/data/ServerItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 286
    :goto_2
    sget-object v5, Lcom/tencent/android/tpush/horse/DefaultServer;->d:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_0

    .line 287
    new-instance v5, Lcom/tencent/android/tpush/horse/data/ServerItem;

    sget-object v6, Lcom/tencent/android/tpush/horse/DefaultServer;->d:[Ljava/lang/String;

    aget-object v6, v6, v0

    const/4 v7, 0x2

    invoke-direct {v5, v6, v4, v7}, Lcom/tencent/android/tpush/horse/data/ServerItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 293
    :cond_3
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 296
    sget-object v0, Lcom/tencent/android/tpush/horse/DefaultServer;->a:Ljava/lang/String;

    .line 299
    :cond_4
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 301
    sget-object v0, Lcom/tencent/android/tpush/horse/DefaultServer;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 302
    new-instance v4, Lcom/tencent/android/tpush/horse/data/ServerItem;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v0, v5}, Lcom/tencent/android/tpush/horse/data/ServerItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 312
    :catch_0
    move-exception v0

    .line 313
    const-string v1, "XGService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">> Dns resolve err : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_5
    return-object v2
.end method
