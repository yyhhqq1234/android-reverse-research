.class Lcom/subao/common/n/a$a;
.super Ljava/lang/Object;
.source "AppLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/n/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;Lcom/subao/common/n/a$b;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 83
    invoke-static {p1}, Lcom/subao/common/n/a;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 84
    if-nez v1, :cond_0

    .line 111
    :goto_0
    return v0

    .line 88
    :cond_0
    if-nez p2, :cond_1

    .line 89
    new-instance p2, Lcom/subao/common/n/a$b;

    invoke-direct {p2}, Lcom/subao/common/n/a$b;-><init>()V

    .line 91
    :cond_1
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "am"

    aput-object v4, v3, v0

    const-string v4, "start"

    aput-object v4, v3, v2

    const/4 v4, 0x2

    const-string v5, "--user"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "0"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object v1, v3, v4

    invoke-virtual {p2, v3}, Lcom/subao/common/n/a$b;->a([Ljava/lang/String;)V

    .line 93
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p2, v1}, Lcom/subao/common/n/a$b;->a(Z)V

    .line 94
    invoke-virtual {p2}, Lcom/subao/common/n/a$b;->a()Ljava/lang/Process;

    move-result-object v1

    .line 96
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move v1, v0

    .line 98
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 99
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 100
    const-string v5, "starting: intent"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v1, v2

    .line 101
    goto :goto_1

    .line 102
    :cond_3
    const-string v5, "error"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "exception"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    :cond_4
    move v1, v0

    .line 103
    goto :goto_1

    :cond_5
    move v0, v1

    .line 111
    goto :goto_0

    .line 108
    :catch_0
    move-exception v1

    goto :goto_0

    .line 106
    :catch_1
    move-exception v1

    goto :goto_0
.end method
