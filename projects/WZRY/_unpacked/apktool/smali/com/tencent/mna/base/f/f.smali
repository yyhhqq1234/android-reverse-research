.class public final Lcom/tencent/mna/base/f/f;
.super Ljava/lang/Object;
.source "IpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/base/f/f$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$"

    .line 23
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tencent/mna/base/f/f;->a:Ljava/util/regex/Pattern;

    .line 26
    const-string v0, "^(?:[0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$"

    .line 27
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tencent/mna/base/f/f;->b:Ljava/util/regex/Pattern;

    .line 30
    const-string v0, "^((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)::((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)$"

    .line 31
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tencent/mna/base/f/f;->c:Ljava/util/regex/Pattern;

    .line 30
    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    invoke-static {p0, p1}, Lcom/tencent/mna/base/f/f;->c(Ljava/lang/String;I)Ljava/net/InetAddress;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 186
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Z)Ljava/net/InetAddress;
    .locals 5

    .prologue
    .line 360
    invoke-static {p0}, Lcom/tencent/mna/base/f/f;->g(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    .line 361
    if-eqz v2, :cond_3

    .line 362
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v0, v2, v1

    .line 363
    if-eqz p1, :cond_1

    .line 364
    instance-of v4, v0, Ljava/net/Inet6Address;

    if-eqz v4, :cond_2

    .line 374
    :cond_0
    :goto_1
    return-object v0

    .line 368
    :cond_1
    instance-of v4, v0, Ljava/net/Inet4Address;

    if-nez v4, :cond_0

    .line 362
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 374
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 35
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v0

    .line 38
    :cond_1
    const-string v1, "0.0.0.0"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "255.255.255.255"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    invoke-static {p0}, Lcom/tencent/mna/base/f/f;->d(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/tencent/mna/base/f/f;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;I)[Ljava/net/InetAddress;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 191
    .line 192
    const/4 v0, 0x2

    .line 193
    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1

    .line 195
    :try_start_0
    new-instance v0, Lcom/tencent/mna/base/f/f$a;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lcom/tencent/mna/base/f/f$a;-><init>(Ljava/lang/String;ILcom/tencent/mna/base/f/f$1;)V

    .line 196
    invoke-virtual {v0}, Lcom/tencent/mna/base/f/f$a;->start()V

    .line 197
    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v4, v5}, Lcom/tencent/mna/base/f/f$a;->join(J)V

    .line 198
    invoke-static {v0}, Lcom/tencent/mna/base/f/f$a;->a(Lcom/tencent/mna/base/f/f$a;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_0

    array-length v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v3, :cond_2

    :cond_0
    move v0, v2

    .line 200
    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    move v0, v2

    .line 206
    goto :goto_0

    .line 208
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dnsOnNet\u89e3\u6790addrs\u5931\u8d25:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", netid"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->c(Ljava/lang/String;)V

    move-object v0, v1

    .line 209
    :cond_2
    return-object v0
.end method

.method public static c(I)I
    .locals 1

    .prologue
    .line 255
    invoke-static {p0}, Lcom/tencent/mna/base/f/f;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-static {v0}, Lcom/tencent/mna/base/f/f;->i(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;I)Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 214
    invoke-static {p0, p1}, Lcom/tencent/mna/base/f/f;->b(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 216
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 218
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 49
    invoke-static {p0}, Lcom/tencent/mna/base/f/f;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/tencent/mna/base/f/f;->n(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 53
    invoke-static {p0}, Lcom/tencent/mna/base/f/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/tencent/mna/base/f/f;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 120
    invoke-static {p0}, Lcom/tencent/mna/base/f/f;->g(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    .line 121
    if-eqz v2, :cond_0

    array-length v0, v2

    if-lez v0, :cond_0

    .line 122
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 123
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    return-object v1
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    invoke-static {p0}, Lcom/tencent/mna/base/f/f;->h(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 140
    .line 141
    const/4 v0, 0x2

    .line 143
    invoke-static {p0}, Lcom/tencent/mna/base/f/f;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 168
    :cond_0
    :goto_0
    return-object v0

    .line 152
    :cond_1
    :goto_1
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_3

    .line 154
    :try_start_1
    new-instance v0, Lcom/tencent/mna/base/f/f$a;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/tencent/mna/base/f/f$a;-><init>(Ljava/lang/String;Lcom/tencent/mna/base/f/f$1;)V

    .line 155
    invoke-virtual {v0}, Lcom/tencent/mna/base/f/f$a;->start()V

    .line 156
    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v4, v5}, Lcom/tencent/mna/base/f/f$a;->join(J)V

    .line 157
    invoke-static {v0}, Lcom/tencent/mna/base/f/f$a;->a(Lcom/tencent/mna/base/f/f$a;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_2

    array-length v3, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-gtz v3, :cond_0

    :cond_2
    move v0, v2

    .line 159
    goto :goto_1

    .line 163
    :catch_0
    move-exception v0

    move v0, v2

    .line 165
    goto :goto_1

    .line 167
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dns\u89e3\u6790addrs\u5931\u8d25:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->c(Ljava/lang/String;)V

    move-object v0, v1

    .line 168
    goto :goto_0

    .line 147
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static h(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 173
    invoke-static {p0}, Lcom/tencent/mna/base/f/f;->g(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 175
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 177
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 235
    if-nez p0, :cond_1

    .line 251
    :cond_0
    :goto_0
    return v0

    .line 238
    :cond_1
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 239
    array-length v1, v2

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    .line 243
    const/4 v1, 0x3

    :goto_1
    if-ltz v1, :cond_0

    .line 244
    rsub-int/lit8 v3, v1, 0x3

    :try_start_0
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 246
    mul-int/lit8 v4, v1, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v0, v3

    .line 243
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 248
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static j(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 260
    invoke-static {p0}, Lcom/tencent/mna/base/f/f;->p(Ljava/lang/String;)J

    move-result-wide v0

    .line 268
    const-wide/32 v2, 0xa000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0xaffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    :cond_0
    const-wide v2, 0xac100000L

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const-wide v2, 0xac1fffffL

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    :cond_1
    const-wide v2, 0xc0a80000L

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    const-wide v2, 0xc0a8ffffL

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    :cond_2
    const-string v0, "127.0.0.1"

    .line 271
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 268
    :goto_0
    return v0

    .line 271
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static k(Ljava/lang/String;)[B
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 332
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/e;->f()I

    move-result v1

    .line 333
    invoke-static {p0}, Lcom/tencent/mna/base/f/f;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 334
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 356
    :cond_0
    :goto_0
    return-object v0

    .line 335
    :cond_1
    invoke-static {p0}, Lcom/tencent/mna/base/f/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 336
    if-eq v1, v3, :cond_2

    if-ne v1, v5, :cond_3

    .line 337
    :cond_2
    invoke-static {p0}, Lcom/tencent/mna/base/f/f;->o(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 338
    :cond_3
    if-ne v1, v4, :cond_0

    .line 340
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/tencent/mna/base/f/f;->a(Ljava/lang/String;Z)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    goto :goto_0

    .line 345
    :cond_4
    if-eq v1, v3, :cond_5

    if-ne v1, v5, :cond_6

    .line 346
    :cond_5
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/tencent/mna/base/f/f;->a(Ljava/lang/String;Z)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/f;->o(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 347
    :cond_6
    if-ne v1, v4, :cond_0

    .line 348
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/tencent/mna/base/f/f;->a(Ljava/lang/String;Z)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 353
    :catch_0
    move-exception v1

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getV6IpAddress exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 382
    const-string v0, ""

    .line 383
    invoke-static {p0}, Lcom/tencent/mna/base/f/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "::ffff:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 388
    :cond_0
    :goto_0
    return-object p0

    .line 385
    :cond_1
    invoke-static {p0}, Lcom/tencent/mna/base/f/f;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p0, v0

    goto :goto_0
.end method

.method private static m(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/tencent/mna/base/f/f;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private static n(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/tencent/mna/base/f/f;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private static o(Ljava/lang/String;)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x4

    const/4 v1, 0x0

    .line 66
    if-nez p0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-object v0

    .line 70
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/f/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 71
    const-string v2, "\\."

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 72
    const/4 v3, 0x4

    new-array v3, v3, [B

    .line 73
    :goto_1
    if-ge v1, v5, :cond_2

    .line 74
    aget-object v4, v2, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 77
    :cond_2
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 78
    const/16 v2, 0xa

    const/4 v4, -0x1

    aput-byte v4, v1, v2

    .line 79
    const/16 v2, 0xb

    const/4 v4, -0x1

    aput-byte v4, v1, v2

    .line 80
    const/16 v2, 0xc

    const/4 v4, 0x0

    aget-byte v4, v3, v4

    aput-byte v4, v1, v2

    .line 81
    const/16 v2, 0xd

    const/4 v4, 0x1

    aget-byte v4, v3, v4

    aput-byte v4, v1, v2

    .line 82
    const/16 v2, 0xe

    const/4 v4, 0x2

    aget-byte v4, v3, v4

    aput-byte v4, v1, v2

    .line 83
    const/16 v2, 0xf

    const/4 v4, 0x3

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    move-object v0, v1

    .line 85
    goto :goto_0

    .line 88
    :cond_3
    invoke-static {p0}, Lcom/tencent/mna/base/f/f;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static p(Ljava/lang/String;)J
    .locals 10

    .prologue
    const-wide/16 v8, 0x100

    .line 275
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 276
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    .line 277
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v4, v1

    .line 278
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v6, v1

    .line 279
    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 281
    mul-long/2addr v2, v8

    mul-long/2addr v2, v8

    mul-long/2addr v2, v8

    mul-long/2addr v4, v8

    mul-long/2addr v4, v8

    add-long/2addr v2, v4

    mul-long v4, v6, v8

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method
