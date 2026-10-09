.class public Lcom/subao/common/b/l;
.super Ljava/lang/Object;
.source "ThirdPartyAuthInfoRequester.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lcom/subao/common/e/al;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final d:I

.field private final e:Lcom/subao/common/intf/UserInfo;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final f:Lcom/subao/common/intf/QueryThirdPartyAuthInfoCallback;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/subao/common/e/al;Ljava/lang/String;Lcom/subao/common/intf/UserInfo;ILcom/subao/common/intf/QueryThirdPartyAuthInfoCallback;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/subao/common/e/al;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/subao/common/intf/UserInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/subao/common/intf/QueryThirdPartyAuthInfoCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/subao/common/b/l;->a:Ljava/lang/String;

    .line 77
    if-nez p2, :cond_0

    sget-object p2, Lcom/subao/common/e/q;->c:Lcom/subao/common/e/al;

    :cond_0
    iput-object p2, p0, Lcom/subao/common/b/l;->b:Lcom/subao/common/e/al;

    .line 78
    iput-object p3, p0, Lcom/subao/common/b/l;->c:Ljava/lang/String;

    .line 79
    iput p5, p0, Lcom/subao/common/b/l;->d:I

    .line 80
    iput-object p4, p0, Lcom/subao/common/b/l;->e:Lcom/subao/common/intf/UserInfo;

    .line 81
    iput-object p6, p0, Lcom/subao/common/b/l;->f:Lcom/subao/common/intf/QueryThirdPartyAuthInfoCallback;

    .line 82
    return-void
.end method

