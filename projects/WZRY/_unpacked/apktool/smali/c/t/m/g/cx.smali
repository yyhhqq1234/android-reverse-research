.class public final Lc/t/m/g/cx;
.super Ljava/lang/Object;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/t/m/g/cx$a;
    }
.end annotation


# static fields
.field private static a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:Lcom/tencent/map/geolocation/TencentLocation;

.field private E:Lcom/tencent/map/geolocation/TencentDistanceListener;

.field private F:Z

.field private final G:Ljava/lang/Object;

.field private final H:Lcom/tencent/map/geolocation/TencentLocationRequest;

.field private I:Lc/t/m/g/dv;

.field private J:D

.field private K:D

.field private L:Lc/t/m/g/dv;

.field private M:I

.field private final N:Z

.field private O:Z

.field private P:J

.field private Q:J

.field private R:J

.field private S:Ljava/lang/String;

.field private T:Z

.field private b:I

.field private c:Lc/t/m/g/cx$a;

.field private final d:Lc/t/m/g/f;

.field private final e:Lc/t/m/g/da;

.field private final f:Z

.field private final g:Lc/t/m/g/cw;

.field private final h:Lc/t/m/g/df;

.field private final i:Lc/t/m/g/cu;

.field private final j:Lc/t/m/g/cy;

.field private final k:Lc/t/m/g/cz;

.field private final l:Lc/t/m/g/dd;

.field private final m:Lc/t/m/g/ch;

.field private n:Landroid/os/HandlerThread;

.field private o:I

.field private p:Lc/t/m/g/de;

.field private final q:Lc/t/m/g/cl;

.field private r:Lc/t/m/g/dj;

.field private s:Lc/t/m/g/dn;

.field private t:Lc/t/m/g/dk;

.field private u:Lc/t/m/g/dl;

.field private final v:Lc/t/m/g/cj;

.field private w:Lcom/tencent/map/geolocation/TencentLocationListener;

.field private x:Ljava/lang/String;

.field private y:Z

