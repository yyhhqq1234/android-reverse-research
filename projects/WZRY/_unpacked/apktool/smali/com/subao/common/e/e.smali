.class public Lcom/subao/common/e/e;
.super Lcom/subao/common/e/ab;
.source "AccelNodesDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/e/e$a;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "2200F76E-E295-4A1B-BD85-7F765ADE5371"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "A337EEB8-1A39-4837-8F8F-E4EF89DB7C96"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "0B34A884-A3DA-4F58-AD21-33348F668879"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "0E8748F7-94AA-4FBB-A673-29DF2DA570F4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "D35E4042-AAB7-4CEA-9C26-1EBB4A2F5BFF"

    aput-object v2, v0, v1

    sput-object v0, Lcom/subao/common/e/e;->a:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/subao/common/e/ab$a;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/subao/common/e/ab;-><init>(Lcom/subao/common/e/ab$a;)V

    .line 38
    return-void
.end method

.method private static a(Landroid/util/JsonReader;)Lcom/subao/common/e/e$a;
    .locals 12

    .prologue
    const/4 v7, 0x0

    const/16 v11, 0x3a

    const/4 v1, 0x0

    .line 59
    .line 60
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v0, 0x3000

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 61
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    move v0, v1

    move v2, v1

    .line 62
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 63
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    move v3, v1

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    .line 68
    :goto_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 69
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v9

    .line 70
    const-string v10, "ip"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 71
    invoke-static {p0}, Lcom/subao/common/n/g;->a(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 72
    :cond_1
    const-string v10, "isp"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 73
    invoke-static {p0}, Lcom/subao/common/n/g;->a(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 74
    :cond_2
    const-string v10, "bitFlag"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 75
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    goto :goto_1

    .line 76
    :cond_3
    const-string v10, "region"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 77
    invoke-static {p0}, Lcom/subao/common/n/g;->a(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 79
    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    .line 82
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 83
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 84
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x7

    if-lt v9, v10, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    .line 85
    add-int/lit8 v0, v0, 0x1

    .line 86
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v3, ","

    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 88
    array-length v5, v4

    move v3, v1

    :goto_2
    if-ge v3, v5, :cond_6

    aget-object v6, v4, v3

    .line 89
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 91
    :cond_6
    const/16 v3, 0x2c

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 94
    :cond_7
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 95
    const-string v3, "SubaoData"

    invoke-static {v3}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 96
    const-string v3, "SubaoData"

    sget-object v4, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v5, "Parse nodes from json: %d / %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_8
    new-instance v1, Lcom/subao/common/e/e$a;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/subao/common/e/e$a;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method public static a(Lcom/subao/common/e/ab$a;)Lcom/subao/common/e/e$a;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 48
    new-instance v0, Lcom/subao/common/e/e;

    invoke-direct {v0, p0}, Lcom/subao/common/e/e;-><init>(Lcom/subao/common/e/ab$a;)V

    .line 49
    invoke-virtual {v0}, Lcom/subao/common/e/e;->j()Lcom/subao/common/e/ac;

    move-result-object v1

    .line 50
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/subao/common/e/ac;

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/subao/common/e/e;->b([Lcom/subao/common/e/ac;)Z

    .line 51
    invoke-virtual {v0, v1}, Lcom/subao/common/e/e;->d(Lcom/subao/common/e/ac;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {v1}, Lcom/subao/common/e/e;->b(Lcom/subao/common/e/ac;)Lcom/subao/common/e/e$a;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/subao/common/e/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v1}, Lcom/subao/common/e/e$a;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method static b(Lcom/subao/common/e/ac;)Lcom/subao/common/e/e$a;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 125
    if-nez p0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-object v0

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/subao/common/e/ac;->a()[B

    move-result-object v1

    .line 129
    if-eqz v1, :cond_0

    array-length v2, v1

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    .line 133
    new-instance v2, Landroid/util/JsonReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 135
    :try_start_0
    invoke-static {v2}, Lcom/subao/common/e/e;->a(Landroid/util/JsonReader;)Lcom/subao/common/e/e$a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 139
    invoke-static {v2}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 136
    :catch_0
    move-exception v1

    .line 137
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    invoke-static {v2}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v0

    .line 136
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    const-string v0, "nodes"

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    const-string v0, "AccelNodes"

    return-object v0
.end method

.method protected c()Ljava/net/URL;
    .locals 5

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/subao/common/e/e;->l()Lcom/subao/common/e/ab$a;

    move-result-object v0

    iget-object v1, v0, Lcom/subao/common/e/ab$a;->a:Ljava/lang/String;

    .line 147
    sget-object v2, Lcom/subao/common/e/e;->a:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 148
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    new-instance v0, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://pic.xunyou.mobi/custom_node_list/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 152
    :goto_1
    return-object v0

    .line 147
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_1
    invoke-super {p0}, Lcom/subao/common/e/ab;->c()Ljava/net/URL;

    move-result-object v0

    goto :goto_1
.end method

.method protected c(Lcom/subao/common/e/ac;)Z
    .locals 2

    .prologue
    .line 167
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/subao/common/e/ac;->b()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
