.class Lcom/subao/common/b/j$a;
.super Ljava/lang/Object;
.source "OriginUserStateRequester.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/b/j$a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/subao/common/e/al;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/subao/common/intf/UserInfo;

.field private final d:I

.field private final e:Lcom/subao/common/intf/QueryOriginUserStateCallback;

.field private final f:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/subao/common/e/al;Ljava/lang/String;Lcom/subao/common/intf/UserInfo;JLcom/subao/common/intf/QueryOriginUserStateCallback;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    if-nez p1, :cond_0

    sget-object p1, Lcom/subao/common/e/q;->c:Lcom/subao/common/e/al;

    :cond_0
    iput-object p1, p0, Lcom/subao/common/b/j$a;->a:Lcom/subao/common/e/al;

    .line 79
    iput-object p2, p0, Lcom/subao/common/b/j$a;->b:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lcom/subao/common/b/j$a;->c:Lcom/subao/common/intf/UserInfo;

    .line 81
    long-to-int v0, p4

    iput v0, p0, Lcom/subao/common/b/j$a;->d:I

    .line 82
    iput-object p6, p0, Lcom/subao/common/b/j$a;->e:Lcom/subao/common/intf/QueryOriginUserStateCallback;

    .line 83
    iput-object p7, p0, Lcom/subao/common/b/j$a;->f:Ljava/lang/Object;

    .line 84
    return-void
.end method

.method private a()Lcom/subao/common/j/a$c;
    .locals 9

    .prologue
    .line 118
    new-instance v0, Lcom/subao/common/j/a;

    iget v1, p0, Lcom/subao/common/b/j$a;->d:I

    iget v2, p0, Lcom/subao/common/b/j$a;->d:I

    invoke-direct {v0, v1, v2}, Lcom/subao/common/j/a;-><init>(II)V

    .line 119
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/subao/common/b/j$a;->a:Lcom/subao/common/e/al;

    iget-object v2, v2, Lcom/subao/common/e/al;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/subao/common/b/j$a;->a:Lcom/subao/common/e/al;

    iget-object v3, v3, Lcom/subao/common/e/al;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/subao/common/b/j$a;->a:Lcom/subao/common/e/al;

    iget v4, v4, Lcom/subao/common/e/al;->c:I

    const-string v5, "/api/v1/%s/tokeninfo"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/subao/common/b/j$a;->b:Ljava/lang/String;

    aput-object v8, v6, v7

    .line 123
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 125
    sget-object v2, Lcom/subao/common/j/a$b;->b:Lcom/subao/common/j/a$b;

    sget-object v3, Lcom/subao/common/j/a$a;->c:Lcom/subao/common/j/a$a;

    iget-object v3, v3, Lcom/subao/common/j/a$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/subao/common/j/a;->a(Ljava/net/URL;Lcom/subao/common/j/a$b;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/subao/common/b/j$a;->c:Lcom/subao/common/intf/UserInfo;

    invoke-static {v1}, Lcom/subao/common/n/g;->b(Lcom/subao/common/c;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/subao/common/j/a;->a(Ljava/net/HttpURLConnection;[B)Lcom/subao/common/j/a$c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 89
    .line 91
    :try_start_0
    invoke-direct {p0}, Lcom/subao/common/b/j$a;->a()Lcom/subao/common/j/a$c;

    move-result-object v0

    .line 92
    iget v2, v0, Lcom/subao/common/j/a$c;->a:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_0

    .line 93
    const/16 v2, 0x3f0

    move-object v0, v1

    :goto_0
    move v3, v2

    .line 107
    :goto_1
    if-nez v0, :cond_1

    move-object v5, v1

    .line 114
    :goto_2
    iget-object v0, p0, Lcom/subao/common/b/j$a;->e:Lcom/subao/common/intf/QueryOriginUserStateCallback;

    iget-object v1, p0, Lcom/subao/common/b/j$a;->c:Lcom/subao/common/intf/UserInfo;

    iget-object v2, p0, Lcom/subao/common/b/j$a;->f:Ljava/lang/Object;

    invoke-interface/range {v0 .. v5}, Lcom/subao/common/intf/QueryOriginUserStateCallback;->onOriginUserState(Lcom/subao/common/intf/UserInfo;Ljava/lang/Object;IILjava/lang/String;)V

    .line 115
    return-void

    .line 95
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/subao/common/b/j$a$a;->a(Lcom/subao/common/j/a$c;)Lcom/subao/common/b/j$a$a;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move v2, v4

    .line 96
    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 100
    const/16 v3, 0x3ee

    move-object v0, v1

    .line 104
    goto :goto_1

    .line 101
    :catch_1
    move-exception v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 103
    const/16 v3, 0x3ef

    move-object v0, v1

    goto :goto_1

    .line 111
    :cond_1
    iget v4, v0, Lcom/subao/common/b/j$a$a;->a:I

    .line 112
    iget-object v5, v0, Lcom/subao/common/b/j$a$a;->b:Ljava/lang/String;

    goto :goto_2
.end method
