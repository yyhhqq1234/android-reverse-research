.class public Lcom/tencent/mna/b/g/d;
.super Ljava/lang/Object;
.source "RouterProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/b/g/d$a;
    }
.end annotation


# static fields
.field public static A:J

.field public static B:I

.field public static C:I

.field public static D:Lorg/json/JSONObject;

.field public static E:Z

.field public static F:Ljava/lang/String;

.field public static G:Z

.field private static H:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static I:Lcom/tencent/mna/b/g/a;

.field public static a:I

.field public static b:Ljava/lang/String;

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:I

.field public static h:I

.field public static i:I

.field public static j:I

.field public static k:I

.field public static l:I

.field public static m:I

.field public static n:I

.field public static o:I

.field public static p:I

.field public static q:I

.field public static r:I

.field public static s:I

.field public static t:I

.field public static u:I

.field public static v:I

.field public static w:Ljava/lang/String;

.field public static x:Ljava/lang/String;

.field public static y:I

.field public static z:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 60
    sput v1, Lcom/tencent/mna/b/g/d;->a:I

    .line 61
    const-string v0, ""

    sput-object v0, Lcom/tencent/mna/b/g/d;->b:Ljava/lang/String;

    .line 62
    sput v1, Lcom/tencent/mna/b/g/d;->c:I

    .line 64
    sput v1, Lcom/tencent/mna/b/g/d;->d:I

    .line 65
    const/16 v0, 0xa

    sput v0, Lcom/tencent/mna/b/g/d;->e:I

    .line 66
    sput v1, Lcom/tencent/mna/b/g/d;->f:I

    .line 67
    sput v1, Lcom/tencent/mna/b/g/d;->g:I

    .line 68
    sput v1, Lcom/tencent/mna/b/g/d;->h:I

    .line 69
    sput v1, Lcom/tencent/mna/b/g/d;->i:I

    .line 71
    sput v1, Lcom/tencent/mna/b/g/d;->j:I

    .line 72
    sput v1, Lcom/tencent/mna/b/g/d;->k:I

    .line 73
    sput v1, Lcom/tencent/mna/b/g/d;->l:I

    .line 75
    sput v1, Lcom/tencent/mna/b/g/d;->m:I

    .line 76
    sput v1, Lcom/tencent/mna/b/g/d;->n:I

    .line 77
    sput v1, Lcom/tencent/mna/b/g/d;->o:I

    .line 78
    sput v1, Lcom/tencent/mna/b/g/d;->p:I

    .line 79
    sput v1, Lcom/tencent/mna/b/g/d;->q:I

    .line 80
    sput v1, Lcom/tencent/mna/b/g/d;->r:I

    .line 86
    const/16 v0, 0x7d0

    sput v0, Lcom/tencent/mna/b/g/d;->s:I

    .line 87
    const/16 v0, 0x1388

    sput v0, Lcom/tencent/mna/b/g/d;->t:I

    .line 88
    const/16 v0, 0x1f4

    sput v0, Lcom/tencent/mna/b/g/d;->u:I

    .line 90
    const-string v0, ""

    sput-object v0, Lcom/tencent/mna/b/g/d;->w:Ljava/lang/String;

    .line 91
    const-string v0, ""

    sput-object v0, Lcom/tencent/mna/b/g/d;->x:Ljava/lang/String;

    .line 92
    const/4 v0, -0x1

    sput v0, Lcom/tencent/mna/b/g/d;->y:I

    .line 93
    sput-wide v4, Lcom/tencent/mna/b/g/d;->z:J

    .line 94
    sput-wide v4, Lcom/tencent/mna/b/g/d;->A:J

    .line 95
    sput v1, Lcom/tencent/mna/b/g/d;->B:I

    .line 96
    sput v1, Lcom/tencent/mna/b/g/d;->C:I

    .line 97
    sput-object v2, Lcom/tencent/mna/b/g/d;->D:Lorg/json/JSONObject;

    .line 98
    sput-boolean v1, Lcom/tencent/mna/b/g/d;->E:Z

    .line 102
    const-string v0, ""

    sput-object v0, Lcom/tencent/mna/b/g/d;->F:Ljava/lang/String;

    .line 104
    sput-boolean v1, Lcom/tencent/mna/b/g/d;->G:Z

    .line 569
    sput-object v2, Lcom/tencent/mna/b/g/d;->I:Lcom/tencent/mna/b/g/a;

    return-void
.end method