.field private z:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 141
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 144
    sput-object v0, Lc/t/m/g/cx;->a:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "OK"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 145
    sget-object v0, Lc/t/m/g/cx;->a:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "ERROR_NETWORK"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 146
    sget-object v0, Lc/t/m/g/cx;->a:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "BAD_JSON"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    sget-object v0, Lc/t/m/g/cx;->a:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "DEFLECT_FAILED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 148
    sget-object v0, Lc/t/m/g/cx;->a:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "VERIFYKEY_ERROR_NETWORK"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Lc/t/m/g/cj;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput v1, p0, Lc/t/m/g/cx;->b:I

    .line 166
    iput v2, p0, Lc/t/m/g/cx;->o:I

    .line 179
    const-string v0, "stop"

    iput-object v0, p0, Lc/t/m/g/cx;->x:Ljava/lang/String;

    .line 180
    iput-boolean v2, p0, Lc/t/m/g/cx;->y:Z

    .line 181
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lc/t/m/g/cx;->z:D

    .line 182
    iput v2, p0, Lc/t/m/g/cx;->A:I

    .line 183
    iput v2, p0, Lc/t/m/g/cx;->B:I

    .line 184
    iput v2, p0, Lc/t/m/g/cx;->C:I

    .line 187
    iput-boolean v2, p0, Lc/t/m/g/cx;->F:Z

    .line 188
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc/t/m/g/cx;->G:Ljava/lang/Object;

    .line 190
    invoke-static {}, Lcom/tencent/map/geolocation/TencentLocationRequest;->create()Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v0

    iput-object v0, p0, Lc/t/m/g/cx;->H:Lcom/tencent/map/geolocation/TencentLocationRequest;

    .line 205
    const/16 v0, 0x194

    iput v0, p0, Lc/t/m/g/cx;->M:I

    .line 219
    iput-object p1, p0, Lc/t/m/g/cx;->v:Lc/t/m/g/cj;

    .line 221
    invoke-virtual {p1}, Lc/t/m/g/cj;->i()Lc/t/m/g/ck;

    .line 222
    invoke-static {}, Lc/t/m/g/cm;->b()Lc/t/m/g/cl;

    move-result-object v0

    iput-object v0, p0, Lc/t/m/g/cx;->q:Lc/t/m/g/cl;

    .line 227
    new-instance v0, Lc/t/m/g/cz;

    iget-object v4, p0, Lc/t/m/g/cx;->v:Lc/t/m/g/cj;

    invoke-direct {v0, v4}, Lc/t/m/g/cz;-><init>(Lc/t/m/g/cj;)V

    iput-object v0, p0, Lc/t/m/g/cx;->k:Lc/t/m/g/cz;

    .line 228
    new-instance v0, Lc/t/m/g/dd;

    iget-object v4, p0, Lc/t/m/g/cx;->v:Lc/t/m/g/cj;

    invoke-direct {v0, v4}, Lc/t/m/g/dd;-><init>(Lc/t/m/g/cj;)V

    iput-object v0, p0, Lc/t/m/g/cx;->l:Lc/t/m/g/dd;

    .line 229
    new-instance v0, Lc/t/m/g/de;

    invoke-direct {v0}, Lc/t/m/g/de;-><init>()V

    iput-object v0, p0, Lc/t/m/g/cx;->p:Lc/t/m/g/de;

    .line 231
    iget-object v0, p1, Lc/t/m/g/cj;->a:Landroid/content/Context;

    invoke-static {v0}, Lc/t/m/g/cu;->a(Landroid/content/Context;)Lc/t/m/g/cu;

    move-result-object v0

    iput-object v0, p0, Lc/t/m/g/cx;->i:Lc/t/m/g/cu;

    .line 232
    invoke-static {}, Lc/t/m/g/cy;->b()Lc/t/m/g/cy;

    move-result-object v0

    iput-object v0, p0, Lc/t/m/g/cx;->j:Lc/t/m/g/cy;

    .line 233
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v0, v4, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lc/t/m/g/cx;->f:Z

    .line 234
    iget-boolean v0, p0, Lc/t/m/g/cx;->f:Z

    if-eqz v0, :cond_1

    .line 235
    iput-object v3, p0, Lc/t/m/g/cx;->d:Lc/t/m/g/f;

    .line 237
    invoke-direct {p0}, Lc/t/m/g/cx;->m()Lc/t/m/g/df;

    move-result-object v0

    iput-object v0, p0, Lc/t/m/g/cx;->h:Lc/t/m/g/df;

    .line 238
    iget-object v0, p0, Lc/t/m/g/cx;->v:Lc/t/m/g/cj;

    invoke-virtual {v0}, Lc/t/m/g/cj;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TxLocationManagerImpl"

    const-string v4, "createNewCellProvider: failed"

    invoke-static {v0, v4}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    :goto_1
    iput-object v0, p0, Lc/t/m/g/cx;->e:Lc/t/m/g/da;

    new-array v1, v1, [Ljava/lang/Object;

    .line 239
    invoke-direct {p0}, Lc/t/m/g/cx;->l()Lc/t/m/g/cw;

    move-result-object v3

    iput-object v3, p0, Lc/t/m/g/cx;->g:Lc/t/m/g/cw;

    aput-object v3, v1, v2

    .line 236
    invoke-static {v0, v1}, Lc/t/m/g/f$a;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lc/t/m/g/cx;->N:Z

    .line 248
    :goto_2
    new-instance v0, Lc/t/m/g/ch;

    iget-object v1, p0, Lc/t/m/g/cx;->v:Lc/t/m/g/cj;

    invoke-direct {v0, v1}, Lc/t/m/g/ch;-><init>(Lc/t/m/g/cj;)V

    iput-object v0, p0, Lc/t/m/g/cx;->m:Lc/t/m/g/ch;

    .line 250
    iget-object v0, p0, Lc/t/m/g/cx;->v:Lc/t/m/g/cj;

    invoke-virtual {v0, p0}, Lc/t/m/g/cj;->a(Ljava/lang/Object;)V

    .line 251
    return-void

    .line 238
    :cond_0
    new-instance v0, Lc/t/m/g/da;

    iget-object v3, p0, Lc/t/m/g/cx;->v:Lc/t/m/g/cj;

    invoke-direct {v0, v3}, Lc/t/m/g/da;-><init>(Lc/t/m/g/cj;)V

    goto :goto_1

    .line 241
    :cond_1
    iput-object v3, p0, Lc/t/m/g/cx;->e:Lc/t/m/g/da;

    .line 243
    invoke-direct {p0}, Lc/t/m/g/cx;->m()Lc/t/m/g/df;

    move-result-object v0

    iput-object v0, p0, Lc/t/m/g/cx;->h:Lc/t/m/g/df;

    .line 244
    iget-object v0, p0, Lc/t/m/g/cx;->v:Lc/t/m/g/cj;

    invoke-virtual {v0}, Lc/t/m/g/cj;->f()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "TxLocationManagerImpl"

    const-string v4, "createCellProvider: failed"

    invoke-static {v0, v4}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iput-object v3, p0, Lc/t/m/g/cx;->d:Lc/t/m/g/f;

    new-array v0, v1, [Ljava/lang/Object;

    .line 245
    invoke-direct {p0}, Lc/t/m/g/cx;->l()Lc/t/m/g/cw;

    move-result-object v1

    iput-object v1, p0, Lc/t/m/g/cx;->g:Lc/t/m/g/cw;

    aput-object v1, v0, v2

    .line 242
    invoke-static {v3, v0}, Lc/t/m/g/f$a;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lc/t/m/g/cx;->N:Z

    goto :goto_2

    .line 244
    :cond_2
    new-instance v3, Lc/t/m/g/f;

    iget-object v0, p0, Lc/t/m/g/cx;->v:Lc/t/m/g/cj;

    invoke-direct {v3, v0}, Lc/t/m/g/f;-><init>(Lc/t/m/g/cj;)V

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method static synthetic A(Lc/t/m/g/cx;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lc/t/m/g/cx;->T:Z

    return v0
.end method

.method static synthetic B(Lc/t/m/g/cx;)Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/t/m/g/cx;->O:Z

    return v0
.end method

.method static synthetic C(Lc/t/m/g/cx;)Lc/t/m/g/dn;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lc/t/m/g/cx;->s:Lc/t/m/g/dn;

    return-object v0
.end method

.method static synthetic a(Lc/t/m/g/cx;J)J
    .locals 1

    .prologue
    .line 66
    iput-wide p1, p0, Lc/t/m/g/cx;->Q:J

    return-wide p1
.end method

.method static synthetic a(Lc/t/m/g/cx;Lc/t/m/g/dl;)Lc/t/m/g/dl;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lc/t/m/g/cx;->u:Lc/t/m/g/dl;

    return-object p1
.end method

.method static synthetic a(Lc/t/m/g/cx;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lc/t/m/g/cx;->G:Ljava/lang/Object;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 299
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 301
    if-eqz v2, :cond_2

    .line 302
    :try_start_0
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 303
    if-eqz v2, :cond_0

    array-length v3, v2

    if-le v3, v0, :cond_0

    const/4 v3, 0x0

    aget-object v3, v2, v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    aget-object v3, v2, v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    .line 305
    invoke-static {v3, v4}, Lcom/tencent/tencentmap/lbssdk/service/e;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    .line 306
    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    aget-object v0, v2, v0

    .line 312
    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 305
    goto :goto_0

    .line 306
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 308
    :cond_2
    invoke-static {p0}, Lcom/tencent/tencentmap/lbssdk/service/e;->v(Ljava/lang/String;)I

    move-result v0

    .line 309
    if-ltz v0, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 312
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(II)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 1130
    .line 1133
    packed-switch p1, :pswitch_data_0

    move-object v0, v2

    move-object v3, v2

    .line 1198
    :goto_0
    const-string v1, "TxLocationManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "onStatusChanged: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    iget-object v1, p0, Lc/t/m/g/cx;->G:Ljava/lang/Object;

    monitor-enter v1

    .line 1201
    :try_start_0
    iget-object v2, p0, Lc/t/m/g/cx;->w:Lcom/tencent/map/geolocation/TencentLocationListener;

    if-eqz v2, :cond_0

    .line 1202
    iget-object v2, p0, Lc/t/m/g/cx;->w:Lcom/tencent/map/geolocation/TencentLocationListener;

    invoke-interface {v2, v3, p2, v0}, Lcom/tencent/map/geolocation/TencentLocationListener;->onStatusUpdate(Ljava/lang/String;ILjava/lang/String;)V

    .line 1204
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1135
    :pswitch_0
    const-string v2, "gps"

    .line 1136
    packed-switch p2, :pswitch_data_1

    .line 1144
    const-string/jumbo v0, "unknown"

    move-object v3, v2

    .line 1145
    goto :goto_0

    .line 1138
    :pswitch_1
    const-string v0, "gps enabled"

    move-object v3, v2

    .line 1139
    goto :goto_0

    .line 1141
    :pswitch_2
    const-string v0, "gps disabled"

    move-object v3, v2

    .line 1142
    goto :goto_0

    .line 1149
    :pswitch_3
    const-string v2, "gps"

    .line 1150
    packed-switch p2, :pswitch_data_2

    .line 1158
    const-string/jumbo v0, "unknown"

    move-object v3, v2

    .line 1159
    goto :goto_0

    .line 1152
    :pswitch_4
    const-string v0, "gps available"

    move-object v3, v2

    .line 1153
    goto :goto_0

    .line 1155
    :pswitch_5
    const-string v0, "gps unavailable"

    move-object v3, v2

    .line 1156
    goto :goto_0

    .line 1164
    :pswitch_6
    const-string v2, "cell"

    .line 1165
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const-string v0, "cell enabled"

    .line 1167
    :goto_1
    sget-boolean v3, Lc/t/m/g/dw;->a:Z

    if-eqz v3, :cond_3

    .line 1169
    const-string v0, "location permission denied"

    move p2, v1

    move-object v3, v2

    goto :goto_0

    .line 1165
    :cond_1
    if-nez p2, :cond_2

    const-string v0, "cell disabled"

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "unknown"

    goto :goto_1

    .line 1174
    :pswitch_7
    const-string/jumbo v2, "wifi"

    .line 1175
    packed-switch p2, :pswitch_data_3

    .line 1186
    :pswitch_8
    const-string/jumbo v0, "unknown"

    .line 1189
    :goto_2
    const/4 v3, 0x5

    if-eq p2, v3, :cond_3

    sget-boolean v3, Lc/t/m/g/eb;->a:Z

    if-eqz v3, :cond_3

    .line 1191
    const-string v0, "location permission denied"

    move p2, v1

    move-object v3, v2

    goto :goto_0

    .line 1177
    :pswitch_9
    const-string/jumbo v0, "wifi disabled"

    goto :goto_2

    .line 1180
    :pswitch_a
    const-string/jumbo v0, "wifi enabled"

    goto :goto_2

    .line 1183
    :pswitch_b
    const-string v0, "location service switch is off"

    goto :goto_2

    .line 1204
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    move-object v3, v2

    goto/16 :goto_0

    .line 1133
    :pswitch_data_0
    .packed-switch 0x2ee1
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_3
    .end packed-switch

    .line 1136
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 1150
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1175
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method private a(IJ)V
    .locals 2

    .prologue
    .line 921
    iget-object v0, p0, Lc/t/m/g/cx;->c:Lc/t/m/g/cx$a;

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lc/t/m/g/cx;->c:Lc/t/m/g/cx$a;

    invoke-virtual {v0, p1}, Lc/t/m/g/cx$a;->removeMessages(I)V

    .line 923
    iget-object v0, p0, Lc/t/m/g/cx;->c:Lc/t/m/g/cx$a;

    invoke-virtual {v0, p1, p2, p3}, Lc/t/m/g/cx$a;->sendEmptyMessageDelayed(IJ)Z

    .line 925
    :cond_0
    return-void
.end method

.method private a(ILc/t/m/g/dv;)V
    .locals 11

    .prologue
    const-wide v6, 0x3e7ad7f29abcaf48L    # 1.0E-7

    const/16 v10, 0x2ede

    const/4 v9, 0x0

    const-wide/16 v4, 0x0

    const/4 v8, 0x1

    .line 722
    if-nez p2, :cond_1

    .line 818
    :cond_0
    :goto_0
    return-void

    .line 725
    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p2}, Lc/t/m/g/dv;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lc/t/m/g/dv;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_2

    .line 727
    iget v0, p0, Lc/t/m/g/cx;->b:I

    if-ne v0, v8, :cond_10

    invoke-virtual {p2}, Lc/t/m/g/dv;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p2}, Lc/t/m/g/dv;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lc/t/m/g/dx;->a(DD)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v8

    .line 729
    :goto_1
    invoke-static {p2, v0}, Lc/t/m/g/dv;->a(Lc/t/m/g/dv;I)Lc/t/m/g/dv;

    .line 732
    :cond_2
    invoke-direct {p0}, Lc/t/m/g/cx;->p()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 735
    iget v0, p0, Lc/t/m/g/cx;->M:I

    if-eqz v0, :cond_f

    if-nez p1, :cond_f

    move v0, v8

    .line 738
    :goto_2
    iput p1, p0, Lc/t/m/g/cx;->M:I

    .line 739
    iput-object p2, p0, Lc/t/m/g/cx;->I:Lc/t/m/g/dv;

    .line 740
    invoke-virtual {p2}, Lc/t/m/g/dv;->getAccuracy()F

    move-result v1

    const/high16 v2, 0x43fa0000    # 500.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    invoke-virtual {p2}, Lc/t/m/g/dv;->getAccuracy()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 741
    iget-object v1, p0, Lc/t/m/g/cx;->p:Lc/t/m/g/de;

    invoke-virtual {v1, p2}, Lc/t/m/g/de;->a(Lcom/tencent/map/geolocation/TencentLocation;)V

    .line 742
    iget-boolean v1, p0, Lc/t/m/g/cx;->y:Z

    if-eqz v1, :cond_3

    .line 743
    iput-object p2, p0, Lc/t/m/g/cx;->D:Lcom/tencent/map/geolocation/TencentLocation;

    .line 745
    :cond_3
    invoke-virtual {p2}, Lc/t/m/g/dv;->getLatitude()D

    move-result-wide v2

    iput-wide v2, p0, Lc/t/m/g/cx;->J:D

    .line 746
    invoke-virtual {p2}, Lc/t/m/g/dv;->getLongitude()D

    move-result-wide v2

    iput-wide v2, p0, Lc/t/m/g/cx;->K:D

    .line 747
    iget-object v1, p0, Lc/t/m/g/cx;->w:Lcom/tencent/map/geolocation/TencentLocationListener;

    invoke-static {v1}, Lc/t/m/g/f$a;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 748
    iget-object v1, p0, Lc/t/m/g/cx;->H:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    iget-object v1, p0, Lc/t/m/g/cx;->H:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "daemon"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x2edf

    iget-object v2, p0, Lc/t/m/g/cx;->H:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v2}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lc/t/m/g/cx;->a(IJ)V

    iget-object v1, p0, Lc/t/m/g/cx;->H:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getCheckInterval()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    const/16 v1, 0xf9e

    iget-object v2, p0, Lc/t/m/g/cx;->H:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v2}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getCheckInterval()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lc/t/m/g/cx;->a(IJ)V

    .line 750
    :cond_4
    if-eqz v0, :cond_5

    .line 751
    invoke-direct {p0, v10}, Lc/t/m/g/cx;->b(I)V

    .line 802
    :cond_5
    :goto_3
    iget v0, p0, Lc/t/m/g/cx;->M:I

    if-eqz v0, :cond_6

    if-nez p1, :cond_6

    move v9, v8

    .line 805
    :cond_6
    iget v0, p0, Lc/t/m/g/cx;->M:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lc/t/m/g/cx;->I:Lc/t/m/g/dv;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lc/t/m/g/cx;->I:Lc/t/m/g/dv;

    invoke-virtual {v0}, Lc/t/m/g/dv;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez p1, :cond_7

    if-eqz p2, :cond_7

    .line 806
    invoke-virtual {p2}, Lc/t/m/g/dv;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v9, v8

    .line 809
    :cond_7
    iput p1, p0, Lc/t/m/g/cx;->M:I

    .line 810
    iput-object p2, p0, Lc/t/m/g/cx;->I:Lc/t/m/g/dv;

    .line 811
    const-string v0, "TxLocationManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateLast"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lc/t/m/g/dv;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lc/t/m/g/dv;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    iget-object v0, p0, Lc/t/m/g/cx;->H:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    iget-object v0, p0, Lc/t/m/g/cx;->w:Lcom/tencent/map/geolocation/TencentLocationListener;

    invoke-static {v0}, Lc/t/m/g/f$a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 813
    invoke-direct {p0, v10}, Lc/t/m/g/cx;->b(I)V

    .line 815
    :cond_8
    if-eqz v9, :cond_0

    iget-object v0, p0, Lc/t/m/g/cx;->w:Lcom/tencent/map/geolocation/TencentLocationListener;

    invoke-static {v0}, Lc/t/m/g/f$a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    invoke-direct {p0, v10}, Lc/t/m/g/cx;->b(I)V

    goto/16 :goto_0

    .line 753
    :cond_9
    if-nez p1, :cond_5

    invoke-virtual {p2}, Lc/t/m/g/dv;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lc/t/m/g/dv;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_5

    .line 754
    invoke-virtual {p2}, Lc/t/m/g/dv;->getLatitude()D

    move-result-wide v0

    iget-wide v2, p0, Lc/t/m/g/cx;->J:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v0, v0, v6

    if-ltz v0, :cond_5

    invoke-virtual {p2}, Lc/t/m/g/dv;->getLongitude()D

    move-result-wide v0

    iget-wide v2, p0, Lc/t/m/g/cx;->K:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v0, v0, v6

    if-ltz v0, :cond_5

    .line 757
    iget-object v0, p0, Lc/t/m/g/cx;->p:Lc/t/m/g/de;

    iget-object v1, p0, Lc/t/m/g/cx;->v:Lc/t/m/g/cj;

    invoke-virtual {v0, p2, v1}, Lc/t/m/g/de;->a(Lcom/tencent/map/geolocation/TencentLocation;Lc/t/m/g/cj;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 758
    const-string v0, "TxLocationManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "discard "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 776
    :cond_a
    invoke-virtual {p2}, Lc/t/m/g/dv;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lc/t/m/g/cx;->J:D

    .line 777
    invoke-virtual {p2}, Lc/t/m/g/dv;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lc/t/m/g/cx;->K:D

    .line 779
    invoke-virtual {p2}, Lc/t/m/g/dv;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x43fa0000    # 500.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    invoke-virtual {p2}, Lc/t/m/g/dv;->getAccuracy()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 780
    iget-object v0, p0, Lc/t/m/g/cx;->p:Lc/t/m/g/de;

    invoke-virtual {v0}, Lc/t/m/g/de;->b()V

    .line 781
    iget-object v0, p0, Lc/t/m/g/cx;->p:Lc/t/m/g/de;

    invoke-virtual {v0, p2}, Lc/t/m/g/de;->a(Lcom/tencent/map/geolocation/TencentLocation;)V

    .line 782
    iget-boolean v0, p0, Lc/t/m/g/cx;->y:Z

    if-eqz v0, :cond_5

    .line 783
    iget-object v0, p0, Lc/t/m/g/cx;->D:Lcom/tencent/map/geolocation/TencentLocation;

    if-eqz v0, :cond_e

    .line 784
    iget-object v0, p0, Lc/t/m/g/cx;->D:Lcom/tencent/map/geolocation/TencentLocation;

    invoke-interface {v0}, Lcom/tencent/map/geolocation/TencentLocation;->getLatitude()D

    move-result-wide v0

    iget-object v2, p0, Lc/t/m/g/cx;->D:Lcom/tencent/map/geolocation/TencentLocation;

    invoke-interface {v2}, Lcom/tencent/map/geolocation/TencentLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p2}, Lc/t/m/g/dv;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p2}, Lc/t/m/g/dv;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lc/t/m/g/f$a;->a(DDDD)D

    move-result-wide v0

    .line 785
    invoke-virtual {p2}, Lc/t/m/g/dv;->getProvider()Ljava/lang/String;

    move-result-object v2

    const-string v3, "network"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpl-double v2, v0, v2

    if-gtz v2, :cond_c

    :cond_b
    invoke-virtual {p2}, Lc/t/m/g/dv;->getProvider()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_5

    .line 786
    :cond_c
    iget-wide v2, p0, Lc/t/m/g/cx;->z:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lc/t/m/g/cx;->z:D

    .line 787
    invoke-virtual {p2}, Lc/t/m/g/dv;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 788
    iget v0, p0, Lc/t/m/g/cx;->B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/t/m/g/cx;->B:I

    .line 792
    :goto_4
    iget v0, p0, Lc/t/m/g/cx;->C:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/t/m/g/cx;->C:I

    .line 793
    iput-object p2, p0, Lc/t/m/g/cx;->D:Lcom/tencent/map/geolocation/TencentLocation;

    goto/16 :goto_3

    .line 790
    :cond_d
    iget v0, p0, Lc/t/m/g/cx;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/t/m/g/cx;->A:I

    goto :goto_4

    .line 796
    :cond_e
    iput-object p2, p0, Lc/t/m/g/cx;->D:Lcom/tencent/map/geolocation/TencentLocation;

    goto/16 :goto_3

    :cond_f
    move v0, v9

    goto/16 :goto_2

    :cond_10
    move v0, v9

    goto/16 :goto_1
