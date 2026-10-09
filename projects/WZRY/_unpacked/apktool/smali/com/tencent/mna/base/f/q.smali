.class public final Lcom/tencent/mna/base/f/q;
.super Ljava/lang/Object;
.source "TitleExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/base/f/q$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const-string v0, "\\<title>(.*)\\</title>"

    const/16 v1, 0x22

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tencent/mna/base/f/q;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method private static a(Ljava/net/URLConnection;)Lcom/tencent/mna/base/f/q$a;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 58
    move v0, v2

    .line 62
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v4

    .line 63
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v5

    .line 64
    if-eqz v4, :cond_0

    const-string v3, "Content-Type"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    new-instance v0, Lcom/tencent/mna/base/f/q$a;

    const/4 v2, 0x0

    invoke-direct {v0, v5, v2}, Lcom/tencent/mna/base/f/q$a;-><init>(Ljava/lang/String;Lcom/tencent/mna/base/f/q$1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_1
    return-object v0

    .line 68
    :cond_0
    add-int/lit8 v3, v0, 0x1

    .line 69
    if-nez v4, :cond_1

    if-eqz v5, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 70
    :goto_2
    if-nez v0, :cond_3

    :goto_3
    move-object v0, v1

    .line 75
    goto :goto_1

    :cond_2
    move v0, v2

    .line 69
    goto :goto_2

    .line 71
    :catch_0
    move-exception v0

    goto :goto_3

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 20
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 22
    const-string v2, "User-Agent"

    const-string v3, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 24
    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 26
    invoke-static {v0}, Lcom/tencent/mna/base/f/q;->a(Ljava/net/URLConnection;)Lcom/tencent/mna/base/f/q$a;

    move-result-object v2

    .line 27
    if-eqz v2, :cond_3

    invoke-static {v2}, Lcom/tencent/mna/base/f/q$a;->a(Lcom/tencent/mna/base/f/q$a;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "text/html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 28
    invoke-static {v2}, Lcom/tencent/mna/base/f/q;->a(Lcom/tencent/mna/base/f/q$a;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 29
    if-nez v2, :cond_0

    .line 30
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    .line 33
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 34
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 37
    const/16 v0, 0x400

    new-array v2, v0, [C

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_0
    const/4 v1, 0x0

    array-length v5, v2

    invoke-virtual {v3, v2, v1, v5}, Ljava/io/BufferedReader;->read([CII)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 42
    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 41
    add-int/2addr v0, v1

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 46
    sget-object v0, Lcom/tencent/mna/base/f/q;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[\\s\\<>]+"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 52
    :goto_1
    return-object v0

    .line 47
    :cond_2
    const-string/jumbo v0, "unknown(-2)"

    goto :goto_1

    .line 49
    :cond_3
    const-string/jumbo v0, "unknown(-1)"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    const-string/jumbo v0, "unknown(-3)"

    goto :goto_1
.end method

.method private static a(Lcom/tencent/mna/base/f/q$a;)Ljava/nio/charset/Charset;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 80
    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/f/q$a;->b(Lcom/tencent/mna/base/f/q$a;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/tencent/mna/base/f/q$a;->b(Lcom/tencent/mna/base/f/q$a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/tencent/mna/base/f/q$a;->b(Lcom/tencent/mna/base/f/q$a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 82
    :cond_0
    :goto_0
    return-object v0

    .line 81
    :catch_0
    move-exception v1

    goto :goto_0
.end method