.method private static a(Lorg/json/JSONArray;)Lcom/tencent/mna/b/g/c;
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/16 v8, -0xa

    const/16 v4, -0x63

    .line 224
    const-string v0, "\n> RouterProtocol \u542f\u52a8 \u5e26\u5bbdqos"

    invoke-static {v0}, Lcom/tencent/mna/b/g/d;->b(Ljava/lang/String;)V

    .line 225
    new-instance v0, Lcom/tencent/mna/b/g/c;

    invoke-direct {v0}, Lcom/tencent/mna/b/g/c;-><init>()V

    .line 227
    sget-boolean v1, Lcom/tencent/mna/b/g/d;->G:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/tencent/mna/b/g/d;->a:I

    if-gtz v1, :cond_1

    .line 228
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RouterProtocol startQos\u5931\u8d25\uff0cinit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/tencent/mna/b/g/d;->G:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",rport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/mna/b/g/d;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/b/g/d;->b(Ljava/lang/String;)V

    .line 229
    iput v4, v0, Lcom/tencent/mna/b/g/c;->a:I

    .line 284
    :goto_0
    return-object v0

    .line 233
    :cond_1
    sget v1, Lcom/tencent/mna/b/g/d;->c:I

    if-lez v1, :cond_2

    move v1, v2

    .line 234
    :goto_1
    if-nez v1, :cond_3

    sget v3, Lcom/tencent/mna/b/g/d;->o:I

    if-nez v3, :cond_3

    sget v3, Lcom/tencent/mna/b/g/d;->p:I

    if-nez v3, :cond_3

    sget v3, Lcom/tencent/mna/b/g/d;->q:I

    if-nez v3, :cond_3

    sget v3, Lcom/tencent/mna/b/g/d;->r:I

    if-nez v3, :cond_3

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RouterProtocol startQos\u5931\u8d25\uff0c\u5f00\u5173\u5173\u95ed\uff0cbrandqos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",glmode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/mna/b/g/d;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",lowloadmode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/mna/b/g/d;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",signalmode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/mna/b/g/d;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",promode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/mna/b/g/d;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/b/g/d;->b(Ljava/lang/String;)V

    .line 239
    iput v4, v0, Lcom/tencent/mna/b/g/c;->a:I

    goto :goto_0

    .line 233
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 243
    :cond_3
    sget-object v3, Lcom/tencent/mna/b/g/d;->F:Ljava/lang/String;

    if-eqz v3, :cond_4

    sget-object v3, Lcom/tencent/mna/b/g/d;->F:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_4

    sget-object v2, Lcom/tencent/mna/b/g/d;->F:Ljava/lang/String;

    sget-object v3, Lcom/tencent/mna/b/g/d;->H:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/mna/base/f/r;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 244
    :cond_4
    const-string v1, "RouterProtocol startQos\u5931\u8d25\uff0c\u8def\u7531bssid\u4e0d\u4e00\u81f4"

    invoke-static {v1}, Lcom/tencent/mna/b/g/d;->b(Ljava/lang/String;)V

    .line 245
    const/16 v1, -0x62

    iput v1, v0, Lcom/tencent/mna/b/g/c;->a:I

    goto/16 :goto_0

    .line 249
    :cond_5
    sget v2, Lcom/tencent/mna/b/g/d;->c:I

    .line 250
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 252
    if-nez p0, :cond_6

    .line 253
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 257
    :cond_6
    :try_start_0
    const-string v4, "phonemac"

    sget-object v5, Lcom/tencent/mna/b/g/d;->w:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    const-string/jumbo v4, "token"

    sget-wide v6, Lcom/tencent/mna/b/g/d;->z:J

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 259
    const-string/jumbo v4, "validtime"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 260
    const-string v2, "brandqos"

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 261
    const-string v1, "brandlimit"

    sget v2, Lcom/tencent/mna/b/g/d;->m:I

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 262
    const-string v1, "glmode"

    sget v2, Lcom/tencent/mna/b/g/d;->o:I

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 263
    const-string v1, "lowloadmode"

    sget v2, Lcom/tencent/mna/b/g/d;->p:I

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 264
    const-string v1, "signalmode"

    sget v2, Lcom/tencent/mna/b/g/d;->q:I

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 265
    const-string v1, "signallimit"

    sget v2, Lcom/tencent/mna/b/g/d;->n:I

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 266
    const-string v1, "promode"

    sget v2, Lcom/tencent/mna/b/g/d;->r:I

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 267
    const-string/jumbo v1, "viparray"

    invoke-virtual {v3, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    const/16 v1, 0x3ed

    const/16 v2, 0x3ee

    invoke-static {v1, v2, v3}, Lcom/tencent/mna/b/g/d;->a(SSLorg/json/JSONObject;)Lcom/tencent/mna/b/g/c;

    move-result-object v0

    .line 269
    iget v1, v0, Lcom/tencent/mna/b/g/c;->a:I

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/tencent/mna/b/g/c;->c:Lcom/tencent/mna/b/g/b;

    if-eqz v1, :cond_7

    .line 270
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, v0, Lcom/tencent/mna/b/g/c;->c:Lcom/tencent/mna/b/g/b;

    iget-object v2, v2, Lcom/tencent/mna/b/g/b;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 271
    const-string v2, "errno"

    const/16 v3, -0xa

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 272
    if-nez v1, :cond_8

    .line 273
    const-string v1, "RouterProtocol \u5e26\u5bbdqos\u542f\u52a8\u6210\u529f"

    invoke-static {v1}, Lcom/tencent/mna/b/g/d;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :cond_7
    :goto_2
    invoke-static {v0}, Lcom/tencent/mna/b/g/d;->a(Lcom/tencent/mna/b/g/c;)V

    goto/16 :goto_0

    .line 275
    :cond_8
    :try_start_1
    iput v1, v0, Lcom/tencent/mna/b/g/c;->a:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 278
    :catch_0
    move-exception v1

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RouterProtocol startQos failed, exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 280
    iput v8, v0, Lcom/tencent/mna/b/g/c;->a:I

    goto :goto_2
.end method

.method private static a(SSLorg/json/JSONObject;)Lcom/tencent/mna/b/g/c;
    .locals 2

    .prologue
    .line 479
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/b/g/d;->b(SSLorg/json/JSONObject;)Lcom/tencent/mna/b/g/c;

    move-result-object v0

    .line 480
    iget v1, v0, Lcom/tencent/mna/b/g/c;->a:I

    if-eqz v1, :cond_0

    .line 481
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/b/g/d;->b(SSLorg/json/JSONObject;)Lcom/tencent/mna/b/g/c;

    move-result-object v0

    .line 483
    :cond_0
    return-object v0
.end method

.method public static a(Ljava/util/List;)Lcom/tencent/mna/b/g/d$a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tencent/mna/b/g/d$a;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/16 v5, -0x65

    const/16 v4, -0x66

    const/4 v1, 0x0

    .line 652
    invoke-static {}, Lcom/tencent/mna/b/g/d;->b()Lcom/tencent/mna/b/g/c;

    move-result-object v0

    .line 654
    new-instance v2, Lcom/tencent/mna/b/g/d$a;

    invoke-direct {v2}, Lcom/tencent/mna/b/g/d$a;-><init>()V

    .line 655
    sget v3, Lcom/tencent/mna/b/g/d;->a:I

    iput v3, v2, Lcom/tencent/mna/b/g/d$a;->g:I

    .line 656
    sget v3, Lcom/tencent/mna/b/g/d;->y:I

    iput v3, v2, Lcom/tencent/mna/b/g/d$a;->a:I

    .line 657
    iget v0, v0, Lcom/tencent/mna/b/g/c;->a:I

    if-nez v0, :cond_1

    .line 658
    iput v6, v2, Lcom/tencent/mna/b/g/d$a;->e:I

    .line 659
    sget-object v0, Lcom/tencent/mna/b/g/d;->x:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/mna/b/g/d$a;->f:Ljava/lang/String;

    .line 664
    :goto_0
    invoke-static {}, Lcom/tencent/mna/b/g/d;->c()Lcom/tencent/mna/b/g/c;

    move-result-object v0

    .line 665
    iget v3, v0, Lcom/tencent/mna/b/g/c;->a:I

    iput v3, v2, Lcom/tencent/mna/b/g/d$a;->b:I

    .line 666
    iget v0, v0, Lcom/tencent/mna/b/g/c;->a:I

    if-nez v0, :cond_4

    .line 667
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 668
    :cond_0
    const-string v0, "RouterProtocol \u89e3\u6790\u6e38\u620f\u57df\u540d\u5931\u8d25\uff0c\u4f20\u5165\u5217\u8868\u4e3a\u7a7a"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V

    .line 669
    iput v5, v2, Lcom/tencent/mna/b/g/d$a;->c:I

    .line 670
    iput v5, v2, Lcom/tencent/mna/b/g/d$a;->d:I

    .line 688
    :goto_1
    sget-object v0, Lcom/tencent/mna/a/a;->a:Ljava/util/Locale;

    const-string/jumbo v3, "\u9519\u8bef\u7801\uff1a%d_%d_%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, v2, Lcom/tencent/mna/b/g/d$a;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget v1, v2, Lcom/tencent/mna/b/g/d$a;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    const/4 v1, 0x2

    iget v5, v2, Lcom/tencent/mna/b/g/d$a;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/b/g/d;->b(Ljava/lang/String;)V

    .line 689
    return-object v2

    .line 661
    :cond_1
    iput v1, v2, Lcom/tencent/mna/b/g/d$a;->e:I

    goto :goto_0

    .line 672
    :cond_2
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 673
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    move v0, v1

    .line 674
    :goto_2
    if-ge v0, v4, :cond_3

    .line 675
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 674
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 678
    :cond_3
    invoke-static {v3}, Lcom/tencent/mna/b/g/d;->a(Lorg/json/JSONArray;)Lcom/tencent/mna/b/g/c;

    move-result-object v0

    .line 679
    iget v0, v0, Lcom/tencent/mna/b/g/c;->a:I

    iput v0, v2, Lcom/tencent/mna/b/g/d$a;->c:I

    .line 681
    invoke-static {v3}, Lcom/tencent/mna/b/g/d;->b(Lorg/json/JSONArray;)Lcom/tencent/mna/b/g/c;

    move-result-object v0

    .line 682
    iget v0, v0, Lcom/tencent/mna/b/g/c;->a:I

    iput v0, v2, Lcom/tencent/mna/b/g/d$a;->d:I

    goto :goto_1

    .line 685
    :cond_4
    iput v4, v2, Lcom/tencent/mna/b/g/d$a;->c:I

    .line 686
    iput v4, v2, Lcom/tencent/mna/b/g/d$a;->d:I

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 127
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v0

    const-string v1, "gsdkrouterinfo"

    const/4 v2, 0x0

    .line 128
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 129
    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    const-string v0, ""

    goto :goto_0
.end method

.method public static a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 116
    sput v0, Lcom/tencent/mna/b/g/d;->a:I

    .line 117
    sput v0, Lcom/tencent/mna/b/g/d;->f:I

    .line 118
    sput v0, Lcom/tencent/mna/b/g/d;->g:I

    .line 119
    sput v0, Lcom/tencent/mna/b/g/d;->h:I

    .line 120
    sput v0, Lcom/tencent/mna/b/g/d;->i:I

    .line 121
    sput v0, Lcom/tencent/mna/b/g/d;->c:I

    .line 122
    sput v0, Lcom/tencent/mna/b/g/d;->d:I

    .line 123
    return-void
.end method

.method public static a(ILandroid/content/Context;)V
    .locals 1

    .prologue
    .line 107
    sput p0, Lcom/tencent/mna/b/g/d;->v:I

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/mna/b/g/d;->H:Landroid/content/Context;

    .line 109
    sget-object v0, Lcom/tencent/mna/b/g/d;->H:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mna/base/f/r;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mna/b/g/d;->w:Ljava/lang/String;

    .line 110
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/mna/b/g/d;->G:Z

    .line 111
    return-void
.end method

.method public static a(ILjava/lang/String;IIIIIIIIIIIIIIIIIII)V
    .locals 0

    .prologue
    .line 607
    sput p0, Lcom/tencent/mna/b/g/d;->a:I

    .line 608
    sput-object p1, Lcom/tencent/mna/b/g/d;->b:Ljava/lang/String;

    .line 609
    sput p2, Lcom/tencent/mna/b/g/d;->c:I

    .line 610
    sput p3, Lcom/tencent/mna/b/g/d;->f:I

    .line 611
    sput p4, Lcom/tencent/mna/b/g/d;->g:I

    .line 612
    sput p5, Lcom/tencent/mna/b/g/d;->h:I

    .line 613
    sput p6, Lcom/tencent/mna/b/g/d;->j:I

    .line 614
    sput p7, Lcom/tencent/mna/b/g/d;->k:I

    .line 615
    sput p8, Lcom/tencent/mna/b/g/d;->l:I

    .line 616
    sput p9, Lcom/tencent/mna/b/g/d;->d:I

    .line 617
    sput p10, Lcom/tencent/mna/b/g/d;->e:I

    .line 618
    sput p11, Lcom/tencent/mna/b/g/d;->i:I

    .line 619
    sput p12, Lcom/tencent/mna/b/g/d;->m:I

    .line 620
    sput p13, Lcom/tencent/mna/b/g/d;->o:I

    .line 621
    sput p14, Lcom/tencent/mna/b/g/d;->p:I

    .line 622
    sput p15, Lcom/tencent/mna/b/g/d;->q:I

    .line 623
    sput p16, Lcom/tencent/mna/b/g/d;->n:I

    .line 624
    sput p17, Lcom/tencent/mna/b/g/d;->r:I

    .line 625
    sput p18, Lcom/tencent/mna/b/g/d;->s:I

    .line 626
    sput p19, Lcom/tencent/mna/b/g/d;->t:I

    .line 627
    sput p20, Lcom/tencent/mna/b/g/d;->u:I

    .line 628
    return-void
.end method

.method private static a(Lcom/tencent/mna/b/g/b;)V
    .locals 1

    .prologue
    .line 585
    if-eqz p0, :cond_0

    .line 586
    invoke-virtual {p0}, Lcom/tencent/mna/b/g/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 587
    sget-object v0, Lcom/tencent/mna/b/g/d;->I:Lcom/tencent/mna/b/g/a;

    if-eqz v0, :cond_0

    .line 588
    sget-object v0, Lcom/tencent/mna/b/g/d;->I:Lcom/tencent/mna/b/g/a;

    invoke-interface {v0, p0}, Lcom/tencent/mna/b/g/a;->a(Lcom/tencent/mna/b/g/b;)V

    .line 591
    :cond_0
    return-void
.end method

.method private static a(Lcom/tencent/mna/b/g/c;)V
    .locals 1

    .prologue
    .line 594
    if-eqz p0, :cond_0

    .line 595
    invoke-virtual {p0}, Lcom/tencent/mna/b/g/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 596
    sget-object v0, Lcom/tencent/mna/b/g/d;->I:Lcom/tencent/mna/b/g/a;

    if-eqz v0, :cond_0

    .line 597
    sget-object v0, Lcom/tencent/mna/b/g/d;->I:Lcom/tencent/mna/b/g/a;

    invoke-interface {v0, p0}, Lcom/tencent/mna/b/g/a;->a(Lcom/tencent/mna/b/g/c;)V

    .line 600
    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 136
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v0

    const-string v1, "gsdkrouterinfo"

    const/4 v2, 0x0

    .line 137
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 138
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 139
    return-void
.end method

.method public static b()Lcom/tencent/mna/b/g/c;
    .locals 6

    .prologue
    .line 143
    const-string v0, "\n> RouterProtocol \u542f\u52a8 \u83b7\u53d6\u7248\u672c\u4fe1\u606f"

    invoke-static {v0}, Lcom/tencent/mna/b/g/d;->b(Ljava/lang/String;)V

    .line 146
    sget-object v0, Lcom/tencent/mna/b/g/d;->H:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mna/base/f/r;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 147
    new-instance v0, Lcom/tencent/mna/b/g/c;

    invoke-direct {v0}, Lcom/tencent/mna/b/g/c;-><init>()V

    .line 149
    sget-boolean v1, Lcom/tencent/mna/b/g/d;->G:Z

    if-nez v1, :cond_0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RouterProtocol getVersion\u5931\u8d25\uff0cinit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/tencent/mna/b/g/d;->G:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",rport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/mna/b/g/d;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/b/g/d;->b(Ljava/lang/String;)V

    .line 175
    :goto_0
    return-object v0

    .line 154
    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 156
    :try_start_0
    const-string v1, "phonemac"

    sget-object v2, Lcom/tencent/mna/b/g/d;->w:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const/4 v1, 0x1

    .line 158
    :goto_1
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_1

    .line 159
    const/16 v1, 0x3e9

    const/16 v5, 0x3ea

    invoke-static {v1, v5, v4}, Lcom/tencent/mna/b/g/d;->a(SSLorg/json/JSONObject;)Lcom/tencent/mna/b/g/c;

    move-result-object v0

    .line 160
    iget v1, v0, Lcom/tencent/mna/b/g/c;->a:I

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/tencent/mna/b/g/c;->c:Lcom/tencent/mna/b/g/b;

    if-eqz v1, :cond_2

    .line 161
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, v0, Lcom/tencent/mna/b/g/c;->c:Lcom/tencent/mna/b/g/b;

    iget-object v2, v2, Lcom/tencent/mna/b/g/b;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 162
    const-string v2, "routername"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tencent/mna/b/g/d;->x:Ljava/lang/String;

    .line 163
    const-string v2, "allowgamemode"

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/tencent/mna/b/g/d;->y:I

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RouterProtocol \u83b7\u53d6\u7248\u672c\u4fe1\u606f\u6210\u529f\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/mna/b/g/d;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/b/g/d;->b(Ljava/lang/String;)V

    .line 165
    sget-object v1, Lcom/tencent/mna/b/g/d;->x:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/tencent/mna/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :cond_1
    :goto_2
    invoke-static {v0}, Lcom/tencent/mna/b/g/d;->a(Lcom/tencent/mna/b/g/c;)V

    goto :goto_0

    .line 169
    :catch_0
    move-exception v1

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RouterProtocol getVersion failed, exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 171
    const/16 v1, -0xa

    iput v1, v0, Lcom/tencent/mna/b/g/c;->a:I

    goto :goto_2

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private static b(Lorg/json/JSONArray;)Lcom/tencent/mna/b/g/c;
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/16 v12, -0xa

    .line 289
    const-string v0, "\n> RouterProtocol \u542f\u52a8 \u53cc\u53d1\u53bb\u91cd"

    invoke-static {v0}, Lcom/tencent/mna/b/g/d;->b(Ljava/lang/String;)V

    .line 291
    new-instance v0, Lcom/tencent/mna/b/g/c;

    invoke-direct {v0}, Lcom/tencent/mna/b/g/c;-><init>()V

    .line 293
    sget-boolean v1, Lcom/tencent/mna/b/g/d;->G:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/tencent/mna/b/g/d;->a:I

    if-lez v1, :cond_0

    sget v1, Lcom/tencent/mna/b/g/d;->d:I

    if-lez v1, :cond_0

    sget v1, Lcom/tencent/mna/b/g/d;->f:I

    if-gtz v1, :cond_1

    sget v1, Lcom/tencent/mna/b/g/d;->j:I

    if-gtz v1, :cond_1

    .line 295
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RouterProtocol startDoubleSend\u5931\u8d25\uff0cinit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/tencent/mna/b/g/d;->G:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",doublegap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/mna/b/g/d;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",rport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/mna/b/g/d;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",rds:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/mna/b/g/d;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",rdoublegap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/mna/b/g/d;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/b/g/d;->b(Ljava/lang/String;)V

    .line 296
    const/16 v1, -0x63

    iput v1, v0, Lcom/tencent/mna/b/g/c;->a:I

    .line 356
    :goto_0
    return-object v0

    .line 300
    :cond_1
    sget-object v1, Lcom/tencent/mna/b/g/d;->F:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/tencent/mna/b/g/d;->F:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v9, :cond_2

    sget-object v1, Lcom/tencent/mna/b/g/d;->F:Ljava/lang/String;

    sget-object v2, Lcom/tencent/mna/b/g/d;->H:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/mna/base/f/r;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 301
    :cond_2
    const-string v1, "RouterProtocol startQos\u5931\u8d25\uff0c\u8def\u7531bssid\u4e0d\u4e00\u81f4"

    invoke-static {v1}, Lcom/tencent/mna/b/g/d;->b(Ljava/lang/String;)V

    .line 302
    const/16 v1, -0x62

    iput v1, v0, Lcom/tencent/mna/b/g/c;->a:I

    goto :goto_0

    .line 306
    :cond_3
    sget v1, Lcom/tencent/mna/b/g/d;->f:I

    .line 307
    sget v2, Lcom/tencent/mna/b/g/d;->g:I

    .line 308
    sget v3, Lcom/tencent/mna/b/g/d;->h:I

    .line 309
    sget v4, Lcom/tencent/mna/b/g/d;->e:I

    .line 310
    sget v5, Lcom/tencent/mna/b/g/d;->j:I

    .line 311
    sget v6, Lcom/tencent/mna/b/g/d;->k:I

    .line 312
    sget v7, Lcom/tencent/mna/b/g/d;->l:I

    .line 320
    if-lez v5, :cond_4

    sget-boolean v8, Lcom/tencent/mna/b/g/d;->E:Z

    if-nez v8, :cond_4

    .line 321
    sget v8, Lcom/tencent/mna/b/g/d;->e:I

    invoke-static {v9, v8}, Lcom/tencent/mna/base/jni/e;->a(ZI)V

    .line 324
    :cond_4
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 327
    :try_start_0
    const-string/jumbo v9, "token"

    sget-wide v10, Lcom/tencent/mna/b/g/d;->z:J

    invoke-virtual {v8, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 328
    const-string v9, "phonemac"

    sget-object v10, Lcom/tencent/mna/b/g/d;->w:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    const-string/jumbo v9, "viparray"

    invoke-virtual {v8, v9, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 330
    const-string v9, "doublegap"

    invoke-virtual {v8, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 331
    const-string/jumbo v5, "thirdgap"

    invoke-virtual {v8, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 332
    const-string v5, "fourgap"

    invoke-virtual {v8, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 333
    const-string v5, "dupgap"

    invoke-virtual {v8, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 334
    const/16 v5, 0x3ef

    const/16 v6, 0x3f0

    invoke-static {v5, v6, v8}, Lcom/tencent/mna/b/g/d;->a(SSLorg/json/JSONObject;)Lcom/tencent/mna/b/g/c;

    move-result-object v0

    .line 335
    iget v5, v0, Lcom/tencent/mna/b/g/c;->a:I

    if-nez v5, :cond_5

    iget-object v5, v0, Lcom/tencent/mna/b/g/c;->c:Lcom/tencent/mna/b/g/b;

    if-eqz v5, :cond_5

    .line 336
    new-instance v5, Lorg/json/JSONObject;

    iget-object v6, v0, Lcom/tencent/mna/b/g/c;->c:Lcom/tencent/mna/b/g/b;

    iget-object v6, v6, Lcom/tencent/mna/b/g/b;->e:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 337
    const-string v6, "errno"

    const/16 v7, -0xa

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 338
    if-nez v5, :cond_6

    .line 339
    const-string v5, "RouterProtocol \u8def\u7531\u5668\u542f\u52a8\u53cc\u53d1\u53bb\u91cd\u6210\u529f\uff0c\u542f\u52a8\u672c\u5730\u53cc\u53d1"

    invoke-static {v5}, Lcom/tencent/mna/b/g/d;->b(Ljava/lang/String;)V

    .line 340
    sget v5, Lcom/tencent/mna/b/g/d;->i:I

    invoke-static {v1, v2, v3, v5}, Lcom/tencent/mna/base/jni/e;->a(IIII)V

    .line 346
    :cond_5
    :goto_1
    invoke-static {v0}, Lcom/tencent/mna/b/g/d;->a(Lcom/tencent/mna/b/g/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 348
    :catch_0
    move-exception v1

    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RouterProtocol startDoubleSend failed, exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 350
    iput v12, v0, Lcom/tencent/mna/b/g/c;->a:I

    .line 353
    const/4 v1, 0x0

    invoke-static {v1, v4}, Lcom/tencent/mna/base/jni/e;->a(ZI)V

    .line 355
    invoke-static {v0}, Lcom/tencent/mna/b/g/d;->a(Lcom/tencent/mna/b/g/c;)V

    goto/16 :goto_0

    .line 342
    :cond_6
    :try_start_1
    iput v5, v0, Lcom/tencent/mna/b/g/c;->a:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static b(SSLorg/json/JSONObject;)Lcom/tencent/mna/b/g/c;
    .locals 12

    .prologue
    .line 488
    new-instance v1, Lcom/tencent/mna/b/g/c;

    invoke-direct {v1}, Lcom/tencent/mna/b/g/c;-><init>()V

    .line 493
    sget v0, Lcom/tencent/mna/b/g/d;->s:I

    .line 494
    const/16 v2, 0x3f1

    if-ne p0, v2, :cond_1

    .line 495
    sget v0, Lcom/tencent/mna/b/g/d;->u:I

    .line 501
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/tencent/mna/b/g/e;->a(I)Ljava/net/DatagramSocket;

    move-result-object v3

    .line 502
    if-nez v3, :cond_4

    .line 503
    const/4 v0, -0x1

    iput v0, v1, Lcom/tencent/mna/b/g/c;->a:I

    move-object v0, v1

    .line 555
    :goto_1
    return-object v0

    .line 496
    :cond_1
    const/16 v2, 0x3ef

    if-eq p0, v2, :cond_2

    const/16 v2, 0x3ed

    if-ne p0, v2, :cond_3

    .line 497
    :cond_2
    sget v0, Lcom/tencent/mna/b/g/d;->t:I

    goto :goto_0

    .line 498
    :cond_3
    const/16 v2, 0x3eb

    if-ne p0, v2, :cond_0

    .line 499
    sget v0, Lcom/tencent/mna/b/g/d;->s:I

    goto :goto_0

    .line 509
    :cond_4
    :try_start_0
    sget v2, Lcom/tencent/mna/b/g/d;->v:I

    const/4 v4, 0x1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, p0, v5}, Lcom/tencent/mna/b/g/b;->a(ISSLjava/lang/String;)Lcom/tencent/mna/b/g/b;

    move-result-object v4

    .line 510
    invoke-static {v4}, Lcom/tencent/mna/b/g/d;->a(Lcom/tencent/mna/b/g/b;)V

    .line 512
    sget v2, Lcom/tencent/mna/b/g/d;->a:I

    .line 513
    const/16 v5, 0x3e9

    if-ne p0, v5, :cond_5

    .line 514
    const/16 v2, 0x4571

    .line 516
    :cond_5
    if-nez v4, :cond_6

    .line 518
    const/4 v0, -0x3

    iput v0, v1, Lcom/tencent/mna/b/g/c;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    :try_start_1
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move-object v0, v1

    .line 519
    goto :goto_1

    .line 521
    :cond_6
    :try_start_2
    invoke-static {}, Lcom/tencent/mna/b/g/d;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/tencent/mna/b/g/b;->a()[B

    move-result-object v4

    invoke-static {v5, v2, v4}, Lcom/tencent/mna/b/g/e;->a(Ljava/lang/String;I[B)Ljava/net/DatagramPacket;

    move-result-object v2

    .line 522
    if-nez v2, :cond_7

    .line 524
    const/16 v0, -0x9

    iput v0, v1, Lcom/tencent/mna/b/g/c;->a:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 549
    :try_start_3
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    move-object v0, v1

    .line 525
    goto :goto_1

    .line 527
    :cond_7
    :try_start_4
    invoke-virtual {v3, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 530
    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 531
    new-instance v4, Ljava/net/DatagramPacket;

    const/16 v5, 0x1000

    invoke-direct {v4, v2, v5}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 533
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 534
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    int-to-long v10, v0

    cmp-long v2, v8, v10

    if-gez v2, :cond_9

    .line 535
    invoke-virtual {v3, v4}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 536
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mna/b/g/b;->a([B)Lcom/tencent/mna/b/g/b;

    move-result-object v2

    .line 537
    if-eqz v2, :cond_8

    iget-short v5, v2, Lcom/tencent/mna/b/g/b;->c:S

    if-ne p1, v5, :cond_8

    .line 538
    iput-object v2, v1, Lcom/tencent/mna/b/g/c;->c:Lcom/tencent/mna/b/g/b;

    .line 539
    const/4 v0, 0x0

    iput v0, v1, Lcom/tencent/mna/b/g/c;->a:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 549
    :cond_9
    :try_start_5
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :goto_4
    move-object v0, v1

    .line 555
    goto :goto_1

    .line 543
    :catch_0
    move-exception v0

    .line 545
    const/4 v0, -0x3

    :try_start_6
    iput v0, v1, Lcom/tencent/mna/b/g/c;->a:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 549
    :try_start_7
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :goto_5
    move-object v0, v1

    .line 546
    goto/16 :goto_1

    .line 548
    :catchall_0
    move-exception v0

    .line 549
    :try_start_8
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 552
    :goto_6
    throw v0

    .line 550
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_6
.end method

.method private static b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 576
    if-eqz p0, :cond_0

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[N]\u8def\u7531Qos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RouterProtocol"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 578
    sget-object v0, Lcom/tencent/mna/b/g/d;->I:Lcom/tencent/mna/b/g/a;

    if-eqz v0, :cond_0

    .line 579
    sget-object v0, Lcom/tencent/mna/b/g/d;->I:Lcom/tencent/mna/b/g/a;

    invoke-interface {v0, p0}, Lcom/tencent/mna/b/g/a;->a(Ljava/lang/String;)V

    .line 582
    :cond_0
    return-void
.end method

.method public static c()Lcom/tencent/mna/b/g/c;
    .locals 9

    .prologue
    const/16 v8, -0xa

    .line 180
    const-string v0, "\n> RouterProtocol \u542f\u52a8 \u8ba4\u8bc1"

    invoke-static {v0}, Lcom/tencent/mna/b/g/d;->b(Ljava/lang/String;)V

    .line 181
    new-instance v0, Lcom/tencent/mna/b/g/c;

    invoke-direct {v0}, Lcom/tencent/mna/b/g/c;-><init>()V

    .line 183
    sget-boolean v1, Lcom/tencent/mna/b/g/d;->G:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/tencent/mna/b/g/d;->a:I

    if-gtz v1, :cond_1

    .line 184
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RouterProtocol auth\u5931\u8d25\uff0cinit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/tencent/mna/b/g/d;->G:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",rport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/mna/b/g/d;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/b/g/d;->b(Ljava/lang/String;)V

    .line 185
    const/16 v1, -0x63

    iput v1, v0, Lcom/tencent/mna/b/g/c;->a:I

    .line 219
    :goto_0
    return-object v0

    .line 189
    :cond_1
    sget-object v1, Lcom/tencent/mna/b/g/d;->F:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/tencent/mna/b/g/d;->F:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    sget-object v1, Lcom/tencent/mna/b/g/d;->F:Ljava/lang/String;

    sget-object v2, Lcom/tencent/mna/b/g/d;->H:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/mna/base/f/r;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 190
    :cond_2
    const-string v1, "RouterProtocol auth\u5931\u8d25\uff0c\u8def\u7531bssid\u4e0d\u4e00\u81f4"

    invoke-static {v1}, Lcom/tencent/mna/b/g/d;->b(Ljava/lang/String;)V

    .line 191
    const/16 v1, -0x62

    iput v1, v0, Lcom/tencent/mna/b/g/c;->a:I

    goto :goto_0

    .line 195
    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 198
    :try_start_0
    const-string v2, "phonemac"

    sget-object v3, Lcom/tencent/mna/b/g/d;->w:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string v2, "checksum"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    const-string/jumbo v2, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 201
    const/16 v2, 0x3eb

    const/16 v3, 0x3ec

    invoke-static {v2, v3, v1}, Lcom/tencent/mna/b/g/d;->a(SSLorg/json/JSONObject;)Lcom/tencent/mna/b/g/c;

    move-result-object v0

    .line 202
    iget v1, v0, Lcom/tencent/mna/b/g/c;->a:I

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/tencent/mna/b/g/c;->c:Lcom/tencent/mna/b/g/b;

    if-eqz v1, :cond_4

    .line 203
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, v0, Lcom/tencent/mna/b/g/c;->c:Lcom/tencent/mna/b/g/b;

    iget-object v2, v2, Lcom/tencent/mna/b/g/b;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 204
    const-string v2, "errno"

    const/16 v3, -0xa

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 205
    if-nez v2, :cond_5

    .line 206
    const-string/jumbo v2, "token"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Lcom/tencent/mna/b/g/d;->z:J

    .line 207
    const-string v2, "expiredtime"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/tencent/mna/b/g/d;->B:I

    .line 208
    const-string v1, "RouterProtocol \u8ba4\u8bc1\u6210\u529f"

    invoke-static {v1}, Lcom/tencent/mna/b/g/d;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :cond_4
    :goto_1
    invoke-static {v0}, Lcom/tencent/mna/b/g/d;->a(Lcom/tencent/mna/b/g/c;)V

    goto/16 :goto_0

    .line 210
    :cond_5
    :try_start_1
    iput v2, v0, Lcom/tencent/mna/b/g/c;->a:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 213
    :catch_0
    move-exception v1

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RouterProtocol auth failed, exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 215
    iput v8, v0, Lcom/tencent/mna/b/g/c;->a:I

    goto :goto_1
.end method

.method public static d()Lcom/tencent/mna/b/g/c;
    .locals 8

    .prologue
    const/16 v7, -0xa

    const/4 v6, 0x0

    .line 361
    const-string v0, "\n> RouterProtocol \u542f\u52a8 \u7ed3\u675f\u8def\u7531\u53cc\u53d1\u53bb\u91cd"

    invoke-static {v0}, Lcom/tencent/mna/b/g/d;->b(Ljava/lang/String;)V

    .line 363
    new-instance v0, Lcom/tencent/mna/b/g/c;

    invoke-direct {v0}, Lcom/tencent/mna/b/g/c;-><init>()V

    .line 365
    sget-boolean v1, Lcom/tencent/mna/b/g/d;->G:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/tencent/mna/b/g/d;->a:I

    if-gtz v1, :cond_1

    .line 366
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RouterProtocol endSpeed\u5931\u8d25\uff0cinit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/tencent/mna/b/g/d;->G:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",rport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/mna/b/g/d;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/b/g/d;->b(Ljava/lang/String;)V

    .line 367
    const/16 v1, -0x63

    iput v1, v0, Lcom/tencent/mna/b/g/c;->a:I

    .line 409
    :goto_0
    return-object v0

    .line 371
    :cond_1
    sget-object v1, Lcom/tencent/mna/b/g/d;->F:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/tencent/mna/b/g/d;->F:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    sget-object v1, Lcom/tencent/mna/b/g/d;->F:Ljava/lang/String;

    sget-object v2, Lcom/tencent/mna/b/g/d;->H:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/mna/base/f/r;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 372
    :cond_2
    const-string v1, "RouterProtocol endSpeed\u5931\u8d25\uff0c\u8def\u7531bssid\u4e0d\u4e00\u81f4"

    invoke-static {v1}, Lcom/tencent/mna/b/g/d;->b(Ljava/lang/String;)V

    .line 373
    const/16 v1, -0x62

    iput v1, v0, Lcom/tencent/mna/b/g/c;->a:I

    goto :goto_0

    .line 381
    :cond_3
    invoke-static {v6, v6, v6, v6}, Lcom/tencent/mna/base/jni/e;->a(IIII)V

    .line 383
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 386
    :try_start_0
    const-string v2, "phonemac"

    sget-object v3, Lcom/tencent/mna/b/g/d;->w:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 387
    const-string/jumbo v2, "token"

    sget-wide v4, Lcom/tencent/mna/b/g/d;->z:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 389
    const/16 v2, 0x3f1

    const/16 v3, 0x3f2

    invoke-static {v2, v3, v1}, Lcom/tencent/mna/b/g/d;->a(SSLorg/json/JSONObject;)Lcom/tencent/mna/b/g/c;

    move-result-object v0

    .line 390
    iget v1, v0, Lcom/tencent/mna/b/g/c;->a:I

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/tencent/mna/b/g/c;->c:Lcom/tencent/mna/b/g/b;

    if-eqz v1, :cond_4

    .line 391
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, v0, Lcom/tencent/mna/b/g/c;->c:Lcom/tencent/mna/b/g/b;

    iget-object v2, v2, Lcom/tencent/mna/b/g/b;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 392
    const-string v2, "errno"

    const/16 v3, -0xa

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 393
    if-nez v1, :cond_5

    .line 394
    const-string v1, "RouterProtocol \u7ed3\u675f\u8def\u7531\u53cc\u53d1\u53bb\u91cd\u6210\u529f"

    invoke-static {v1}, Lcom/tencent/mna/b/g/d;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :cond_4
    :goto_1
    sget v1, Lcom/tencent/mna/b/g/d;->e:I

    invoke-static {v6, v1}, Lcom/tencent/mna/base/jni/e;->a(ZI)V

    .line 406
    invoke-static {}, Lcom/tencent/mna/b/g/d;->a()V

    .line 408
    invoke-static {v0}, Lcom/tencent/mna/b/g/d;->a(Lcom/tencent/mna/b/g/c;)V

    goto :goto_0

    .line 396
    :cond_5
    :try_start_1
    iput v1, v0, Lcom/tencent/mna/b/g/c;->a:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 399
    :catch_0
    move-exception v1

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RouterProtocol endSpeed failed, exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 401
    iput v7, v0, Lcom/tencent/mna/b/g/c;->a:I

    goto :goto_1
.end method

.method private static e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 559
    sget-object v0, Lcom/tencent/mna/b/g/d;->H:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mna/base/f/l;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 560
    sget-object v0, Lcom/tencent/mna/b/g/d;->H:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 561
    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 563
    iget v0, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v0}, Lcom/tencent/mna/base/f/f;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 566
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
