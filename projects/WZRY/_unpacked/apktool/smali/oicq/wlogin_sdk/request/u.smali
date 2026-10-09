.class public Loicq/wlogin_sdk/request/u;
.super Ljava/lang/Object;
.source "request_global.java"


# static fields
.field public static A:[B

.field static B:[B

.field public static C:[B

.field public static D:I

.field public static E:[B

.field public static F:[B

.field public static G:[B

.field public static H:[B

.field public static I:[B

.field public static J:[B

.field public static K:[B

.field static L:[B

.field static M:[B

.field static N:[B

.field static O:[B

.field static P:[B

.field static Q:[B

.field static R:[B

.field static S:[B

.field static T:I

.field static U:I

.field static V:I

.field static W:I

.field static X:I

.field public static Y:I

.field public static Z:I

.field public static a:Ljava/security/SecureRandom;

.field static aa:[B

.field static ab:J

.field public static ac:J

.field static ad:[B

.field static ae:I

.field static af:I

.field public static ag:Z

.field public static aj:Loicq/wlogin_sdk/request/d;

.field protected static ak:Ljava/lang/String;

.field public static al:Loicq/wlogin_sdk/report/report_t1;

.field public static am:J

.field public static an:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Long;",
            "Loicq/wlogin_sdk/request/async_context;",
            ">;"
        }
    .end annotation
.end field

.field public static ap:Z

.field public static aq:Z

.field private static ar:Ljava/lang/Object;

.field static e:Ljava/lang/Boolean;

.field public static t:Landroid/content/Context;

.field public static u:I

.field public static v:Ljava/lang/String;

.field static w:I

.field static x:I

.field static y:I

.field static z:I


# instance fields
.field ah:Ljava/net/Socket;

.field ai:Ljava/net/Socket;

.field public ao:I

.field public b:[B

.field public c:[B

.field public d:Loicq/wlogin_sdk/b/au;

.field public f:J

.field public g:Ljava/lang/String;

.field public h:J

.field public i:I

.field public j:Loicq/wlogin_sdk/request/WFastLoginInfo;

.field public k:I

.field public l:I

.field public m:I

.field public n:[B

.field public o:[B

.field public p:[B

.field public q:[B

.field public r:[B

.field public s:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 27
    invoke-static {}, Loicq/wlogin_sdk/request/u;->m()Ljava/security/SecureRandom;

    move-result-object v0

    sput-object v0, Loicq/wlogin_sdk/request/u;->a:Ljava/security/SecureRandom;

    .line 35
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Loicq/wlogin_sdk/request/u;->e:Ljava/lang/Boolean;

    .line 60
    sput-object v5, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    .line 62
    const/16 v0, 0x804

    sput v0, Loicq/wlogin_sdk/request/u;->u:I

    .line 64
    const-string v0, ""

    sput-object v0, Loicq/wlogin_sdk/request/u;->v:Ljava/lang/String;

    .line 66
    sput v1, Loicq/wlogin_sdk/request/u;->w:I

    .line 67
    sput v4, Loicq/wlogin_sdk/request/u;->x:I

    .line 68
    sput v1, Loicq/wlogin_sdk/request/u;->y:I

    .line 69
    sput v1, Loicq/wlogin_sdk/request/u;->z:I

    .line 70
    new-array v0, v1, [B

    sput-object v0, Loicq/wlogin_sdk/request/u;->A:[B

    .line 71
    new-array v0, v1, [B

    sput-object v0, Loicq/wlogin_sdk/request/u;->B:[B

    .line 72
    new-array v0, v1, [B

    sput-object v0, Loicq/wlogin_sdk/request/u;->C:[B

    .line 73
    sput v1, Loicq/wlogin_sdk/request/u;->D:I

    .line 74
    new-array v0, v1, [B

    sput-object v0, Loicq/wlogin_sdk/request/u;->E:[B

    .line 75
    new-array v0, v1, [B

    sput-object v0, Loicq/wlogin_sdk/request/u;->F:[B

    .line 76
    new-array v0, v1, [B

    sput-object v0, Loicq/wlogin_sdk/request/u;->G:[B

    .line 77
    new-array v0, v1, [B

    sput-object v0, Loicq/wlogin_sdk/request/u;->H:[B

    .line 78
    new-array v0, v1, [B

    sput-object v0, Loicq/wlogin_sdk/request/u;->I:[B

    .line 79
    new-array v0, v1, [B

    sput-object v0, Loicq/wlogin_sdk/request/u;->J:[B

    .line 80
    const-string v0, "android"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Loicq/wlogin_sdk/request/u;->K:[B

    .line 81
    new-array v0, v1, [B

    sput-object v0, Loicq/wlogin_sdk/request/u;->L:[B

    .line 82
    new-array v0, v1, [B

    sput-object v0, Loicq/wlogin_sdk/request/u;->M:[B

    .line 83
    new-array v0, v1, [B

    sput-object v0, Loicq/wlogin_sdk/request/u;->N:[B

    .line 84
    new-array v0, v1, [B

    sput-object v0, Loicq/wlogin_sdk/request/u;->O:[B

    .line 85
    new-array v0, v1, [B

    sput-object v0, Loicq/wlogin_sdk/request/u;->P:[B

    .line 86
    new-array v0, v1, [B

    sput-object v0, Loicq/wlogin_sdk/request/u;->Q:[B

    .line 87
    new-array v0, v1, [B

    sput-object v0, Loicq/wlogin_sdk/request/u;->R:[B

    .line 88
    new-array v0, v1, [B

    sput-object v0, Loicq/wlogin_sdk/request/u;->S:[B

    .line 90
    sput v1, Loicq/wlogin_sdk/request/u;->T:I

    .line 91
    sput v1, Loicq/wlogin_sdk/request/u;->U:I

    .line 92
    sput v1, Loicq/wlogin_sdk/request/u;->V:I

    .line 93
    sput v1, Loicq/wlogin_sdk/request/u;->W:I

    .line 94
    sput v1, Loicq/wlogin_sdk/request/u;->X:I

    .line 95
    sput v1, Loicq/wlogin_sdk/request/u;->Y:I

    .line 96
    sput v1, Loicq/wlogin_sdk/request/u;->Z:I

    .line 98
    new-array v0, v1, [B

    sput-object v0, Loicq/wlogin_sdk/request/u;->aa:[B

    .line 99
    sput-wide v2, Loicq/wlogin_sdk/request/u;->ab:J

    .line 100
    sput-wide v2, Loicq/wlogin_sdk/request/u;->ac:J

    .line 101
    const/4 v0, 0x4

    new-array v0, v0, [B

    sput-object v0, Loicq/wlogin_sdk/request/u;->ad:[B

    .line 102
    sput v1, Loicq/wlogin_sdk/request/u;->ae:I

    .line 105
    sput v1, Loicq/wlogin_sdk/request/u;->af:I

    .line 106
    sput-boolean v1, Loicq/wlogin_sdk/request/u;->ag:Z

    .line 111
    sput-object v5, Loicq/wlogin_sdk/request/u;->aj:Loicq/wlogin_sdk/request/d;

    .line 113
    const-string v0, ""

    sput-object v0, Loicq/wlogin_sdk/request/u;->ak:Ljava/lang/String;

    .line 116
    new-instance v0, Loicq/wlogin_sdk/report/report_t1;

    invoke-direct {v0}, Loicq/wlogin_sdk/report/report_t1;-><init>()V

    sput-object v0, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    .line 118
    sput-wide v2, Loicq/wlogin_sdk/request/u;->am:J

    .line 119
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Loicq/wlogin_sdk/request/u;->an:Ljava/util/TreeMap;

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Loicq/wlogin_sdk/request/u;->ar:Ljava/lang/Object;

    .line 125
    sput-boolean v1, Loicq/wlogin_sdk/request/u;->ap:Z

    .line 126
    sput-boolean v4, Loicq/wlogin_sdk/request/u;->aq:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v3, p0, Loicq/wlogin_sdk/request/u;->b:[B

    .line 31
    new-array v0, v2, [B

    iput-object v0, p0, Loicq/wlogin_sdk/request/u;->c:[B

    .line 34
    iput-object v3, p0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    .line 38
    iput-wide v4, p0, Loicq/wlogin_sdk/request/u;->f:J

    .line 40
    const-string v0, ""

    iput-object v0, p0, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    .line 42
    iput-wide v4, p0, Loicq/wlogin_sdk/request/u;->h:J

    .line 43
    iput v1, p0, Loicq/wlogin_sdk/request/u;->i:I

    .line 46
    iput v1, p0, Loicq/wlogin_sdk/request/u;->k:I

    .line 47
    const/16 v0, 0x1388

    iput v0, p0, Loicq/wlogin_sdk/request/u;->l:I

    .line 50
    iput v1, p0, Loicq/wlogin_sdk/request/u;->m:I

    .line 51
    new-array v0, v2, [B

    iput-object v0, p0, Loicq/wlogin_sdk/request/u;->n:[B

    .line 52
    new-array v0, v2, [B

    iput-object v0, p0, Loicq/wlogin_sdk/request/u;->o:[B

    .line 53
    new-array v0, v2, [B

    iput-object v0, p0, Loicq/wlogin_sdk/request/u;->p:[B

    .line 54
    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/request/u;->q:[B

    .line 56
    new-array v0, v1, [B

    iput-object v0, p0, Loicq/wlogin_sdk/request/u;->r:[B

    .line 58
    iput v1, p0, Loicq/wlogin_sdk/request/u;->s:I

    .line 108
    iput-object v3, p0, Loicq/wlogin_sdk/request/u;->ah:Ljava/net/Socket;

    .line 109
    iput-object v3, p0, Loicq/wlogin_sdk/request/u;->ai:Ljava/net/Socket;

    .line 140
    return-void
.end method

.method public static declared-synchronized a()J
    .locals 6

    .prologue
    .line 170
    const-class v1, Loicq/wlogin_sdk/request/u;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Loicq/wlogin_sdk/request/u;->am:J

    const-wide/16 v4, 0xc8

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 171
    const-wide/16 v2, 0x0

    sput-wide v2, Loicq/wlogin_sdk/request/u;->am:J

    .line 173
    :cond_0
    sget-wide v2, Loicq/wlogin_sdk/request/u;->am:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Loicq/wlogin_sdk/request/u;->am:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(J)Loicq/wlogin_sdk/request/async_context;
    .locals 4

    .prologue
    .line 178
    sget-object v3, Loicq/wlogin_sdk/request/u;->ar:Ljava/lang/Object;

    monitor-enter v3

    .line 180
    :try_start_0
    sget-object v0, Loicq/wlogin_sdk/request/u;->an:Ljava/util/TreeMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loicq/wlogin_sdk/request/async_context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    if-nez v0, :cond_0

    .line 183
    :try_start_1
    new-instance v2, Loicq/wlogin_sdk/request/async_context;

    invoke-direct {v2}, Loicq/wlogin_sdk/request/async_context;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    :try_start_2
    sget-object v0, Loicq/wlogin_sdk/request/u;->an:Ljava/util/TreeMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    :goto_0
    :try_start_3
    monitor-exit v3

    return-object v2

    .line 185
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 186
    :goto_1
    const-string v0, ""

    invoke-static {v1, v0}, Loicq/wlogin_sdk/tools/util;->printException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 185
    :catch_1
    move-exception v0

    move-object v1, v0

    goto :goto_1

    :cond_0
    move-object v2, v0

    goto :goto_0
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 206
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 207
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 209
    sget-object v1, Loicq/wlogin_sdk/request/u;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    sput-object v0, Loicq/wlogin_sdk/request/u;->v:Ljava/lang/String;

    .line 211
    new-instance v0, Loicq/wlogin_sdk/request/h;

    sget-object v1, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-direct {v0, v1}, Loicq/wlogin_sdk/request/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Loicq/wlogin_sdk/request/h;->start()V

    .line 213
    :cond_0
    return-void
.end method

.method public static c()V
    .locals 6

    .prologue
    .line 218
    sget-object v0, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->get_mac_addr(Landroid/content/Context;)[B

    move-result-object v0

    .line 219
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 220
    invoke-static {v0}, Loicq/wlogin_sdk/tools/MD5;->toMD5Byte([B)[B

    move-result-object v0

    .line 223
    :cond_0
    sget-object v1, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v1}, Loicq/wlogin_sdk/tools/util;->get_imei_id(Landroid/content/Context;)[B

    move-result-object v1

    .line 224
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 225
    invoke-static {v1}, Loicq/wlogin_sdk/tools/MD5;->toMD5Byte([B)[B

    move-result-object v1

    .line 228
    :cond_1
    sget-object v2, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v2}, Loicq/wlogin_sdk/tools/util;->get_IMEI(Landroid/content/Context;)[B

    move-result-object v2

    .line 229
    if-eqz v2, :cond_2

    array-length v3, v2

    if-lez v3, :cond_2

    .line 230
    invoke-static {v2}, Loicq/wlogin_sdk/tools/MD5;->toMD5Byte([B)[B

    move-result-object v2

    .line 233
    :cond_2
    sget-object v3, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v3}, Loicq/wlogin_sdk/tools/util;->get_last_flag(Landroid/content/Context;)I

    move-result v3

    if-eqz v3, :cond_5

    .line 234
    sget-object v3, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v3}, Loicq/wlogin_sdk/tools/util;->get_last_mac(Landroid/content/Context;)[B

    move-result-object v3

    .line 235
    sget-object v4, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v4}, Loicq/wlogin_sdk/tools/util;->get_last_imei(Landroid/content/Context;)[B

    move-result-object v4

    .line 236
    sget-object v5, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->get_last_guid(Landroid/content/Context;)[B

    move-result-object v5

    .line 238
    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_3

    .line 239
    sget v3, Loicq/wlogin_sdk/request/u;->X:I

    or-int/lit8 v3, v3, 0x1

    sput v3, Loicq/wlogin_sdk/request/u;->X:I

    .line 241
    :cond_3
    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_4

    .line 242
    sget v3, Loicq/wlogin_sdk/request/u;->X:I

    or-int/lit8 v3, v3, 0x2

    sput v3, Loicq/wlogin_sdk/request/u;->X:I

    .line 244
    :cond_4
    invoke-static {v2, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_5

    .line 245
    sget v3, Loicq/wlogin_sdk/request/u;->X:I

    or-int/lit8 v3, v3, 0x4

    sput v3, Loicq/wlogin_sdk/request/u;->X:I

    .line 249
    :cond_5
    sget-object v3, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Loicq/wlogin_sdk/tools/util;->save_cur_flag(Landroid/content/Context;I)V

    .line 250
    sget-object v3, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v3, v0}, Loicq/wlogin_sdk/tools/util;->save_cur_mac(Landroid/content/Context;[B)V

    .line 251
    sget-object v0, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->save_cur_imei(Landroid/content/Context;[B)V

    .line 252
    sget-object v0, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->save_cur_guid(Landroid/content/Context;[B)V

    .line 253
    return-void
.end method

.method public static c(J)V
    .locals 4

    .prologue
    .line 195
    sget-object v1, Loicq/wlogin_sdk/request/u;->ar:Ljava/lang/Object;

    monitor-enter v1

    .line 197
    :try_start_0
    sget-object v0, Loicq/wlogin_sdk/request/u;->an:Ljava/util/TreeMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 202
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    const-string v2, ""

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->printException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static d()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 256
    const-string v0, "init start"

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    sget-object v0, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->get_saved_network_type(Landroid/content/Context;)I

    move-result v4

    .line 259
    sput v3, Loicq/wlogin_sdk/request/u;->Y:I

    .line 261
    sget-object v0, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->get_file_imei(Landroid/content/Context;)[B

    move-result-object v1

    .line 263
    sget-object v0, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->get_IMEI(Landroid/content/Context;)[B

    move-result-object v0

    .line 265
    if-eqz v1, :cond_0

    array-length v5, v1

    if-gtz v5, :cond_c

    .line 266
    :cond_0
    if-eqz v0, :cond_1

    array-length v1, v0

    if-gtz v1, :cond_b

    .line 267
    :cond_1
    new-instance v0, Ljava/lang/String;

    const-string v1, "%4;7t>;28<fc.5*6"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 268
    sput v3, Loicq/wlogin_sdk/request/u;->U:I

    .line 269
    const/16 v1, 0x14

    sput v1, Loicq/wlogin_sdk/request/u;->W:I

    .line 276
    :goto_0
    sget-object v1, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v1, v0}, Loicq/wlogin_sdk/tools/util;->save_file_imei(Landroid/content/Context;[B)V

    .line 278
    sput v3, Loicq/wlogin_sdk/request/u;->V:I

    .line 279
    sput v2, Loicq/wlogin_sdk/request/u;->T:I

    move-object v1, v0

    .line 299
    :goto_1
    invoke-static {}, Loicq/wlogin_sdk/request/u;->c()V

    .line 300
    sget v0, Loicq/wlogin_sdk/request/u;->Y:I

    sget v5, Loicq/wlogin_sdk/request/u;->W:I

    shl-int/lit8 v5, v5, 0x18

    const/high16 v6, -0x1000000

    and-int/2addr v5, v6

    or-int/2addr v0, v5

    sput v0, Loicq/wlogin_sdk/request/u;->Y:I

    .line 301
    sget v0, Loicq/wlogin_sdk/request/u;->Y:I

    sget v5, Loicq/wlogin_sdk/request/u;->X:I

    shl-int/lit8 v5, v5, 0x8

    const v6, 0xff00

    and-int/2addr v5, v6

    or-int/2addr v0, v5

    sput v0, Loicq/wlogin_sdk/request/u;->Y:I

    .line 303
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sput-object v0, Loicq/wlogin_sdk/request/u;->A:[B

    .line 304
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sput-object v0, Loicq/wlogin_sdk/request/u;->B:[B

    .line 307
    sget-object v0, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->get_imei_id(Landroid/content/Context;)[B

    move-result-object v0

    sput-object v0, Loicq/wlogin_sdk/request/u;->M:[B

    .line 308
    sget-object v0, Loicq/wlogin_sdk/request/u;->M:[B

    if-eqz v0, :cond_2

    sget-object v0, Loicq/wlogin_sdk/request/u;->M:[B

    array-length v0, v0

    if-lez v0, :cond_2

    .line 309
    sget-object v0, Loicq/wlogin_sdk/request/u;->M:[B

    invoke-static {v0}, Loicq/wlogin_sdk/tools/MD5;->toMD5Byte([B)[B

    move-result-object v0

    sput-object v0, Loicq/wlogin_sdk/request/u;->M:[B

    .line 313
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Loicq/wlogin_sdk/request/u;->ae:I

    .line 315
    sget-object v0, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->get_mac_addr(Landroid/content/Context;)[B

    move-result-object v0

    sput-object v0, Loicq/wlogin_sdk/request/u;->N:[B

    .line 316
    sget-object v0, Loicq/wlogin_sdk/request/u;->N:[B

    if-eqz v0, :cond_3

    sget-object v0, Loicq/wlogin_sdk/request/u;->N:[B

    array-length v0, v0

    if-lez v0, :cond_3

    .line 317
    sget-object v0, Loicq/wlogin_sdk/request/u;->N:[B

    invoke-static {v0}, Loicq/wlogin_sdk/tools/MD5;->toMD5Byte([B)[B

    move-result-object v0

    sput-object v0, Loicq/wlogin_sdk/request/u;->N:[B

    .line 320
    :cond_3
    sget-object v0, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->get_bssid_addr(Landroid/content/Context;)[B

    move-result-object v0

    sput-object v0, Loicq/wlogin_sdk/request/u;->R:[B

    .line 321
    sget-object v0, Loicq/wlogin_sdk/request/u;->R:[B

    if-eqz v0, :cond_4

    sget-object v0, Loicq/wlogin_sdk/request/u;->R:[B

    array-length v0, v0

    if-lez v0, :cond_4

    .line 322
    sget-object v0, Loicq/wlogin_sdk/request/u;->R:[B

    invoke-static {v0}, Loicq/wlogin_sdk/tools/MD5;->toMD5Byte([B)[B

    move-result-object v0

    sput-object v0, Loicq/wlogin_sdk/request/u;->R:[B

    .line 325
    :cond_4
    sget-object v0, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->get_ssid_addr(Landroid/content/Context;)[B

    move-result-object v0

    sput-object v0, Loicq/wlogin_sdk/request/u;->S:[B

    .line 327
    sget-object v0, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->get_android_id(Landroid/content/Context;)[B

    move-result-object v0

    sput-object v0, Loicq/wlogin_sdk/request/u;->O:[B

    .line 328
    sget-object v0, Loicq/wlogin_sdk/request/u;->O:[B

    if-eqz v0, :cond_5

    sget-object v0, Loicq/wlogin_sdk/request/u;->O:[B

    array-length v0, v0

    if-lez v0, :cond_5

    .line 329
    sget-object v0, Loicq/wlogin_sdk/request/u;->O:[B

    invoke-static {v0}, Loicq/wlogin_sdk/tools/MD5;->toMD5Byte([B)[B

    move-result-object v0

    sput-object v0, Loicq/wlogin_sdk/request/u;->O:[B

    .line 332
    :cond_5
    sget-object v0, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->get_IMSI(Landroid/content/Context;)[B

    move-result-object v0

    sput-object v0, Loicq/wlogin_sdk/request/u;->L:[B

    .line 333
    sget-object v0, Loicq/wlogin_sdk/request/u;->L:[B

    if-eqz v0, :cond_6

    sget-object v0, Loicq/wlogin_sdk/request/u;->L:[B

    array-length v0, v0

    if-lez v0, :cond_6

    .line 334
    sget-object v0, Loicq/wlogin_sdk/request/u;->L:[B

    invoke-static {v0}, Loicq/wlogin_sdk/tools/MD5;->toMD5Byte([B)[B

    move-result-object v0

    sput-object v0, Loicq/wlogin_sdk/request/u;->L:[B

    .line 338
    :cond_6
    sget-object v0, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->get_sim_operator_name(Landroid/content/Context;)[B

    move-result-object v0

    sput-object v0, Loicq/wlogin_sdk/request/u;->C:[B

    .line 339
    sget-object v0, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->get_network_type(Landroid/content/Context;)I

    move-result v0

    sput v0, Loicq/wlogin_sdk/request/u;->D:I

    .line 340
    sget v0, Loicq/wlogin_sdk/request/u;->D:I

    if-eq v4, v0, :cond_7

    .line 342
    sget-object v0, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v0, v3}, Loicq/wlogin_sdk/tools/util;->set_net_retry_type(Landroid/content/Context;I)V

    .line 343
    sget-object v0, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    sget v1, Loicq/wlogin_sdk/request/u;->D:I

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->save_network_type(Landroid/content/Context;I)V

    .line 345
    :cond_7
    sget-object v0, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->get_apn_string(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Loicq/wlogin_sdk/request/u;->F:[B

    .line 348
    sget-object v0, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->get_ksid(Landroid/content/Context;)[B

    move-result-object v0

    sput-object v0, Loicq/wlogin_sdk/request/u;->aa:[B

    .line 350
    sget-object v0, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->get_apk_id(Landroid/content/Context;)[B

    move-result-object v0

    sput-object v0, Loicq/wlogin_sdk/request/u;->E:[B

    .line 351
    sget-object v0, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    new-instance v1, Ljava/lang/String;

    sget-object v4, Loicq/wlogin_sdk/request/u;->E:[B

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->get_apk_v(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Loicq/wlogin_sdk/request/u;->G:[B

    .line 352
    sget-object v0, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    sget-object v1, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->getPkgSigFromApkName(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Loicq/wlogin_sdk/request/u;->H:[B

    .line 353
    sget-object v0, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->getAppName(Landroid/content/Context;)[B

    move-result-object v0

    sput-object v0, Loicq/wlogin_sdk/request/u;->Q:[B

    .line 355
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 356
    if-nez v0, :cond_8

    .line 357
    const-string v0, ""

    .line 358
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Loicq/wlogin_sdk/request/u;->J:[B

    .line 360
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 361
    if-nez v0, :cond_10

    .line 362
    new-array v0, v3, [B

    sput-object v0, Loicq/wlogin_sdk/request/u;->I:[B

    .line 365
    :goto_2
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 366
    if-nez v0, :cond_11

    .line 367
    new-array v0, v3, [B

    sput-object v0, Loicq/wlogin_sdk/request/u;->P:[B

    .line 371
    :goto_3
    const-string v0, "/system/bin/su"

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "/system/xbin/su"

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "/sbin/su"

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_9
    move v0, v2

    .line 372
    :goto_4
    if-ne v0, v2, :cond_13

    move v0, v2

    :goto_5
    sput v0, Loicq/wlogin_sdk/request/u;->Z:I

    .line 374
    new-instance v0, Loicq/wlogin_sdk/request/d;

    sget-object v1, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-direct {v0, v1}, Loicq/wlogin_sdk/request/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Loicq/wlogin_sdk/request/u;->aj:Loicq/wlogin_sdk/request/d;

    .line 377
    sget-object v0, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v0}, Loicq/wlogin_sdk/report/report_t;->read_fromfile(Landroid/content/Context;)Loicq/wlogin_sdk/report/report_t1;

    move-result-object v0

    sput-object v0, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    .line 378
    sget-object v0, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    if-nez v0, :cond_a

    .line 379
    new-instance v0, Loicq/wlogin_sdk/report/report_t1;

    invoke-direct {v0}, Loicq/wlogin_sdk/report/report_t1;-><init>()V

    sput-object v0, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    .line 382
    :cond_a
    const-string v0, "init done"

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    return-void

    .line 271
    :cond_b
    sput v2, Loicq/wlogin_sdk/request/u;->U:I

    .line 272
    const/16 v1, 0x11

    sput v1, Loicq/wlogin_sdk/request/u;->W:I

    goto/16 :goto_0

    .line 281
    :cond_c
    if-eqz v0, :cond_d

    array-length v5, v0

    if-gtz v5, :cond_e

    .line 282
    :cond_d
    new-instance v0, Ljava/lang/String;

    const-string v5, "%4;7t>;28<fc.5*6"

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 285
    :cond_e
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 286
    sput v3, Loicq/wlogin_sdk/request/u;->V:I

    .line 293
    :goto_6
    sput v2, Loicq/wlogin_sdk/request/u;->U:I

    .line 294
    sput v3, Loicq/wlogin_sdk/request/u;->T:I

    .line 295
    sput v2, Loicq/wlogin_sdk/request/u;->W:I

    goto/16 :goto_1

    .line 288
    :cond_f
    sput v2, Loicq/wlogin_sdk/request/u;->V:I

    goto :goto_6

    .line 364
    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Loicq/wlogin_sdk/request/u;->I:[B

    goto :goto_2

    .line 369
    :cond_11
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Loicq/wlogin_sdk/request/u;->P:[B

    goto :goto_3

    :cond_12
    move v0, v3

    .line 371
    goto :goto_4

    :cond_13
    move v0, v3

    .line 372
    goto :goto_5
.end method

.method public static f()J
    .locals 4

    .prologue
    .line 392
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static g()J
    .locals 4

    .prologue
    .line 397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sget-wide v2, Loicq/wlogin_sdk/request/u;->ac:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static l()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 555
    sget-object v0, Loicq/wlogin_sdk/request/u;->ak:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Loicq/wlogin_sdk/request/u;->ak:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 556
    sget-object v0, Loicq/wlogin_sdk/request/u;->ak:Ljava/lang/String;

    .line 571
    :goto_0
    return-object v0

    .line 559
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 560
    sget-object v0, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 561
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 562
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_1

    .line 563
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    sput-object v0, Loicq/wlogin_sdk/request/u;->ak:Ljava/lang/String;

    .line 564
    sget-object v0, Loicq/wlogin_sdk/request/u;->ak:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 567
    :catch_0
    move-exception v0

    .line 568
    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->printThrowable(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 571
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method private static m()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 131
    :try_start_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-object v0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(JJJJ[B[B)I
    .locals 13

    .prologue
    .line 454
    monitor-enter p0

    :try_start_0
    sget-object v1, Loicq/wlogin_sdk/request/u;->aj:Loicq/wlogin_sdk/request/d;

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Loicq/wlogin_sdk/request/d;->a(JJJJ[B[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(JJ[B)I
    .locals 7

    .prologue
    .line 520
    monitor-enter p0

    :try_start_0
    sget-object v1, Loicq/wlogin_sdk/request/u;->aj:Loicq/wlogin_sdk/request/d;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Loicq/wlogin_sdk/request/d;->a(JJ[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(JJ[[BJJJJJ[B[B[B[B[[B[B[B[B[B[B[B[B[B[B[B[B[B[[B[JI)I
    .locals 38

    .prologue
    .line 511
    monitor-enter p0

    :try_start_0
    sget-object v2, Loicq/wlogin_sdk/request/u;->aj:Loicq/wlogin_sdk/request/d;

    move-object/from16 v0, p0

    iget v3, v0, Loicq/wlogin_sdk/request/u;->ao:I

    iput v3, v2, Loicq/wlogin_sdk/request/d;->e:I

    .line 512
    sget-object v2, Loicq/wlogin_sdk/request/u;->aj:Loicq/wlogin_sdk/request/d;

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    move-wide/from16 v16, p14

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move-object/from16 v20, p18

    move-object/from16 v21, p19

    move-object/from16 v22, p20

    move-object/from16 v23, p21

    move-object/from16 v24, p22

    move-object/from16 v25, p23

    move-object/from16 v26, p24

    move-object/from16 v27, p25

    move-object/from16 v28, p26

    move-object/from16 v29, p27

    move-object/from16 v30, p28

    move-object/from16 v31, p29

    move-object/from16 v32, p30

    move-object/from16 v33, p31

    move-object/from16 v34, p32

    move-object/from16 v35, p33

    move-object/from16 v36, p34

    move/from16 v37, p35

    invoke-virtual/range {v2 .. v37}, Loicq/wlogin_sdk/request/d;->a(JJ[[BJJJJJ[B[B[B[B[[B[B[B[B[B[B[B[B[B[B[B[B[B[[B[JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 515
    monitor-exit p0

    return v2

    .line 511
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public a(J)Loicq/wlogin_sdk/request/u;
    .locals 5

    .prologue
    .line 144
    new-instance v1, Loicq/wlogin_sdk/request/u;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Loicq/wlogin_sdk/request/u;-><init>(Landroid/content/Context;)V

    .line 145
    iget v0, p0, Loicq/wlogin_sdk/request/u;->k:I

    iput v0, v1, Loicq/wlogin_sdk/request/u;->k:I

    .line 146
    iget v0, p0, Loicq/wlogin_sdk/request/u;->l:I

    iput v0, v1, Loicq/wlogin_sdk/request/u;->l:I

    .line 147
    iget-object v0, p0, Loicq/wlogin_sdk/request/u;->c:[B

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Loicq/wlogin_sdk/request/u;->c:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, v1, Loicq/wlogin_sdk/request/u;->c:[B

    .line 150
    :cond_0
    iget-object v0, p0, Loicq/wlogin_sdk/request/u;->n:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Loicq/wlogin_sdk/request/u;->p:[B

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Loicq/wlogin_sdk/request/u;->n:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, v1, Loicq/wlogin_sdk/request/u;->n:[B

    .line 152
    iget-object v0, p0, Loicq/wlogin_sdk/request/u;->p:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, v1, Loicq/wlogin_sdk/request/u;->p:[B

    .line 155
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_2

    .line 157
    invoke-static {}, Loicq/wlogin_sdk/request/u;->a()J

    move-result-wide v2

    iput-wide v2, v1, Loicq/wlogin_sdk/request/u;->h:J

    .line 164
    :goto_0
    return-object v1

    .line 161
    :cond_2
    iput-wide p1, v1, Loicq/wlogin_sdk/request/u;->h:J

    goto :goto_0
.end method

.method public declared-synchronized a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;
    .locals 3

    .prologue
    .line 458
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get_siginfo appid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    sget-object v0, Loicq/wlogin_sdk/request/u;->aj:Loicq/wlogin_sdk/request/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Loicq/wlogin_sdk/request/d;->c(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 460
    if-eqz v0, :cond_0

    .line 462
    :cond_0
    monitor-exit p0

    return-object v0

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 416
    sput-object p1, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    .line 418
    sget-object v0, Loicq/wlogin_sdk/request/u;->a:Ljava/security/SecureRandom;

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->get_rand_16byte(Ljava/security/SecureRandom;)[B

    move-result-object v0

    .line 419
    iget-object v1, p0, Loicq/wlogin_sdk/request/u;->c:[B

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 479
    monitor-enter p0

    :try_start_0
    sget-object v0, Loicq/wlogin_sdk/request/u;->aj:Loicq/wlogin_sdk/request/d;

    invoke-virtual {v0, p1}, Loicq/wlogin_sdk/request/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    monitor-exit p0

    return-void

    .line 479
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2

    .prologue
    .line 540
    monitor-enter p0

    :try_start_0
    sget-object v0, Loicq/wlogin_sdk/request/u;->aj:Loicq/wlogin_sdk/request/d;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Loicq/wlogin_sdk/request/d;->a(Ljava/lang/String;Ljava/lang/Long;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    monitor-exit p0

    return-void

    .line 540
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/Long;Z)V
    .locals 1

    .prologue
    .line 544
    monitor-enter p0

    :try_start_0
    sget-object v0, Loicq/wlogin_sdk/request/u;->aj:Loicq/wlogin_sdk/request/d;

    invoke-virtual {v0, p1, p2, p3}, Loicq/wlogin_sdk/request/d;->a(Ljava/lang/String;Ljava/lang/Long;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    monitor-exit p0

    return-void

    .line 544
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a([B[B)V
    .locals 6

    .prologue
    .line 402
    const/4 v0, 0x0

    invoke-static {p1, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    sput-wide v0, Loicq/wlogin_sdk/request/u;->ab:J

    .line 403
    sget-wide v0, Loicq/wlogin_sdk/request/u;->ab:J

    sput-wide v0, Loicq/wlogin_sdk/request/u;->ac:J

    .line 404
    sput-object p2, Loicq/wlogin_sdk/request/u;->ad:[B

    .line 405
    return-void
.end method

.method public declared-synchronized b(JJ)I
    .locals 1

    .prologue
    .line 525
    monitor-enter p0

    :try_start_0
    sget-object v0, Loicq/wlogin_sdk/request/u;->aj:Loicq/wlogin_sdk/request/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Loicq/wlogin_sdk/request/d;->a(JJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 484
    monitor-enter p0

    :try_start_0
    sget-object v2, Loicq/wlogin_sdk/request/u;->aj:Loicq/wlogin_sdk/request/d;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Loicq/wlogin_sdk/request/d;->a(Ljava/lang/String;Z)Loicq/wlogin_sdk/request/UinInfo;

    move-result-object v2

    .line 485
    if-eqz v2, :cond_0

    iget-object v3, v2, Loicq/wlogin_sdk/request/UinInfo;->_uin:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-eqz v3, :cond_0

    .line 486
    iget-object v0, v2, Loicq/wlogin_sdk/request/UinInfo;->_uin:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 488
    :cond_0
    monitor-exit p0

    return-wide v0

    .line 484
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/lang/String;)Loicq/wlogin_sdk/request/UinInfo;
    .locals 2

    .prologue
    .line 492
    monitor-enter p0

    :try_start_0
    sget-object v0, Loicq/wlogin_sdk/request/u;->aj:Loicq/wlogin_sdk/request/d;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Loicq/wlogin_sdk/request/d;->a(Ljava/lang/String;Z)Loicq/wlogin_sdk/request/UinInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(JJ)V
    .locals 1

    .prologue
    .line 530
    sget-object v0, Loicq/wlogin_sdk/request/u;->aj:Loicq/wlogin_sdk/request/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Loicq/wlogin_sdk/request/d;->b(JJ)V

    .line 531
    return-void
.end method

.method public declared-synchronized d(J)Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;
    .locals 1

    .prologue
    .line 472
    monitor-enter p0

    :try_start_0
    sget-object v0, Loicq/wlogin_sdk/request/u;->aj:Loicq/wlogin_sdk/request/d;

    invoke-virtual {v0, p1, p2}, Loicq/wlogin_sdk/request/d;->b(J)Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 473
    if-eqz v0, :cond_0

    .line 475
    :cond_0
    monitor-exit p0

    return-object v0

    .line 472
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(JJ)V
    .locals 3

    .prologue
    .line 535
    monitor-enter p0

    :try_start_0
    sget-object v0, Loicq/wlogin_sdk/request/u;->aj:Loicq/wlogin_sdk/request/d;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Loicq/wlogin_sdk/request/d;->a(Ljava/lang/Long;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    monitor-exit p0

    return-void

    .line 535
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 549
    monitor-enter p0

    :try_start_0
    sget-object v0, Loicq/wlogin_sdk/request/u;->aj:Loicq/wlogin_sdk/request/d;

    invoke-virtual {v0, p1}, Loicq/wlogin_sdk/request/d;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    monitor-exit p0

    return-void

    .line 549
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 496
    monitor-enter p0

    :try_start_0
    sget-object v0, Loicq/wlogin_sdk/request/u;->aj:Loicq/wlogin_sdk/request/d;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/d;->b(Ljava/lang/Long;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Loicq/wlogin_sdk/request/u;->k:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 424
    const-string v0, "close_connect"

    const-string v1, "close_connect"

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Loicq/wlogin_sdk/request/u;->ah:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 427
    :try_start_0
    const-string v0, "close_connect"

    iget-object v1, p0, Loicq/wlogin_sdk/request/u;->ah:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Loicq/wlogin_sdk/request/u;->ah:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Loicq/wlogin_sdk/request/u;->ah:Ljava/net/Socket;

    .line 434
    :cond_0
    return-void

    .line 429
    :catch_0
    move-exception v0

    .line 430
    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->printException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public i()V
    .locals 2

    .prologue
    .line 438
    const-string v0, "close_transport_connect"

    const-string v1, "close_transport_connect"

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Loicq/wlogin_sdk/request/u;->ai:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 441
    :try_start_0
    const-string v0, "close_transport_connect"

    iget-object v1, p0, Loicq/wlogin_sdk/request/u;->ai:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Loicq/wlogin_sdk/request/u;->ai:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Loicq/wlogin_sdk/request/u;->ai:Ljava/net/Socket;

    .line 448
    :cond_0
    return-void

    .line 443
    :catch_0
    move-exception v0

    .line 444
    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->printException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized j()V
    .locals 1

    .prologue
    .line 467
    monitor-enter p0

    :try_start_0
    sget-object v0, Loicq/wlogin_sdk/request/u;->aj:Loicq/wlogin_sdk/request/d;

    invoke-virtual {v0}, Loicq/wlogin_sdk/request/d;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    monitor-exit p0

    return-void

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized k()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Loicq/wlogin_sdk/sharemem/WloginLoginInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 501
    monitor-enter p0

    :try_start_0
    sget-object v0, Loicq/wlogin_sdk/request/u;->aj:Loicq/wlogin_sdk/request/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/d;->a(Z)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