.method private static a([B)Lcom/subao/common/intf/ThirdPartyAuthInfo;
    .locals 9
    .param p0    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 134
    .line 135
    new-instance v6, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 138
    const-wide/16 v4, 0x0

    .line 139
    :try_start_0
    invoke-virtual {v6}, Landroid/util/JsonReader;->beginObject()V

    move-object v3, v0

    move-object v2, v0

    move-object v1, v0

    .line 140
    :goto_0
    invoke-virtual {v6}, Landroid/util/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 141
    invoke-virtual {v6}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v7

    .line 142
    const-string v8, "accessToken"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 143
    invoke-static {v6}, Lcom/subao/common/n/g;->a(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 144
    :cond_0
    const-string v8, "expiresIn"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 145
    invoke-virtual {v6}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v4

    goto :goto_0

    .line 146
    :cond_1
    const-string v8, "refreshToken"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 147
    invoke-static {v6}, Lcom/subao/common/n/g;->a(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 148
    :cond_2
    const-string v8, "openId"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 149
    invoke-static {v6}, Lcom/subao/common/n/g;->a(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 151
    :cond_3
    invoke-virtual {v6}, Landroid/util/JsonReader;->skipValue()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v0

    .line 154
    :cond_4
    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 155
    new-instance v0, Lcom/subao/common/intf/ThirdPartyAuthInfo;

    invoke-direct/range {v0 .. v5}, Lcom/subao/common/intf/ThirdPartyAuthInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :cond_5
    invoke-static {v6}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    .line 160
    return-object v0
.end method

.method private a()Ljava/net/URL;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 165
    const-string v0, "/api/v1/%s/sessions?grant_type=client_credentials&version=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/subao/common/b/l;->a:Ljava/lang/String;

    .line 167
    invoke-static {v3}, Lcom/subao/common/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/subao/common/b/l;->c:Ljava/lang/String;

    .line 168
    invoke-static {v3}, Lcom/subao/common/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 165
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 169
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/subao/common/b/l;->b:Lcom/subao/common/e/al;

    iget-object v2, v2, Lcom/subao/common/e/al;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/subao/common/b/l;->b:Lcom/subao/common/e/al;

    iget-object v3, v3, Lcom/subao/common/e/al;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/subao/common/b/l;->b:Lcom/subao/common/e/al;

    iget v4, v4, Lcom/subao/common/e/al;->c:I

    invoke-direct {v1, v2, v3, v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v1
.end method

.method private static a(Lcom/subao/common/intf/ThirdPartyAuthInfo;)V
    .locals 8

    .prologue
    .line 121
    if-nez p0, :cond_0

    .line 122
    const-string v0, "SubaoAuth"

    const-string v1, "Third party auth info is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_0
    return-void

    .line 124
    :cond_0
    const-string v0, "SubaoAuth"

    sget-object v1, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v2, "Third party auth info: %s, %s, openId=%s, expiresIn=%d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 125
    invoke-virtual {p0}, Lcom/subao/common/intf/ThirdPartyAuthInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 126
    invoke-virtual {p0}, Lcom/subao/common/intf/ThirdPartyAuthInfo;->getRefreshToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 127
    invoke-virtual {p0}, Lcom/subao/common/intf/ThirdPartyAuthInfo;->getOpenId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 128
    invoke-virtual {p0}, Lcom/subao/common/intf/ThirdPartyAuthInfo;->getExpiresIn()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 124
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Lcom/subao/common/j/a$c;)V
    .locals 4
    .param p1    # Lcom/subao/common/j/a$c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v2, 0x3f0

    .line 100
    const/4 v1, 0x0

    .line 101
    if-nez p1, :cond_1

    .line 102
    const/16 v2, 0x3ee

    move-object v0, v1

    .line 114
    :goto_0
    const-string v1, "SubaoAuth"

    invoke-static {v1}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-static {v0}, Lcom/subao/common/b/l;->a(Lcom/subao/common/intf/ThirdPartyAuthInfo;)V

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/subao/common/b/l;->f:Lcom/subao/common/intf/QueryThirdPartyAuthInfoCallback;

    invoke-interface {v1, v2, v0}, Lcom/subao/common/intf/QueryThirdPartyAuthInfoCallback;->onThirdPartyAuthInfoResult(ILcom/subao/common/intf/ThirdPartyAuthInfo;)V

    .line 118
    return-void

    .line 103
    :cond_1
    iget v0, p1, Lcom/subao/common/j/a$c;->a:I

    const/16 v3, 0xc9

    if-ne v0, v3, :cond_2

    .line 105
    :try_start_0
    iget-object v0, p1, Lcom/subao/common/j/a$c;->b:[B

    invoke-static {v0}, Lcom/subao/common/b/l;->a([B)Lcom/subao/common/intf/ThirdPartyAuthInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 106
    const/4 v1, 0x0

    move v2, v1

    .line 110
    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 110
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 112
    goto :goto_0

    .line 107
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private b()[B
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 174
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 175
    new-instance v1, Landroid/util/JsonWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 177
    :try_start_0
    invoke-virtual {v1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 178
    const-string/jumbo v2, "token"

    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    iget-object v3, p0, Lcom/subao/common/b/l;->e:Lcom/subao/common/intf/UserInfo;

    invoke-virtual {v3}, Lcom/subao/common/intf/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 179
    const-string v2, "authType"

    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 180
    const-string/jumbo v2, "userId"

    iget-object v3, p0, Lcom/subao/common/b/l;->e:Lcom/subao/common/intf/UserInfo;

    invoke-virtual {v3}, Lcom/subao/common/intf/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 181
    const-string v2, "appId"

    iget-object v3, p0, Lcom/subao/common/b/l;->e:Lcom/subao/common/intf/UserInfo;

    invoke-virtual {v3}, Lcom/subao/common/intf/UserInfo;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 182
    invoke-virtual {v1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    .line 186
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 184
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 88
    :try_start_0
    new-instance v0, Lcom/subao/common/j/a;

    iget v1, p0, Lcom/subao/common/b/l;->d:I

    iget v2, p0, Lcom/subao/common/b/l;->d:I

    invoke-direct {v0, v1, v2}, Lcom/subao/common/j/a;-><init>(II)V

    .line 89
    invoke-direct {p0}, Lcom/subao/common/b/l;->a()Ljava/net/URL;

    move-result-object v1

    sget-object v2, Lcom/subao/common/j/a$b;->b:Lcom/subao/common/j/a$b;

    sget-object v3, Lcom/subao/common/j/a$a;->c:Lcom/subao/common/j/a$a;

    iget-object v3, v3, Lcom/subao/common/j/a$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/subao/common/j/a;->a(Ljava/net/URL;Lcom/subao/common/j/a$b;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 90
    invoke-direct {p0}, Lcom/subao/common/b/l;->b()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/subao/common/j/a;->a(Ljava/net/HttpURLConnection;[B)Lcom/subao/common/j/a$c;

    move-result-object v0

    .line 91
    invoke-direct {p0, v0}, Lcom/subao/common/b/l;->a(Lcom/subao/common/j/a$c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/subao/common/b/l;->a(Lcom/subao/common/j/a$c;)V

    goto :goto_0

    .line 92
    :catch_1
    move-exception v0

    goto :goto_1
.end method
