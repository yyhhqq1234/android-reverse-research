.class public final Lc/t/m/g/db;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Lcom/tencent/map/geolocation/internal/TencentHttpClient;


# static fields
.field private static a:Lc/t/m/g/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lc/t/m/g/db;->a:Lc/t/m/g/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    :try_start_0
    new-instance v0, Lc/t/m/g/b;

    const-string/jumbo v1, "test_uuid"

    invoke-direct {v0, p1, v1, p2}, Lc/t/m/g/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {v0}, Lc/t/m/g/a;->a(Lc/t/m/g/b;)Lc/t/m/g/d;

    move-result-object v0

    sput-object v0, Lc/t/m/g/db;->a:Lc/t/m/g/d;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    const/4 v1, 0x0

    sput-object v1, Lc/t/m/g/db;->a:Lc/t/m/g/d;

    .line 33
    const-string v1, "TxNewHttpClient_3_4"

    const-string v2, "<init>"

    invoke-static {v1, v2, v0}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 82
    const-string v0, "GBK"

    .line 83
    if-eqz p0, :cond_0

    .line 84
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 85
    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 86
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 87
    const/4 v5, -0x1

    const-string v6, "charset="

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 91
    add-int/lit8 v0, v6, 0x8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_0
    return-object v0

    .line 85
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final postSync(Ljava/lang/String;[B)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Landroid/util/Pair",
            "<[B",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    sget-object v0, Lc/t/m/g/db;->a:Lc/t/m/g/d;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/io/IOException;

    const-string v1, "can not init net sdk"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    :try_start_0
    sget-object v0, Lc/t/m/g/db;->a:Lc/t/m/g/d;

    invoke-interface {v0, p1, p2}, Lc/t/m/g/d;->a(Ljava/lang/String;[B)Lc/t/m/g/e;

    move-result-object v1

    const-string v2, "User-Agent"

    const-string v3, "Dalvik/1.6.0 (Linux; U; Android 4.4; Nexus 5 Build/KRT16M)"

    invoke-interface {v1, v2, v3}, Lc/t/m/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lc/t/m/g/e;->b()V

    const-string v2, "TxNewHttpClient_3_4"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "req id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lc/t/m/g/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lc/t/m/g/d;->a(Lc/t/m/g/e;)Lc/t/m/g/f$a;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "null response"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_4

    .line 61
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 44
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lc/t/m/g/f$a;->a()I

    move-result v1

    if-eqz v1, :cond_2

    .line 45
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "net sdk error: errorCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lc/t/m/g/f$a;->a()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_2
    invoke-virtual {v0}, Lc/t/m/g/f$a;->b()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 57
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "net sdk error: httpStatus="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lc/t/m/g/f$a;->b()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :sswitch_0
    invoke-virtual {v0}, Lc/t/m/g/f$a;->c()[B

    move-result-object v1

    if-eqz v1, :cond_3

    .line 50
    const-string v1, "content-type"

    invoke-virtual {v0, v1}, Lc/t/m/g/f$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {v1}, Lc/t/m/g/db;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {v0}, Lc/t/m/g/f$a;->c()[B

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    :cond_3
    :sswitch_1
    const-string/jumbo v0, "{}"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string/jumbo v1, "utf-8"

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_4
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xcc -> :sswitch_1
    .end sparse-switch
.end method