.end method

.method static synthetic a(Lc/t/m/g/cx;ILc/t/m/g/dv;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lc/t/m/g/cx;->a(ILc/t/m/g/dv;)V

    return-void
.end method

.method static synthetic a(Lc/t/m/g/cx;Lc/t/m/g/dv;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lc/t/m/g/cx;->a(Lc/t/m/g/dv;)V

    return-void
.end method

.method private final a(Lc/t/m/g/dv;)V
    .locals 4

    .prologue
    .line 572
    if-eqz p1, :cond_1

    .line 574
    :try_start_0
    iget-object v0, p0, Lc/t/m/g/cx;->H:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->isAllowDirection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {p1}, Lc/t/m/g/dv;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "direction"

    iget-object v2, p0, Lc/t/m/g/cx;->i:Lc/t/m/g/cu;

    .line 577
    invoke-virtual {v2}, Lc/t/m/g/cu;->d()D

    move-result-wide v2

    .line 575
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 579
    :cond_0
    invoke-virtual {p1}, Lc/t/m/g/dv;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "motion"

    iget-object v2, p0, Lc/t/m/g/cx;->j:Lc/t/m/g/cy;

    invoke-virtual {v2}, Lc/t/m/g/cy;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    invoke-virtual {p1}, Lc/t/m/g/dv;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lc/t/m/g/cx;->H:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lc/t/m/g/cx;Z)Z
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lc/t/m/g/cx;->F:Z

    return p1
.end method

.method static synthetic b(Lc/t/m/g/cx;J)J
    .locals 1

    .prologue
    .line 66
    iput-wide p1, p0, Lc/t/m/g/cx;->R:J

    return-wide p1
.end method

.method static synthetic b(Lc/t/m/g/cx;Lc/t/m/g/dv;)Lc/t/m/g/dv;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lc/t/m/g/cx;->L:Lc/t/m/g/dv;

    return-object p1
.end method

.method static synthetic b(Lc/t/m/g/cx;)Lcom/tencent/map/geolocation/TencentLocationListener;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lc/t/m/g/cx;->w:Lcom/tencent/map/geolocation/TencentLocationListener;

    return-object v0
.end method

.method private b(I)V
    .locals 2

    .prologue
    .line 913
    iget-object v0, p0, Lc/t/m/g/cx;->c:Lc/t/m/g/cx$a;

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Lc/t/m/g/cx;->c:Lc/t/m/g/cx$a;

    invoke-virtual {v0, p1}, Lc/t/m/g/cx$a;->sendEmptyMessage(I)Z

    .line 918
    :goto_0
    return-void

    .line 916
    :cond_0
    const-string v0, "TxLocationManagerImpl"

    const-string v1, "mHandler is null"

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lc/t/m/g/cx;)Lcom/tencent/map/geolocation/TencentLocationRequest;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lc/t/m/g/cx;->H:Lcom/tencent/map/geolocation/TencentLocationRequest;

    return-object v0
.end method

.method static synthetic d(Lc/t/m/g/cx;)Lc/t/m/g/dv;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lc/t/m/g/cx;->I:Lc/t/m/g/dv;

    return-object v0
.end method

