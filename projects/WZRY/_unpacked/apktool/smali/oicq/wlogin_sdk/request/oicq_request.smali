.class public Loicq/wlogin_sdk/request/oicq_request;
.super Ljava/lang/Object;
.source "oicq_request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;
    }
.end annotation


# static fields
.field static C:[Ljava/lang/String;

.field static D:[Ljava/lang/String;

.field static F:I

.field static G:Ljava/lang/String;

.field static H:Ljava/lang/String;


# instance fields
.field protected A:[B

.field protected B:[B

.field E:I

.field public a:Landroid/content/Context;

.field b:I

.field c:I

.field d:I

.field e:I

.field public f:I

.field protected g:I

.field protected h:[B

.field protected i:I

.field protected j:I

.field protected k:I

.field protected l:I

.field protected m:I

.field protected n:I

.field protected o:I

.field protected p:I

.field q:Ljava/net/InetSocketAddress;

.field r:I

.field s:[B

.field protected t:I

.field protected u:I

.field protected v:Ljava/lang/String;

.field w:B

.field public x:Loicq/wlogin_sdk/request/u;

.field protected y:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

.field protected z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 174
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "111.30.137.20"

    aput-object v1, v0, v3

    const-string v1, "123.126.122.126"

    aput-object v1, v0, v4

    const-string v1, "123.151.176.23"

    aput-object v1, v0, v5

    const-string v1, "120.198.203.150"

    aput-object v1, v0, v6

    const-string v1, "14.17.41.156"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "163.177.71.159"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "101.227.130.77"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "117.135.172.187"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "140.207.69.123"

    aput-object v2, v0, v1

    sput-object v0, Loicq/wlogin_sdk/request/oicq_request;->C:[Ljava/lang/String;

    .line 186
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "180.163.15.182"

    aput-object v1, v0, v3

    const-string v1, "183.192.200.28"

    aput-object v1, v0, v4

    const-string v1, "223.167.105.36"

    aput-object v1, v0, v5

    const-string v1, "183.61.56.18"

    aput-object v1, v0, v6

    const-string v1, "183.232.119.221"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "163.177.86.123"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "123.151.92.19"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "125.39.52.120"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "123.126.121.172"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "117.135.169.107"

    aput-object v2, v0, v1

    sput-object v0, Loicq/wlogin_sdk/request/oicq_request;->D:[Ljava/lang/String;

    .line 202
    sput v3, Loicq/wlogin_sdk/request/oicq_request;->F:I

    .line 203
    const-string v0, ""

    sput-object v0, Loicq/wlogin_sdk/request/oicq_request;->G:Ljava/lang/String;

    .line 204
    const-string v0, ""

    sput-object v0, Loicq/wlogin_sdk/request/oicq_request;->H:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/16 v0, 0x1000

    iput v0, p0, Loicq/wlogin_sdk/request/oicq_request;->b:I

    .line 138
    iput v1, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    .line 139
    const/16 v0, 0x1b

    iput v0, p0, Loicq/wlogin_sdk/request/oicq_request;->d:I

    .line 140
    iput v1, p0, Loicq/wlogin_sdk/request/oicq_request;->e:I

    .line 141
    const/16 v0, 0xf

    iput v0, p0, Loicq/wlogin_sdk/request/oicq_request;->f:I

    .line 142
    iput v1, p0, Loicq/wlogin_sdk/request/oicq_request;->g:I

    .line 143
    iget v0, p0, Loicq/wlogin_sdk/request/oicq_request;->b:I

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    .line 145
    const/16 v0, 0x1f41

    iput v0, p0, Loicq/wlogin_sdk/request/oicq_request;->i:I

    .line 146
    iput v1, p0, Loicq/wlogin_sdk/request/oicq_request;->j:I

    .line 147
    const/4 v0, 0x3

    iput v0, p0, Loicq/wlogin_sdk/request/oicq_request;->k:I

    .line 148
    iput v1, p0, Loicq/wlogin_sdk/request/oicq_request;->l:I

    .line 149
    iput v1, p0, Loicq/wlogin_sdk/request/oicq_request;->m:I

    .line 150
    const/4 v0, 0x2

    iput v0, p0, Loicq/wlogin_sdk/request/oicq_request;->n:I

    .line 151
    iput v1, p0, Loicq/wlogin_sdk/request/oicq_request;->o:I

    .line 152
    iput v1, p0, Loicq/wlogin_sdk/request/oicq_request;->p:I

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->q:Ljava/net/InetSocketAddress;

    .line 155
    iput v1, p0, Loicq/wlogin_sdk/request/oicq_request;->r:I

    .line 156
    const/16 v0, 0x1800

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->s:[B

    .line 158
    iput v1, p0, Loicq/wlogin_sdk/request/oicq_request;->t:I

    .line 159
    iput v1, p0, Loicq/wlogin_sdk/request/oicq_request;->u:I

    .line 160
    const-string v0, ""

    iput-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->v:Ljava/lang/String;

    .line 165
    sget-object v0, Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;->EM_ECDH:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    iput-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->y:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    .line 166
    iput-boolean v1, p0, Loicq/wlogin_sdk/request/oicq_request;->z:Z

    .line 169
    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->A:[B

    .line 170
    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->B:[B

    .line 200
    iput v1, p0, Loicq/wlogin_sdk/request/oicq_request;->E:I

    .line 212
    return-void
.end method

.method private a(IIJIIII)V
    .locals 11

    .prologue
    .line 251
    iget-boolean v0, p0, Loicq/wlogin_sdk/request/oicq_request;->z:Z

    if-nez v0, :cond_0

    .line 252
    const/4 v6, 0x7

    :goto_0
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    .line 256
    invoke-direct/range {v1 .. v10}, Loicq/wlogin_sdk/request/oicq_request;->a(IIJIIIII)V

    .line 257
    return-void

    .line 254
    :cond_0
    const/16 v6, 0x87

    goto :goto_0
.end method

.method private a(IIJIIIII)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 327
    iget v0, p0, Loicq/wlogin_sdk/request/oicq_request;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Loicq/wlogin_sdk/request/oicq_request;->j:I

    .line 328
    const/4 v1, 0x0

    iput v1, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    .line 330
    iget-object v1, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    iget v2, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    invoke-static {v1, v2, v4}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 331
    iget v1, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    .line 332
    iget-object v1, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    iget v2, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    iget v3, p0, Loicq/wlogin_sdk/request/oicq_request;->d:I

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p9

    invoke-static {v1, v2, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 333
    iget v1, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    .line 334
    iget-object v1, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    iget v2, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    invoke-static {v1, v2, p1}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 335
    iget v1, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    .line 336
    iget-object v1, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    iget v2, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    invoke-static {v1, v2, p2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 337
    iget v1, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    .line 338
    iget-object v1, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    iget v2, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    invoke-static {v1, v2, v0}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 339
    iget v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    .line 340
    iget-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    iget v1, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    long-to-int v2, p3

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 341
    iget v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    .line 342
    iget-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    iget v1, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 343
    iget v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    .line 357
    iget-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    iget v1, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    invoke-static {v0, v1, p5}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 358
    iget v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    .line 359
    iget-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    iget v1, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    invoke-static {v0, v1, p6}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 360
    iget v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    .line 363
    iget-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    iget v1, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    invoke-static {v0, v1, v4}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 364
    iget v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    .line 365
    iget-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    iget v1, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    invoke-static {v0, v1, p7}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 366
    iget v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    .line 367
    iget-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    iget v1, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    invoke-static {v0, v1, p8}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 368
    iget v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    .line 369
    return-void
.end method

.method private a(IIJIII[B)V
    .locals 13

    .prologue
    .line 450
    move-object/from16 v0, p8

    array-length v11, v0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v3 .. v11}, Loicq/wlogin_sdk/request/oicq_request;->a(IIJIIII)V

    .line 451
    move-object/from16 v0, p8

    array-length v2, v0

    move-object/from16 v0, p8

    invoke-virtual {p0, v0, v2}, Loicq/wlogin_sdk/request/oicq_request;->a([BI)V

    .line 452
    invoke-virtual {p0}, Loicq/wlogin_sdk/request/oicq_request;->a()V

    .line 453
    return-void
.end method

.method private a(IJIIZZ)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 974
    new-instance v0, Loicq/wlogin_sdk/report/report_t3;

    invoke-direct {v0}, Loicq/wlogin_sdk/report/report_t3;-><init>()V

    .line 975
    iget v1, p0, Loicq/wlogin_sdk/request/oicq_request;->t:I

    iput v1, v0, Loicq/wlogin_sdk/report/report_t3;->_cmd:I

    .line 976
    iget v1, p0, Loicq/wlogin_sdk/request/oicq_request;->u:I

    iput v1, v0, Loicq/wlogin_sdk/report/report_t3;->_sub:I

    .line 977
    iput p1, v0, Loicq/wlogin_sdk/report/report_t3;->_rst2:I

    .line 978
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 979
    sub-long/2addr v2, p2

    long-to-int v1, v2

    iput v1, v0, Loicq/wlogin_sdk/report/report_t3;->_used:I

    .line 980
    iput p5, v0, Loicq/wlogin_sdk/report/report_t3;->_try:I

    .line 981
    sget-object v1, Loicq/wlogin_sdk/request/oicq_request;->H:Ljava/lang/String;

    iput-object v1, v0, Loicq/wlogin_sdk/report/report_t3;->_host:Ljava/lang/String;

    .line 982
    iget-object v1, v0, Loicq/wlogin_sdk/report/report_t3;->_host:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 983
    const-string v1, ""

    iput-object v1, v0, Loicq/wlogin_sdk/report/report_t3;->_host:Ljava/lang/String;

    .line 984
    :cond_0
    iget-object v1, p0, Loicq/wlogin_sdk/request/oicq_request;->q:Ljava/net/InetSocketAddress;

    if-nez v1, :cond_1

    .line 985
    const-string v1, ""

    iput-object v1, v0, Loicq/wlogin_sdk/report/report_t3;->_ip:Ljava/lang/String;

    .line 989
    :goto_0
    invoke-virtual {p0, p6}, Loicq/wlogin_sdk/request/oicq_request;->c(Z)I

    move-result v1

    iput v1, v0, Loicq/wlogin_sdk/report/report_t3;->_port:I

    .line 990
    iput p4, v0, Loicq/wlogin_sdk/report/report_t3;->_conn:I

    .line 991
    sget v1, Loicq/wlogin_sdk/request/u;->D:I

    iput v1, v0, Loicq/wlogin_sdk/report/report_t3;->_net:I

    .line 992
    const-string v1, ""

    iput-object v1, v0, Loicq/wlogin_sdk/report/report_t3;->_str:Ljava/lang/String;

    .line 993
    iput v4, v0, Loicq/wlogin_sdk/report/report_t3;->_slen:I

    .line 994
    iput v4, v0, Loicq/wlogin_sdk/report/report_t3;->_rlen:I

    .line 995
    if-eqz p6, :cond_3

    .line 996
    if-eqz p7, :cond_2

    .line 997
    const/4 v1, 0x2

    iput v1, v0, Loicq/wlogin_sdk/report/report_t3;->_wap:I

    .line 1004
    :goto_1
    sget-object v1, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    invoke-virtual {v1, v0}, Loicq/wlogin_sdk/report/report_t1;->add_t3(Loicq/wlogin_sdk/report/report_t3;)V

    .line 1005
    return-void

    .line 987
    :cond_1
    iget-object v1, p0, Loicq/wlogin_sdk/request/oicq_request;->q:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Loicq/wlogin_sdk/report/report_t3;->_ip:Ljava/lang/String;

    goto :goto_0

    .line 999
    :cond_2
    const/4 v1, 0x1

    iput v1, v0, Loicq/wlogin_sdk/report/report_t3;->_wap:I

    goto :goto_1

    .line 1002
    :cond_3
    iput v4, v0, Loicq/wlogin_sdk/report/report_t3;->_wap:I

    goto :goto_1
.end method

.method public static a(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 226
    sput p0, Loicq/wlogin_sdk/request/oicq_request;->F:I

    .line 227
    sput-object p1, Loicq/wlogin_sdk/request/oicq_request;->G:Ljava/lang/String;

    .line 228
    return-void
.end method

.method private b(IIJIIII)V
    .locals 11

    .prologue
    .line 278
    const/16 v6, 0x45

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Loicq/wlogin_sdk/request/oicq_request;->a(IIJIIIII)V

    .line 279
    return-void
.end method

.method private b(IIJIII[B)V
    .locals 13

    .prologue
    .line 463
    move-object/from16 v0, p8

    array-length v11, v0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v3 .. v11}, Loicq/wlogin_sdk/request/oicq_request;->b(IIJIIII)V

    .line 464
    move-object/from16 v0, p8

    array-length v2, v0

    move-object/from16 v0, p8

    invoke-virtual {p0, v0, v2}, Loicq/wlogin_sdk/request/oicq_request;->a([BI)V

    .line 465
    invoke-virtual {p0}, Loicq/wlogin_sdk/request/oicq_request;->a()V

    .line 466
    return-void
.end method

.method public static b([B[B)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1395
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 1396
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1397
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1398
    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .prologue
    .line 1445
    iget-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v0, v1}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v0

    .line 1446
    iput p1, v0, Loicq/wlogin_sdk/request/async_context;->_last_flowid:I

    return p1
.end method

.method public a(Ljava/lang/String;ZLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 3

    .prologue
    .line 884
    .line 885
    iget-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0}, Loicq/wlogin_sdk/request/u;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 887
    invoke-virtual {p0, p1, p2, p3}, Loicq/wlogin_sdk/request/oicq_request;->b(Ljava/lang/String;ZLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v0

    .line 893
    :goto_0
    const/16 v1, -0x3e8

    if-ne v0, v1, :cond_0

    .line 894
    new-instance v1, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v1}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    .line 895
    sget-object v2, Loicq/wlogin_sdk/tools/InternationMsg$MSG_TYPE;->MSG_4:Loicq/wlogin_sdk/tools/InternationMsg$MSG_TYPE;

    invoke-static {v2}, Loicq/wlogin_sdk/tools/InternationMsg;->a(Loicq/wlogin_sdk/tools/InternationMsg$MSG_TYPE;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Loicq/wlogin_sdk/tools/ErrMsg;->setMessage(Ljava/lang/String;)V

    .line 896
    invoke-virtual {p0, v1}, Loicq/wlogin_sdk/request/oicq_request;->a(Loicq/wlogin_sdk/tools/ErrMsg;)V

    .line 898
    :cond_0
    return v0

    .line 890
    :cond_1
    invoke-virtual {p0}, Loicq/wlogin_sdk/request/oicq_request;->e()I

    move-result v0

    goto :goto_0
.end method

.method public a(Loicq/wlogin_sdk/b/ax;)I
    .locals 6

    .prologue
    .line 1616
    .line 1617
    new-instance v0, Loicq/wlogin_sdk/b/bi;

    invoke-direct {v0}, Loicq/wlogin_sdk/b/bi;-><init>()V

    .line 1618
    new-instance v1, Loicq/wlogin_sdk/b/bh;

    invoke-direct {v1}, Loicq/wlogin_sdk/b/bh;-><init>()V

    .line 1620
    invoke-virtual {p1}, Loicq/wlogin_sdk/b/ax;->c()[B

    move-result-object v2

    .line 1621
    const/4 v3, 0x2

    .line 1622
    array-length v4, v2

    .line 1625
    invoke-virtual {v0, v2, v3, v4}, Loicq/wlogin_sdk/b/bi;->c([BII)I

    move-result v5

    .line 1626
    if-lez v5, :cond_0

    .line 1627
    invoke-virtual {p0, v0}, Loicq/wlogin_sdk/request/oicq_request;->a(Loicq/wlogin_sdk/b/bi;)I

    .line 1631
    :cond_0
    invoke-virtual {v1, v2, v3, v4}, Loicq/wlogin_sdk/b/bh;->c([BII)I

    move-result v0

    .line 1632
    if-lez v0, :cond_1

    .line 1634
    iget-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    const/4 v2, 0x1

    iput v2, v0, Loicq/wlogin_sdk/request/u;->m:I

    .line 1635
    iget-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v1}, Loicq/wlogin_sdk/b/bh;->c()[B

    move-result-object v1

    iput-object v1, v0, Loicq/wlogin_sdk/request/u;->r:[B

    .line 1636
    const-string v0, "get rollback sig"

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public a(Loicq/wlogin_sdk/b/bi;)I
    .locals 9

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 1572
    invoke-virtual {p1}, Loicq/wlogin_sdk/b/bi;->c()[B

    move-result-object v3

    .line 1573
    const/4 v0, 0x1

    .line 1574
    if-eqz v3, :cond_0

    array-length v4, v3

    if-le v4, v2, :cond_0

    .line 1575
    invoke-static {v3, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v4

    move v0, v1

    .line 1577
    :goto_0
    if-ge v0, v4, :cond_0

    .line 1578
    array-length v5, v3

    add-int/lit8 v6, v2, 0x1

    if-ge v5, v6, :cond_1

    .line 1607
    :cond_0
    return v1

    .line 1581
    :cond_1
    invoke-static {v3, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v5

    .line 1582
    add-int/lit8 v2, v2, 0x1

    .line 1584
    array-length v6, v3

    add-int/lit8 v7, v2, 0x2

    if-lt v6, v7, :cond_0

    .line 1587
    invoke-static {v3, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v6

    .line 1588
    add-int/lit8 v2, v2, 0x2

    .line 1590
    array-length v7, v3

    add-int v8, v2, v6

    if-lt v7, v8, :cond_0

    .line 1593
    new-array v7, v6, [B

    .line 1594
    invoke-static {v3, v2, v7, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1595
    add-int/2addr v2, v6

    .line 1597
    array-length v6, v3

    add-int/lit8 v8, v2, 0x2

    if-lt v6, v8, :cond_0

    .line 1600
    invoke-static {v3, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v6

    .line 1601
    add-int/lit8 v2, v2, 0x2

    .line 1603
    invoke-virtual {p0, v5, v7, v6}, Loicq/wlogin_sdk/request/oicq_request;->a(I[BI)V

    .line 1577
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a([BII[B)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 620
    invoke-static {p1, p2, p3, p4}, Loicq/wlogin_sdk/tools/cryptor;->decrypt([BII[B)[B

    move-result-object v1

    .line 621
    if-nez v1, :cond_0

    .line 622
    const/16 v0, -0x3ea

    .line 638
    :goto_0
    return v0

    .line 624
    :cond_0
    array-length v2, v1

    iput v2, p0, Loicq/wlogin_sdk/request/oicq_request;->g:I

    .line 628
    array-length v2, v1

    iget v3, p0, Loicq/wlogin_sdk/request/oicq_request;->f:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    iget v3, p0, Loicq/wlogin_sdk/request/oicq_request;->b:I

    if-le v2, v3, :cond_1

    .line 629
    array-length v2, v1

    iget v3, p0, Loicq/wlogin_sdk/request/oicq_request;->f:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Loicq/wlogin_sdk/request/oicq_request;->b:I

    .line 630
    iget v2, p0, Loicq/wlogin_sdk/request/oicq_request;->b:I

    new-array v2, v2, [B

    .line 631
    iget-object v3, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    iget v4, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    invoke-static {v3, v0, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 632
    iput-object v2, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    .line 634
    :cond_1
    iput v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    .line 635
    iget-object v2, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    array-length v3, v1

    invoke-static {v1, v0, v2, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 636
    iget v2, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    iget v3, p0, Loicq/wlogin_sdk/request/oicq_request;->f:I

    add-int/lit8 v3, v3, 0x2

    array-length v1, v1

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    iput v1, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    goto :goto_0
.end method

.method public a(IZ)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 849
    const-string v0, ""

    .line 850
    div-int/lit8 v1, p1, 0x2

    .line 851
    sget v2, Loicq/wlogin_sdk/request/oicq_request;->F:I

    if-eqz v2, :cond_1

    sget-object v2, Loicq/wlogin_sdk/request/oicq_request;->G:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Loicq/wlogin_sdk/request/oicq_request;->G:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 852
    sget-object v0, Loicq/wlogin_sdk/request/oicq_request;->G:Ljava/lang/String;

    .line 878
    :cond_0
    :goto_0
    sput-object v0, Loicq/wlogin_sdk/request/oicq_request;->H:Ljava/lang/String;

    .line 879
    return-object v0

    .line 853
    :cond_1
    if-ge v1, v3, :cond_6

    .line 855
    if-eqz p2, :cond_4

    .line 856
    sget v1, Loicq/wlogin_sdk/request/u;->D:I

    if-ne v1, v3, :cond_3

    .line 857
    new-instance v0, Ljava/lang/String;

    sget-object v1, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v1}, Loicq/wlogin_sdk/tools/util;->get_wap_server_host1(Landroid/content/Context;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 868
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    .line 869
    invoke-virtual {p0, p2}, Loicq/wlogin_sdk/request/oicq_request;->b(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 858
    :cond_3
    sget v1, Loicq/wlogin_sdk/request/u;->D:I

    if-ne v1, v4, :cond_2

    .line 859
    new-instance v0, Ljava/lang/String;

    sget-object v1, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v1}, Loicq/wlogin_sdk/tools/util;->get_wap_server_host2(Landroid/content/Context;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    .line 862
    :cond_4
    sget v1, Loicq/wlogin_sdk/request/u;->D:I

    if-ne v1, v3, :cond_5

    .line 863
    new-instance v0, Ljava/lang/String;

    sget-object v1, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v1}, Loicq/wlogin_sdk/tools/util;->get_server_host1(Landroid/content/Context;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    .line 864
    :cond_5
    sget v1, Loicq/wlogin_sdk/request/u;->D:I

    if-ne v1, v4, :cond_2

    .line 865
    new-instance v0, Ljava/lang/String;

    sget-object v1, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v1}, Loicq/wlogin_sdk/tools/util;->get_server_host2(Landroid/content/Context;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    .line 870
    :cond_6
    if-ge v1, v4, :cond_7

    .line 872
    invoke-virtual {p0, p2}, Loicq/wlogin_sdk/request/oicq_request;->b(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 875
    :cond_7
    invoke-virtual {p0, p2}, Loicq/wlogin_sdk/request/oicq_request;->a(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Z)Ljava/lang/String;
    .locals 6

    .prologue
    const-wide v4, 0x41dfffffffc00000L    # 2.147483647E9

    .line 216
    if-nez p1, :cond_0

    .line 217
    sget-object v0, Loicq/wlogin_sdk/request/oicq_request;->C:[Ljava/lang/String;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v1, v2

    sget-object v2, Loicq/wlogin_sdk/request/oicq_request;->C:[Ljava/lang/String;

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 220
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Loicq/wlogin_sdk/request/oicq_request;->D:[Ljava/lang/String;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v1, v2

    sget-object v2, Loicq/wlogin_sdk/request/oicq_request;->D:[Ljava/lang/String;

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public a()V
    .locals 3

    .prologue
    .line 404
    iget-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    iget v1, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 405
    iget v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    .line 406
    return-void
.end method

.method public a(IIIJIIIII)V
    .locals 4

    .prologue
    .line 374
    iget v0, p0, Loicq/wlogin_sdk/request/oicq_request;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Loicq/wlogin_sdk/request/oicq_request;->j:I

    .line 375
    const/4 v1, 0x0

    iput v1, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    .line 377
    iget-object v1, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    iget v2, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 378
    iget v1, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    .line 379
    iget-object v1, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    iget v2, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    iget v3, p0, Loicq/wlogin_sdk/request/oicq_request;->d:I

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p10

    invoke-static {v1, v2, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 380
    iget v1, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    .line 381
    iget-object v1, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    iget v2, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    invoke-static {v1, v2, p1}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 382
    iget v1, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    .line 383
    iget-object v1, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    iget v2, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    invoke-static {v1, v2, p2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 384
    iget v1, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    .line 385
    iget-object v1, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    iget v2, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    invoke-static {v1, v2, v0}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 386
    iget v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    .line 387
    iget-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    iget v1, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    long-to-int v2, p4

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 388
    iget v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    .line 389
    iget-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    iget v1, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 390
    iget v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    .line 391
    iget-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    iget v1, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 392
    iget v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    .line 393
    iget-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    iget v1, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    invoke-static {v0, v1, p6}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 394
    iget v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    .line 395
    iget-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    iget v1, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    invoke-static {v0, v1, p7}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 396
    iget v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    .line 397
    iget-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    iget v1, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    invoke-static {v0, v1, p8}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 398
    iget v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    .line 399
    iget-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    iget v1, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    invoke-static {v0, v1, p9}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 400
    iget v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    .line 401
    return-void
.end method

.method public a(IIIJIIII[B)V
    .locals 14

    .prologue
    .line 437
    move-object/from16 v0, p10

    array-length v13, v0

    move-object v2, p0

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    invoke-virtual/range {v2 .. v13}, Loicq/wlogin_sdk/request/oicq_request;->a(IIIJIIII[BI)V

    .line 440
    return-void
.end method

.method public a(IIIJIIII[BI)V
    .locals 14

    .prologue
    .line 426
    move-object v2, p0

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p11

    invoke-virtual/range {v2 .. v12}, Loicq/wlogin_sdk/request/oicq_request;->a(IIIJIIIII)V

    .line 427
    move-object/from16 v0, p10

    move/from16 v1, p11

    invoke-virtual {p0, v0, v1}, Loicq/wlogin_sdk/request/oicq_request;->a([BI)V

    .line 428
    invoke-virtual {p0}, Loicq/wlogin_sdk/request/oicq_request;->a()V

    .line 429
    return-void
.end method

.method a(I[BI)V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1544
    if-eqz p2, :cond_0

    array-length v0, p2

    if-gtz v0, :cond_1

    .line 1564
    :cond_0
    :goto_0
    return-void

    .line 1548
    :cond_1
    if-ne p1, v1, :cond_4

    .line 1549
    sget v0, Loicq/wlogin_sdk/request/u;->D:I

    if-ne v0, v1, :cond_3

    .line 1550
    sget-object v0, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v0, p2}, Loicq/wlogin_sdk/tools/util;->set_server_host1(Landroid/content/Context;[B)V

    .line 1562
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "net type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Loicq/wlogin_sdk/request/u;->D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " host:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " port:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v2, v2, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1551
    :cond_3
    sget v0, Loicq/wlogin_sdk/request/u;->D:I

    if-ne v0, v2, :cond_2

    .line 1552
    sget-object v0, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v0, p2}, Loicq/wlogin_sdk/tools/util;->set_server_host2(Landroid/content/Context;[B)V

    goto :goto_1

    .line 1554
    :cond_4
    if-ne p1, v2, :cond_2

    .line 1555
    sget v0, Loicq/wlogin_sdk/request/u;->D:I

    if-ne v0, v1, :cond_5

    .line 1556
    sget-object v0, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v0, p2}, Loicq/wlogin_sdk/tools/util;->set_wap_server_host1(Landroid/content/Context;[B)V

    goto :goto_1

    .line 1557
    :cond_5
    sget v0, Loicq/wlogin_sdk/request/u;->D:I

    if-ne v0, v2, :cond_2

    .line 1558
    sget-object v0, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v0, p2}, Loicq/wlogin_sdk/tools/util;->set_wap_server_host2(Landroid/content/Context;[B)V

    goto :goto_1
.end method

.method public a(J[B)V
    .locals 11

    .prologue
    .line 470
    iget v2, p0, Loicq/wlogin_sdk/request/oicq_request;->i:I

    iget v3, p0, Loicq/wlogin_sdk/request/oicq_request;->t:I

    iget v6, p0, Loicq/wlogin_sdk/request/oicq_request;->m:I

    sget v7, Loicq/wlogin_sdk/request/u;->w:I

    iget v8, p0, Loicq/wlogin_sdk/request/oicq_request;->p:I

    move-object v1, p0

    move-wide v4, p1

    move-object v9, p3

    invoke-direct/range {v1 .. v9}, Loicq/wlogin_sdk/request/oicq_request;->a(IIJIII[B)V

    .line 472
    return-void
.end method

.method public a(J[BLoicq/wlogin_sdk/request/oicq_request$EncryptionMethod;)V
    .locals 3

    .prologue
    .line 480
    sget-object v0, Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;->EM_ST:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    if-ne p4, v0, :cond_0

    .line 481
    invoke-virtual {p0, p1, p2, p3}, Loicq/wlogin_sdk/request/oicq_request;->b(J[B)V

    .line 487
    :goto_0
    return-void

    .line 482
    :cond_0
    sget-object v0, Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;->EM_ECDH:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    if-ne p4, v0, :cond_1

    .line 483
    invoke-virtual {p0, p1, p2, p3}, Loicq/wlogin_sdk/request/oicq_request;->a(J[B)V

    goto :goto_0

    .line 485
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRequestEncrptedPackage unknown encryption method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/net/Socket;)V
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iput-object p1, v0, Loicq/wlogin_sdk/request/u;->ah:Ljava/net/Socket;

    .line 815
    return-void
.end method

.method public a(Loicq/wlogin_sdk/b/at;)V
    .locals 3

    .prologue
    .line 1381
    :try_start_0
    new-instance v0, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v0}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    .line 1382
    if-eqz p1, :cond_0

    .line 1383
    invoke-virtual {p1}, Loicq/wlogin_sdk/b/at;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/tools/ErrMsg;->setType(I)V

    .line 1384
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Loicq/wlogin_sdk/b/at;->g()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/tools/ErrMsg;->setTitle(Ljava/lang/String;)V

    .line 1385
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Loicq/wlogin_sdk/b/at;->h()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/tools/ErrMsg;->setMessage(Ljava/lang/String;)V

    .line 1386
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Loicq/wlogin_sdk/b/at;->i()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/tools/ErrMsg;->setOtherinfo(Ljava/lang/String;)V

    .line 1388
    new-instance v1, Loicq/wlogin_sdk/request/e;

    sget-object v2, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Loicq/wlogin_sdk/request/e;-><init>(Landroid/content/Context;Loicq/wlogin_sdk/tools/ErrMsg;)V

    invoke-virtual {v1}, Loicq/wlogin_sdk/request/e;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1391
    :cond_0
    :goto_0
    return-void

    .line 1390
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V
    .locals 2

    .prologue
    .line 2536
    const/4 v0, 0x1

    invoke-virtual {p1}, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->isWtSessionTicketExpired()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2545
    :cond_0
    :goto_0
    return-void

    .line 2541
    :cond_1
    iget-object v0, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->wtSessionTicket:[B

    if-eqz v0, :cond_0

    iget-object v0, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->wtSessionTicketKey:[B

    if-eqz v0, :cond_0

    .line 2542
    iget-object v0, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->wtSessionTicket:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->A:[B

    .line 2543
    iget-object v0, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->wtSessionTicketKey:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->B:[B

    goto :goto_0
.end method

.method public a(Loicq/wlogin_sdk/tools/ErrMsg;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1367
    iget-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v0, v1}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v1

    .line 1368
    new-instance v0, Loicq/wlogin_sdk/tools/ErrMsg;

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v0, v5, v2, v3, v4}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v1, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    .line 1370
    if-eqz p1, :cond_0

    .line 1372
    :try_start_0
    invoke-virtual {p1}, Loicq/wlogin_sdk/tools/ErrMsg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loicq/wlogin_sdk/tools/ErrMsg;

    iput-object v0, v1, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1377
    :cond_0
    :goto_0
    return-void

    .line 1373
    :catch_0
    move-exception v0

    .line 1374
    new-instance v0, Loicq/wlogin_sdk/tools/ErrMsg;

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v0, v5, v2, v3, v4}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v1, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    goto :goto_0
.end method

.method public a([BI)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 410
    iget v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Loicq/wlogin_sdk/request/oicq_request;->b:I

    if-le v0, v1, :cond_0

    .line 412
    iget v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x1

    add-int/lit16 v0, v0, 0x80

    iput v0, p0, Loicq/wlogin_sdk/request/oicq_request;->b:I

    .line 413
    iget v0, p0, Loicq/wlogin_sdk/request/oicq_request;->b:I

    new-array v0, v0, [B

    .line 414
    iget-object v1, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    iget v2, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 415
    iput-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    .line 417
    :cond_0
    iget-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    iget v1, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    invoke-static {p1, v3, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 418
    iget v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    add-int/2addr v0, p2

    iput v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    .line 419
    return-void
.end method

.method public a(Loicq/wlogin_sdk/b/bc;)[B
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 1482
    .line 1484
    new-instance v1, Loicq/wlogin_sdk/b/i;

    invoke-direct {v1}, Loicq/wlogin_sdk/b/i;-><init>()V

    .line 1485
    new-instance v2, Loicq/wlogin_sdk/b/o;

    invoke-direct {v2}, Loicq/wlogin_sdk/b/o;-><init>()V

    .line 1486
    new-instance v3, Loicq/wlogin_sdk/b/bd;

    invoke-direct {v3}, Loicq/wlogin_sdk/b/bd;-><init>()V

    .line 1487
    new-instance v4, Loicq/wlogin_sdk/b/ap;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/ap;-><init>()V

    .line 1489
    invoke-virtual {p1}, Loicq/wlogin_sdk/b/bc;->c()[B

    move-result-object v5

    .line 1490
    const/4 v6, 0x2

    .line 1491
    array-length v7, v5

    .line 1494
    invoke-virtual {v1, v5, v6, v7}, Loicq/wlogin_sdk/b/i;->c([BII)I

    move-result v8

    .line 1495
    if-gez v8, :cond_1

    .line 1534
    :cond_0
    :goto_0
    return-object v0

    .line 1499
    :cond_1
    invoke-virtual {v2, v5, v6, v7}, Loicq/wlogin_sdk/b/o;->c([BII)I

    move-result v8

    .line 1500
    if-ltz v8, :cond_0

    .line 1504
    invoke-virtual {v3, v5, v6, v7}, Loicq/wlogin_sdk/b/bd;->c([BII)I

    move-result v5

    .line 1505
    if-ltz v5, :cond_0

    .line 1509
    invoke-virtual {v1}, Loicq/wlogin_sdk/b/i;->b()[B

    move-result-object v1

    .line 1510
    invoke-virtual {v2}, Loicq/wlogin_sdk/b/o;->b()[B

    move-result-object v2

    .line 1511
    invoke-virtual {v3}, Loicq/wlogin_sdk/b/bd;->b()[B

    move-result-object v3

    .line 1512
    sget-object v0, Loicq/wlogin_sdk/request/u;->A:[B

    invoke-virtual {v4, v0}, Loicq/wlogin_sdk/b/ap;->a([B)[B

    move-result-object v4

    .line 1513
    const/4 v5, 0x4

    .line 1516
    array-length v0, v1

    add-int/lit8 v0, v0, 0x3

    array-length v6, v2

    add-int/2addr v0, v6

    array-length v6, v3

    add-int/2addr v0, v6

    array-length v6, v4

    add-int/2addr v0, v6

    .line 1518
    new-array v0, v0, [B

    .line 1520
    const/16 v6, 0x40

    aput-byte v6, v0, v9

    .line 1521
    const/4 v6, 0x1

    .line 1523
    invoke-static {v0, v6, v5}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 1524
    const/4 v5, 0x3

    .line 1525
    array-length v6, v1

    invoke-static {v1, v9, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1526
    array-length v1, v1

    add-int/lit8 v1, v1, 0x3

    .line 1527
    array-length v5, v2

    invoke-static {v2, v9, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1528
    array-length v2, v2

    add-int/2addr v1, v2

    .line 1529
    array-length v2, v3

    invoke-static {v3, v9, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1530
    array-length v2, v3

    add-int/2addr v1, v2

    .line 1531
    array-length v2, v4

    invoke-static {v4, v9, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1532
    array-length v2, v4

    add-int/2addr v1, v2

    .line 1534
    goto :goto_0
.end method

.method protected a([B)[B
    .locals 3

    .prologue
    .line 789
    iget-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget v0, v0, Loicq/wlogin_sdk/request/u;->m:I

    if-nez v0, :cond_0

    .line 790
    iget-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-object v0, v0, Loicq/wlogin_sdk/request/u;->c:[B

    iget-object v1, p0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-object v1, v1, Loicq/wlogin_sdk/request/u;->n:[B

    iget-object v2, p0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-object v2, v2, Loicq/wlogin_sdk/request/u;->p:[B

    invoke-virtual {p0, p1, v0, v1, v2}, Loicq/wlogin_sdk/request/oicq_request;->a([B[B[B[B)[B

    move-result-object v0

    .line 792
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-object v0, v0, Loicq/wlogin_sdk/request/u;->c:[B

    invoke-virtual {p0, p1, v0}, Loicq/wlogin_sdk/request/oicq_request;->a([B[B)[B

    move-result-object v0

    goto :goto_0
.end method

.method a([BII)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 744
    array-length v0, p1

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 745
    invoke-static {v0, v3, p2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 746
    const/4 v1, 0x2

    invoke-static {v0, v1, p3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 747
    const/4 v1, 0x4

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 748
    return-object v0
.end method

.method protected a([BLoicq/wlogin_sdk/request/oicq_request$EncryptionMethod;[B[B)[B
    .locals 2

    .prologue
    .line 774
    sget-object v0, Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;->EM_ST:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    if-ne v0, p2, :cond_0

    .line 775
    invoke-virtual {p0, p1, p3, p4}, Loicq/wlogin_sdk/request/oicq_request;->b([B[B[B)[B

    move-result-object v0

    .line 780
    :goto_0
    return-object v0

    .line 776
    :cond_0
    sget-object v0, Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;->EM_ECDH:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    if-ne v0, p2, :cond_1

    .line 777
    invoke-virtual {p0, p1}, Loicq/wlogin_sdk/request/oicq_request;->a([B)[B

    move-result-object v0

    goto :goto_0

    .line 779
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encryptBody unknown encryption method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a([B[B)[B
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x2

    const/4 v5, 0x0

    .line 690
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 691
    :cond_0
    new-array v0, v5, [B

    .line 718
    :goto_0
    return-object v0

    .line 694
    :cond_1
    iget-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget v0, v0, Loicq/wlogin_sdk/request/u;->m:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 696
    :goto_1
    array-length v2, p1

    invoke-static {p1, v5, v2, p2}, Loicq/wlogin_sdk/tools/cryptor;->encrypt([BII[B)[B

    move-result-object v3

    .line 698
    array-length v2, p2

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    array-length v4, v3

    add-int/2addr v2, v4

    new-array v2, v2, [B

    .line 700
    invoke-static {v2, v5, v6}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 703
    invoke-static {v2, v6, v0}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 706
    array-length v0, p2

    invoke-static {p2, v5, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 707
    array-length v0, p2

    add-int/lit8 v0, v0, 0x2

    .line 709
    const/16 v1, 0x102

    invoke-static {v2, v0, v1}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 710
    add-int/lit8 v0, v0, 0x2

    .line 712
    invoke-static {v2, v0, v5}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 713
    add-int/lit8 v0, v0, 0x2

    .line 715
    array-length v1, v3

    invoke-static {v3, v5, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 716
    array-length v1, v3

    add-int/2addr v0, v1

    move-object v0, v2

    .line 718
    goto :goto_0

    :cond_2
    move v0, v1

    .line 694
    goto :goto_1
.end method

.method a([B[B[B)[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 725
    array-length v0, p1

    invoke-static {p1, v4, v0, p3}, Loicq/wlogin_sdk/tools/cryptor;->encrypt([BII[B)[B

    move-result-object v0

    .line 728
    array-length v1, p2

    add-int/lit8 v1, v1, 0x2

    array-length v2, v0

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 731
    array-length v2, p2

    invoke-static {v1, v4, v2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 732
    const/4 v2, 0x2

    .line 734
    array-length v3, p2

    invoke-static {p2, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 735
    array-length v2, p2

    add-int/lit8 v2, v2, 0x2

    .line 737
    array-length v3, v0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 738
    array-length v0, v0

    add-int/2addr v0, v2

    .line 740
    return-object v1
.end method

.method a([B[B[B[B)[B
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 648
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 650
    :cond_0
    new-array v0, v4, [B

    .line 683
    :goto_0
    return-object v0

    .line 656
    :cond_1
    array-length v0, p1

    invoke-static {p1, v4, v0, p4}, Loicq/wlogin_sdk/tools/cryptor;->encrypt([BII[B)[B

    move-result-object v1

    .line 659
    array-length v0, p2

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    array-length v2, p3

    add-int/2addr v0, v2

    array-length v2, v1

    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 662
    invoke-static {v0, v4, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 665
    invoke-static {v0, v3, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 666
    const/4 v2, 0x2

    .line 668
    array-length v3, p2

    invoke-static {p2, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 669
    array-length v2, p2

    add-int/lit8 v2, v2, 0x2

    .line 671
    const/16 v3, 0x102

    invoke-static {v0, v2, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 672
    add-int/lit8 v2, v2, 0x2

    .line 674
    array-length v3, p3

    invoke-static {v0, v2, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 675
    add-int/lit8 v2, v2, 0x2

    .line 677
    array-length v3, p3

    invoke-static {p3, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 678
    array-length v3, p3

    add-int/2addr v2, v3

    .line 680
    array-length v3, v1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 681
    array-length v1, v1

    add-int/2addr v1, v2

    .line 683
    goto :goto_0
.end method

.method public b()I
    .locals 7

    .prologue
    const/16 v0, -0x3f1

    const/16 v1, -0x3ea

    const/4 v2, 0x0

    .line 508
    .line 509
    iget v3, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    .line 511
    iget v4, p0, Loicq/wlogin_sdk/request/oicq_request;->f:I

    add-int/lit8 v4, v4, 0x2

    if-gt v3, v4, :cond_1

    .line 597
    :cond_0
    :goto_0
    return v0

    .line 514
    :cond_1
    iget v4, p0, Loicq/wlogin_sdk/request/oicq_request;->f:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x2

    iput v3, p0, Loicq/wlogin_sdk/request/oicq_request;->g:I

    .line 517
    iget-object v3, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    const/16 v4, 0xd

    invoke-static {v3, v4}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v3

    .line 519
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enrypt method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Loicq/wlogin_sdk/request/oicq_request;->y:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rsp flag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v4, p0, Loicq/wlogin_sdk/request/oicq_request;->y:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    sget-object v5, Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;->EM_ECDH:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    if-ne v4, v5, :cond_4

    if-nez v3, :cond_4

    .line 523
    iget-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget v0, v0, Loicq/wlogin_sdk/request/u;->m:I

    if-nez v0, :cond_3

    .line 524
    iget-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    iget v1, p0, Loicq/wlogin_sdk/request/oicq_request;->f:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Loicq/wlogin_sdk/request/oicq_request;->g:I

    iget-object v3, p0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-object v3, v3, Loicq/wlogin_sdk/request/u;->p:[B

    invoke-virtual {p0, v0, v1, v2, v3}, Loicq/wlogin_sdk/request/oicq_request;->a([BII[B)I

    move-result v0

    .line 525
    if-gez v0, :cond_2

    .line 526
    const-string/jumbo v0, "use ecdh decrypt_body failed"

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    iget v1, p0, Loicq/wlogin_sdk/request/oicq_request;->f:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Loicq/wlogin_sdk/request/oicq_request;->g:I

    iget-object v3, p0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-object v3, v3, Loicq/wlogin_sdk/request/u;->c:[B

    invoke-virtual {p0, v0, v1, v2, v3}, Loicq/wlogin_sdk/request/oicq_request;->a([BII[B)I

    move-result v0

    .line 530
    if-gez v0, :cond_2

    .line 531
    const-string/jumbo v1, "use kc decrypt_body failed"

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    :cond_2
    :goto_1
    if-ltz v0, :cond_0

    .line 596
    iget-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    iget v1, p0, Loicq/wlogin_sdk/request/oicq_request;->f:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Loicq/wlogin_sdk/request/oicq_request;->g:I

    invoke-virtual {p0, v0, v1, v2}, Loicq/wlogin_sdk/request/oicq_request;->d([BII)I

    move-result v0

    goto/16 :goto_0

    .line 535
    :cond_3
    iget-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    iget v1, p0, Loicq/wlogin_sdk/request/oicq_request;->f:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Loicq/wlogin_sdk/request/oicq_request;->g:I

    iget-object v3, p0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-object v3, v3, Loicq/wlogin_sdk/request/u;->c:[B

    invoke-virtual {p0, v0, v1, v2, v3}, Loicq/wlogin_sdk/request/oicq_request;->a([BII[B)I

    move-result v0

    .line 536
    if-gez v0, :cond_2

    .line 537
    const-string/jumbo v1, "use kc decrypt_body failed"

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 540
    :cond_4
    iget-object v4, p0, Loicq/wlogin_sdk/request/oicq_request;->y:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    sget-object v5, Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;->EM_ST:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    if-ne v4, v5, :cond_5

    const/4 v4, 0x3

    if-ne v4, v3, :cond_5

    .line 541
    iget-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    iget v1, p0, Loicq/wlogin_sdk/request/oicq_request;->f:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Loicq/wlogin_sdk/request/oicq_request;->g:I

    iget-object v3, p0, Loicq/wlogin_sdk/request/oicq_request;->B:[B

    invoke-virtual {p0, v0, v1, v2, v3}, Loicq/wlogin_sdk/request/oicq_request;->a([BII[B)I

    move-result v0

    .line 542
    if-gez v0, :cond_2

    .line 543
    const-string/jumbo v1, "use session key decrypt_body failed"

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 545
    :cond_5
    iget-object v4, p0, Loicq/wlogin_sdk/request/oicq_request;->y:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    sget-object v5, Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;->EM_ECDH:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    if-ne v4, v5, :cond_c

    const/4 v4, 0x1

    iget-boolean v5, p0, Loicq/wlogin_sdk/request/oicq_request;->z:Z

    if-ne v4, v5, :cond_c

    const/4 v4, 0x4

    if-ne v4, v3, :cond_c

    .line 547
    iget-object v3, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    iget v4, p0, Loicq/wlogin_sdk/request/oicq_request;->f:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Loicq/wlogin_sdk/request/oicq_request;->g:I

    iget-object v6, p0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-object v6, v6, Loicq/wlogin_sdk/request/u;->p:[B

    invoke-static {v3, v4, v5, v6}, Loicq/wlogin_sdk/tools/cryptor;->decrypt([BII[B)[B

    move-result-object v3

    .line 548
    if-nez v3, :cond_6

    .line 549
    const-string v0, "decrypted outer body failed"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v4, v3, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 550
    goto/16 :goto_0

    .line 554
    :cond_6
    invoke-static {v3, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v4

    .line 555
    array-length v5, v3

    add-int/lit8 v5, v5, -0x2

    if-le v4, v5, :cond_7

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "peer public key len wrong "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v4, v3, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 561
    :cond_7
    new-array v0, v4, [B

    .line 562
    const/4 v5, 0x2

    invoke-static {v3, v5, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 565
    new-instance v5, Loicq/wlogin_sdk/tools/EcdhCrypt;

    iget-object v6, p0, Loicq/wlogin_sdk/request/oicq_request;->a:Landroid/content/Context;

    invoke-direct {v5, v6}, Loicq/wlogin_sdk/tools/EcdhCrypt;-><init>(Landroid/content/Context;)V

    .line 566
    invoke-virtual {v5, v0}, Loicq/wlogin_sdk/tools/EcdhCrypt;->calShareKeyMd5ByPeerPublicKey([B)[B

    move-result-object v0

    .line 567
    if-eqz v0, :cond_8

    array-length v5, v0

    if-nez v5, :cond_9

    :cond_8
    move v0, v1

    .line 568
    goto/16 :goto_0

    .line 572
    :cond_9
    add-int/lit8 v5, v4, 0x2

    array-length v6, v3

    add-int/lit8 v6, v6, -0x2

    sub-int v4, v6, v4

    invoke-static {v3, v5, v4, v0}, Loicq/wlogin_sdk/tools/cryptor;->decrypt([BII[B)[B

    move-result-object v0

    .line 573
    if-nez v0, :cond_a

    .line 574
    sget-object v0, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    const v2, 0x258e52

    invoke-virtual {v0, v2}, Loicq/wlogin_sdk/report/report_t1;->attr_api(I)V

    .line 575
    const-string/jumbo v0, "use share key md5 decrypt failed"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v4, v3, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 576
    goto/16 :goto_0

    .line 580
    :cond_a
    iget-object v1, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    array-length v1, v1

    iget v3, p0, Loicq/wlogin_sdk/request/oicq_request;->f:I

    add-int/lit8 v3, v3, 0x2

    array-length v4, v0

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_b

    .line 581
    iget v1, p0, Loicq/wlogin_sdk/request/oicq_request;->f:I

    add-int/lit8 v1, v1, 0x2

    array-length v3, v0

    add-int/2addr v1, v3

    iput v1, p0, Loicq/wlogin_sdk/request/oicq_request;->b:I

    .line 582
    iget v1, p0, Loicq/wlogin_sdk/request/oicq_request;->b:I

    new-array v1, v1, [B

    .line 583
    iget-object v3, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    iget v4, p0, Loicq/wlogin_sdk/request/oicq_request;->f:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 584
    iput-object v1, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    .line 587
    :cond_b
    iget-object v1, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    iget v3, p0, Loicq/wlogin_sdk/request/oicq_request;->f:I

    add-int/lit8 v3, v3, 0x1

    array-length v4, v0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 588
    iget v1, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    iget v3, p0, Loicq/wlogin_sdk/request/oicq_request;->f:I

    add-int/lit8 v3, v3, 0x2

    array-length v0, v0

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    iput v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    move v0, v2

    .line 589
    goto/16 :goto_1

    .line 590
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown encryption method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Loicq/wlogin_sdk/request/oicq_request;->y:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const/16 v0, -0x400

    goto/16 :goto_1
.end method

.method public b(Ljava/lang/String;ZLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 12

    .prologue
    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":snd_rcv_req_msf ..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v2, v2, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    iget-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget v4, v0, Loicq/wlogin_sdk/request/u;->l:I

    .line 907
    invoke-virtual {p0}, Loicq/wlogin_sdk/request/oicq_request;->c()[B

    move-result-object v3

    .line 908
    const/4 v7, 0x0

    .line 910
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 913
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WtloginMsfListener uin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " service_cmd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Loicq/wlogin_sdk/request/oicq_request;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timeout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " flag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v10, v2, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    new-instance v0, Loicq/wlogin_sdk/request/WtloginMsfListener;

    iget-object v2, p0, Loicq/wlogin_sdk/request/oicq_request;->v:Ljava/lang/String;

    move-object v1, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Loicq/wlogin_sdk/request/WtloginMsfListener;-><init>(Ljava/lang/String;Ljava/lang/String;[BIZLoicq/wlogin_sdk/request/WUserSigInfo;)V

    .line 917
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 918
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 919
    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/Thread;->join(J)V

    .line 922
    invoke-virtual {v0}, Loicq/wlogin_sdk/request/WtloginMsfListener;->getRetData()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 923
    if-nez v1, :cond_1

    .line 924
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recv data from server failed, ret="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Loicq/wlogin_sdk/request/WtloginMsfListener;->getRet()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v4, v4, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 925
    const/16 v2, -0x3e8

    move-object v0, v1

    .line 938
    :goto_0
    iget v1, p0, Loicq/wlogin_sdk/request/oicq_request;->t:I

    const/16 v4, 0x812

    if-eq v1, v4, :cond_0

    .line 939
    new-instance v1, Loicq/wlogin_sdk/report/report_t3;

    invoke-direct {v1}, Loicq/wlogin_sdk/report/report_t3;-><init>()V

    .line 940
    iget v4, p0, Loicq/wlogin_sdk/request/oicq_request;->t:I

    iput v4, v1, Loicq/wlogin_sdk/report/report_t3;->_cmd:I

    .line 941
    iget v4, p0, Loicq/wlogin_sdk/request/oicq_request;->u:I

    iput v4, v1, Loicq/wlogin_sdk/report/report_t3;->_sub:I

    .line 942
    iput v2, v1, Loicq/wlogin_sdk/report/report_t3;->_rst2:I

    .line 943
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 944
    sub-long/2addr v4, v8

    long-to-int v4, v4

    iput v4, v1, Loicq/wlogin_sdk/report/report_t3;->_used:I

    .line 945
    const/4 v4, 0x0

    iput v4, v1, Loicq/wlogin_sdk/report/report_t3;->_try:I

    .line 946
    const-string v4, ""

    iput-object v4, v1, Loicq/wlogin_sdk/report/report_t3;->_host:Ljava/lang/String;

    .line 947
    const-string v4, ""

    iput-object v4, v1, Loicq/wlogin_sdk/report/report_t3;->_ip:Ljava/lang/String;

    .line 948
    const/4 v4, 0x0

    iput v4, v1, Loicq/wlogin_sdk/report/report_t3;->_port:I

    .line 949
    const/4 v4, 0x0

    iput v4, v1, Loicq/wlogin_sdk/report/report_t3;->_conn:I

    .line 950
    const/4 v4, 0x0

    iput v4, v1, Loicq/wlogin_sdk/report/report_t3;->_net:I

    .line 951
    const-string v4, ""

    iput-object v4, v1, Loicq/wlogin_sdk/report/report_t3;->_str:Ljava/lang/String;

    .line 952
    if-nez v2, :cond_2

    .line 953
    array-length v3, v3

    iput v3, v1, Loicq/wlogin_sdk/report/report_t3;->_slen:I

    .line 954
    array-length v0, v0

    iput v0, v1, Loicq/wlogin_sdk/report/report_t3;->_rlen:I

    .line 959
    :goto_1
    const/4 v0, 0x3

    iput v0, v1, Loicq/wlogin_sdk/report/report_t3;->_wap:I

    .line 961
    sget-object v0, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/report/report_t1;->add_t3(Loicq/wlogin_sdk/report/report_t3;)V

    .line 964
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":snd_rcv_req_msf ret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v4, v3, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    return v2

    .line 929
    :cond_1
    :try_start_2
    array-length v0, v1

    invoke-virtual {p0, v1, v0}, Loicq/wlogin_sdk/request/oicq_request;->b([BI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 931
    const/4 v2, 0x0

    move-object v0, v1

    .line 935
    goto/16 :goto_0

    .line 932
    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v0, v7

    .line 933
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v4, v4, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Loicq/wlogin_sdk/tools/util;->printException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 934
    const/16 v1, -0x3e8

    move v2, v1

    goto/16 :goto_0

    .line 956
    :cond_2
    const/4 v0, 0x0

    iput v0, v1, Loicq/wlogin_sdk/report/report_t3;->_slen:I

    .line 957
    const/4 v0, 0x0

    iput v0, v1, Loicq/wlogin_sdk/report/report_t3;->_rlen:I

    goto :goto_1

    .line 932
    :catch_1
    move-exception v2

    move-object v0, v1

    goto :goto_2
.end method

.method public b([B)I
    .locals 1

    .prologue
    .line 970
    const/4 v0, 0x1

    invoke-static {p1, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v0

    return v0
.end method

.method public b(Z)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 819
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 821
    if-eqz p1, :cond_0

    .line 823
    const-string/jumbo v1, "wlogin.qq.com"

    aput-object v1, v0, v2

    .line 824
    const-string/jumbo v1, "wlogin1.qq.com"

    aput-object v1, v0, v3

    .line 832
    :goto_0
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 833
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    .line 834
    array-length v2, v0

    rem-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 836
    aget-object v0, v0, v1

    return-object v0

    .line 828
    :cond_0
    const-string/jumbo v1, "wtlogin.qq.com"

    aput-object v1, v0, v2

    .line 829
    const-string/jumbo v1, "wtlogin1.qq.com"

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method public b(J[B)V
    .locals 11

    .prologue
    .line 475
    iget v2, p0, Loicq/wlogin_sdk/request/oicq_request;->i:I

    iget v3, p0, Loicq/wlogin_sdk/request/oicq_request;->t:I

    iget v6, p0, Loicq/wlogin_sdk/request/oicq_request;->m:I

    sget v7, Loicq/wlogin_sdk/request/u;->w:I

    iget v8, p0, Loicq/wlogin_sdk/request/oicq_request;->p:I

    move-object v1, p0

    move-wide v4, p1

    move-object v9, p3

    invoke-direct/range {v1 .. v9}, Loicq/wlogin_sdk/request/oicq_request;->b(IIJIII[B)V

    .line 477
    return-void
.end method

.method public b([BI)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 602
    iget v0, p0, Loicq/wlogin_sdk/request/oicq_request;->b:I

    if-le p2, v0, :cond_0

    .line 603
    add-int/lit16 v0, p2, 0x80

    iput v0, p0, Loicq/wlogin_sdk/request/oicq_request;->b:I

    .line 604
    iget v0, p0, Loicq/wlogin_sdk/request/oicq_request;->b:I

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    .line 607
    :cond_0
    iput p2, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    .line 608
    iget-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 609
    return-void
.end method

.method b([BII)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 753
    array-length v0, p1

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 754
    invoke-static {v0, v3, p2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 755
    const/4 v1, 0x2

    invoke-static {v0, v1, p3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 756
    const/4 v1, 0x4

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 758
    iget-object v1, p0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget v1, v1, Loicq/wlogin_sdk/request/u;->m:I

    if-nez v1, :cond_0

    .line 759
    iget-object v1, p0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-object v1, v1, Loicq/wlogin_sdk/request/u;->c:[B

    iget-object v2, p0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-object v2, v2, Loicq/wlogin_sdk/request/u;->n:[B

    iget-object v3, p0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-object v3, v3, Loicq/wlogin_sdk/request/u;->p:[B

    invoke-virtual {p0, v0, v1, v2, v3}, Loicq/wlogin_sdk/request/oicq_request;->a([B[B[B[B)[B

    move-result-object v0

    .line 761
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-object v1, v1, Loicq/wlogin_sdk/request/u;->c:[B

    invoke-virtual {p0, v0, v1}, Loicq/wlogin_sdk/request/oicq_request;->a([B[B)[B

    move-result-object v0

    goto :goto_0
.end method

.method protected b([B[B[B)[B
    .locals 1

    .prologue
    .line 804
    invoke-virtual {p0, p1, p2, p3}, Loicq/wlogin_sdk/request/oicq_request;->a([B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public c(Z)I
    .locals 1

    .prologue
    const/16 v0, 0x1bb

    .line 841
    if-eqz p1, :cond_0

    .line 844
    :cond_0
    return v0
.end method

.method public c([BI)I
    .locals 1

    .prologue
    .line 1345
    aget-byte v0, p1, p2

    iput-byte v0, p0, Loicq/wlogin_sdk/request/oicq_request;->w:B

    .line 1346
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public c([BII)V
    .locals 5

    .prologue
    .line 1352
    new-instance v0, Loicq/wlogin_sdk/b/aq;

    invoke-direct {v0}, Loicq/wlogin_sdk/b/aq;-><init>()V

    .line 1353
    invoke-virtual {v0, p1, p2, p3}, Loicq/wlogin_sdk/b/aq;->c([BII)I

    move-result v1

    .line 1355
    iget-object v2, p0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v2, v2, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v2, v3}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v2

    .line 1357
    if-ltz v1, :cond_0

    .line 1358
    iget-object v1, v2, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Loicq/wlogin_sdk/b/aq;->a()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v3}, Loicq/wlogin_sdk/tools/ErrMsg;->setTitle(Ljava/lang/String;)V

    .line 1359
    iget-object v1, v2, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Loicq/wlogin_sdk/b/aq;->g()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v3}, Loicq/wlogin_sdk/tools/ErrMsg;->setMessage(Ljava/lang/String;)V

    .line 1360
    iget-object v1, v2, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-virtual {v0}, Loicq/wlogin_sdk/b/aq;->h()I

    move-result v3

    invoke-virtual {v1, v3}, Loicq/wlogin_sdk/tools/ErrMsg;->setType(I)V

    .line 1361
    iget-object v1, v2, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Loicq/wlogin_sdk/b/aq;->i()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Loicq/wlogin_sdk/tools/ErrMsg;->setOtherinfo(Ljava/lang/String;)V

    .line 1363
    :cond_0
    return-void
.end method

.method public c()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 613
    iget v0, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    new-array v0, v0, [B

    .line 614
    iget-object v1, p0, Loicq/wlogin_sdk/request/oicq_request;->h:[B

    iget v2, p0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 615
    return-object v0
.end method

.method public c([B)[B
    .locals 6

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x0

    .line 1402
    const-string v1, "%4;7t>;28<fc.5*6"

    .line 1407
    sget-object v0, Loicq/wlogin_sdk/request/u;->B:[B

    if-eqz v0, :cond_0

    sget-object v0, Loicq/wlogin_sdk/request/u;->B:[B

    array-length v0, v0

    if-gtz v0, :cond_3

    .line 1408
    :cond_0
    array-length v0, p1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {p1, v4, v0, v1}, Loicq/wlogin_sdk/tools/cryptor;->decrypt([BII[B)[B

    move-result-object v0

    .line 1427
    :cond_1
    :goto_0
    if-nez v0, :cond_8

    .line 1428
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v1, v0

    .line 1429
    :goto_1
    if-eqz v1, :cond_2

    array-length v0, v1

    if-ge v0, v5, :cond_7

    .line 1430
    :cond_2
    const/4 v0, 0x0

    check-cast v0, [B

    .line 1440
    :goto_2
    return-object v0

    .line 1410
    :cond_3
    new-array v2, v5, [B

    .line 1411
    sget-object v0, Loicq/wlogin_sdk/request/u;->B:[B

    array-length v0, v0

    array-length v3, v2

    if-le v0, v3, :cond_6

    .line 1412
    sget-object v0, Loicq/wlogin_sdk/request/u;->B:[B

    array-length v3, v2

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1419
    :cond_4
    array-length v0, p1

    invoke-static {p1, v4, v0, v2}, Loicq/wlogin_sdk/tools/cryptor;->decrypt([BII[B)[B

    move-result-object v0

    .line 1422
    if-eqz v0, :cond_5

    array-length v2, v0

    if-gtz v2, :cond_1

    .line 1423
    :cond_5
    array-length v0, p1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {p1, v4, v0, v1}, Loicq/wlogin_sdk/tools/cryptor;->decrypt([BII[B)[B

    move-result-object v0

    goto :goto_0

    .line 1414
    :cond_6
    sget-object v0, Loicq/wlogin_sdk/request/u;->B:[B

    sget-object v3, Loicq/wlogin_sdk/request/u;->B:[B

    array-length v3, v3

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1415
    sget-object v0, Loicq/wlogin_sdk/request/u;->B:[B

    array-length v0, v0

    :goto_3
    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 1416
    add-int/lit8 v3, v0, 0x1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 1415
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1431
    :cond_7
    array-length v0, v1

    add-int/lit8 v2, v0, -0x10

    .line 1432
    new-array v0, v2, [B

    .line 1433
    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1434
    new-array v3, v5, [B

    .line 1435
    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1437
    iget-object v1, p0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v4, v1, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v4, v5}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v1

    .line 1438
    iput-object v3, v1, Loicq/wlogin_sdk/request/async_context;->_tgtgt_key:[B

    goto :goto_2

    :cond_8
    move-object v1, v0

    goto :goto_1
.end method

.method public c([B[B[B)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1457
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1458
    :cond_0
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 1473
    :goto_0
    return-object v0

    .line 1461
    :cond_1
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    array-length v1, p3

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 1464
    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1465
    array-length v1, p1

    add-int/2addr v1, v3

    .line 1467
    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1468
    array-length v2, p2

    add-int/2addr v1, v2

    .line 1470
    array-length v2, p3

    invoke-static {p3, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1471
    array-length v2, p3

    add-int/2addr v1, v2

    .line 1473
    invoke-static {v0}, Loicq/wlogin_sdk/tools/MD5;->toMD5Byte([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public d([BII)I
    .locals 91

    .prologue
    .line 1645
    const/4 v4, 0x5

    move/from16 v0, p3

    if-ge v0, v4, :cond_1

    .line 1646
    const/16 v4, -0x3f1

    .line 2531
    :cond_0
    :goto_0
    return v4

    .line 1648
    :cond_1
    const-wide/16 v44, 0x0

    const-wide/32 v14, 0x20f580

    .line 1649
    const-wide/32 v16, 0x190c80

    const-wide/32 v20, 0x15180

    const-wide/32 v22, 0x1a5e00

    .line 1650
    const-wide/32 v26, 0x11940

    const-wide/16 v46, 0x1770

    const-wide/32 v48, 0x1a5e00

    .line 1651
    const-wide/32 v50, 0x1a5e00

    .line 1652
    const-wide v12, 0xffffffffL

    .line 1653
    new-instance v6, Loicq/wlogin_sdk/b/g;

    invoke-direct {v6}, Loicq/wlogin_sdk/b/g;-><init>()V

    .line 1654
    new-instance v9, Loicq/wlogin_sdk/b/h;

    invoke-direct {v9}, Loicq/wlogin_sdk/b/h;-><init>()V

    .line 1655
    new-instance v18, Loicq/wlogin_sdk/b/s;

    invoke-direct/range {v18 .. v18}, Loicq/wlogin_sdk/b/s;-><init>()V

    .line 1656
    new-instance v19, Loicq/wlogin_sdk/b/v;

    invoke-direct/range {v19 .. v19}, Loicq/wlogin_sdk/b/v;-><init>()V

    .line 1658
    new-instance v28, Loicq/wlogin_sdk/b/p;

    invoke-direct/range {v28 .. v28}, Loicq/wlogin_sdk/b/p;-><init>()V

    .line 1659
    new-instance v39, Loicq/wlogin_sdk/b/q;

    invoke-direct/range {v39 .. v39}, Loicq/wlogin_sdk/b/q;-><init>()V

    .line 1660
    new-instance v25, Loicq/wlogin_sdk/b/m;

    invoke-direct/range {v25 .. v25}, Loicq/wlogin_sdk/b/m;-><init>()V

    .line 1661
    new-instance v43, Loicq/wlogin_sdk/b/t;

    invoke-direct/range {v43 .. v43}, Loicq/wlogin_sdk/b/t;-><init>()V

    .line 1662
    new-instance v24, Loicq/wlogin_sdk/b/f;

    invoke-direct/range {v24 .. v24}, Loicq/wlogin_sdk/b/f;-><init>()V

    .line 1663
    new-instance v52, Loicq/wlogin_sdk/b/w;

    invoke-direct/range {v52 .. v52}, Loicq/wlogin_sdk/b/w;-><init>()V

    .line 1665
    new-instance v35, Loicq/wlogin_sdk/b/e;

    invoke-direct/range {v35 .. v35}, Loicq/wlogin_sdk/b/e;-><init>()V

    .line 1666
    new-instance v37, Loicq/wlogin_sdk/b/n;

    invoke-direct/range {v37 .. v37}, Loicq/wlogin_sdk/b/n;-><init>()V

    .line 1667
    new-instance v38, Loicq/wlogin_sdk/b/x;

    invoke-direct/range {v38 .. v38}, Loicq/wlogin_sdk/b/x;-><init>()V

    .line 1668
    new-instance v53, Loicq/wlogin_sdk/b/y;

    invoke-direct/range {v53 .. v53}, Loicq/wlogin_sdk/b/y;-><init>()V

    .line 1669
    new-instance v54, Loicq/wlogin_sdk/b/aa;

    invoke-direct/range {v54 .. v54}, Loicq/wlogin_sdk/b/aa;-><init>()V

    .line 1670
    new-instance v55, Loicq/wlogin_sdk/b/ab;

    invoke-direct/range {v55 .. v55}, Loicq/wlogin_sdk/b/ab;-><init>()V

    .line 1671
    new-instance v56, Loicq/wlogin_sdk/b/ah;

    invoke-direct/range {v56 .. v56}, Loicq/wlogin_sdk/b/ah;-><init>()V

    .line 1672
    new-instance v57, Loicq/wlogin_sdk/b/k;

    invoke-direct/range {v57 .. v57}, Loicq/wlogin_sdk/b/k;-><init>()V

    .line 1673
    new-instance v58, Loicq/wlogin_sdk/b/i;

    invoke-direct/range {v58 .. v58}, Loicq/wlogin_sdk/b/i;-><init>()V

    .line 1674
    new-instance v59, Loicq/wlogin_sdk/b/o;

    invoke-direct/range {v59 .. v59}, Loicq/wlogin_sdk/b/o;-><init>()V

    .line 1675
    new-instance v60, Loicq/wlogin_sdk/b/ad;

    invoke-direct/range {v60 .. v60}, Loicq/wlogin_sdk/b/ad;-><init>()V

    .line 1676
    new-instance v61, Loicq/wlogin_sdk/b/z;

    invoke-direct/range {v61 .. v61}, Loicq/wlogin_sdk/b/z;-><init>()V

    .line 1677
    new-instance v62, Loicq/wlogin_sdk/b/ak;

    invoke-direct/range {v62 .. v62}, Loicq/wlogin_sdk/b/ak;-><init>()V

    .line 1678
    new-instance v63, Loicq/wlogin_sdk/b/ai;

    invoke-direct/range {v63 .. v63}, Loicq/wlogin_sdk/b/ai;-><init>()V

    .line 1679
    new-instance v64, Loicq/wlogin_sdk/b/at;

    invoke-direct/range {v64 .. v64}, Loicq/wlogin_sdk/b/at;-><init>()V

    .line 1680
    new-instance v41, Loicq/wlogin_sdk/b/au;

    invoke-direct/range {v41 .. v41}, Loicq/wlogin_sdk/b/au;-><init>()V

    .line 1682
    new-instance v65, Loicq/wlogin_sdk/b/an;

    invoke-direct/range {v65 .. v65}, Loicq/wlogin_sdk/b/an;-><init>()V

    .line 1683
    new-instance v66, Loicq/wlogin_sdk/b/ck;

    invoke-direct/range {v66 .. v66}, Loicq/wlogin_sdk/b/ck;-><init>()V

    .line 1684
    new-instance v67, Loicq/wlogin_sdk/b/ay;

    invoke-direct/range {v67 .. v67}, Loicq/wlogin_sdk/b/ay;-><init>()V

    .line 1685
    new-instance v68, Loicq/wlogin_sdk/b/az;

    invoke-direct/range {v68 .. v68}, Loicq/wlogin_sdk/b/az;-><init>()V

    .line 1686
    new-instance v69, Loicq/wlogin_sdk/b/bb;

    invoke-direct/range {v69 .. v69}, Loicq/wlogin_sdk/b/bb;-><init>()V

    .line 1687
    new-instance v70, Loicq/wlogin_sdk/b/bd;

    invoke-direct/range {v70 .. v70}, Loicq/wlogin_sdk/b/bd;-><init>()V

    .line 1688
    new-instance v71, Loicq/wlogin_sdk/b/bc;

    invoke-direct/range {v71 .. v71}, Loicq/wlogin_sdk/b/bc;-><init>()V

    .line 1689
    new-instance v72, Loicq/wlogin_sdk/b/ax;

    invoke-direct/range {v72 .. v72}, Loicq/wlogin_sdk/b/ax;-><init>()V

    .line 1690
    new-instance v73, Loicq/wlogin_sdk/b/bg;

    invoke-direct/range {v73 .. v73}, Loicq/wlogin_sdk/b/bg;-><init>()V

    .line 1691
    new-instance v74, Loicq/wlogin_sdk/b/b;

    const/16 v4, 0x512

    move-object/from16 v0, v74

    invoke-direct {v0, v4}, Loicq/wlogin_sdk/b/b;-><init>(I)V

    .line 1692
    new-instance v75, Loicq/wlogin_sdk/b/be;

    invoke-direct/range {v75 .. v75}, Loicq/wlogin_sdk/b/be;-><init>()V

    .line 1693
    new-instance v76, Loicq/wlogin_sdk/b/bj;

    invoke-direct/range {v76 .. v76}, Loicq/wlogin_sdk/b/bj;-><init>()V

    .line 1694
    new-instance v77, Loicq/wlogin_sdk/b/bl;

    invoke-direct/range {v77 .. v77}, Loicq/wlogin_sdk/b/bl;-><init>()V

    .line 1695
    new-instance v78, Loicq/wlogin_sdk/b/bm;

    invoke-direct/range {v78 .. v78}, Loicq/wlogin_sdk/b/bm;-><init>()V

    .line 1696
    new-instance v79, Loicq/wlogin_sdk/b/bq;

    invoke-direct/range {v79 .. v79}, Loicq/wlogin_sdk/b/bq;-><init>()V

    .line 1697
    new-instance v80, Loicq/wlogin_sdk/b/br;

    invoke-direct/range {v80 .. v80}, Loicq/wlogin_sdk/b/br;-><init>()V

    .line 1699
    new-instance v81, Loicq/wlogin_sdk/b/ae;

    invoke-direct/range {v81 .. v81}, Loicq/wlogin_sdk/b/ae;-><init>()V

    .line 1700
    new-instance v82, Loicq/wlogin_sdk/b/bt;

    invoke-direct/range {v82 .. v82}, Loicq/wlogin_sdk/b/bt;-><init>()V

    .line 1701
    new-instance v83, Loicq/wlogin_sdk/b/bu;

    invoke-direct/range {v83 .. v83}, Loicq/wlogin_sdk/b/bu;-><init>()V

    .line 1702
    new-instance v84, Loicq/wlogin_sdk/b/bx;

    invoke-direct/range {v84 .. v84}, Loicq/wlogin_sdk/b/bx;-><init>()V

    .line 1704
    new-instance v85, Loicq/wlogin_sdk/b/cn;

    invoke-direct/range {v85 .. v85}, Loicq/wlogin_sdk/b/cn;-><init>()V

    .line 1705
    new-instance v86, Loicq/wlogin_sdk/b/co;

    invoke-direct/range {v86 .. v86}, Loicq/wlogin_sdk/b/co;-><init>()V

    .line 1707
    const/16 v31, 0x0

    .line 1708
    const/16 v30, 0x0

    .line 1709
    const/16 v32, 0x0

    .line 1710
    const/16 v33, 0x0

    .line 1711
    const/16 v34, 0x0

    .line 1712
    const/16 v29, 0x0

    .line 1713
    const/4 v5, 0x0

    .line 1714
    const/16 v36, 0x0

    .line 1716
    new-instance v87, Loicq/wlogin_sdk/b/aj;

    invoke-direct/range {v87 .. v87}, Loicq/wlogin_sdk/b/aj;-><init>()V

    .line 1730
    const/4 v4, 0x0

    .line 1731
    move-object/from16 v0, p0

    iget-object v7, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v10, v7, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v10, v11}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v88

    .line 1732
    move-object/from16 v0, v88

    iget-wide v7, v0, Loicq/wlogin_sdk/request/async_context;->_sappid:J

    .line 1733
    move-object/from16 v0, v88

    iget-wide v10, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    .line 1735
    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/oicq_request;->t:I

    move/from16 v40, v0

    const/16 v42, 0x810

    move/from16 v0, v40

    move/from16 v1, v42

    if-ne v0, v1, :cond_56

    .line 1736
    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/oicq_request;->u:I

    move/from16 v40, v0

    packed-switch v40, :pswitch_data_0

    .line 1781
    :pswitch_0
    const/16 v4, -0x3f4

    goto/16 :goto_0

    .line 1738
    :pswitch_1
    const/4 v4, 0x0

    move/from16 v40, v4

    .line 1785
    :goto_1
    add-int/lit8 v4, p2, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Loicq/wlogin_sdk/request/oicq_request;->c([BI)I

    move-result v42

    .line 1786
    add-int/lit8 v89, p2, 0x5

    .line 1788
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    const/16 v90, 0x0

    move-object/from16 v0, v90

    iput-object v0, v4, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    .line 1790
    sparse-switch v42, :sswitch_data_0

    .line 2497
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/request/oicq_request;->c([BII)V

    move/from16 v4, v42

    .line 2502
    :cond_2
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-lez v4, :cond_52

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0x"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v8, v7, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2505
    if-nez v4, :cond_53

    .line 2506
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Loicq/wlogin_sdk/request/oicq_request;->a(Loicq/wlogin_sdk/tools/ErrMsg;)V

    .line 2522
    :cond_3
    :goto_4
    const/16 v5, 0xa

    if-eq v4, v5, :cond_4

    const/16 v5, 0xa1

    if-eq v4, v5, :cond_4

    const/16 v5, 0xa2

    if-eq v4, v5, :cond_4

    const/16 v5, 0xa4

    if-eq v4, v5, :cond_4

    const/16 v5, 0xa5

    if-eq v4, v5, :cond_4

    const/16 v5, 0xa6

    if-eq v4, v5, :cond_4

    const/16 v5, 0x9a

    if-eq v4, v5, :cond_4

    const/16 v5, 0x80

    if-lt v4, v5, :cond_5

    const/16 v5, 0x8f

    if-gt v4, v5, :cond_5

    .line 2525
    :cond_4
    const/16 v4, -0x3e8

    .line 2529
    :cond_5
    const/4 v5, 0x2

    move/from16 v0, v40

    if-eq v0, v5, :cond_0

    const/4 v5, 0x6

    move/from16 v0, v40

    if-eq v0, v5, :cond_0

    const/4 v5, 0x7

    move/from16 v0, v40

    if-eq v0, v5, :cond_0

    .line 2530
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/oicq_request;->a(I)I

    goto/16 :goto_0

    .line 1743
    :pswitch_2
    const/4 v4, 0x1

    move/from16 v40, v4

    .line 1744
    goto/16 :goto_1

    .line 1747
    :pswitch_3
    const/4 v4, 0x2

    move/from16 v40, v4

    .line 1748
    goto/16 :goto_1

    .line 1751
    :pswitch_4
    const/4 v4, 0x3

    move/from16 v40, v4

    .line 1752
    goto/16 :goto_1

    .line 1755
    :pswitch_5
    const/4 v4, 0x4

    move/from16 v40, v4

    .line 1756
    goto/16 :goto_1

    .line 1758
    :pswitch_6
    const/4 v4, 0x5

    move/from16 v40, v4

    .line 1759
    goto/16 :goto_1

    .line 1762
    :pswitch_7
    const/4 v4, 0x6

    move/from16 v40, v4

    .line 1763
    goto/16 :goto_1

    .line 1766
    :pswitch_8
    const/4 v4, 0x7

    move/from16 v40, v4

    .line 1767
    goto/16 :goto_1

    :pswitch_9
    move/from16 v40, v4

    .line 1772
    goto/16 :goto_1

    :pswitch_a
    move/from16 v40, v4

    .line 1775
    goto/16 :goto_1

    :pswitch_b
    move/from16 v40, v4

    .line 1778
    goto/16 :goto_1

    .line 1794
    :sswitch_0
    const/4 v4, 0x1

    move/from16 v0, v40

    if-ne v0, v4, :cond_18

    .line 1796
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-object v4, v4, Loicq/wlogin_sdk/request/u;->b:[B

    if-nez v4, :cond_6

    .line 1797
    const/16 v4, -0x3ee

    goto/16 :goto_0

    .line 1800
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/au;->c([BII)I

    move-result v4

    .line 1801
    if-ltz v4, :cond_7

    .line 1802
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, v41

    iput-object v0, v4, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    .line 1805
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v72

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/ax;->c([BII)I

    move-result v4

    .line 1806
    if-ltz v4, :cond_8

    .line 1807
    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/oicq_request;->a(Loicq/wlogin_sdk/b/ax;)I

    .line 1810
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-object v6, v6, Loicq/wlogin_sdk/request/u;->b:[B

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4, v6}, Loicq/wlogin_sdk/b/v;->a([BII[B)I

    move-result v4

    .line 1898
    :goto_5
    if-ltz v4, :cond_2

    .line 1902
    invoke-virtual/range {v19 .. v19}, Loicq/wlogin_sdk/b/v;->c()[B

    move-result-object v68

    .line 1903
    const/16 v41, 0x2

    .line 1904
    move-object/from16 v0, v68

    array-length v0, v0

    move/from16 v72, v0

    .line 1907
    move-object/from16 v0, v64

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/at;->c([BII)I

    move-result v4

    .line 1908
    if-lez v4, :cond_9

    .line 1909
    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/oicq_request;->a(Loicq/wlogin_sdk/b/at;)V

    .line 1913
    :cond_9
    move-object/from16 v0, v56

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/ah;->c([BII)I

    move-result v4

    .line 1914
    if-lez v4, :cond_a

    .line 1915
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    invoke-virtual/range {v56 .. v56}, Loicq/wlogin_sdk/b/ah;->a()[B

    move-result-object v6

    invoke-virtual/range {v56 .. v56}, Loicq/wlogin_sdk/b/ah;->g()[B

    move-result-object v9

    invoke-virtual {v4, v6, v9}, Loicq/wlogin_sdk/request/u;->a([B[B)V

    .line 1918
    :cond_a
    move-object/from16 v0, v18

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/s;->c([BII)I

    move-result v4

    .line 1919
    if-ltz v4, :cond_b

    .line 1920
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    invoke-virtual/range {v18 .. v18}, Loicq/wlogin_sdk/b/s;->a()J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v4, Loicq/wlogin_sdk/request/u;->f:J

    .line 1921
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-object v6, v6, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v0, v9, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v6, v9}, Loicq/wlogin_sdk/request/u;->a(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1924
    :cond_b
    move-object/from16 v0, v28

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/p;->c([BII)I

    .line 1925
    move-object/from16 v0, v39

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/q;->c([BII)I

    .line 1926
    move-object/from16 v0, v25

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/m;->c([BII)I

    .line 1927
    move-object/from16 v0, v43

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/t;->c([BII)I

    .line 1930
    move-object/from16 v0, v52

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/w;->c([BII)I

    move-result v4

    .line 1931
    if-ltz v4, :cond_2

    .line 1935
    move-object/from16 v0, v24

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/f;->c([BII)I

    move-result v4

    .line 1936
    if-ltz v4, :cond_c

    .line 1937
    invoke-virtual/range {v24 .. v24}, Loicq/wlogin_sdk/b/f;->c()[B

    move-result-object v29

    .line 1940
    :cond_c
    move-object/from16 v0, v57

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/k;->c([BII)I

    move-result v4

    .line 1941
    if-ltz v4, :cond_d

    .line 1942
    sget-object v4, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-virtual/range {v57 .. v57}, Loicq/wlogin_sdk/b/k;->c()[B

    move-result-object v6

    invoke-static {v4, v6}, Loicq/wlogin_sdk/tools/util;->set_ksid(Landroid/content/Context;[B)V

    .line 1945
    :cond_d
    move-object/from16 v0, v35

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/e;->c([BII)I

    move-result v4

    .line 1946
    if-ltz v4, :cond_e

    .line 1947
    invoke-virtual/range {v35 .. v35}, Loicq/wlogin_sdk/b/e;->c()[B

    move-result-object v31

    .line 1950
    :cond_e
    move-object/from16 v0, v37

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/n;->c([BII)I

    move-result v4

    .line 1951
    if-ltz v4, :cond_f

    .line 1952
    invoke-virtual/range {v37 .. v37}, Loicq/wlogin_sdk/b/n;->c()[B

    move-result-object v30

    .line 1955
    :cond_f
    move-object/from16 v0, v38

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/x;->c([BII)I

    move-result v4

    .line 1956
    if-ltz v4, :cond_10

    .line 1957
    invoke-virtual/range {v38 .. v38}, Loicq/wlogin_sdk/b/x;->c()[B

    move-result-object v32

    .line 1960
    :cond_10
    move-object/from16 v0, v54

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/aa;->c([BII)I

    move-result v4

    .line 1961
    if-ltz v4, :cond_11

    .line 1962
    invoke-virtual/range {v54 .. v54}, Loicq/wlogin_sdk/b/aa;->c()[B

    move-result-object v33

    .line 1965
    :cond_11
    move-object/from16 v0, v55

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/ab;->c([BII)I

    move-result v4

    .line 1966
    if-ltz v4, :cond_12

    .line 1967
    invoke-virtual/range {v55 .. v55}, Loicq/wlogin_sdk/b/ab;->c()[B

    move-result-object v34

    .line 1970
    :cond_12
    move-object/from16 v0, v60

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/ad;->c([BII)I

    move-result v4

    .line 1971
    if-ltz v4, :cond_13

    .line 1972
    invoke-virtual/range {v60 .. v60}, Loicq/wlogin_sdk/b/ad;->a()[B

    move-result-object v4

    .line 1973
    invoke-virtual/range {v60 .. v60}, Loicq/wlogin_sdk/b/ad;->g()[B

    move-result-object v36

    move-object v5, v4

    .line 1976
    :cond_13
    move-object/from16 v0, v84

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/bx;->c([BII)I

    move-result v4

    .line 1977
    if-ltz v4, :cond_15

    .line 1978
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-object v4, v4, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    .line 1979
    invoke-static {v4}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_27

    .line 1981
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v0, v6, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Loicq/wlogin_sdk/request/u;->e(J)Ljava/lang/String;

    move-result-object v4

    .line 1982
    if-eqz v4, :cond_14

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_14

    .line 1983
    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, p0

    iget-object v9, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v0, v9, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual/range {v84 .. v84}, Loicq/wlogin_sdk/b/bx;->a()Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v6, v4, v9, v0}, Loicq/wlogin_sdk/request/u;->a(Ljava/lang/String;Ljava/lang/Long;Z)V

    .line 1989
    :cond_14
    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "put t186: name: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " uin: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v0, v6, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " pwd="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v84 .. v84}, Loicq/wlogin_sdk/b/bx;->a()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-static {v4, v6}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    :cond_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tgt len:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Loicq/wlogin_sdk/b/m;->c()[B

    move-result-object v6

    invoke-static {v6}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " tgt_key len:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1993
    invoke-virtual/range {v28 .. v28}, Loicq/wlogin_sdk/b/p;->c()[B

    move-result-object v6

    invoke-static {v6}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " st len:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1994
    invoke-virtual/range {v43 .. v43}, Loicq/wlogin_sdk/b/t;->c()[B

    move-result-object v6

    invoke-static {v6}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " st_key len:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1995
    invoke-virtual/range {v39 .. v39}, Loicq/wlogin_sdk/b/q;->c()[B

    move-result-object v6

    invoke-static {v6}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " stwx_web len:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1996
    invoke-static/range {v29 .. v29}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " lskey len:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1997
    invoke-static/range {v32 .. v32}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " skey len:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1998
    invoke-static/range {v33 .. v33}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " sig64 len:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1999
    invoke-static/range {v34 .. v34}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " openid len:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2000
    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " openkey len:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2001
    invoke-static/range {v36 .. v36}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " pwdflag: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2002
    invoke-virtual/range {v84 .. v84}, Loicq/wlogin_sdk/b/bx;->d()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v84 .. v84}, Loicq/wlogin_sdk/b/bx;->a()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v0, v9, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1992
    invoke-static {v4, v6}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2006
    move-object/from16 v0, v71

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/bc;->c([BII)I

    move-result v4

    .line 2007
    if-ltz v4, :cond_16

    .line 2008
    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/oicq_request;->a(Loicq/wlogin_sdk/b/bc;)[B

    move-result-object v4

    .line 2009
    if-eqz v4, :cond_28

    array-length v6, v4

    if-lez v6, :cond_28

    .line 2010
    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    new-instance v9, Loicq/wlogin_sdk/request/WFastLoginInfo;

    invoke-direct {v9, v4}, Loicq/wlogin_sdk/request/WFastLoginInfo;-><init>([B)V

    iput-object v9, v6, Loicq/wlogin_sdk/request/u;->j:Loicq/wlogin_sdk/request/WFastLoginInfo;

    .line 2016
    :cond_16
    :goto_7
    const/4 v4, 0x3

    const/4 v6, 0x0

    filled-new-array {v4, v6}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [[B

    .line 2018
    move-object/from16 v0, v69

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/bb;->c([BII)I

    move-result v4

    .line 2019
    if-ltz v4, :cond_17

    .line 2020
    const/4 v4, 0x0

    invoke-virtual/range {v69 .. v69}, Loicq/wlogin_sdk/b/bb;->a()[B

    move-result-object v6

    aput-object v6, v24, v4

    .line 2021
    const/4 v4, 0x1

    invoke-virtual/range {v69 .. v69}, Loicq/wlogin_sdk/b/bb;->g()[B

    move-result-object v6

    aput-object v6, v24, v4

    .line 2022
    const/4 v4, 0x2

    invoke-virtual/range {v69 .. v69}, Loicq/wlogin_sdk/b/bb;->h()[B

    move-result-object v6

    aput-object v6, v24, v4

    .line 2031
    :cond_17
    const/4 v4, 0x5

    const/4 v6, 0x0

    filled-new-array {v4, v6}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[B

    .line 2032
    const/4 v4, 0x0

    :goto_8
    const/4 v6, 0x5

    if-ge v4, v6, :cond_29

    .line 2033
    const/4 v6, 0x0

    new-array v6, v6, [B

    aput-object v6, v9, v4

    .line 2032
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1813
    :cond_18
    const/4 v4, 0x2

    move/from16 v0, v40

    if-ne v0, v4, :cond_1f

    .line 1815
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    move-object/from16 v0, v83

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/bu;->c([BII)I

    move-result v4

    .line 1816
    if-ltz v4, :cond_19

    .line 1817
    invoke-virtual/range {v83 .. v83}, Loicq/wlogin_sdk/b/bu;->a()J

    move-result-wide v76

    move-wide/from16 v0, v76

    move-object/from16 v2, v88

    iput-wide v0, v2, Loicq/wlogin_sdk/request/async_context;->_msalt:J

    .line 1820
    :cond_19
    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/oicq_request;->f()I

    move-result v4

    const/4 v9, 0x3

    if-ne v4, v9, :cond_1c

    .line 1821
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/s;->c([BII)I

    move-result v4

    .line 1822
    if-ltz v4, :cond_1a

    .line 1823
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    invoke-virtual/range {v18 .. v18}, Loicq/wlogin_sdk/b/s;->a()J

    move-result-wide v8

    iput-wide v8, v4, Loicq/wlogin_sdk/request/u;->f:J

    .line 1824
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-object v5, v5, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v8, v7, Loicq/wlogin_sdk/request/u;->f:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Loicq/wlogin_sdk/request/u;->a(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1827
    :cond_1a
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v89

    invoke-virtual {v6, v0, v1, v4}, Loicq/wlogin_sdk/b/g;->c([BII)I

    move-result v4

    .line 1828
    if-ltz v4, :cond_1b

    .line 1829
    move-object/from16 v0, v88

    iput-object v6, v0, Loicq/wlogin_sdk/request/async_context;->_t104:Loicq/wlogin_sdk/b/g;

    .line 1832
    :cond_1b
    const/4 v4, 0x0

    .line 1833
    goto/16 :goto_2

    .line 1835
    :cond_1c
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/au;->c([BII)I

    move-result v4

    .line 1836
    if-ltz v4, :cond_1d

    .line 1837
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, v41

    iput-object v0, v4, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    .line 1840
    :cond_1d
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v72

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/ax;->c([BII)I

    move-result v4

    .line 1841
    if-ltz v4, :cond_1e

    .line 1842
    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/oicq_request;->a(Loicq/wlogin_sdk/b/ax;)I

    .line 1845
    :cond_1e
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v88

    iget-object v6, v0, Loicq/wlogin_sdk/request/async_context;->_tgtgt_key:[B

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4, v6}, Loicq/wlogin_sdk/b/v;->a([BII[B)I

    move-result v4

    goto/16 :goto_5

    .line 1848
    :cond_1f
    const/4 v4, 0x3

    move/from16 v0, v40

    if-eq v0, v4, :cond_20

    const/4 v4, 0x7

    move/from16 v0, v40

    if-ne v0, v4, :cond_23

    .line 1851
    :cond_20
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    move-object/from16 v0, v83

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/bu;->c([BII)I

    move-result v4

    .line 1852
    if-ltz v4, :cond_21

    .line 1853
    invoke-virtual/range {v83 .. v83}, Loicq/wlogin_sdk/b/bu;->a()J

    move-result-wide v4

    move-object/from16 v0, v88

    iput-wide v4, v0, Loicq/wlogin_sdk/request/async_context;->_msalt:J

    .line 1856
    :cond_21
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/s;->c([BII)I

    move-result v4

    .line 1857
    if-ltz v4, :cond_22

    .line 1858
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    invoke-virtual/range {v18 .. v18}, Loicq/wlogin_sdk/b/s;->a()J

    move-result-wide v8

    iput-wide v8, v4, Loicq/wlogin_sdk/request/u;->f:J

    .line 1859
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-object v5, v5, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v8, v7, Loicq/wlogin_sdk/request/u;->f:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Loicq/wlogin_sdk/request/u;->a(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1862
    :cond_22
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    move-object/from16 v0, p1

    move/from16 v1, v89

    invoke-virtual {v6, v0, v1, v4}, Loicq/wlogin_sdk/b/g;->c([BII)I

    move-result v4

    .line 1863
    if-ltz v4, :cond_2

    .line 1865
    move-object/from16 v0, v88

    iput-object v6, v0, Loicq/wlogin_sdk/request/async_context;->_t104:Loicq/wlogin_sdk/b/g;

    .line 1867
    const/4 v4, 0x0

    .line 1868
    goto/16 :goto_2

    .line 1869
    :cond_23
    const/16 v4, 0x16

    move-object/from16 v0, p0

    iget v9, v0, Loicq/wlogin_sdk/request/oicq_request;->u:I

    if-ne v4, v9, :cond_24

    .line 1872
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    move-object/from16 v0, p1

    move/from16 v1, v89

    invoke-virtual {v6, v0, v1, v4}, Loicq/wlogin_sdk/b/g;->c([BII)I

    move-result v4

    .line 1873
    if-ltz v4, :cond_2

    .line 1876
    move-object/from16 v0, v88

    iput-object v6, v0, Loicq/wlogin_sdk/request/async_context;->_t104:Loicq/wlogin_sdk/b/g;

    .line 1878
    const/4 v4, 0x0

    .line 1879
    goto/16 :goto_2

    .line 1883
    :cond_24
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/au;->c([BII)I

    move-result v4

    .line 1884
    if-ltz v4, :cond_25

    .line 1885
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, v41

    iput-object v0, v4, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    .line 1888
    :cond_25
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v72

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/ax;->c([BII)I

    move-result v4

    .line 1889
    if-ltz v4, :cond_26

    .line 1890
    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/oicq_request;->a(Loicq/wlogin_sdk/b/ax;)I

    .line 1893
    :cond_26
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v88

    iget-object v6, v0, Loicq/wlogin_sdk/request/async_context;->_tgtgt_key:[B

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4, v6}, Loicq/wlogin_sdk/b/v;->a([BII[B)I

    move-result v4

    .line 1895
    const/4 v6, 0x0

    sput v6, Loicq/wlogin_sdk/request/s;->I:I

    goto/16 :goto_5

    .line 1986
    :cond_27
    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, p0

    iget-object v9, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v0, v9, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual/range {v84 .. v84}, Loicq/wlogin_sdk/b/bx;->a()Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v6, v4, v9, v0}, Loicq/wlogin_sdk/request/u;->a(Ljava/lang/String;Ljava/lang/Long;Z)V

    goto/16 :goto_6

    .line 2012
    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    new-instance v6, Loicq/wlogin_sdk/request/WFastLoginInfo;

    invoke-direct {v6}, Loicq/wlogin_sdk/request/WFastLoginInfo;-><init>()V

    iput-object v6, v4, Loicq/wlogin_sdk/request/u;->j:Loicq/wlogin_sdk/request/WFastLoginInfo;

    goto/16 :goto_7

    .line 2036
    :cond_29
    move-object/from16 v0, v59

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/o;->c([BII)I

    move-result v4

    .line 2037
    move-object/from16 v0, v58

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/i;->c([BII)I

    move-result v6

    .line 2038
    if-ltz v6, :cond_2a

    if-ltz v4, :cond_2a

    .line 2040
    invoke-virtual/range {v59 .. v59}, Loicq/wlogin_sdk/b/o;->c()[B

    move-result-object v4

    .line 2041
    invoke-virtual/range {v58 .. v58}, Loicq/wlogin_sdk/b/i;->c()[B

    move-result-object v6

    invoke-static {v6, v4}, Loicq/wlogin_sdk/request/oicq_request;->b([B[B)[B

    move-result-object v4

    .line 2042
    const/4 v6, 0x0

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aput-object v4, v9, v6

    .line 2045
    :cond_2a
    move-object/from16 v0, v70

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/bd;->c([BII)I

    move-result v4

    .line 2046
    if-ltz v4, :cond_2b

    .line 2047
    const/4 v4, 0x1

    invoke-virtual/range {v70 .. v70}, Loicq/wlogin_sdk/b/bd;->c()[B

    move-result-object v6

    aput-object v6, v9, v4

    .line 2050
    :cond_2b
    move-object/from16 v0, v86

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/co;->c([BII)I

    move-result v4

    .line 2051
    if-ltz v4, :cond_2c

    .line 2052
    const/4 v4, 0x4

    invoke-virtual/range {v86 .. v86}, Loicq/wlogin_sdk/b/co;->c()[B

    move-result-object v6

    aput-object v6, v9, v4

    .line 2056
    :cond_2c
    move-object/from16 v0, v88

    iget-boolean v4, v0, Loicq/wlogin_sdk/request/async_context;->_sec_guid_flag:Z

    if-eqz v4, :cond_2d

    .line 2057
    const/4 v4, 0x2

    move-object/from16 v0, v88

    iget-object v6, v0, Loicq/wlogin_sdk/request/async_context;->_G:[B

    aput-object v6, v9, v4

    .line 2058
    const/4 v4, 0x3

    move-object/from16 v0, v88

    iget-object v6, v0, Loicq/wlogin_sdk/request/async_context;->_dpwd:[B

    aput-object v6, v9, v4

    .line 2059
    const/4 v4, 0x4

    move-object/from16 v0, v88

    iget-object v6, v0, Loicq/wlogin_sdk/request/async_context;->_t403:Loicq/wlogin_sdk/b/co;

    invoke-virtual {v6}, Loicq/wlogin_sdk/b/co;->c()[B

    move-result-object v6

    aput-object v6, v9, v4

    .line 2061
    const/4 v4, 0x0

    move-object/from16 v0, v88

    iput-boolean v4, v0, Loicq/wlogin_sdk/request/async_context;->_sec_guid_flag:Z

    .line 2071
    :cond_2d
    const/16 v4, 0xf

    const/4 v6, 0x0

    filled-new-array {v4, v6}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, [[B

    .line 2072
    const/4 v4, 0x0

    :goto_9
    const/16 v6, 0xf

    if-ge v4, v6, :cond_2e

    .line 2073
    const/4 v6, 0x0

    new-array v6, v6, [B

    aput-object v6, v37, v4

    .line 2072
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 2076
    :cond_2e
    move-object/from16 v0, v87

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/aj;->c([BII)I

    move-result v4

    .line 2077
    if-ltz v4, :cond_2f

    .line 2078
    const/4 v4, 0x0

    invoke-virtual/range {v87 .. v87}, Loicq/wlogin_sdk/b/aj;->c()[B

    move-result-object v6

    aput-object v6, v37, v4

    .line 2081
    :cond_2f
    move-object/from16 v0, v63

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/ai;->c([BII)I

    move-result v4

    .line 2082
    if-ltz v4, :cond_30

    .line 2083
    const/4 v4, 0x1

    invoke-virtual/range {v63 .. v63}, Loicq/wlogin_sdk/b/ai;->a()[B

    move-result-object v5

    aput-object v5, v37, v4

    .line 2084
    invoke-virtual/range {v63 .. v63}, Loicq/wlogin_sdk/b/ai;->g()[B

    move-result-object v5

    .line 2087
    :cond_30
    move-object/from16 v0, v65

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/an;->c([BII)I

    move-result v4

    .line 2088
    if-ltz v4, :cond_31

    .line 2089
    const/4 v4, 0x2

    invoke-virtual/range {v65 .. v65}, Loicq/wlogin_sdk/b/an;->c()[B

    move-result-object v6

    aput-object v6, v37, v4

    .line 2092
    :cond_31
    move-object/from16 v0, v66

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/ck;->c([BII)I

    move-result v4

    .line 2093
    if-ltz v4, :cond_32

    .line 2094
    const/4 v4, 0x3

    invoke-virtual/range {v66 .. v66}, Loicq/wlogin_sdk/b/ck;->c()[B

    move-result-object v6

    aput-object v6, v37, v4

    .line 2097
    :cond_32
    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/ay;->c([BII)I

    move-result v4

    .line 2098
    if-ltz v4, :cond_33

    .line 2099
    const/4 v4, 0x4

    invoke-virtual/range {v67 .. v67}, Loicq/wlogin_sdk/b/ay;->c()[B

    move-result-object v6

    aput-object v6, v37, v4

    .line 2102
    :cond_33
    move-object/from16 v0, v73

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/bg;->c([BII)I

    move-result v4

    .line 2103
    if-ltz v4, :cond_34

    .line 2104
    const/4 v4, 0x5

    invoke-virtual/range {v73 .. v73}, Loicq/wlogin_sdk/b/bg;->c()[B

    move-result-object v6

    aput-object v6, v37, v4

    .line 2107
    :cond_34
    move-object/from16 v0, v74

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/b;->c([BII)I

    move-result v4

    .line 2108
    if-ltz v4, :cond_35

    .line 2109
    const/4 v4, 0x6

    invoke-virtual/range {v74 .. v74}, Loicq/wlogin_sdk/b/b;->c()[B

    move-result-object v6

    aput-object v6, v37, v4

    .line 2112
    :cond_35
    move-object/from16 v0, v75

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/be;->c([BII)I

    move-result v4

    .line 2113
    if-ltz v4, :cond_36

    .line 2114
    const/4 v4, 0x7

    invoke-virtual/range {v75 .. v75}, Loicq/wlogin_sdk/b/be;->c()[B

    move-result-object v6

    aput-object v6, v37, v4

    .line 2117
    :cond_36
    new-instance v4, Loicq/wlogin_sdk/b/cf;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/cf;-><init>()V

    .line 2118
    move-object/from16 v0, v68

    move/from16 v1, v41

    move/from16 v2, v72

    invoke-virtual {v4, v0, v1, v2}, Loicq/wlogin_sdk/b/cf;->c([BII)I

    move-result v6

    .line 2119
    if-ltz v6, :cond_55

    .line 2120
    const/16 v5, 0x8

    invoke-virtual {v4}, Loicq/wlogin_sdk/b/cf;->g()[B

    move-result-object v6

    aput-object v6, v37, v5

    .line 2121
    invoke-virtual {v4}, Loicq/wlogin_sdk/b/cf;->a()[B

    move-result-object v35

    .line 2123
    :goto_a
    new-instance v4, Loicq/wlogin_sdk/b/ch;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/ch;-><init>()V

    .line 2124
    move-object/from16 v0, v68

    move/from16 v1, v41

    move/from16 v2, v72

    invoke-virtual {v4, v0, v1, v2}, Loicq/wlogin_sdk/b/ch;->c([BII)I

    move-result v5

    .line 2125
    if-ltz v5, :cond_37

    .line 2126
    const/16 v5, 0x9

    invoke-virtual {v4}, Loicq/wlogin_sdk/b/ch;->a()[B

    move-result-object v6

    aput-object v6, v37, v5

    .line 2127
    const/16 v5, 0xa

    invoke-virtual {v4}, Loicq/wlogin_sdk/b/ch;->g()[B

    move-result-object v4

    aput-object v4, v37, v5

    .line 2130
    :cond_37
    new-instance v4, Loicq/wlogin_sdk/b/b;

    const/16 v5, 0x203

    invoke-direct {v4, v5}, Loicq/wlogin_sdk/b/b;-><init>(I)V

    .line 2131
    move-object/from16 v0, v68

    move/from16 v1, v41

    move/from16 v2, v72

    invoke-virtual {v4, v0, v1, v2}, Loicq/wlogin_sdk/b/b;->c([BII)I

    move-result v5

    .line 2132
    if-ltz v5, :cond_39

    .line 2133
    const/16 v5, 0xb

    invoke-virtual {v4}, Loicq/wlogin_sdk/b/b;->c()[B

    move-result-object v4

    aput-object v4, v37, v5

    .line 2134
    const-string v4, "get DA2 in rsp"

    const-string v5, ""

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    :goto_b
    new-instance v4, Loicq/wlogin_sdk/b/b;

    const/16 v5, 0x317

    invoke-direct {v4, v5}, Loicq/wlogin_sdk/b/b;-><init>(I)V

    .line 2143
    move-object/from16 v0, v68

    move/from16 v1, v41

    move/from16 v2, v72

    invoke-virtual {v4, v0, v1, v2}, Loicq/wlogin_sdk/b/b;->c([BII)I

    move-result v5

    .line 2144
    if-ltz v5, :cond_3a

    .line 2145
    invoke-virtual {v4}, Loicq/wlogin_sdk/b/b;->c()[B

    move-result-object v4

    sput-object v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_QRPUSHSig:[B

    .line 2152
    :goto_c
    new-instance v4, Loicq/wlogin_sdk/b/b;

    const/16 v5, 0x133

    invoke-direct {v4, v5}, Loicq/wlogin_sdk/b/b;-><init>(I)V

    .line 2153
    move-object/from16 v0, v68

    move/from16 v1, v41

    move/from16 v2, v72

    invoke-virtual {v4, v0, v1, v2}, Loicq/wlogin_sdk/b/b;->c([BII)I

    move-result v5

    .line 2154
    if-ltz v5, :cond_3b

    .line 2155
    const/16 v5, 0xd

    invoke-virtual {v4}, Loicq/wlogin_sdk/b/b;->c()[B

    move-result-object v4

    aput-object v4, v37, v5

    .line 2160
    :goto_d
    new-instance v4, Loicq/wlogin_sdk/b/b;

    const/16 v5, 0x134

    invoke-direct {v4, v5}, Loicq/wlogin_sdk/b/b;-><init>(I)V

    .line 2161
    move-object/from16 v0, v68

    move/from16 v1, v41

    move/from16 v2, v72

    invoke-virtual {v4, v0, v1, v2}, Loicq/wlogin_sdk/b/b;->c([BII)I

    move-result v5

    .line 2162
    if-ltz v5, :cond_3c

    .line 2163
    const/16 v5, 0xe

    invoke-virtual {v4}, Loicq/wlogin_sdk/b/b;->c()[B

    move-result-object v4

    aput-object v4, v37, v5

    .line 2168
    :goto_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encrypt_a1 len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v9, v5

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " no_pic_sig len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v9, v5

    .line 2169
    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " G len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v5, v9, v5

    .line 2170
    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dpwd len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v5, v9, v5

    .line 2171
    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " randseed len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    aget-object v5, v9, v5

    .line 2172
    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vkey len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v37, v5

    .line 2173
    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " openid len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2174
    invoke-static/range {v35 .. v35}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " access_token len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v37, v5

    .line 2175
    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " d2 len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v5, v37, v5

    .line 2176
    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " d2_key len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v5, v37, v5

    .line 2177
    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sid len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    aget-object v5, v37, v5

    .line 2178
    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " aq_sig len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x5

    aget-object v5, v37, v5

    .line 2179
    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pskey len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x6

    aget-object v5, v37, v5

    .line 2180
    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " super_key len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x7

    aget-object v5, v37, v5

    .line 2181
    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " paytoken len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x8

    aget-object v5, v37, v5

    .line 2182
    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pf len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x9

    aget-object v5, v37, v5

    .line 2183
    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pfkey len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    aget-object v5, v37, v5

    .line 2184
    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " da2 len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xb

    aget-object v5, v37, v5

    .line 2185
    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " wt session ticket:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xd

    aget-object v5, v37, v5

    .line 2186
    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " wt session ticket key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xe

    aget-object v5, v37, v5

    .line 2187
    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v0, v6, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2168
    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2191
    move-object/from16 v0, v61

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/z;->c([BII)I

    move-result v4

    .line 2192
    if-ltz v4, :cond_38

    .line 2193
    invoke-virtual/range {v61 .. v61}, Loicq/wlogin_sdk/b/z;->a()I

    move-result v4

    int-to-long v4, v4

    const-wide v12, 0xffffffffL

    and-long/2addr v12, v4

    .line 2196
    :cond_38
    const/4 v4, 0x7

    new-array v0, v4, [J

    move-object/from16 v38, v0

    move/from16 v4, v41

    move-wide/from16 v18, v14

    .line 2198
    :goto_f
    move-object/from16 v0, v62

    move-object/from16 v1, v68

    move/from16 v2, v72

    invoke-virtual {v0, v1, v4, v2}, Loicq/wlogin_sdk/b/ak;->c([BII)I

    move-result v4

    if-ltz v4, :cond_44

    .line 2200
    invoke-virtual/range {v62 .. v62}, Loicq/wlogin_sdk/b/ak;->a()I

    move-result v5

    if-eqz v5, :cond_54

    .line 2201
    invoke-virtual/range {v62 .. v62}, Loicq/wlogin_sdk/b/ak;->a()I

    move-result v5

    int-to-long v14, v5

    .line 2204
    :goto_10
    invoke-virtual/range {v62 .. v62}, Loicq/wlogin_sdk/b/ak;->g()I

    move-result v5

    if-eqz v5, :cond_3d

    .line 2205
    const/4 v5, 0x0

    invoke-virtual/range {v62 .. v62}, Loicq/wlogin_sdk/b/ak;->g()I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v18, v0

    aput-wide v18, v38, v5

    .line 2210
    :goto_11
    invoke-virtual/range {v62 .. v62}, Loicq/wlogin_sdk/b/ak;->h()I

    move-result v5

    if-eqz v5, :cond_3e

    .line 2211
    const/4 v5, 0x1

    invoke-virtual/range {v62 .. v62}, Loicq/wlogin_sdk/b/ak;->h()I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v18, v0

    aput-wide v18, v38, v5

    .line 2216
    :goto_12
    invoke-virtual/range {v62 .. v62}, Loicq/wlogin_sdk/b/ak;->i()I

    move-result v5

    if-eqz v5, :cond_3f

    .line 2217
    const/4 v5, 0x2

    invoke-virtual/range {v62 .. v62}, Loicq/wlogin_sdk/b/ak;->i()I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v18, v0

    aput-wide v18, v38, v5

    .line 2222
    :goto_13
    invoke-virtual/range {v62 .. v62}, Loicq/wlogin_sdk/b/ak;->j()I

    move-result v5

    if-eqz v5, :cond_40

    .line 2223
    const/4 v5, 0x3

    invoke-virtual/range {v62 .. v62}, Loicq/wlogin_sdk/b/ak;->j()I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v18, v0

    aput-wide v18, v38, v5

    .line 2228
    :goto_14
    invoke-virtual/range {v62 .. v62}, Loicq/wlogin_sdk/b/ak;->k()I

    move-result v5

    if-eqz v5, :cond_41

    .line 2229
    const/4 v5, 0x4

    invoke-virtual/range {v62 .. v62}, Loicq/wlogin_sdk/b/ak;->k()I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v18, v0

    aput-wide v18, v38, v5

    .line 2234
    :goto_15
    invoke-virtual/range {v62 .. v62}, Loicq/wlogin_sdk/b/ak;->l()I

    move-result v5

    if-eqz v5, :cond_42

    .line 2235
    const/4 v5, 0x5

    invoke-virtual/range {v62 .. v62}, Loicq/wlogin_sdk/b/ak;->l()I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v18, v0

    aput-wide v18, v38, v5

    .line 2240
    :goto_16
    invoke-virtual/range {v62 .. v62}, Loicq/wlogin_sdk/b/ak;->m()I

    move-result v5

    if-eqz v5, :cond_43

    .line 2241
    const/4 v5, 0x6

    invoke-virtual/range {v62 .. v62}, Loicq/wlogin_sdk/b/ak;->m()I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v18, v0

    aput-wide v18, v38, v5

    move-wide/from16 v18, v14

    goto/16 :goto_f

    .line 2136
    :cond_39
    const-string v4, "no DA2 in rsp"

    const-string v5, ""

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 2147
    :cond_3a
    const/4 v4, 0x0

    new-array v4, v4, [B

    sput-object v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_QRPUSHSig:[B

    goto/16 :goto_c

    .line 2157
    :cond_3b
    const-string v4, "get t133 failed"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v0, v6, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGW(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 2165
    :cond_3c
    const-string v4, "get t134 failed"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v0, v6, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGW(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 2207
    :cond_3d
    const/4 v5, 0x0

    aput-wide v16, v38, v5

    goto/16 :goto_11

    .line 2213
    :cond_3e
    const/4 v5, 0x1

    aput-wide v20, v38, v5

    goto/16 :goto_12

    .line 2219
    :cond_3f
    const/4 v5, 0x2

    aput-wide v22, v38, v5

    goto/16 :goto_13

    .line 2225
    :cond_40
    const/4 v5, 0x3

    aput-wide v26, v38, v5

    goto/16 :goto_14

    .line 2231
    :cond_41
    const/4 v5, 0x4

    aput-wide v46, v38, v5

    goto/16 :goto_15

    .line 2237
    :cond_42
    const/4 v5, 0x5

    aput-wide v48, v38, v5

    goto/16 :goto_16

    .line 2243
    :cond_43
    const/4 v5, 0x6

    aput-wide v50, v38, v5

    move-wide/from16 v18, v14

    goto/16 :goto_f

    .line 2247
    :cond_44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sappid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " appid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " app_pri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " login_bitmap:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v88

    iget v5, v0, Loicq/wlogin_sdk/request/async_context;->_login_bitmap:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tk_valid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v44

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " a2_valid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " lskey_valid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-wide v14, v38, v5

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " skey_valid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-wide v14, v38, v5

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vkey_valid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget-wide v14, v38, v5

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " a8_valid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    aget-wide v14, v38, v5

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " stweb_valid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    aget-wide v14, v38, v5

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " d2_valid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x5

    aget-wide v14, v38, v5

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sid_valid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x6

    aget-wide v14, v38, v5

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v14, v6, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2258
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, v88

    iget v5, v0, Loicq/wlogin_sdk/request/async_context;->_main_sigmap:I

    iput v5, v4, Loicq/wlogin_sdk/request/u;->ao:I

    .line 2259
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v5, v5, Loicq/wlogin_sdk/request/u;->f:J

    .line 2260
    invoke-static {}, Loicq/wlogin_sdk/request/u;->f()J

    move-result-wide v14

    .line 2261
    invoke-static {}, Loicq/wlogin_sdk/request/u;->f()J

    move-result-wide v16

    add-long v16, v16, v44

    .line 2262
    invoke-static {}, Loicq/wlogin_sdk/request/u;->f()J

    move-result-wide v20

    add-long v18, v18, v20

    .line 2263
    invoke-virtual/range {v52 .. v52}, Loicq/wlogin_sdk/b/w;->a()[B

    move-result-object v20

    invoke-virtual/range {v52 .. v52}, Loicq/wlogin_sdk/b/w;->g()[B

    move-result-object v21

    invoke-virtual/range {v52 .. v52}, Loicq/wlogin_sdk/b/w;->h()[B

    move-result-object v22

    .line 2264
    invoke-virtual/range {v52 .. v52}, Loicq/wlogin_sdk/b/w;->i()[B

    move-result-object v23

    invoke-virtual/range {v25 .. v25}, Loicq/wlogin_sdk/b/m;->c()[B

    move-result-object v25

    .line 2265
    invoke-virtual/range {v28 .. v28}, Loicq/wlogin_sdk/b/p;->c()[B

    move-result-object v26

    invoke-virtual/range {v43 .. v43}, Loicq/wlogin_sdk/b/t;->c()[B

    move-result-object v27

    invoke-virtual/range {v39 .. v39}, Loicq/wlogin_sdk/b/q;->c()[B

    move-result-object v28

    move-object/from16 v0, v88

    iget v0, v0, Loicq/wlogin_sdk/request/async_context;->_login_bitmap:I

    move/from16 v39, v0

    .line 2259
    invoke-virtual/range {v4 .. v39}, Loicq/wlogin_sdk/request/u;->a(JJ[[BJJJJJ[B[B[B[B[[B[B[B[B[B[B[B[B[B[B[B[B[B[[B[JI)I

    move-result v4

    .line 2270
    if-eqz v4, :cond_45

    .line 2271
    new-instance v5, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v5}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    .line 2272
    sget-object v6, Loicq/wlogin_sdk/tools/InternationMsg$MSG_TYPE;->MSG_2:Loicq/wlogin_sdk/tools/InternationMsg$MSG_TYPE;

    invoke-static {v6}, Loicq/wlogin_sdk/tools/InternationMsg;->a(Loicq/wlogin_sdk/tools/InternationMsg$MSG_TYPE;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Loicq/wlogin_sdk/tools/ErrMsg;->setMessage(Ljava/lang/String;)V

    .line 2273
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Loicq/wlogin_sdk/request/oicq_request;->a(Loicq/wlogin_sdk/tools/ErrMsg;)V

    .line 2274
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "put_siginfo fail,ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v8, v7, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2280
    :cond_45
    :goto_17
    move-object/from16 v0, v53

    move-object/from16 v1, v68

    move/from16 v2, v41

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/y;->c([BII)I

    move-result v41

    if-ltz v41, :cond_46

    .line 2281
    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v6, v4, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual/range {v53 .. v53}, Loicq/wlogin_sdk/b/y;->a()J

    move-result-wide v8

    .line 2282
    invoke-static {}, Loicq/wlogin_sdk/request/u;->f()J

    move-result-wide v10

    .line 2283
    invoke-static {}, Loicq/wlogin_sdk/request/u;->f()J

    move-result-wide v12

    add-long v12, v12, v44

    .line 2284
    invoke-virtual/range {v53 .. v53}, Loicq/wlogin_sdk/b/y;->h()[B

    move-result-object v14

    invoke-virtual/range {v53 .. v53}, Loicq/wlogin_sdk/b/y;->g()[B

    move-result-object v15

    .line 2281
    invoke-virtual/range {v5 .. v15}, Loicq/wlogin_sdk/request/u;->a(JJJJ[B[B)I

    goto :goto_17

    .line 2287
    :cond_46
    const/4 v4, 0x0

    .line 2288
    goto/16 :goto_2

    .line 2293
    :sswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cmd "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Loicq/wlogin_sdk/request/oicq_request;->t:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " subcmd "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Loicq/wlogin_sdk/request/oicq_request;->u:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " result "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " will clean sig for uin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v10, v5, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " appid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V

    .line 2294
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v10, v5, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v4, v10, v11, v7, v8}, Loicq/wlogin_sdk/request/u;->d(JJ)V

    .line 2295
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/request/oicq_request;->c([BII)V

    move/from16 v4, v42

    .line 2297
    goto/16 :goto_2

    .line 2303
    :sswitch_2
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v89

    invoke-virtual {v6, v0, v1, v4}, Loicq/wlogin_sdk/b/g;->c([BII)I

    move-result v4

    .line 2304
    if-ltz v4, :cond_2

    .line 2306
    move-object/from16 v0, v88

    iput-object v6, v0, Loicq/wlogin_sdk/request/async_context;->_t104:Loicq/wlogin_sdk/b/g;

    .line 2309
    new-instance v4, Loicq/wlogin_sdk/b/cb;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/cb;-><init>()V

    .line 2310
    move-object/from16 v0, p0

    iget v5, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v5, v5, v89

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v89

    invoke-virtual {v4, v0, v1, v5}, Loicq/wlogin_sdk/b/cb;->c([BII)I

    move-result v5

    .line 2311
    if-ltz v5, :cond_47

    .line 2313
    new-instance v5, Loicq/wlogin_sdk/tools/ErrMsg;

    const-string v6, ""

    const-string v7, ""

    invoke-virtual {v4}, Loicq/wlogin_sdk/b/cb;->a()Ljava/lang/String;

    move-result-object v4

    move/from16 v0, v42

    invoke-direct {v5, v0, v6, v7, v4}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Loicq/wlogin_sdk/request/oicq_request;->a(Loicq/wlogin_sdk/tools/ErrMsg;)V

    :goto_18
    move/from16 v4, v42

    .line 2331
    goto/16 :goto_2

    .line 2316
    :cond_47
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v89

    invoke-virtual {v9, v0, v1, v4}, Loicq/wlogin_sdk/b/h;->c([BII)I

    move-result v4

    .line 2317
    if-ltz v4, :cond_2

    .line 2319
    move-object/from16 v0, v88

    iput-object v9, v0, Loicq/wlogin_sdk/request/async_context;->_t105:Loicq/wlogin_sdk/b/h;

    .line 2320
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v68

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/az;->c([BII)I

    move-result v4

    .line 2321
    if-ltz v4, :cond_48

    .line 2322
    move-object/from16 v0, v68

    move-object/from16 v1, v88

    iput-object v0, v1, Loicq/wlogin_sdk/request/async_context;->_t165:Loicq/wlogin_sdk/b/az;

    .line 2327
    :goto_19
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/request/oicq_request;->a(Loicq/wlogin_sdk/tools/ErrMsg;)V

    goto :goto_18

    .line 2324
    :cond_48
    new-instance v4, Loicq/wlogin_sdk/b/az;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/az;-><init>()V

    move-object/from16 v0, v88

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_t165:Loicq/wlogin_sdk/b/az;

    goto :goto_19

    .line 2334
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v10, v5, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v4, v10, v11, v7, v8}, Loicq/wlogin_sdk/request/u;->d(JJ)V

    .line 2336
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v56

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/ah;->c([BII)I

    move-result v4

    .line 2337
    if-ltz v4, :cond_2

    .line 2339
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    invoke-virtual/range {v56 .. v56}, Loicq/wlogin_sdk/b/ah;->a()[B

    move-result-object v5

    invoke-virtual/range {v56 .. v56}, Loicq/wlogin_sdk/b/ah;->g()[B

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Loicq/wlogin_sdk/request/u;->a([B[B)V

    .line 2341
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/request/oicq_request;->c([BII)V

    move/from16 v4, v42

    .line 2343
    goto/16 :goto_2

    .line 2347
    :sswitch_4
    new-instance v5, Loicq/wlogin_sdk/b/b;

    const/16 v4, 0x195

    invoke-direct {v5, v4}, Loicq/wlogin_sdk/b/b;-><init>(I)V

    .line 2348
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v89

    invoke-virtual {v5, v0, v1, v4}, Loicq/wlogin_sdk/b/b;->c([BII)I

    move-result v4

    .line 2349
    if-ltz v4, :cond_2

    .line 2351
    invoke-virtual {v5}, Loicq/wlogin_sdk/b/b;->c()[B

    move-result-object v4

    sput-object v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_LHSig:[B

    .line 2353
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/request/oicq_request;->c([BII)V

    move/from16 v4, v42

    .line 2355
    goto/16 :goto_2

    .line 2358
    :sswitch_5
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/s;->c([BII)I

    move-result v4

    .line 2359
    if-ltz v4, :cond_49

    .line 2360
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    invoke-virtual/range {v18 .. v18}, Loicq/wlogin_sdk/b/s;->a()J

    move-result-wide v8

    iput-wide v8, v4, Loicq/wlogin_sdk/request/u;->f:J

    .line 2361
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-object v5, v5, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v8, v7, Loicq/wlogin_sdk/request/u;->f:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Loicq/wlogin_sdk/request/u;->a(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2364
    :cond_49
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v89

    invoke-virtual {v6, v0, v1, v4}, Loicq/wlogin_sdk/b/g;->c([BII)I

    move-result v4

    .line 2365
    if-ltz v4, :cond_2

    .line 2367
    move-object/from16 v0, v88

    iput-object v6, v0, Loicq/wlogin_sdk/request/async_context;->_t104:Loicq/wlogin_sdk/b/g;

    .line 2369
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v76

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/bj;->c([BII)I

    move-result v4

    .line 2370
    if-ltz v4, :cond_2

    .line 2372
    move-object/from16 v0, v76

    move-object/from16 v1, v88

    iput-object v0, v1, Loicq/wlogin_sdk/request/async_context;->_t174:Loicq/wlogin_sdk/b/bj;

    .line 2374
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v77

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/bl;->c([BII)I

    move-result v4

    .line 2375
    if-ltz v4, :cond_4a

    .line 2376
    move-object/from16 v0, v88

    iget-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_devlock_info:Loicq/wlogin_sdk/devicelock/DevlockInfo;

    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {v77 .. v77}, Loicq/wlogin_sdk/b/bl;->a()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v4, Loicq/wlogin_sdk/devicelock/DevlockInfo;->CountryCode:Ljava/lang/String;

    .line 2377
    move-object/from16 v0, v88

    iget-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_devlock_info:Loicq/wlogin_sdk/devicelock/DevlockInfo;

    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {v77 .. v77}, Loicq/wlogin_sdk/b/bl;->g()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v4, Loicq/wlogin_sdk/devicelock/DevlockInfo;->Mobile:Ljava/lang/String;

    .line 2378
    move-object/from16 v0, v88

    iget-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_devlock_info:Loicq/wlogin_sdk/devicelock/DevlockInfo;

    invoke-virtual/range {v77 .. v77}, Loicq/wlogin_sdk/b/bl;->h()I

    move-result v5

    iput v5, v4, Loicq/wlogin_sdk/devicelock/DevlockInfo;->MbItemSmsCodeStatus:I

    .line 2379
    move-object/from16 v0, v88

    iget-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_devlock_info:Loicq/wlogin_sdk/devicelock/DevlockInfo;

    invoke-virtual/range {v77 .. v77}, Loicq/wlogin_sdk/b/bl;->i()I

    move-result v5

    iput v5, v4, Loicq/wlogin_sdk/devicelock/DevlockInfo;->AvailableMsgCount:I

    .line 2380
    move-object/from16 v0, v88

    iget-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_devlock_info:Loicq/wlogin_sdk/devicelock/DevlockInfo;

    invoke-virtual/range {v77 .. v77}, Loicq/wlogin_sdk/b/bl;->j()I

    move-result v5

    iput v5, v4, Loicq/wlogin_sdk/devicelock/DevlockInfo;->TimeLimit:I

    .line 2383
    :cond_4a
    new-instance v4, Loicq/wlogin_sdk/b/ce;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/ce;-><init>()V

    .line 2384
    move-object/from16 v0, p0

    iget v5, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v5, v5, v89

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v89

    invoke-virtual {v4, v0, v1, v5}, Loicq/wlogin_sdk/b/ce;->c([BII)I

    move-result v5

    .line 2385
    if-ltz v5, :cond_4b

    .line 2386
    move-object/from16 v0, v88

    iget-object v5, v0, Loicq/wlogin_sdk/request/async_context;->_devlock_info:Loicq/wlogin_sdk/devicelock/DevlockInfo;

    invoke-virtual {v4}, Loicq/wlogin_sdk/b/ce;->g()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Loicq/wlogin_sdk/devicelock/DevlockInfo;->BakCountryCode:Ljava/lang/String;

    .line 2387
    move-object/from16 v0, v88

    iget-object v5, v0, Loicq/wlogin_sdk/request/async_context;->_devlock_info:Loicq/wlogin_sdk/devicelock/DevlockInfo;

    invoke-virtual {v4}, Loicq/wlogin_sdk/b/ce;->h()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Loicq/wlogin_sdk/devicelock/DevlockInfo;->BakMobile:Ljava/lang/String;

    .line 2388
    move-object/from16 v0, v88

    iget-object v5, v0, Loicq/wlogin_sdk/request/async_context;->_devlock_info:Loicq/wlogin_sdk/devicelock/DevlockInfo;

    invoke-virtual {v4}, Loicq/wlogin_sdk/b/ce;->a()I

    move-result v4

    iput v4, v5, Loicq/wlogin_sdk/devicelock/DevlockInfo;->BakMobileState:I

    .line 2391
    :cond_4b
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v78

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/bm;->c([BII)I

    move-result v4

    .line 2392
    if-ltz v4, :cond_4c

    .line 2393
    move-object/from16 v0, v88

    iget-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_devlock_info:Loicq/wlogin_sdk/devicelock/DevlockInfo;

    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {v78 .. v78}, Loicq/wlogin_sdk/b/bm;->a()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v4, Loicq/wlogin_sdk/devicelock/DevlockInfo;->UnionVerifyUrl:Ljava/lang/String;

    .line 2396
    :cond_4c
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v79

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/bq;->c([BII)I

    move-result v4

    .line 2397
    if-ltz v4, :cond_4d

    .line 2398
    move-object/from16 v0, v88

    iget-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_devlock_info:Loicq/wlogin_sdk/devicelock/DevlockInfo;

    invoke-virtual/range {v79 .. v79}, Loicq/wlogin_sdk/b/bq;->a()I

    move-result v5

    iput v5, v4, Loicq/wlogin_sdk/devicelock/DevlockInfo;->MbGuideType:I

    .line 2399
    move-object/from16 v0, v88

    iget-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_devlock_info:Loicq/wlogin_sdk/devicelock/DevlockInfo;

    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {v79 .. v79}, Loicq/wlogin_sdk/b/bq;->g()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v4, Loicq/wlogin_sdk/devicelock/DevlockInfo;->MbGuideMsg:Ljava/lang/String;

    .line 2400
    move-object/from16 v0, v88

    iget-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_devlock_info:Loicq/wlogin_sdk/devicelock/DevlockInfo;

    invoke-virtual/range {v79 .. v79}, Loicq/wlogin_sdk/b/bq;->h()I

    move-result v5

    iput v5, v4, Loicq/wlogin_sdk/devicelock/DevlockInfo;->MbGuideInfoType:I

    .line 2401
    move-object/from16 v0, v88

    iget-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_devlock_info:Loicq/wlogin_sdk/devicelock/DevlockInfo;

    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {v79 .. v79}, Loicq/wlogin_sdk/b/bq;->i()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v4, Loicq/wlogin_sdk/devicelock/DevlockInfo;->MbGuideInfo:Ljava/lang/String;

    .line 2404
    :cond_4d
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v80

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/br;->c([BII)I

    move-result v4

    .line 2405
    if-ltz v4, :cond_4e

    .line 2406
    move-object/from16 v0, v88

    iget-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_devlock_info:Loicq/wlogin_sdk/devicelock/DevlockInfo;

    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {v80 .. v80}, Loicq/wlogin_sdk/b/br;->c()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v4, Loicq/wlogin_sdk/devicelock/DevlockInfo;->VerifyReason:Ljava/lang/String;

    .line 2409
    :cond_4e
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v85

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/cn;->c([BII)I

    move-result v4

    .line 2410
    if-ltz v4, :cond_4f

    .line 2411
    move-object/from16 v0, v85

    move-object/from16 v1, v88

    iput-object v0, v1, Loicq/wlogin_sdk/request/async_context;->_t402:Loicq/wlogin_sdk/b/cn;

    .line 2416
    :goto_1a
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v86

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/co;->c([BII)I

    move-result v4

    .line 2417
    if-ltz v4, :cond_50

    .line 2418
    move-object/from16 v0, v86

    move-object/from16 v1, v88

    iput-object v0, v1, Loicq/wlogin_sdk/request/async_context;->_t403:Loicq/wlogin_sdk/b/co;

    .line 2423
    :goto_1b
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/request/oicq_request;->c([BII)V

    move/from16 v4, v42

    .line 2425
    goto/16 :goto_2

    .line 2413
    :cond_4f
    new-instance v4, Loicq/wlogin_sdk/b/cn;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/cn;-><init>()V

    move-object/from16 v0, v88

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_t402:Loicq/wlogin_sdk/b/cn;

    goto :goto_1a

    .line 2420
    :cond_50
    new-instance v4, Loicq/wlogin_sdk/b/co;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/co;-><init>()V

    move-object/from16 v0, v88

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_t403:Loicq/wlogin_sdk/b/co;

    goto :goto_1b

    .line 2428
    :sswitch_6
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/request/oicq_request;->c([BII)V

    .line 2430
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-object v5, v5, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/request/u;->a(Ljava/lang/String;)V

    move/from16 v4, v42

    .line 2431
    goto/16 :goto_2

    .line 2434
    :sswitch_7
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v72

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/ax;->c([BII)I

    move-result v4

    .line 2435
    if-ltz v4, :cond_2

    .line 2438
    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/oicq_request;->a(Loicq/wlogin_sdk/b/ax;)I

    .line 2439
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/request/oicq_request;->c([BII)V

    move/from16 v4, v42

    .line 2441
    goto/16 :goto_2

    .line 2445
    :sswitch_8
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/s;->c([BII)I

    move-result v4

    .line 2446
    if-ltz v4, :cond_51

    .line 2447
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    invoke-virtual/range {v18 .. v18}, Loicq/wlogin_sdk/b/s;->a()J

    move-result-wide v8

    iput-wide v8, v4, Loicq/wlogin_sdk/request/u;->f:J

    .line 2448
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-object v5, v5, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v8, v7, Loicq/wlogin_sdk/request/u;->f:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Loicq/wlogin_sdk/request/u;->a(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2451
    :cond_51
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v89

    invoke-virtual {v6, v0, v1, v4}, Loicq/wlogin_sdk/b/g;->c([BII)I

    move-result v4

    .line 2452
    if-ltz v4, :cond_2

    .line 2454
    move-object/from16 v0, v88

    iput-object v6, v0, Loicq/wlogin_sdk/request/async_context;->_t104:Loicq/wlogin_sdk/b/g;

    .line 2455
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v85

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/cn;->c([BII)I

    move-result v4

    .line 2456
    if-ltz v4, :cond_2

    .line 2458
    move-object/from16 v0, v85

    move-object/from16 v1, v88

    iput-object v0, v1, Loicq/wlogin_sdk/request/async_context;->_t402:Loicq/wlogin_sdk/b/cn;

    .line 2459
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v86

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/co;->c([BII)I

    move-result v4

    .line 2460
    if-ltz v4, :cond_2

    .line 2462
    move-object/from16 v0, v86

    move-object/from16 v1, v88

    iput-object v0, v1, Loicq/wlogin_sdk/request/async_context;->_t403:Loicq/wlogin_sdk/b/co;

    .line 2467
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/request/oicq_request;->c([BII)V

    move/from16 v4, v42

    .line 2469
    goto/16 :goto_2

    .line 2472
    :sswitch_9
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v89

    invoke-virtual {v6, v0, v1, v4}, Loicq/wlogin_sdk/b/g;->c([BII)I

    move-result v4

    .line 2473
    if-ltz v4, :cond_2

    .line 2475
    move-object/from16 v0, v88

    iput-object v6, v0, Loicq/wlogin_sdk/request/async_context;->_t104:Loicq/wlogin_sdk/b/g;

    .line 2477
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v81

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/ae;->c([BII)I

    move-result v4

    .line 2478
    if-ltz v4, :cond_2

    .line 2480
    move-object/from16 v0, v81

    move-object/from16 v1, v88

    iput-object v0, v1, Loicq/wlogin_sdk/request/async_context;->_t126:Loicq/wlogin_sdk/b/ae;

    .line 2482
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v82

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/bt;->c([BII)I

    move-result v4

    .line 2483
    if-ltz v4, :cond_2

    .line 2485
    invoke-virtual/range {v82 .. v82}, Loicq/wlogin_sdk/b/bt;->a()I

    move-result v4

    move-object/from16 v0, v88

    iput v4, v0, Loicq/wlogin_sdk/request/async_context;->_smslogin_msgcnt:I

    .line 2486
    invoke-virtual/range {v82 .. v82}, Loicq/wlogin_sdk/b/bt;->g()I

    move-result v4

    move-object/from16 v0, v88

    iput v4, v0, Loicq/wlogin_sdk/request/async_context;->_smslogin_timelimit:I

    .line 2488
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v4, v4, v89

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v83

    move-object/from16 v1, p1

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2, v4}, Loicq/wlogin_sdk/b/bu;->c([BII)I

    move-result v4

    .line 2489
    if-ltz v4, :cond_2

    .line 2491
    invoke-virtual/range {v83 .. v83}, Loicq/wlogin_sdk/b/bu;->a()J

    move-result-wide v4

    move-object/from16 v0, v88

    iput-wide v4, v0, Loicq/wlogin_sdk/request/async_context;->_msalt:J

    .line 2493
    const/4 v4, 0x0

    .line 2494
    goto/16 :goto_2

    .line 2502
    :cond_52
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto/16 :goto_3

    .line 2509
    :cond_53
    new-instance v5, Loicq/wlogin_sdk/b/cp;

    invoke-direct {v5}, Loicq/wlogin_sdk/b/cp;-><init>()V

    .line 2510
    move-object/from16 v0, p0

    iget v6, v0, Loicq/wlogin_sdk/request/oicq_request;->c:I

    sub-int v6, v6, v89

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v89

    invoke-virtual {v5, v0, v1, v6}, Loicq/wlogin_sdk/b/cp;->c([BII)I

    .line 2511
    sget-boolean v5, Loicq/wlogin_sdk/b/cp;->a:Z

    if-eqz v5, :cond_3

    .line 2512
    new-instance v6, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v6}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    .line 2513
    new-instance v5, Loicq/wlogin_sdk/request/i;

    move-object/from16 v0, p0

    iget-object v7, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, p0

    iget v8, v0, Loicq/wlogin_sdk/request/oicq_request;->t:I

    move-object/from16 v0, p0

    iget v9, v0, Loicq/wlogin_sdk/request/oicq_request;->u:I

    invoke-direct {v5, v7, v8, v9, v6}, Loicq/wlogin_sdk/request/i;-><init>(Loicq/wlogin_sdk/request/u;IILoicq/wlogin_sdk/tools/ErrMsg;)V

    invoke-virtual {v5, v4}, Loicq/wlogin_sdk/request/i;->b(I)I

    move-result v5

    .line 2514
    const/16 v7, -0x3e8

    if-eq v5, v7, :cond_3

    .line 2516
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Loicq/wlogin_sdk/request/oicq_request;->a(Loicq/wlogin_sdk/tools/ErrMsg;)V

    move v4, v5

    goto/16 :goto_4

    :cond_54
    move-wide/from16 v14, v18

    goto/16 :goto_10

    :cond_55
    move-object/from16 v35, v5

    goto/16 :goto_a

    :cond_56
    move/from16 v40, v4

    goto/16 :goto_1

    .line 1736
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
    .end packed-switch

    .line 1790
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0xf -> :sswitch_1
        0x10 -> :sswitch_3
        0x29 -> :sswitch_4
        0x74 -> :sswitch_4
        0xa0 -> :sswitch_5
        0xb0 -> :sswitch_6
        0xb4 -> :sswitch_7
        0xcc -> :sswitch_8
        0xd0 -> :sswitch_9
    .end sparse-switch
.end method

.method public d()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-object v0, v0, Loicq/wlogin_sdk/request/u;->ah:Ljava/net/Socket;

    return-object v0
.end method

.method public e()I
    .locals 20

    .prologue
    .line 1008
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":snd_rcv_req_tcp ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v4, v4, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/oicq_request;->c()[B

    move-result-object v16

    .line 1011
    const/4 v11, 0x0

    .line 1012
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 1013
    const-wide/16 v4, 0x0

    .line 1016
    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/oicq_request;->d()Ljava/net/Socket;

    move-result-object v2

    .line 1017
    const/4 v8, 0x0

    .line 1018
    const/4 v9, 0x0

    .line 1020
    const/4 v6, 0x0

    .line 1022
    const-string v13, ""

    .line 1023
    const-string v10, ""

    move-object v12, v2

    .line 1025
    :goto_0
    const/4 v2, 0x6

    if-ge v7, v2, :cond_1e

    .line 1027
    if-eqz v7, :cond_0

    .line 1028
    sget-object v2, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v2}, Loicq/wlogin_sdk/tools/util;->chg_retry_type(Landroid/content/Context;)V

    .line 1030
    :cond_0
    sget-object v2, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v2}, Loicq/wlogin_sdk/tools/util;->is_wap_retry(Landroid/content/Context;)Z

    move-result v8

    .line 1031
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Loicq/wlogin_sdk/request/oicq_request;->q:Ljava/net/InetSocketAddress;

    .line 1034
    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Loicq/wlogin_sdk/request/oicq_request;->t:I

    const/16 v14, 0x812

    if-eq v2, v14, :cond_1

    move-object/from16 v2, p0

    .line 1035
    invoke-direct/range {v2 .. v9}, Loicq/wlogin_sdk/request/oicq_request;->a(IJIIZZ)V

    .line 1037
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1040
    if-eqz v8, :cond_b

    .line 1041
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "try http connect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v14, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v14, v14, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    const-string v2, ""

    .line 1045
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Loicq/wlogin_sdk/request/oicq_request;->a(IZ)Ljava/lang/String;

    move-result-object v15

    .line 1048
    const/4 v14, 0x0

    .line 1049
    const/4 v2, -0x1

    .line 1050
    :try_start_0
    sget-object v3, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v3}, Loicq/wlogin_sdk/tools/util;->is_wap_proxy_retry(Landroid/content/Context;)Z

    move-result v9

    .line 1051
    if-eqz v9, :cond_3

    .line 1052
    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_proxy_ip()Ljava/lang/String;

    move-result-object v14

    .line 1053
    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_proxy_port()I

    move-result v2

    .line 1054
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 1055
    :cond_2
    const/4 v9, 0x0

    .line 1056
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "proxy_ip="

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v17, ",proxy_port="

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v17, ",set is_wap_proxy_retry="

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v3, v2

    .line 1060
    if-eqz v9, :cond_5

    .line 1061
    new-instance v2, Ljava/net/URL;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "http://"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, "/cgi-bin/wlogin_proxy_login"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1075
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "try http proxy="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, " connect to "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, " host "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 1078
    const-string v3, "POST"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1080
    if-eqz v9, :cond_4

    .line 1081
    const-string v3, "X-Online-Host"

    invoke-virtual {v2, v3, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    :cond_4
    const-string v3, "Content-Type"

    const-string v14, "application/octet-stream"

    invoke-virtual {v2, v3, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    const-string v3, "Content-Disposition"

    const-string v14, "attachment; filename=micromsgresp.dat"

    invoke-virtual {v2, v3, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    const-string v3, "Content-Length"

    move-object/from16 v0, v16

    array-length v14, v0

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v3, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget v3, v3, Loicq/wlogin_sdk/request/u;->l:I

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1088
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget v3, v3, Loicq/wlogin_sdk/request/u;->l:I

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1090
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1091
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 1093
    const-string v3, "http request connect ..."

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v0, v15, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget v3, v3, Loicq/wlogin_sdk/request/u;->l:I

    int-to-long v14, v3

    invoke-static {v2, v14, v15}, Loicq/wlogin_sdk/request/j;->a(Ljava/net/HttpURLConnection;J)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1095
    const-string v2, "http request connect failed"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v14, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v14, v14, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    const/16 v3, -0x3e8

    .line 1097
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1064
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget v3, v3, Loicq/wlogin_sdk/request/u;->l:I

    int-to-long v0, v3

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-static {v15, v2, v0, v1}, Loicq/wlogin_sdk/request/a;->a(Ljava/lang/String;IJ)Ljava/net/InetSocketAddress;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Loicq/wlogin_sdk/request/oicq_request;->q:Ljava/net/InetSocketAddress;

    .line 1065
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/oicq_request;->q:Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_27

    .line 1066
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/oicq_request;->q:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 1067
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1068
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "repeated failed http ip "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1116
    :catch_0
    move-exception v2

    move-object v2, v10

    .line 1117
    :goto_2
    const/16 v3, -0x3e8

    .line 1118
    add-int/lit8 v7, v7, 0x1

    move-object v10, v2

    .line 1119
    goto/16 :goto_0

    .line 1070
    :cond_6
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-object v3, v0, Loicq/wlogin_sdk/request/oicq_request;->q:Ljava/net/InetSocketAddress;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-object v14, v2

    move-object v3, v2

    .line 1073
    :goto_3
    :try_start_2
    new-instance v2, Ljava/net/URL;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "http://"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v14, "/cgi-bin/wlogin_proxy_login"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-object v10, v3

    goto/16 :goto_1

    .line 1100
    :cond_7
    :try_start_3
    const-string v3, "http request write ..."

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v0, v15, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 1102
    const/4 v14, 0x0

    move-object/from16 v0, v16

    array-length v15, v0

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v14, v15}, Ljava/io/OutputStream;->write([BII)V

    .line 1103
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 1105
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 1106
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "http request response code="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    const/16 v14, 0xc8

    if-eq v14, v3, :cond_8

    .line 1109
    const/16 v3, -0x3e8

    .line 1110
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1114
    :cond_8
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v3

    move-object v14, v10

    move-object v2, v12

    move-object v15, v3

    .line 1199
    :goto_4
    :try_start_4
    const-string v3, "recv data from server ..."

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v0, v12, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    const/4 v3, 0x0

    .line 1202
    const/4 v10, 0x0

    .line 1203
    :goto_5
    move-object/from16 v0, p0

    iget v12, v0, Loicq/wlogin_sdk/request/oicq_request;->f:I

    add-int/lit8 v12, v12, 0x1

    if-ge v10, v12, :cond_9

    .line 1204
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/oicq_request;->s:[B

    move-object/from16 v0, p0

    iget v12, v0, Loicq/wlogin_sdk/request/oicq_request;->f:I

    add-int/lit8 v12, v12, 0x1

    sub-int/2addr v12, v10

    invoke-virtual {v15, v3, v10, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 1206
    if-gez v3, :cond_13

    .line 1211
    :cond_9
    if-gez v3, :cond_14

    .line 1212
    const/16 v3, -0x3e8

    .line 1213
    add-int/lit8 v7, v7, 0x1

    .line 1214
    if-nez v8, :cond_a

    .line 1215
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 1216
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-object v10, v0, Loicq/wlogin_sdk/request/oicq_request;->q:Ljava/net/InetSocketAddress;

    .line 1217
    const/4 v2, 0x0

    .line 1218
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Loicq/wlogin_sdk/request/oicq_request;->a(Ljava/net/Socket;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_a
    move-object v10, v14

    move-object v12, v2

    .line 1220
    goto/16 :goto_0

    .line 1124
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "try bin connect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v14, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v14, v14, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    if-nez v12, :cond_12

    .line 1127
    const-string v2, ""

    .line 1128
    const/4 v6, 0x1

    .line 1129
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/oicq_request;->q:Ljava/net/InetSocketAddress;

    if-nez v3, :cond_c

    .line 1130
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Loicq/wlogin_sdk/request/oicq_request;->a(IZ)Ljava/lang/String;

    move-result-object v2

    .line 1131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "DNS for "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, " request ..."

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v0, v15, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    :try_start_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Loicq/wlogin_sdk/request/oicq_request;->c(Z)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Loicq/wlogin_sdk/request/oicq_request;->r:I

    .line 1134
    move-object/from16 v0, p0

    iget v3, v0, Loicq/wlogin_sdk/request/oicq_request;->r:I

    move-object/from16 v0, p0

    iget-object v14, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget v14, v14, Loicq/wlogin_sdk/request/u;->l:I

    int-to-long v14, v14

    invoke-static {v2, v3, v14, v15}, Loicq/wlogin_sdk/request/a;->a(Ljava/lang/String;IJ)Ljava/net/InetSocketAddress;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Loicq/wlogin_sdk/request/oicq_request;->q:Ljava/net/InetSocketAddress;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 1139
    :cond_c
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/oicq_request;->q:Ljava/net/InetSocketAddress;

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/oicq_request;->q:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-nez v3, :cond_e

    .line 1140
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/oicq_request;->q:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-nez v2, :cond_d

    .line 1142
    const-string v2, "_server_ip get address failed"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v12, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v14, v12, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    :cond_d
    const/16 v3, -0x3ef

    .line 1144
    add-int/lit8 v7, v7, 0x1

    .line 1145
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Loicq/wlogin_sdk/request/oicq_request;->q:Ljava/net/InetSocketAddress;

    .line 1146
    const/4 v2, 0x0

    .line 1147
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Loicq/wlogin_sdk/request/oicq_request;->a(Ljava/net/Socket;)V

    move-object v12, v2

    .line 1148
    goto/16 :goto_0

    .line 1151
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/oicq_request;->q:Ljava/net/InetSocketAddress;

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/oicq_request;->q:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1152
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/oicq_request;->q:Ljava/net/InetSocketAddress;

    if-nez v3, :cond_10

    .line 1153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DNS for "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v12, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v14, v12, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    const/16 v2, -0x3ef

    .line 1159
    :goto_7
    add-int/lit8 v7, v7, 0x1

    .line 1160
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Loicq/wlogin_sdk/request/oicq_request;->q:Ljava/net/InetSocketAddress;

    .line 1161
    const/4 v12, 0x0

    .line 1162
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Loicq/wlogin_sdk/request/oicq_request;->a(Ljava/net/Socket;)V

    move v3, v2

    .line 1163
    goto/16 :goto_0

    .line 1156
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "repeated failed bin ip "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v12, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v14, v12, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    const/16 v2, -0x3e8

    goto :goto_7

    .line 1166
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/oicq_request;->q:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 1167
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "DNS for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, "("

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v13, v0, Loicq/wlogin_sdk/request/oicq_request;->q:Ljava/net/InetSocketAddress;

    invoke-virtual {v13}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, ") request OK"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v14, v14, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v3

    .line 1171
    :cond_12
    if-nez v12, :cond_26

    .line 1172
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tcp connect to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/oicq_request;->q:Ljava/net/InetSocketAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v12, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v14, v12, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    .line 1174
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Loicq/wlogin_sdk/request/oicq_request;->a(Ljava/net/Socket;)V

    .line 1175
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/oicq_request;->q:Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    iget-object v12, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget v12, v12, Loicq/wlogin_sdk/request/u;->l:I

    invoke-virtual {v2, v3, v12}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 1176
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget v3, v3, Loicq/wlogin_sdk/request/u;->l:I

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 1177
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/oicq_request;->s:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 1178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "tcp connect to "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v12, v0, Loicq/wlogin_sdk/request/oicq_request;->q:Ljava/net/InetSocketAddress;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, " OK"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v14, v14, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    :goto_8
    const-string/jumbo v3, "tcp request write ..."

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v14, v14, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 1183
    const/4 v12, 0x0

    move-object/from16 v0, v16

    array-length v14, v0

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v12, v14}, Ljava/io/OutputStream;->write([BII)V

    .line 1184
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 1186
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v3

    move-object v14, v10

    move-object v15, v3

    .line 1194
    goto/16 :goto_4

    .line 1187
    :catch_1
    move-exception v2

    .line 1188
    const/16 v3, -0x3e8

    .line 1189
    add-int/lit8 v7, v7, 0x1

    .line 1190
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Loicq/wlogin_sdk/request/oicq_request;->q:Ljava/net/InetSocketAddress;

    .line 1191
    const/4 v2, 0x0

    .line 1192
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Loicq/wlogin_sdk/request/oicq_request;->a(Ljava/net/Socket;)V

    move-object v12, v2

    .line 1193
    goto/16 :goto_0

    .line 1209
    :cond_13
    add-int/2addr v10, v3

    goto/16 :goto_5

    .line 1224
    :cond_14
    :try_start_7
    move-object/from16 v0, p0

    iget-object v10, v0, Loicq/wlogin_sdk/request/oicq_request;->s:[B

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Loicq/wlogin_sdk/request/oicq_request;->b([B)I

    move-result v11

    .line 1225
    move-object/from16 v0, p0

    iget v10, v0, Loicq/wlogin_sdk/request/oicq_request;->f:I

    add-int/lit8 v10, v10, 0x1

    if-gt v11, v10, :cond_16

    .line 1226
    const/16 v3, -0x3e8

    .line 1227
    add-int/lit8 v7, v7, 0x1

    .line 1228
    if-nez v8, :cond_15

    .line 1229
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 1230
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-object v10, v0, Loicq/wlogin_sdk/request/oicq_request;->q:Ljava/net/InetSocketAddress;

    .line 1231
    const/4 v2, 0x0

    .line 1232
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Loicq/wlogin_sdk/request/oicq_request;->a(Ljava/net/Socket;)V

    :cond_15
    move-object v10, v14

    move-object v12, v2

    .line 1234
    goto/16 :goto_0

    .line 1237
    :cond_16
    move-object/from16 v0, p0

    iget-object v10, v0, Loicq/wlogin_sdk/request/oicq_request;->s:[B

    array-length v10, v10

    if-lt v11, v10, :cond_18

    .line 1238
    const/16 v3, -0x3e8

    .line 1239
    add-int/lit8 v7, v7, 0x1

    .line 1240
    if-nez v8, :cond_17

    .line 1241
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 1242
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-object v10, v0, Loicq/wlogin_sdk/request/oicq_request;->q:Ljava/net/InetSocketAddress;

    .line 1243
    const/4 v2, 0x0

    .line 1244
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Loicq/wlogin_sdk/request/oicq_request;->a(Ljava/net/Socket;)V

    :cond_17
    move-object v10, v14

    move-object v12, v2

    .line 1246
    goto/16 :goto_0

    .line 1249
    :cond_18
    move-object/from16 v0, p0

    iget v10, v0, Loicq/wlogin_sdk/request/oicq_request;->f:I

    add-int/lit8 v12, v10, 0x1

    .line 1250
    sub-int v10, v11, v12

    .line 1253
    :goto_9
    if-lez v10, :cond_19

    .line 1254
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/oicq_request;->s:[B

    invoke-virtual {v15, v3, v12, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 1255
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v3, v0, :cond_1b

    .line 1261
    :cond_19
    const/4 v10, -0x1

    if-ne v3, v10, :cond_1e

    .line 1262
    const/16 v3, -0x3e8

    .line 1263
    add-int/lit8 v7, v7, 0x1

    .line 1264
    if-nez v8, :cond_1a

    .line 1265
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 1266
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-object v10, v0, Loicq/wlogin_sdk/request/oicq_request;->q:Ljava/net/InetSocketAddress;

    .line 1267
    const/4 v2, 0x0

    .line 1268
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Loicq/wlogin_sdk/request/oicq_request;->a(Ljava/net/Socket;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    :cond_1a
    move-object v10, v14

    move-object v12, v2

    .line 1270
    goto/16 :goto_0

    .line 1258
    :cond_1b
    add-int/2addr v12, v3

    .line 1259
    sub-int/2addr v10, v3

    goto :goto_9

    .line 1273
    :catch_2
    move-exception v3

    .line 1274
    const/16 v3, -0x3e8

    .line 1275
    add-int/lit8 v7, v7, 0x1

    .line 1276
    if-nez v8, :cond_1d

    .line 1278
    :try_start_8
    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 1279
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 1282
    :cond_1c
    :goto_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Loicq/wlogin_sdk/request/oicq_request;->q:Ljava/net/InetSocketAddress;

    .line 1283
    const/4 v2, 0x0

    .line 1284
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Loicq/wlogin_sdk/request/oicq_request;->a(Ljava/net/Socket;)V

    :cond_1d
    move-object v10, v14

    move-object v12, v2

    .line 1286
    goto/16 :goto_0

    .line 1292
    :cond_1e
    const/4 v2, 0x6

    if-lt v7, v2, :cond_22

    .line 1293
    const/16 v2, -0x3e8

    .line 1298
    :goto_b
    if-nez v2, :cond_1f

    .line 1299
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/oicq_request;->s:[B

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Loicq/wlogin_sdk/request/oicq_request;->b([BI)V

    .line 1305
    :cond_1f
    if-nez v2, :cond_21

    move-object/from16 v0, p0

    iget v3, v0, Loicq/wlogin_sdk/request/oicq_request;->t:I

    const/16 v10, 0x812

    if-eq v3, v10, :cond_21

    .line 1306
    new-instance v3, Loicq/wlogin_sdk/report/report_t3;

    invoke-direct {v3}, Loicq/wlogin_sdk/report/report_t3;-><init>()V

    .line 1307
    move-object/from16 v0, p0

    iget v10, v0, Loicq/wlogin_sdk/request/oicq_request;->t:I

    iput v10, v3, Loicq/wlogin_sdk/report/report_t3;->_cmd:I

    .line 1308
    move-object/from16 v0, p0

    iget v10, v0, Loicq/wlogin_sdk/request/oicq_request;->u:I

    iput v10, v3, Loicq/wlogin_sdk/report/report_t3;->_sub:I

    .line 1309
    iput v2, v3, Loicq/wlogin_sdk/report/report_t3;->_rst2:I

    .line 1310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1311
    sub-long v4, v12, v4

    long-to-int v4, v4

    iput v4, v3, Loicq/wlogin_sdk/report/report_t3;->_used:I

    .line 1312
    iput v7, v3, Loicq/wlogin_sdk/report/report_t3;->_try:I

    .line 1313
    sget-object v4, Loicq/wlogin_sdk/request/oicq_request;->H:Ljava/lang/String;

    iput-object v4, v3, Loicq/wlogin_sdk/report/report_t3;->_host:Ljava/lang/String;

    .line 1314
    iget-object v4, v3, Loicq/wlogin_sdk/report/report_t3;->_host:Ljava/lang/String;

    if-nez v4, :cond_20

    .line 1315
    const-string v4, ""

    iput-object v4, v3, Loicq/wlogin_sdk/report/report_t3;->_host:Ljava/lang/String;

    .line 1316
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/oicq_request;->q:Ljava/net/InetSocketAddress;

    if-nez v4, :cond_23

    .line 1317
    const-string v4, ""

    iput-object v4, v3, Loicq/wlogin_sdk/report/report_t3;->_ip:Ljava/lang/String;

    .line 1321
    :goto_c
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/oicq_request;->r:I

    iput v4, v3, Loicq/wlogin_sdk/report/report_t3;->_port:I

    .line 1322
    iput v6, v3, Loicq/wlogin_sdk/report/report_t3;->_conn:I

    .line 1323
    sget v4, Loicq/wlogin_sdk/request/u;->D:I

    iput v4, v3, Loicq/wlogin_sdk/report/report_t3;->_net:I

    .line 1324
    const-string v4, ""

    iput-object v4, v3, Loicq/wlogin_sdk/report/report_t3;->_str:Ljava/lang/String;

    .line 1325
    move-object/from16 v0, v16

    array-length v4, v0

    iput v4, v3, Loicq/wlogin_sdk/report/report_t3;->_slen:I

    .line 1326
    iput v11, v3, Loicq/wlogin_sdk/report/report_t3;->_rlen:I

    .line 1327
    if-eqz v8, :cond_25

    .line 1328
    if-eqz v9, :cond_24

    .line 1329
    const/4 v4, 0x2

    iput v4, v3, Loicq/wlogin_sdk/report/report_t3;->_wap:I

    .line 1336
    :goto_d
    sget-object v4, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    invoke-virtual {v4, v3}, Loicq/wlogin_sdk/report/report_t1;->add_t3(Loicq/wlogin_sdk/report/report_t3;)V

    .line 1339
    :cond_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":snd_rcv_req_tcp ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v6, v5, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    return v2

    .line 1295
    :cond_22
    const/4 v2, 0x0

    goto/16 :goto_b

    .line 1319
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/oicq_request;->q:Ljava/net/InetSocketAddress;

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Loicq/wlogin_sdk/report/report_t3;->_ip:Ljava/lang/String;

    goto :goto_c

    .line 1331
    :cond_24
    const/4 v4, 0x1

    iput v4, v3, Loicq/wlogin_sdk/report/report_t3;->_wap:I

    goto :goto_d

    .line 1334
    :cond_25
    const/4 v4, 0x0

    iput v4, v3, Loicq/wlogin_sdk/report/report_t3;->_wap:I

    goto :goto_d

    .line 1280
    :catch_3
    move-exception v2

    goto/16 :goto_a

    .line 1135
    :catch_4
    move-exception v3

    goto/16 :goto_6

    .line 1116
    :catch_5
    move-exception v3

    goto/16 :goto_2

    :catch_6
    move-exception v2

    move-object v2, v3

    goto/16 :goto_2

    :cond_26
    move-object v2, v12

    goto/16 :goto_8

    :cond_27
    move-object v14, v15

    move-object v3, v10

    goto/16 :goto_3
.end method

.method public f()I
    .locals 2

    .prologue
    .line 1451
    iget-object v0, p0, Loicq/wlogin_sdk/request/oicq_request;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v0, v1}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v0

    .line 1452
    iget v0, v0, Loicq/wlogin_sdk/request/async_context;->_last_flowid:I

    return v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 2548
    const/4 v0, 0x1

    iput-boolean v0, p0, Loicq/wlogin_sdk/request/oicq_request;->z:Z

    .line 2549
    return-void
.end method
