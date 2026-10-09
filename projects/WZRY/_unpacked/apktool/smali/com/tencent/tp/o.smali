.class public Lcom/tencent/tp/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tp/o$b;,
        Lcom/tencent/tp/o$a;
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/tp/o;->a:Z

    sput-boolean v0, Lcom/tencent/tp/o;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/ArrayList;I)Lcom/tencent/tp/o$b;
    .locals 7

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    move v3, v0

    move v4, v0

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tp/o$a;

    iget v6, v0, Lcom/tencent/tp/o$a;->b:I

    if-ne v6, p1, :cond_0

    iget v6, v0, Lcom/tencent/tp/o$a;->e:I

    if-ne v6, v2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    iget v0, v0, Lcom/tencent/tp/o$a;->e:I

    const/16 v6, 0xa

    if-ne v0, v6, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    sget-object v0, Lcom/tencent/tp/o$b;->a:Lcom/tencent/tp/o$b;

    :goto_1
    return-object v0

    :cond_4
    if-eqz v4, :cond_5

    sget-object v0, Lcom/tencent/tp/o$b;->b:Lcom/tencent/tp/o$b;

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    sget-object v0, Lcom/tencent/tp/o$b;->c:Lcom/tencent/tp/o$b;

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/tencent/tp/o$b;->d:Lcom/tencent/tp/o$b;

    goto :goto_1
.end method

.method private static a(Ljava/io/BufferedReader;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x10

    const-string v0, "^\\s*([\\d]+):\\s([\\dA-F]{8}):([\\dA-F]{4})\\s([\\dA-F]{8}):([\\dA-F]{4})\\s([\\dA-F]{2})\\s([\\dA-F]{8,}+):([\\dA-F]{8,}+)\\s([\\d]{2}):([\\dA-F]{8,}+)\\s([\\dA-F]{8,}+)\\s+([\\d]+)\\s"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/tencent/tp/o$a;

    invoke-direct {v3}, Lcom/tencent/tp/o$a;-><init>()V

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/tp/o$a;->a:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/tencent/tp/o$a;->b:I

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/tp/o$a;->c:Ljava/lang/String;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/tencent/tp/o$a;->d:I

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/tencent/tp/o$a;->e:I

    const/16 v4, 0xa

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v3, Lcom/tencent/tp/o$a;->f:I

    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/tencent/tp/o$a;->g:Z

    invoke-static {v3}, Lcom/tencent/tp/o;->a(Lcom/tencent/tp/o$a;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/tp/o;->a:Z

    return v0
.end method

.method public static a(II)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/tencent/tp/o;->e()V

    invoke-static {}, Lcom/tencent/tp/o;->d()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {}, Lcom/tencent/tp/o;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v2

    :cond_0
    if-lez p0, :cond_3

    invoke-static {v3, p0}, Lcom/tencent/tp/o;->a(Ljava/util/ArrayList;I)Lcom/tencent/tp/o$b;

    move-result-object v0

    sget-object v4, Lcom/tencent/tp/o$b;->a:Lcom/tencent/tp/o$b;

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/tencent/tp/o;->a:Z

    :goto_2
    sput-boolean v2, Lcom/tencent/tp/o;->b:Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tp/o$a;

    iget v3, v0, Lcom/tencent/tp/o$a;->b:I

    if-eq v3, p0, :cond_1

    iget v3, v0, Lcom/tencent/tp/o$a;->b:I

    if-eq v3, p1, :cond_1

    iget v0, v0, Lcom/tencent/tp/o$a;->e:I

    if-ne v0, v1, :cond_1

    sput-boolean v1, Lcom/tencent/tp/o;->b:Z

    goto :goto_3

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    if-lez p1, :cond_5

    invoke-static {v3, p1}, Lcom/tencent/tp/o;->a(Ljava/util/ArrayList;I)Lcom/tencent/tp/o$b;

    move-result-object v0

    sget-object v4, Lcom/tencent/tp/o$b;->a:Lcom/tencent/tp/o$b;

    if-ne v0, v4, :cond_4

    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/tencent/tp/o;->a:Z

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    sput-boolean v2, Lcom/tencent/tp/o;->a:Z

    goto :goto_2

    :cond_6
    move v2, v1

    goto :goto_0
.end method

.method private static a(Lcom/tencent/tp/o$a;)Z
    .locals 2

    iget v0, p0, Lcom/tencent/tp/o$a;->f:I

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/BufferedReader;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x10

    const-string v0, "^\\s*([\\d]+):\\s([\\dA-F]{32}):([\\dA-F]{4})\\s([\\dA-F]{32}):([\\dA-F]{4})\\s([\\dA-F]{2})\\s([\\dA-F]{8,}+):([\\dA-F]{8,}+)\\s([\\d]{2}):([\\dA-F]{8,}+)\\s([\\dA-F]{8,}+)\\s+([\\d]+)\\s"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/tencent/tp/o$a;

    invoke-direct {v3}, Lcom/tencent/tp/o$a;-><init>()V

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/tp/o$a;->a:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/tencent/tp/o$a;->b:I

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/tp/o$a;->c:Ljava/lang/String;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/tencent/tp/o$a;->d:I

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/tencent/tp/o$a;->e:I

    const/16 v4, 0xa

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v3, Lcom/tencent/tp/o$a;->f:I

    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/tencent/tp/o$a;->g:Z

    invoke-static {v3}, Lcom/tencent/tp/o;->a(Lcom/tencent/tp/o$a;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/tp/o;->b:Z

    return v0
.end method

.method private static c()Ljava/util/ArrayList;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    const-string v3, "/proc/net/tcp6"

    invoke-direct {v0, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v1}, Lcom/tencent/tp/o;->b(Ljava/io/BufferedReader;)Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_1
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v2, :cond_2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_2
    :goto_5
    throw v0

    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_6
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_7
    move-exception v0

    goto :goto_1
.end method

.method private static d()Ljava/util/ArrayList;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    const-string v3, "/proc/net/tcp"

    invoke-direct {v0, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v1}, Lcom/tencent/tp/o;->a(Ljava/io/BufferedReader;)Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_1
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v2, :cond_2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_2
    :goto_5
    throw v0

    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_6
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_7
    move-exception v0

    goto :goto_1
.end method

.method private static e()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/tp/o;->b:Z

    sput-boolean v0, Lcom/tencent/tp/o;->a:Z

    return-void
.end method