.method static synthetic e(Lc/t/m/g/cx;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lc/t/m/g/cx;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lc/t/m/g/cx;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lc/t/m/g/cx;->M:I

    return v0
.end method

.method static synthetic g(Lc/t/m/g/cx;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lc/t/m/g/cx;->y:Z

    return v0
.end method

.method static synthetic h(Lc/t/m/g/cx;)Lcom/tencent/map/geolocation/TencentDistanceListener;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lc/t/m/g/cx;->E:Lcom/tencent/map/geolocation/TencentDistanceListener;

    return-object v0
.end method

.method static synthetic i(Lc/t/m/g/cx;)D
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lc/t/m/g/cx;->z:D

    return-wide v0
.end method

.method static synthetic j()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lc/t/m/g/cx;->a:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic j(Lc/t/m/g/cx;)Z
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lc/t/m/g/cx;->q()Z

    move-result v0

    return v0
.end method

.method static synthetic k()J
    .locals 2

    .prologue
    .line 66
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method static synthetic k(Lc/t/m/g/cx;)Lc/t/m/g/df;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lc/t/m/g/cx;->h:Lc/t/m/g/df;

    return-object v0
.end method

.method private l()Lc/t/m/g/cw;
    .locals 2
    .annotation build Lorg/eclipse/jdt/annotation/Nullable;
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lc/t/m/g/cx;->v:Lc/t/m/g/cj;

    invoke-virtual {v0}, Lc/t/m/g/cj;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    const-string v0, "TxLocationManagerImpl"

    const-string v1, "createGpsProvider: failed"

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const/4 v0, 0x0

    .line 268
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc/t/m/g/cw;

    iget-object v1, p0, Lc/t/m/g/cx;->v:Lc/t/m/g/cj;

    invoke-direct {v0, v1}, Lc/t/m/g/cw;-><init>(Lc/t/m/g/cj;)V

    goto :goto_0
.end method

.method static synthetic l(Lc/t/m/g/cx;)Z
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lc/t/m/g/cx;->p()Z

    move-result v0

    return v0
.end method

.method static synthetic m(Lc/t/m/g/cx;)J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lc/t/m/g/cx;->P:J

    return-wide v0
.end method

.method private m()Lc/t/m/g/df;
    .locals 2
    .annotation build Lorg/eclipse/jdt/annotation/Nullable;
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lc/t/m/g/cx;->v:Lc/t/m/g/cj;

    invoke-virtual {v0}, Lc/t/m/g/cj;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    const-string v0, "TxLocationManagerImpl"

    const-string v1, "createWifiProvider: failed"

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const/4 v0, 0x0

    .line 295
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc/t/m/g/df;

    iget-object v1, p0, Lc/t/m/g/cx;->v:Lc/t/m/g/cj;

    invoke-direct {v0, v1}, Lc/t/m/g/df;-><init>(Lc/t/m/g/cj;)V

    goto :goto_0
.end method

.method static synthetic n(Lc/t/m/g/cx;)J
    .locals 2

    .prologue
    .line 66
    const-wide/32 v0, 0x3a980

    iput-wide v0, p0, Lc/t/m/g/cx;->P:J

    return-wide v0
.end method

.method private n()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    .line 667
    sput-boolean v10, Lc/t/m/g/dw;->a:Z

    .line 668
    iget-object v0, p0, Lc/t/m/g/cx;->k:Lc/t/m/g/cz;

    invoke-virtual {v0}, Lc/t/m/g/cz;->a()V

    .line 669
    iget-object v0, p0, Lc/t/m/g/cx;->l:Lc/t/m/g/dd;

    iget-boolean v1, v0, Lc/t/m/g/dd;->g:Z

    if-eqz v1, :cond_1

    iput-boolean v10, v0, Lc/t/m/g/dd;->g:Z

    iget-object v1, v0, Lc/t/m/g/dd;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    iget-object v1, v0, Lc/t/m/g/dd;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v2, Lc/t/m/g/dd$a;->d:Lc/t/m/g/dd$a;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    iget-wide v2, v0, Lc/t/m/g/dd;->f:J

    cmp-long v1, v2, v8

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lc/t/m/g/dd;->f:J

    sub-long/2addr v2, v4

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "shutdown: duration=%ds, sent=%dB, recv=%dB, reqCount=%d"

    new-array v5, v11, [Ljava/lang/Object;

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v10

    const/4 v2, 0x1

    iget-wide v6, v0, Lc/t/m/g/dd;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x2

    iget-wide v6, v0, Lc/t/m/g/dd;->e:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x3

    iget-wide v6, v0, Lc/t/m/g/dd;->c:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TxRequestSender"

    invoke-static {v2, v1}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-wide v8, v0, Lc/t/m/g/dd;->c:J

    iput-wide v8, v0, Lc/t/m/g/dd;->d:J

    iput-wide v8, v0, Lc/t/m/g/dd;->e:J

    iput-wide v8, v0, Lc/t/m/g/dd;->f:J

    .line 670
    :cond_1
    iget-object v0, p0, Lc/t/m/g/cx;->p:Lc/t/m/g/de;

    invoke-virtual {v0}, Lc/t/m/g/de;->a()V

    .line 672
    iget-object v0, p0, Lc/t/m/g/cx;->h:Lc/t/m/g/df;

    invoke-static {v0}, Lc/t/m/g/f$a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 673
    iget-object v0, p0, Lc/t/m/g/cx;->h:Lc/t/m/g/df;

    invoke-virtual {v0}, Lc/t/m/g/df;->a()V

    .line 675
    :cond_2
    iget-boolean v0, p0, Lc/t/m/g/cx;->f:Z

    if-eqz v0, :cond_9

    .line 676
    iget-object v0, p0, Lc/t/m/g/cx;->e:Lc/t/m/g/da;

    invoke-static {v0}, Lc/t/m/g/f$a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 677
    iget-object v0, p0, Lc/t/m/g/cx;->e:Lc/t/m/g/da;

    invoke-virtual {v0}, Lc/t/m/g/da;->a()V

    .line 684
    :cond_3
    :goto_0
    iget-object v0, p0, Lc/t/m/g/cx;->g:Lc/t/m/g/cw;

    invoke-static {v0}, Lc/t/m/g/f$a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 685
    iget-object v0, p0, Lc/t/m/g/cx;->g:Lc/t/m/g/cw;

    invoke-virtual {v0}, Lc/t/m/g/cw;->a()V

    .line 687
    :cond_4
    iget-object v0, p0, Lc/t/m/g/cx;->H:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->isAllowDirection()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lc/t/m/g/cx;->i:Lc/t/m/g/cu;

    invoke-virtual {v0}, Lc/t/m/g/cu;->a()Z

    move-result v0

    if-nez v0, :cond_5

    .line 688
    iget-object v0, p0, Lc/t/m/g/cx;->i:Lc/t/m/g/cu;

    invoke-virtual {v0}, Lc/t/m/g/cu;->c()V

    .line 690
    :cond_5
    iget-object v0, p0, Lc/t/m/g/cx;->H:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "daemon"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lc/t/m/g/cx;->j:Lc/t/m/g/cy;

    invoke-static {v0}, Lc/t/m/g/f$a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 691
    iget-object v0, p0, Lc/t/m/g/cx;->j:Lc/t/m/g/cy;

    invoke-virtual {v0}, Lc/t/m/g/cy;->c()V

    .line 693
    :cond_6
    iget-object v0, p0, Lc/t/m/g/cx;->m:Lc/t/m/g/ch;

    if-eqz v0, :cond_8

    .line 694
    iget-object v0, p0, Lc/t/m/g/cx;->m:Lc/t/m/g/ch;

    iget-boolean v1, v0, Lc/t/m/g/ch;->b:Z

    if-eqz v1, :cond_8

    iput-boolean v10, v0, Lc/t/m/g/ch;->b:Z

    invoke-virtual {v0}, Lc/t/m/g/ch;->a()V

    iget-object v1, v0, Lc/t/m/g/ch;->c:Lc/t/m/g/ci;

    if-eqz v1, :cond_8

    iget-object v1, v0, Lc/t/m/g/ch;->c:Lc/t/m/g/ci;

    invoke-virtual {v1}, Lc/t/m/g/ci;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1, v11}, Lc/t/m/g/ci;->a(I)V

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lc/t/m/g/ci;->a(I)V

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lc/t/m/g/ci;->a(I)V

    iget-object v2, v1, Lc/t/m/g/ci;->f:Landroid/os/Handler;

    iget-object v3, v1, Lc/t/m/g/ci;->b:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, v1, Lc/t/m/g/ci;->f:Landroid/os/Handler;

    iget-object v3, v1, Lc/t/m/g/ci;->b:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {v1}, Lc/t/m/g/ci;->b()V

    :cond_7
    const/4 v1, 0x0

    iput-object v1, v0, Lc/t/m/g/ch;->c:Lc/t/m/g/ci;

    .line 696
    :cond_8
    return-void

    .line 680
    :cond_9
    iget-object v0, p0, Lc/t/m/g/cx;->d:Lc/t/m/g/f;

    invoke-static {v0}, Lc/t/m/g/f$a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 681
    iget-object v0, p0, Lc/t/m/g/cx;->d:Lc/t/m/g/f;

    invoke-virtual {v0}, Lc/t/m/g/f;->b()V

    goto/16 :goto_0
.end method

.method static synthetic o(Lc/t/m/g/cx;)J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lc/t/m/g/cx;->Q:J

    return-wide v0
.end method

.method private o()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 699
    iput-object v1, p0, Lc/t/m/g/cx;->I:Lc/t/m/g/dv;

    .line 700
    const/16 v0, 0x194

    iput v0, p0, Lc/t/m/g/cx;->M:I

    .line 703
    iput-object v1, p0, Lc/t/m/g/cx;->s:Lc/t/m/g/dn;

    .line 704
    iput-object v1, p0, Lc/t/m/g/cx;->r:Lc/t/m/g/dj;

    .line 705
    iput-object v1, p0, Lc/t/m/g/cx;->t:Lc/t/m/g/dk;

    .line 706
    iput-boolean v2, p0, Lc/t/m/g/cx;->F:Z

    .line 707
    iput-boolean v2, p0, Lc/t/m/g/cx;->T:Z

    .line 708
    sput v2, Lc/t/m/g/dl;->a:I

    .line 710
    iget-object v0, p0, Lc/t/m/g/cx;->v:Lc/t/m/g/cj;

    const-string v1, "cell"

    invoke-virtual {v0, v1}, Lc/t/m/g/cj;->a(Ljava/lang/String;)Lc/t/m/g/cn;

    move-result-object v0

    invoke-virtual {v0}, Lc/t/m/g/cn;->a()V

    .line 711
    return-void
.end method

.method static synthetic p(Lc/t/m/g/cx;)J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lc/t/m/g/cx;->R:J

    return-wide v0
.end method

.method private p()Z
    .locals 2

    .prologue
    .line 823
    iget v0, p0, Lc/t/m/g/cx;->M:I

    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic q(Lc/t/m/g/cx;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lc/t/m/g/cx;->b:I

    return v0
.end method

.method private q()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 831
    .line 832
    iget-object v1, p0, Lc/t/m/g/cx;->g:Lc/t/m/g/cw;

    if-eqz v1, :cond_0

    .line 833
    iget-object v1, p0, Lc/t/m/g/cx;->g:Lc/t/m/g/cw;

    invoke-virtual {v1}, Lc/t/m/g/cw;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc/t/m/g/cx;->g:Lc/t/m/g/cw;

    invoke-virtual {v1}, Lc/t/m/g/cw;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 836
    :cond_0
    if-nez v0, :cond_1

    .line 837
    const-string v1, "TxLocationManagerImpl"

    const-string v2, "isGpsValid: provider=false"

    invoke-static {v1, v2}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    :cond_1
    return v0
.end method

.method static synthetic r(Lc/t/m/g/cx;)Lc/t/m/g/dl;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v2, p0, Lc/t/m/g/cx;->s:Lc/t/m/g/dn;

    iget-object v0, p0, Lc/t/m/g/cx;->r:Lc/t/m/g/dj;

    iget-object v3, p0, Lc/t/m/g/cx;->t:Lc/t/m/g/dk;

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lc/t/m/g/cx;->q()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v3, v1

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lc/t/m/g/cx;->v:Lc/t/m/g/cj;

    invoke-static {v0}, Lc/t/m/g/dw;->b(Lc/t/m/g/cj;)Landroid/telephony/CellLocation;

    move-result-object v4

    invoke-static {v0, v4, v1}, Lc/t/m/g/dj;->a(Lc/t/m/g/cj;Landroid/telephony/CellLocation;Landroid/telephony/SignalStrength;)Lc/t/m/g/dj;

    move-result-object v0

    invoke-static {v0}, Lc/t/m/g/dw;->a(Lc/t/m/g/dj;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xc350

    invoke-virtual {v2, v4, v5, v6, v7}, Lc/t/m/g/dn;->a(JJ)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v2, v1

    :cond_2
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    iget v4, v0, Lc/t/m/g/dj;->d:I

    iget v5, v0, Lc/t/m/g/dj;->e:I

    iget-object v6, v3, Lc/t/m/g/dk;->a:Landroid/location/Location;

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "lac"

    invoke-virtual {v7, v8, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "cid"

    invoke-virtual {v7, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "location"

    invoke-virtual {v7, v8, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v6, p0, Lc/t/m/g/cx;->v:Lc/t/m/g/cj;

    const-string v8, "cell"

    invoke-virtual {v6, v8}, Lc/t/m/g/cj;->a(Ljava/lang/String;)Lc/t/m/g/cn;

    move-result-object v6

    invoke-virtual {v6, v7}, Lc/t/m/g/cn;->b(Landroid/os/Bundle;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v0, "TxLocationManagerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getFromLastKnownInfo: discard bad cell("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance v0, Lc/t/m/g/dl;

    invoke-direct {v0, v2, v1, v3}, Lc/t/m/g/dl;-><init>(Lc/t/m/g/dn;Lc/t/m/g/dj;Lc/t/m/g/dk;)V

    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    move-object v1, v0

    goto :goto_1
.end method

.method static synthetic s(Lc/t/m/g/cx;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lc/t/m/g/cx;->S:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic t(Lc/t/m/g/cx;)Lc/t/m/g/cj;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lc/t/m/g/cx;->v:Lc/t/m/g/cj;

    return-object v0
.end method

.method static synthetic u(Lc/t/m/g/cx;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lc/t/m/g/cx;->O:Z

    return v0
.end method

.method static synthetic v(Lc/t/m/g/cx;)Lc/t/m/g/dl;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lc/t/m/g/cx;->u:Lc/t/m/g/dl;

    return-object v0
.end method

.method static synthetic w(Lc/t/m/g/cx;)Lc/t/m/g/dd;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lc/t/m/g/cx;->l:Lc/t/m/g/dd;

    return-object v0
.end method

.method static synthetic x(Lc/t/m/g/cx;)Lc/t/m/g/cl;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lc/t/m/g/cx;->q:Lc/t/m/g/cl;

    return-object v0
.end method

.method static synthetic y(Lc/t/m/g/cx;)Lc/t/m/g/dj;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lc/t/m/g/cx;->r:Lc/t/m/g/dj;

    return-object v0
.end method

.method static synthetic z(Lc/t/m/g/cx;)Lc/t/m/g/cy;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lc/t/m/g/cx;->j:Lc/t/m/g/cy;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/map/geolocation/TencentDirectionListener;Landroid/os/Looper;)I
    .locals 2

    .prologue
    .line 331
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 332
    :cond_0
    const/4 v0, -0x1

    .line 343
    :cond_1
    :goto_0
    return v0

    .line 334
    :cond_2
    iget-object v0, p0, Lc/t/m/g/cx;->i:Lc/t/m/g/cu;

    if-nez v0, :cond_3

    .line 335
    const/4 v0, -0x2

    goto :goto_0

    .line 337
    :cond_3
    iget-object v0, p0, Lc/t/m/g/cx;->i:Lc/t/m/g/cu;

    invoke-virtual {v0}, Lc/t/m/g/cu;->c()V

    .line 338
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 339
    iget-object v1, p0, Lc/t/m/g/cx;->i:Lc/t/m/g/cu;

    invoke-virtual {v1, v0, p1}, Lc/t/m/g/cu;->a(Landroid/os/Handler;Lcom/tencent/map/geolocation/TencentDirectionListener;)I

    move-result v0

    .line 340
    if-nez v0, :cond_1

    .line 341
    iget-object v1, p0, Lc/t/m/g/cx;->i:Lc/t/m/g/cu;

    invoke-virtual {v1}, Lc/t/m/g/cu;->b()V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/map/geolocation/TencentDistanceListener;)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 319
    iget-object v1, p0, Lc/t/m/g/cx;->w:Lcom/tencent/map/geolocation/TencentLocationListener;

    if-nez v1, :cond_0

    .line 326
    :goto_0
    return v0

    .line 321
    :cond_0
    iget-boolean v1, p0, Lc/t/m/g/cx;->y:Z

    if-eqz v1, :cond_1

    .line 322
    const/4 v0, 0x2

    goto :goto_0

    .line 324
    :cond_1
    iput-boolean v0, p0, Lc/t/m/g/cx;->y:Z

    .line 325
    iput-object p1, p0, Lc/t/m/g/cx;->E:Lcom/tencent/map/geolocation/TencentDistanceListener;

    .line 326
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/tencent/map/geolocation/TencentLocationRequest;Lcom/tencent/map/geolocation/TencentLocationListener;Landroid/os/Looper;)I
    .locals 12

    .prologue
    .line 354
    iget v0, p0, Lc/t/m/g/cx;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 355
    invoke-virtual {p0}, Lc/t/m/g/cx;->h()V

    iget-object v0, p0, Lc/t/m/g/cx;->n:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/cx;->n:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lc/t/m/g/cx;->n:Landroid/os/HandlerThread;

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lc/t/m/g/cx;->o:I

    .line 357
    :cond_1
    invoke-static {}, Lcom/tencent/map/geolocation/TencentLocationManagerOptions;->isLoadLibraryEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 359
    :try_start_0
    const-string/jumbo v0, "tencentloc"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :cond_2
    iget-object v0, p0, Lc/t/m/g/cx;->v:Lc/t/m/g/cj;

    .line 368
    invoke-virtual {v0}, Lc/t/m/g/cj;->i()Lc/t/m/g/ck;

    move-result-object v2

    .line 370
    if-eqz v2, :cond_3

    const-string v1, "0123456789ABCDEF"

    invoke-virtual {v2}, Lc/t/m/g/ck;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 371
    const-string v1, "0123456789ABCDEF"

    invoke-virtual {v2}, Lc/t/m/g/ck;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 372
    invoke-virtual {v0}, Lc/t/m/g/cj;->a()V

    .line 375
    :cond_3
    iget-object v0, v2, Lc/t/m/g/ck;->h:Ljava/lang/String;

    invoke-static {v0}, Lc/t/m/g/f$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-static {v0}, Lc/t/m/g/cx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc/t/m/g/cx;->S:Ljava/lang/String;

    .line 377
    iget-object v1, p0, Lc/t/m/g/cx;->S:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 378
    const-string v1, "TxLocationManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestLocationUpdates: illegal key ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const/4 v0, 0x2

    .line 403
    :goto_0
    return v0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    const-string v1, "TencentLocationSDK"

    const-string v2, "load library"

    invoke-static {v1, v2, v0}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 362
    const/4 v0, 0x3

    goto :goto_0

    .line 383
    :cond_4
    iget-boolean v0, p0, Lc/t/m/g/cx;->N:Z

    if-eqz v0, :cond_5

    .line 384
    const/4 v0, 0x1

    goto :goto_0

    .line 387
    :cond_5
    invoke-direct {p0}, Lc/t/m/g/cx;->o()V

    .line 388
    iget-object v1, p0, Lc/t/m/g/cx;->G:Ljava/lang/Object;

    monitor-enter v1

    .line 389
    :try_start_1
    iput-object p2, p0, Lc/t/m/g/cx;->w:Lcom/tencent/map/geolocation/TencentLocationListener;

    .line 390
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    iget-object v0, p0, Lc/t/m/g/cx;->H:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-static {v0, p1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->copy(Lcom/tencent/map/geolocation/TencentLocationRequest;Lcom/tencent/map/geolocation/TencentLocationRequest;)V

    .line 392
    invoke-virtual {p1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getQQ()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lc/t/m/g/ck;->g:Ljava/lang/String;

    .line 394
    iget-object v0, v2, Lc/t/m/g/ck;->e:Ljava/lang/String;

    invoke-static {v0}, Lc/t/m/g/f$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 395
    invoke-virtual {p1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lc/t/m/g/ck;->e:Ljava/lang/String;

    .line 397
    :cond_6
    invoke-virtual {p1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_13

    const-wide/16 v0, 0x1388

    :goto_1
    const-wide/16 v4, 0x1388

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v2, Lc/t/m/g/ck;->m:J

    .line 399
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_7
    iget-object v0, p0, Lc/t/m/g/cx;->c:Lc/t/m/g/cx$a;

    invoke-static {v0}, Lc/t/m/g/f$a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Lc/t/m/g/cx$a;

    invoke-direct {v0, p0, p3}, Lc/t/m/g/cx$a;-><init>(Lc/t/m/g/cx;Landroid/os/Looper;)V

    iput-object v0, p0, Lc/t/m/g/cx;->c:Lc/t/m/g/cx$a;

    .line 400
    :cond_8
    :goto_2
    invoke-direct {p0}, Lc/t/m/g/cx;->n()V

    .line 401
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "TxLocationManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "registercost:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc/t/m/g/cx;->H:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "use_network"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v0, p0, Lc/t/m/g/cx;->H:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "daemon"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iget-object v5, p0, Lc/t/m/g/cx;->c:Lc/t/m/g/cx$a;

    iget-object v0, p0, Lc/t/m/g/cx;->k:Lc/t/m/g/cz;

    invoke-virtual {v0, v5}, Lc/t/m/g/cz;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lc/t/m/g/cx;->l:Lc/t/m/g/dd;

    iget-boolean v6, v0, Lc/t/m/g/dd;->g:Z

    if-nez v6, :cond_9

    const/4 v6, 0x1

    iput-boolean v6, v0, Lc/t/m/g/dd;->g:Z

    iget-object v6, v0, Lc/t/m/g/dd;->b:Lc/t/m/g/cj;

    invoke-virtual {v6}, Lc/t/m/g/cj;->k()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v7, Lc/t/m/g/dd$1;

    invoke-direct {v7, v0, v5}, Lc/t/m/g/dd$1;-><init>(Lc/t/m/g/dd;Landroid/os/Handler;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v0, Lc/t/m/g/dd;->f:J

    :cond_9
    const-string v0, "TxLocationManagerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "sendercost:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_a

    iget-object v0, p0, Lc/t/m/g/cx;->l:Lc/t/m/g/dd;

    iget-object v6, p0, Lc/t/m/g/cx;->v:Lc/t/m/g/cj;

    invoke-virtual {v6}, Lc/t/m/g/cj;->l()Ljava/lang/String;

    move-result-object v6

    :try_start_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    if-eqz v7, :cond_15

    :cond_a
    :goto_3
    const-string v0, "TxLocationManagerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "postlistcost:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lc/t/m/g/cx;->f:Z

    if-eqz v0, :cond_16

    if-eqz v1, :cond_b

    iget-object v0, p0, Lc/t/m/g/cx;->e:Lc/t/m/g/da;

    invoke-static {v0}, Lc/t/m/g/f$a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lc/t/m/g/cx;->e:Lc/t/m/g/da;

    invoke-virtual {v0, v5, v4}, Lc/t/m/g/da;->a(Landroid/os/Handler;Z)V

    :cond_b
    :goto_4
    const-string v0, "TxLocationManagerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "cellcost:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_c

    iget-object v0, p0, Lc/t/m/g/cx;->h:Lc/t/m/g/df;

    invoke-static {v0}, Lc/t/m/g/f$a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lc/t/m/g/cx;->h:Lc/t/m/g/df;

    invoke-virtual {v0, v5, v4}, Lc/t/m/g/df;->a(Landroid/os/Handler;Z)V

    :cond_c
    const-string v0, "TxLocationManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "wificost:"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/t/m/g/cx;->O:Z

    :cond_d
    iget-object v0, p0, Lc/t/m/g/cx;->g:Lc/t/m/g/cw;

    invoke-static {v0}, Lc/t/m/g/f$a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lc/t/m/g/cx;->H:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->isAllowGPS()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v1, p0, Lc/t/m/g/cx;->g:Lc/t/m/g/cw;

    iget v0, p0, Lc/t/m/g/cx;->b:I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_17

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {v1, v0}, Lc/t/m/g/cw;->a(Z)V

    iget-object v0, p0, Lc/t/m/g/cx;->g:Lc/t/m/g/cw;

    iget-object v1, p0, Lc/t/m/g/cx;->H:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7, v4}, Lc/t/m/g/cw;->a(JZ)V

    :cond_e
    const-string v0, "TxLocationManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "gpscost:"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc/t/m/g/cx;->H:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->isAllowDirection()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lc/t/m/g/cx;->i:Lc/t/m/g/cu;

    invoke-virtual {v0}, Lc/t/m/g/cu;->a()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lc/t/m/g/cx;->i:Lc/t/m/g/cu;

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Lc/t/m/g/cu;->a(Landroid/os/Handler;Lcom/tencent/map/geolocation/TencentDirectionListener;)I

    :cond_f
    if-nez v4, :cond_10

    iget-object v0, p0, Lc/t/m/g/cx;->H:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->isAllowPedometer()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lc/t/m/g/cx;->j:Lc/t/m/g/cy;

    iget-object v1, p0, Lc/t/m/g/cx;->v:Lc/t/m/g/cj;

    iget-object v1, v1, Lc/t/m/g/cj;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lc/t/m/g/cy;->a(Landroid/content/Context;)V

    :cond_10
    iget-object v0, p0, Lc/t/m/g/cx;->m:Lc/t/m/g/ch;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lc/t/m/g/cx;->m:Lc/t/m/g/ch;

    iget-boolean v1, v0, Lc/t/m/g/ch;->b:Z

    if-nez v1, :cond_12

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc/t/m/g/ch;->b:Z

    invoke-virtual {v0}, Lc/t/m/g/ch;->a()V

    new-instance v1, Lc/t/m/g/ci;

    iget-object v2, v0, Lc/t/m/g/ch;->a:Lc/t/m/g/cj;

    iget-object v3, v0, Lc/t/m/g/ch;->a:Lc/t/m/g/cj;

    iget-object v3, v3, Lc/t/m/g/cj;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lc/t/m/g/ci;-><init>(Lc/t/m/g/cj;Ljava/lang/String;)V

    iput-object v1, v0, Lc/t/m/g/ch;->c:Lc/t/m/g/ci;

    iget-object v1, v0, Lc/t/m/g/ch;->c:Lc/t/m/g/ci;

    iget-object v0, v1, Lc/t/m/g/ci;->c:Ljava/io/File;

    if-eqz v0, :cond_18

    iget-object v0, v1, Lc/t/m/g/ci;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, v1, Lc/t/m/g/ci;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_11
    const/4 v0, 0x1

    :goto_6
    iput-boolean v0, v1, Lc/t/m/g/ci;->d:Z

    iget-boolean v0, v1, Lc/t/m/g/ci;->d:Z

    if-eqz v0, :cond_12

    :try_start_3
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "data_c"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, v1, Lc/t/m/g/ci;->e:Landroid/os/HandlerThread;

    iget-object v0, v1, Lc/t/m/g/ci;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lc/t/m/g/ci$a;

    iget-object v2, v1, Lc/t/m/g/ci;->e:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc/t/m/g/ci$a;-><init>(Lc/t/m/g/ci;Landroid/os/Looper;)V

    iput-object v0, v1, Lc/t/m/g/ci;->f:Landroid/os/Handler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xc350

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lc/t/m/g/ci;->j:J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 402
    :cond_12
    :goto_7
    const-string v0, "start"

    iput-object v0, p0, Lc/t/m/g/cx;->x:Ljava/lang/String;

    .line 403
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 397
    :cond_13
    invoke-virtual {p1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    move-result-wide v0

    goto/16 :goto_1

    .line 399
    :cond_14
    iget-object v0, p0, Lc/t/m/g/cx;->c:Lc/t/m/g/cx$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/t/m/g/cx$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lc/t/m/g/cx;->c:Lc/t/m/g/cx$a;

    invoke-virtual {v0}, Lc/t/m/g/cx$a;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq v0, p3, :cond_8

    new-instance v0, Lc/t/m/g/cx$a;

    invoke-direct {v0, p0, p3}, Lc/t/m/g/cx$a;-><init>(Lc/t/m/g/cx;Landroid/os/Looper;)V

    iput-object v0, p0, Lc/t/m/g/cx;->c:Lc/t/m/g/cx$a;

    goto/16 :goto_2

    .line 401
    :cond_15
    :try_start_4
    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Lc/t/m/g/dd;->a([B)[B

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Lcom/tencent/tencentmap/lbssdk/service/e;->o([BI)I

    new-instance v8, Lc/t/m/g/dd$a;

    const/4 v9, 0x2

    const-string v10, "http://ue.indoorloc.map.qq.com/"

    const/4 v11, 0x0

    invoke-direct {v8, v9, v7, v10, v11}, Lc/t/m/g/dd$a;-><init>(I[BLjava/lang/String;Ljava/lang/Object;)V

    iput-object v6, v8, Lc/t/m/g/dd$a;->b:Ljava/lang/String;

    invoke-static {v8}, Lc/t/m/g/dd$a;->a(Lc/t/m/g/dd$a;)[B

    move-result-object v6

    if-eqz v6, :cond_a

    iget-object v0, v0, Lc/t/m/g/dd;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3

    :catch_1
    move-exception v0

    const-string v6, "TxRequestSender"

    const-string v7, ""

    invoke-static {v6, v7, v0}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :catch_2
    move-exception v0

    const-string v6, "TxRequestSender"

    const-string v7, ""

    invoke-static {v6, v7, v0}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_16
    if-eqz v1, :cond_b

    iget-object v0, p0, Lc/t/m/g/cx;->d:Lc/t/m/g/f;

    invoke-static {v0}, Lc/t/m/g/f$a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lc/t/m/g/cx;->d:Lc/t/m/g/f;

    invoke-virtual {v0}, Lc/t/m/g/f;->a()V

    goto/16 :goto_4

    :cond_17
    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_18
    const/4 v0, 0x0

    goto/16 :goto_6

    :catch_3
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, v1, Lc/t/m/g/ci;->f:Landroid/os/Handler;

    goto :goto_7
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lc/t/m/g/cx;->i:Lc/t/m/g/cu;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lc/t/m/g/cx;->i:Lc/t/m/g/cu;

    invoke-virtual {v0}, Lc/t/m/g/cu;->c()V

    .line 350
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 893
    iget v0, p0, Lc/t/m/g/cx;->b:I

    if-ne v0, p1, :cond_0

    .line 906
    :goto_0
    return-void

    .line 896
    :cond_0
    iput p1, p0, Lc/t/m/g/cx;->b:I

    goto :goto_0
.end method

.method public final b()Lcom/tencent/map/geolocation/TencentLocation;
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Lc/t/m/g/cx;->M:I

    if-nez v0, :cond_0

    .line 486
    iget-object v0, p0, Lc/t/m/g/cx;->I:Lc/t/m/g/dv;

    invoke-direct {p0, v0}, Lc/t/m/g/cx;->a(Lc/t/m/g/dv;)V

    .line 487
    iget-object v0, p0, Lc/t/m/g/cx;->I:Lc/t/m/g/dv;

    .line 489
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/16 v2, 0x13

    const/4 v1, 0x0

    .line 497
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_1

    .line 499
    :try_start_0
    iget-object v0, p0, Lc/t/m/g/cx;->v:Lc/t/m/g/cj;

    iget-object v0, v0, Lc/t/m/g/cj;->a:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 500
    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 501
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 506
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 501
    goto :goto_0

    .line 503
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 506
    goto :goto_0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lc/t/m/g/cx;->j:Lc/t/m/g/cy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/cx;->j:Lc/t/m/g/cy;

    invoke-virtual {v0}, Lc/t/m/g/cy;->d()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final e()I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 519
    :try_start_0
    iget-object v1, p0, Lc/t/m/g/cx;->v:Lc/t/m/g/cj;

    invoke-virtual {v1}, Lc/t/m/g/cj;->b()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 520
    const-string v1, "stepStr"

    const-string v2, ""

    invoke-interface {v4, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 521
    const/4 v1, 0x0

    .line 522
    const-wide/16 v2, 0x0

    .line 523
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 524
    const-string v1, ","

    invoke-virtual {v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 525
    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 526
    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 528
    :cond_0
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "stepStr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final f()Lcom/tencent/map/geolocation/TencentPedestrianData;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 536
    iget-object v0, p0, Lc/t/m/g/cx;->v:Lc/t/m/g/cj;

    invoke-virtual {v0}, Lc/t/m/g/cj;->b()Landroid/content/SharedPreferences;

    move-result-object v6

    .line 537
    if-nez v6, :cond_0

    .line 568
    :goto_0
    return-object v1

    .line 542
    :cond_0
    :try_start_0
    const-string v0, "stepStr"

    const-string v2, ""

    invoke-interface {v6, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 546
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 547
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 548
    const/4 v0, 0x0

    aget-object v0, v4, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 549
    const/4 v2, 0x1

    aget-object v2, v4, v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 550
    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move v5, v4

    .line 555
    :goto_1
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v6, "stepStr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 556
    new-instance v0, Lc/t/m/g/cx$1;

    invoke-direct {v0, v5, v2, v3}, Lc/t/m/g/cx$1;-><init>(FJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object v1, v0

    .line 568
    goto :goto_0

    .line 552
    :cond_1
    const-wide/16 v2, 0x0

    move v0, v4

    move v5, v4

    .line 553
    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method public final g()Lcom/tencent/map/geolocation/TencentDistanceAnalysis;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 588
    iput-object v2, p0, Lc/t/m/g/cx;->E:Lcom/tencent/map/geolocation/TencentDistanceListener;

    .line 589
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc/t/m/g/cx;->z:D

    .line 590
    iput-boolean v6, p0, Lc/t/m/g/cx;->y:Z

    .line 591
    iput-object v2, p0, Lc/t/m/g/cx;->D:Lcom/tencent/map/geolocation/TencentLocation;

    .line 592
    new-instance v0, Lc/t/m/g/dq;

    invoke-direct {v0}, Lc/t/m/g/dq;-><init>()V

    .line 593
    iget v1, p0, Lc/t/m/g/cx;->A:I

    add-int/lit8 v1, v1, 0x1

    int-to-double v2, v1

    iget v1, p0, Lc/t/m/g/cx;->C:I

    add-int/lit8 v1, v1, 0x1

    int-to-double v4, v1

    div-double/2addr v2, v4

    .line 594
    const/4 v1, 0x4

    invoke-static {v2, v3, v1}, Lc/t/m/g/f$a;->a(DI)D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lc/t/m/g/dq;->a(D)V

    .line 595
    iget v1, p0, Lc/t/m/g/cx;->A:I

    invoke-virtual {v0, v1}, Lc/t/m/g/dq;->a(I)V

    .line 596
    iget v1, p0, Lc/t/m/g/cx;->B:I

    invoke-virtual {v0, v1}, Lc/t/m/g/dq;->b(I)V

    .line 597
    iput v6, p0, Lc/t/m/g/cx;->A:I

    .line 598
    iput v6, p0, Lc/t/m/g/cx;->B:I

    .line 599
    iput v6, p0, Lc/t/m/g/cx;->C:I

    .line 600
    return-object v0
.end method

.method public final h()V
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 603
    invoke-direct {p0}, Lc/t/m/g/cx;->n()V

    .line 605
    iget-object v0, p0, Lc/t/m/g/cx;->c:Lc/t/m/g/cx$a;

    invoke-static {v0}, Lc/t/m/g/f$a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lc/t/m/g/cx;->c:Lc/t/m/g/cx$a;

    invoke-virtual {v0}, Lc/t/m/g/cx$a;->a()V

    .line 608
    :cond_0
    iget-object v1, p0, Lc/t/m/g/cx;->G:Ljava/lang/Object;

    monitor-enter v1

    .line 609
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lc/t/m/g/cx;->w:Lcom/tencent/map/geolocation/TencentLocationListener;

    .line 610
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    iget-object v0, p0, Lc/t/m/g/cx;->q:Lc/t/m/g/cl;

    invoke-interface {v0}, Lc/t/m/g/cl;->a()V

    .line 612
    invoke-direct {p0}, Lc/t/m/g/cx;->o()V

    .line 613
    const-string v0, "stop"

    iput-object v0, p0, Lc/t/m/g/cx;->x:Ljava/lang/String;

    .line 614
    iget v0, p0, Lc/t/m/g/cx;->o:I

    if-nez v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lc/t/m/g/cx;->v:Lc/t/m/g/cj;

    invoke-virtual {v0}, Lc/t/m/g/cj;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "control"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "TxLocationManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "read sp control:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v0, v4, :cond_3

    int-to-long v2, v0

    const-wide/16 v4, 0xf0

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    const-wide/32 v0, 0x3a980

    iput-wide v0, p0, Lc/t/m/g/cx;->P:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lc/t/m/g/cx;->v:Lc/t/m/g/cj;

    invoke-static {v0}, Lc/t/m/g/eb;->c(Lc/t/m/g/cj;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "{}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/map/geolocation/TencentLocationRequest;->create()Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v0

    iget-wide v2, p0, Lc/t/m/g/cx;->P:J

    invoke-virtual {v0, v2, v3}, Lcom/tencent/map/geolocation/TencentLocationRequest;->setInterval(J)Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->setRequestLevel(I)Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "daemon"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lc/t/m/g/cx$2;

    invoke-direct {v1}, Lc/t/m/g/cx$2;-><init>()V

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "daemonthread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lc/t/m/g/cx;->n:Landroid/os/HandlerThread;

    iget-object v2, p0, Lc/t/m/g/cx;->n:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    iget-object v2, p0, Lc/t/m/g/cx;->n:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lc/t/m/g/cx;->a(Lcom/tencent/map/geolocation/TencentLocationRequest;Lcom/tencent/map/geolocation/TencentLocationListener;Landroid/os/Looper;)I

    const/4 v0, 0x1

    iput v0, p0, Lc/t/m/g/cx;->o:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc/t/m/g/cx;->Q:J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 615
    :cond_1
    :goto_1
    return-void

    .line 610
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 614
    :cond_2
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    :try_start_3
    iput-wide v0, p0, Lc/t/m/g/cx;->P:J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TxLocationManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sp ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :try_start_4
    const-string v0, "TxLocationManagerImpl"

    const-string v1, "control is -1 ,so we no start"

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 909
    iget v0, p0, Lc/t/m/g/cx;->b:I

    return v0
.end method

.method public final onCellInfoEvent(Lc/t/m/g/dj;)V
    .locals 13

    .prologue
    const/16 v12, 0xf9f

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 928
    const-string v0, "TxLocationManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cellCallback:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    iget v5, p1, Lc/t/m/g/dj;->e:I

    iget v6, p1, Lc/t/m/g/dj;->f:I

    iget-object v2, p0, Lc/t/m/g/cx;->r:Lc/t/m/g/dj;

    if-eqz v2, :cond_6

    iget v0, v2, Lc/t/m/g/dj;->f:I

    iget v2, v2, Lc/t/m/g/dj;->e:I

    :goto_0
    iput-object p1, p0, Lc/t/m/g/cx;->r:Lc/t/m/g/dj;

    iget-object v3, p0, Lc/t/m/g/cx;->h:Lc/t/m/g/df;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lc/t/m/g/cx;->h:Lc/t/m/g/df;

    invoke-virtual {v3}, Lc/t/m/g/df;->b()I

    move-result v3

    :goto_1
    if-eqz v3, :cond_0

    const/4 v7, 0x0

    iput-object v7, p0, Lc/t/m/g/cx;->s:Lc/t/m/g/dn;

    :cond_0
    if-nez v3, :cond_3

    iget-object v7, p0, Lc/t/m/g/cx;->s:Lc/t/m/g/dn;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lc/t/m/g/cx;->s:Lc/t/m/g/dn;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x7530

    invoke-virtual {v7, v8, v9, v10, v11}, Lc/t/m/g/dn;->a(JJ)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_1
    iget-object v7, p0, Lc/t/m/g/cx;->c:Lc/t/m/g/cx$a;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lc/t/m/g/cx;->c:Lc/t/m/g/cx$a;

    const-string/jumbo v8, "wifi_not_received"

    invoke-virtual {v7, v12, v8}, Lc/t/m/g/cx$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    iget-object v8, p0, Lc/t/m/g/cx;->c:Lc/t/m/g/cx$a;

    const-wide/16 v10, 0x7d0

    invoke-virtual {v8, v7, v10, v11}, Lc/t/m/g/cx$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    :goto_2
    const-string v7, "TxLocationManagerImpl"

    const-string v8, "onCellChanged: %d(%d)-->%d(%d) (%d)%s"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v4

    const/4 v0, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v1, 0x5

    if-nez v3, :cond_4

    const-string v0, "scan wifi"

    :goto_3
    aput-object v0, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    return-void

    .line 929
    :cond_3
    invoke-direct {p0, v12}, Lc/t/m/g/cx;->b(I)V

    goto :goto_2

    :cond_4
    const-string v0, "prepare json. wifi is not scannable?"

    goto :goto_3

    :cond_5
    move v3, v4

    goto :goto_1

    :cond_6
    move v0, v1

    move v2, v1

    goto :goto_0
.end method

.method public final onGpsInfoEvent(Lc/t/m/g/dk;)V
    .locals 18

    .prologue
    .line 938
    move-object/from16 v0, p1

    iget-object v2, v0, Lc/t/m/g/dk;->a:Landroid/location/Location;

    sget-object v3, Lc/t/m/g/ct;->a:Landroid/location/Location;

    if-eq v2, v3, :cond_4

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lc/t/m/g/cx;->t:Lc/t/m/g/dk;

    move-object/from16 v0, p0

    iget-object v2, v0, Lc/t/m/g/cx;->H:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v2}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "daemon"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lc/t/m/g/cv;->a()Lc/t/m/g/cv;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lc/t/m/g/cv;->a(Lc/t/m/g/dk;)I

    move-result v8

    move-object/from16 v0, p0

    iget v9, v0, Lc/t/m/g/cx;->b:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lc/t/m/g/cx;->H:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v2}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getRequestLevel()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lc/t/m/g/cx;->L:Lc/t/m/g/dv;

    new-instance v12, Landroid/location/Location;

    move-object/from16 v0, p1

    iget-object v2, v0, Lc/t/m/g/dk;->a:Landroid/location/Location;

    invoke-direct {v12, v2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v12}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz v13, :cond_0

    const-string v3, "lat"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-string v3, "lng"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-string v3, "fakeCode"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    :cond_0
    if-eqz v3, :cond_1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lc/t/m/g/cx;->T:Z

    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    add-int/lit8 v2, v3, 0x3

    int-to-double v2, v2

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v2, v14

    double-to-int v2, v2

    :cond_1
    const/4 v3, -0x1

    if-ne v8, v3, :cond_2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lc/t/m/g/cx;->T:Z

    add-int/lit8 v2, v2, 0x2

    :cond_2
    invoke-static {v9}, Lc/t/m/g/f$a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v8, Lc/t/m/g/dv$a;

    invoke-direct {v8}, Lc/t/m/g/dv$a;-><init>()V

    iput-object v11, v8, Lc/t/m/g/dv$a;->b:Lc/t/m/g/dv;

    const-string v3, "gps"

    iput-object v3, v8, Lc/t/m/g/dv$a;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lc/t/m/g/cx;->T:Z

    if-eqz v3, :cond_5

    const-string v3, "fake"

    :goto_0
    iput-object v3, v8, Lc/t/m/g/dv$a;->e:Ljava/lang/String;

    iput v10, v8, Lc/t/m/g/dv$a;->c:I

    new-instance v3, Landroid/location/Location;

    move-object/from16 v0, p1

    iget-object v9, v0, Lc/t/m/g/dk;->a:Landroid/location/Location;

    invoke-direct {v3, v9}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v8, v3}, Lc/t/m/g/dv$a;->a(Landroid/location/Location;)Lc/t/m/g/dv$a;

    move-result-object v3

    invoke-virtual {v3}, Lc/t/m/g/dv$a;->a()Lc/t/m/g/dv;

    move-result-object v3

    invoke-virtual {v12, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    invoke-virtual {v12, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    invoke-virtual {v3, v12}, Lc/t/m/g/dv;->a(Landroid/location/Location;)V

    invoke-virtual {v3, v2}, Lc/t/m/g/dv;->a(I)Lc/t/m/g/dv;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lc/t/m/g/cx;->a(ILc/t/m/g/dv;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lc/t/m/g/cx;->g:Lc/t/m/g/cw;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lc/t/m/g/cx;->g:Lc/t/m/g/cw;

    invoke-virtual {v2}, Lc/t/m/g/cw;->b()Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lc/t/m/g/cx;->q:Lc/t/m/g/cl;

    .line 939
    :cond_4
    return-void

    .line 938
    :cond_5
    const-string v3, "gps"

    goto :goto_0

    :cond_6
    invoke-direct/range {p0 .. p0}, Lc/t/m/g/cx;->p()Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v3, 0xf9f

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lc/t/m/g/cx;->b(I)V

    :cond_7
    new-instance v8, Lc/t/m/g/dv$a;

    invoke-direct {v8}, Lc/t/m/g/dv$a;-><init>()V

    iput-object v11, v8, Lc/t/m/g/dv$a;->b:Lc/t/m/g/dv;

    const-string v3, "gps"

    iput-object v3, v8, Lc/t/m/g/dv$a;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lc/t/m/g/cx;->T:Z

    if-eqz v3, :cond_8

    const-string v3, "fake"

    :goto_2
    iput-object v3, v8, Lc/t/m/g/dv$a;->e:Ljava/lang/String;

    iput v10, v8, Lc/t/m/g/dv$a;->c:I

    new-instance v3, Landroid/location/Location;

    move-object/from16 v0, p1

    iget-object v9, v0, Lc/t/m/g/dk;->a:Landroid/location/Location;

    invoke-direct {v3, v9}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v8, v3}, Lc/t/m/g/dv$a;->a(Landroid/location/Location;)Lc/t/m/g/dv$a;

    move-result-object v3

    invoke-virtual {v3}, Lc/t/m/g/dv$a;->a()Lc/t/m/g/dv;

    move-result-object v3

    invoke-virtual {v12, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    invoke-virtual {v12, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    invoke-virtual {v3, v12}, Lc/t/m/g/dv;->a(Landroid/location/Location;)V

    const-string v4, "TxLocationManagerImpl"

    const-string/jumbo v5, "updateLastLocation"

    invoke-static {v4, v5}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lc/t/m/g/dv;->a(I)Lc/t/m/g/dv;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lc/t/m/g/cx;->a(ILc/t/m/g/dv;)V

    const/16 v2, 0x2ee4

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lc/t/m/g/cx;->a(II)V

    goto :goto_1

    :cond_8
    const-string v3, "gps"

    goto :goto_2
.end method

.method public final onNetworkEvent(Ljava/lang/Integer;)V
    .locals 4

    .prologue
    .line 946
    iget-object v0, p0, Lc/t/m/g/cx;->v:Lc/t/m/g/cj;

    iget-object v0, v0, Lc/t/m/g/cj;->a:Landroid/content/Context;

    invoke-static {v0}, Lc/t/m/g/f$a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 947
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 959
    :goto_0
    return-void

    .line 949
    :pswitch_0
    const-string v0, "TxLocationManagerImpl"

    const-string v1, "onNetworkEvent: networks not found"

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 953
    :pswitch_1
    const-string v1, "TxLocationManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onNetworkEvent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " disconnected"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 957
    :pswitch_2
    const-string v1, "TxLocationManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onNetworkEvent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " connected"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    const/16 v0, 0x1f3f

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v2, v3}, Lc/t/m/g/cx;->a(IJ)V

    goto :goto_0

    .line 947
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onStatusEvent(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 942
    iget v0, p1, Landroid/os/Message;->what:I

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lc/t/m/g/cx;->a(II)V

    .line 943
    return-void
.end method

.method public final onWifiInfoEvent(Lc/t/m/g/dn;)V
    .locals 5

    .prologue
    const/16 v4, 0xf9f

    .line 933
    const-string v0, "TxLocationManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "wifiCallback:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    iget-object v0, p0, Lc/t/m/g/cx;->c:Lc/t/m/g/cx$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/cx;->c:Lc/t/m/g/cx$a;

    const-string/jumbo v1, "wifi_not_received"

    invoke-virtual {v0, v4, v1}, Lc/t/m/g/cx$a;->removeMessages(ILjava/lang/Object;)V

    :cond_0
    sget-object v0, Lc/t/m/g/dn;->a:Lc/t/m/g/dn;

    if-ne p1, v0, :cond_1

    const-string v0, "TxLocationManagerImpl"

    const-string v1, "onWifiChanged --> clear wifi if needed"

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x22b

    const-wide/16 v2, 0x5dc

    invoke-direct {p0, v0, v2, v3}, Lc/t/m/g/cx;->a(IJ)V

    .line 935
    :goto_0
    return-void

    .line 934
    :cond_1
    iget-object v0, p0, Lc/t/m/g/cx;->s:Lc/t/m/g/dn;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lc/t/m/g/cx;->F:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lc/t/m/g/dn;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lc/t/m/g/cx;->s:Lc/t/m/g/dn;

    invoke-virtual {v0, p1}, Lc/t/m/g/dn;->a(Lc/t/m/g/dn;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "TxLocationManagerImpl"

    const-string v1, "onWifiChanged: --> prepare json"

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lc/t/m/g/cx;->b(I)V

    :cond_3
    iput-object p1, p0, Lc/t/m/g/cx;->s:Lc/t/m/g/dn;

    goto :goto_0
.end method
