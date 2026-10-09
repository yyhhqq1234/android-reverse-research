.class public final Lcom/stub/StubApp;
.super Landroid/app/Application;


# static fields
.field private static a:Landroid/app/Application;

.field private static b:Ljava/lang/String;

.field private static c:Landroid/content/Context;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static loadFromLib:Z

.field private static needX86Bridge:Z

.field private static returnIntern:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v0, "\u06e0\u06e6\u06e5\u06da\u06e8\u06d7\u06dc\u06e2\u06dc\u06d8\u06e2\u06dc\u06eb\u06eb\u06d6\u06e6\u06d7\u06e1\u06d7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x6ed01e8d

    xor-int/2addr v1, v5

    xor-int/2addr v1, v2

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    sput-object v3, Lcom/stub/StubApp;->a:Landroid/app/Application;

    const-string v0, "\u06df\u06eb\u06da\u06da\u06e4\u06e1\u06d6\u06dc\u06da\u06e2\u06d8\u06e1\u06d8\u06eb\u06d8\u06e8\u06d8\u06db\u06da\u06e5\u06d8\u06e7\u06d9\u06d6\u06d8\u06e8\u06e8\u06d7"

    goto :goto_0

    :sswitch_1
    const-string v0, "libjiagu"

    sput-object v0, Lcom/stub/StubApp;->b:Ljava/lang/String;

    const-string v0, "\u06e1\u06d9\u06e6\u06d8\u06df\u06e2\u06d6\u06e1\u06e0\u06e1\u06d7\u06d7\u06e2\u06da\u06e4\u06da\u06e0\u06e8\u06d8\u06da\u06e2"

    goto :goto_0

    :sswitch_2
    sput-boolean v4, Lcom/stub/StubApp;->loadFromLib:Z

    const-string v0, "\u06df\u06dc\u06d6\u06e5\u06e1\u06e6\u06d8\u06d7\u06ec\u06ec\u06e5\u06dc\u06d8\u06d9\u06eb\u06e8\u06d8\u06db\u06d7\u06e5\u06d8\u06e4\u06e7\u06e6\u06d8\u06e7\u06dc\u06e1\u06da\u06ec\u06e6\u06d8"

    goto :goto_0

    :sswitch_3
    sput-boolean v4, Lcom/stub/StubApp;->needX86Bridge:Z

    const-string v0, "\u06d8\u06e5\u06e7\u06e6\u06db\u06d7\u06da\u06d9\u06d8\u06df\u06db\u06e5\u06d9\u06dc\u06d9\u06db\u06eb\u06db\u06e6\u06e5"

    goto :goto_0

    :sswitch_4
    sput-boolean v5, Lcom/stub/StubApp;->returnIntern:Z

    const-string v0, "\u06e0\u06e8\u06e7\u06e2\u06e4\u06ec\u06e6\u06dc\u06e1\u06d8\u06e5\u06db\u06d8\u06e4\u06e7\u06df\u06d6\u06da\u06d6\u06d8\u06e7\u06d8\u06e1\u06d8\u06dc\u06ec\u06e7\u06d7\u06e4\u06e1\u06d8"

    goto :goto_0

    :sswitch_5
    sput-object v3, Lcom/stub/StubApp;->d:Ljava/lang/String;

    const-string v0, "\u06e1\u06e1\u06d8\u06d8\u06df\u06dc\u06e1\u06ec\u06d6\u06df\u06e5\u06df\u06e4\u06e7\u06ec\u06e1"

    goto :goto_0

    :sswitch_6
    sput-object v3, Lcom/stub/StubApp;->e:Ljava/lang/String;

    const-string v0, "\u06d7\u06da\u06e0\u06e8\u06e6\u06ec\u06e6\u06e4\u06e8\u06d8\u06d9\u06e5\u06e4\u06db\u06d9\u06e1\u06df\u06e1\u06eb\u06dc\u06d8\u06e5\u06d8\u06e8\u06d7\u06d6\u06d8\u06e0\u06d8\u06db"

    goto :goto_0

    :sswitch_7
    sput-object v3, Lcom/stub/StubApp;->f:Ljava/lang/String;

    const-string v0, "\u06d7\u06ec\u06e8\u06e2\u06e7\u06e1\u06ec\u06e4\u06e2\u06d6\u06e6\u06d9\u06eb\u06eb\u06eb\u06e4\u06d7\u06d8\u06d8\u06d6\u06d6\u06db\u06ec\u06ec\u06df\u06d6\u06d8"

    goto :goto_0

    :sswitch_8
    sput-object v3, Lcom/stub/StubApp;->g:Ljava/lang/String;

    const-string v0, "\u06d7\u06eb\u06e5\u06e2\u06e4\u06d8\u06d8\u06dc\u06e0\u06e8\u06df\u06dc\u06e5\u06d8\u06d8\u06d9\u06e1\u06eb\u06d6\u06d6"

    goto :goto_0

    :sswitch_9
    sput-object v3, Lcom/stub/StubApp;->h:Ljava/lang/String;

    const-string v0, "\u06eb\u06e2\u06e0\u06e2\u06d8\u06e5\u06d8\u06db\u06e0\u06d9\u06db\u06e7\u06e8\u06d7\u06e8\u06e1\u06d8\u06e8\u06eb\u06e6\u06e1\u06da\u06e6\u06d8\u06e4\u06e0\u06db\u06e6\u06d8\u06ec"

    goto :goto_0

    :sswitch_a
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/stub/StubApp;->i:Ljava/util/Map;

    const-string v0, "\u06e6\u06e5\u06db\u06d6\u06ec\u06e5\u06d8\u06df\u06df\u06e7\u06d8\u06df\u06e5\u06d8\u06e5\u06e1\u06e4"

    goto :goto_0

    :sswitch_b
    invoke-static {}, Lcom/qihoo/util/DtcLoader;->init()V

    const-string v0, "\u06dc\u06d6\u06e7\u06d8\u06ec\u06e8\u06d8\u06e0\u06e6\u06dc\u06d7\u06e8\u06dc\u06e5\u06ec\u06da\u06da\u06e2\u06e6\u06e0\u06dc\u06e2\u06d7\u06df\u06e5\u06d8\u06e1\u06db\u06e0"

    goto :goto_0

    :sswitch_c
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79b822e2 -> :sswitch_b
        -0x6bb06952 -> :sswitch_1
        -0x4da3aa02 -> :sswitch_4
        -0x46641af7 -> :sswitch_5
        -0x10afef75 -> :sswitch_3
        -0xc5c0cf2 -> :sswitch_8
        -0x269cc7d -> :sswitch_2
        -0xb91bbb -> :sswitch_0
        0xa3ba8e4 -> :sswitch_c
        0x148211b1 -> :sswitch_6
        0x2ba268d6 -> :sswitch_7
        0x3e6c285e -> :sswitch_9
        0x50a39315 -> :sswitch_a
    .end sparse-switch
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 11

    const/4 v2, 0x0

    const/4 v6, 0x0

    const-string v0, "\u06ec\u06dc\u06e7\u06d8\u06d7\u06e2\u06e0\u06e6\u06d8\u06d8\u06e4\u06e0\u06df\u06e5\u06e6\u06e1\u06d8\u06eb\u06e4\u06e8\u06df\u06dc\u06d6\u06e4\u06d9"

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v7, v2

    move-object v8, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v9, 0x84

    const v10, 0x161f3071

    xor-int/2addr v2, v9

    xor-int/2addr v2, v10

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06e1\u06e2\u06dc\u06e1\u06d8\u06d8\u06d9\u06da\u06d7\u06d9\u06e8\u06e7\u06e8\u06d8\u06dc\u06db\u06e0\u06d8\u06d8\u06d7\u06ec\u06e1\u06d8\u06e8\u06e7\u06da\u06e4\u06ec\u06e6\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e6\u06e7\u06d9\u06e5\u06db\u06e6\u06db\u06eb\u06e4\u06e2\u06df\u06eb\u06e0\u06e6"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06e1\u06d9\u06dc\u06e4\u06e0\u06e1\u06e4\u06da\u06e6\u06e5\u06e5\u06dc\u06da\u06d9\u06d8\u06d8"

    goto :goto_0

    :sswitch_3
    sget-object v8, Lcom/stub/StubApp;->b:Ljava/lang/String;

    const-string v0, "\u06e7\u06eb\u06e0\u06e2\u06d7\u06e6\u06dc\u06e4\u06eb\u06d7\u06e0\u06e1\u06d8\u06d8\u06df\u06d7"

    goto :goto_0

    :sswitch_4
    const-string v0, "\u06da\u06e8\u06e5\u06d8\u06d9\u06d7\u06e5\u06e8\u06d8\u06ec\u06db\u06d7\u06d8\u06dc\u06e4"

    move-object v7, v8

    goto :goto_0

    :sswitch_5
    const v2, 0x521b86cd

    const-string v0, "\u06eb\u06ec\u06df\u06d7\u06e5\u06ec\u06d8\u06e4\u06e4\u06df\u06d7\u06e6\u06d8\u06db\u06e5\u06e1\u06ec\u06e6\u06d6"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    xor-int/2addr v9, v2

    sparse-switch v9, :sswitch_data_1

    goto :goto_1

    :sswitch_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-ge v0, v9, :cond_0

    const-string v0, "\u06eb\u06d6\u06eb\u06dc\u06d7\u06e5\u06d8\u06dc\u06e7\u06e8\u06d6\u06da\u06e5\u06d8\u06eb\u06e1\u06e0\u06d9\u06e8\u06e1\u06d8\u06db\u06e6\u06d6\u06e2\u06dc\u06d8\u06da\u06e7\u06d9"

    goto :goto_1

    :cond_0
    const-string v0, "\u06dc\u06db\u06e8\u06d8\u06e0\u06ec\u06d8\u06e6\u06e4\u06e7\u06da\u06ec\u06e8\u06d8\u06eb\u06db\u06db"

    goto :goto_1

    :sswitch_7
    const-string v0, "\u06e7\u06db\u06db\u06da\u06d9\u06e7\u06da\u06d7\u06d6\u06ec\u06ec\u06d9\u06d8\u06e6\u06ec"

    goto :goto_1

    :sswitch_8
    const-string v0, "\u06da\u06e1\u06e5\u06d7\u06e4\u06e8\u06df\u06d6\u06d6\u06d8\u06d8\u06d8\u06d8\u06ec\u06d9\u06e1\u06e5\u06e8\u06e4\u06e5\u06e5\u06e5"

    goto :goto_0

    :sswitch_9
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v0, "\u06e7\u06d9\u06e6\u06e1\u06e7\u06d8\u06ec\u06d6\u06d6\u06d8\u06e5\u06e5\u06e6\u06dc\u06d9\u06e8"

    move v6, v2

    goto :goto_0

    :sswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v0, "\u06d9\u06e4\u06e8\u06e2\u06eb\u06d9\u06db\u06e4\u06e1\u06e2\u06e0\u06e5\u06dc\u06e4\u06d6\u06ec\u06ec\u06dc\u06d8\u06db\u06e0\u06e4\u06d9\u06d7\u06d6"

    move-object v5, v2

    goto :goto_0

    :sswitch_b
    const-string v0, "\u06e4\u06da\u06e2\u06e1\u06ec\u06d9\u06dc\u06da\u06dc\u06d7\u06e8\u06d8\u06e8\u06e7\u06e5\u06d8\u06e1\u06ec\u06dc\u06e7\u06e0\u06db\u06ec\u06da\u06dc\u06d8\u06e2\u06d9\u06e0"

    move-object v7, v5

    goto :goto_0

    :sswitch_c
    const v2, 0x3e1bddfa

    const-string v0, "\u06eb\u06e4\u06dc\u06d7\u06e6\u06e1\u06d8\u06e4\u06e2\u06d8\u06e1\u06e4\u06d8\u06e4\u06da\u06da\u06e2\u06da\u06e6\u06e0\u06e8\u06e7\u06d8\u06db\u06eb\u06e1"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    xor-int/2addr v9, v2

    sparse-switch v9, :sswitch_data_2

    goto :goto_2

    :sswitch_d
    const-string v0, "\u06e5\u06d9\u06e5\u06e7\u06e7\u06d8\u06d6\u06e5\u06e0\u06e8\u06e7\u06e6\u06d8\u06db\u06dc\u06e4\u06d7\u06d9\u06db\u06e6\u06d8\u06e1\u06e5\u06d6\u06d8\u06e7\u06e2\u06e7"

    goto :goto_0

    :cond_1
    const-string v0, "\u06e5\u06d8\u06e0\u06e0\u06e8\u06e5\u06e6\u06e5\u06eb\u06e1\u06e7\u06d6\u06e5\u06e8\u06e6\u06e8\u06e4\u06e1\u06e7\u06d8\u06d8"

    goto :goto_2

    :sswitch_e
    if-eqz p1, :cond_1

    const-string v0, "\u06d9\u06d8\u06ec\u06d6\u06d8\u06e1\u06da\u06e5\u06e7\u06d8\u06e0\u06e2\u06e2\u06da\u06e2\u06e4\u06e2\u06e8\u06e1\u06d8\u06d9\u06e8\u06d6\u06eb\u06d6\u06ec"

    goto :goto_2

    :sswitch_f
    const-string v0, "\u06da\u06e7\u06da\u06eb\u06e8\u06d8\u06d9\u06eb\u06eb\u06dc\u06d6\u06e0\u06df\u06e6\u06eb\u06df\u06e2\u06d9\u06d9\u06e8\u06df\u06dc\u06da\u06e4\u06e2\u06e5"

    goto :goto_2

    :sswitch_10
    const v2, 0x1e33317b

    const-string v0, "\u06d9\u06d8\u06dc\u06d8\u06eb\u06e1\u06dc\u06d8\u06e5\u06e7\u06d7\u06ec\u06e8\u06e6\u06d8\u06da\u06ec\u06d9\u06e4\u06df\u06e1\u06d8\u06df\u06da\u06d9\u06dc\u06d7\u06e6"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    xor-int/2addr v9, v2

    sparse-switch v9, :sswitch_data_3

    goto :goto_3

    :sswitch_11
    const-string v0, "\u06e2\u06d9\u06e6\u06d8\u06dc\u06ec\u06e5\u06d9\u06e2\u06d7\u06e4\u06e8\u06e1\u06e0\u06d7\u06e5\u06df\u06d8\u06e6\u06d8\u06e5\u06ec\u06dc\u06e1\u06e1\u06e6"

    goto/16 :goto_0

    :cond_2
    const-string v0, "\u06dc\u06d8\u06ec\u06da\u06eb\u06d9\u06d9\u06d9\u06e4\u06d9\u06db\u06e7\u06ec\u06d6\u06db\u06da\u06ec\u06e6\u06d8\u06df\u06d6\u06d6\u06d8\u06e0\u06db\u06db\u06da\u06e4\u06db"

    goto :goto_3

    :sswitch_12
    if-nez p2, :cond_2

    const-string v0, "\u06d6\u06d9\u06e7\u06d9\u06eb\u06eb\u06e7\u06d9\u06d8\u06dc\u06e8\u06e7\u06d8\u06da\u06da\u06d6\u06dc\u06d6\u06e5\u06df\u06e1\u06dc"

    goto :goto_3

    :sswitch_13
    const-string v0, "\u06e4\u06e5\u06e0\u06df\u06e5\u06e1\u06ec\u06e7\u06ec\u06e1\u06e1\u06d9\u06d8\u06eb\u06d8\u06e4\u06e1\u06df"

    goto :goto_3

    :sswitch_14
    const-string v0, "\u06db\u06d9\u06e2\u06e7\u06df\u06dc\u06d8\u06e6\u06e6\u06e1\u06d8\u06e5\u06e5\u06eb\u06e8\u06e6\u06d7\u06d9\u06e1\u06d9\u06d8\u06e7\u06e5\u06d8\u06e5\u06dc\u06e1\u06d8\u06e4\u06d9\u06df"

    goto/16 :goto_0

    :sswitch_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_64.so"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v0, "\u06da\u06da\u06d9\u06da\u06dc\u06ec\u06d7\u06e2\u06e1\u06d8\u06e5\u06da\u06db\u06df\u06d6\u06e7\u06e8\u06e1\u06da\u06df\u06eb\u06dc\u06e1\u06d9\u06e5"

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "\u06ec\u06d7\u06e5\u06e6\u06e5\u06e7\u06e2\u06eb\u06e0\u06d8\u06ec\u06e0\u06d9\u06d8\u06d8\u06e6\u06d8\u06e8\u06d8"

    move-object v3, v4

    goto/16 :goto_0

    :sswitch_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "\u06e8\u06d9\u06dc\u06e4\u06d6\u06db\u06d7\u06d8\u06d6\u06e1\u06e4\u06d8\u06d7\u06d6\u06d6\u06d8\u06e8\u06e5\u06db"

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "\u06e6\u06eb\u06e4\u06e4\u06e8\u06e7\u06df\u06e0\u06d9\u06e0\u06eb\u06e5\u06d8\u06e1\u06d6\u06d8\u06d8\u06eb\u06dc\u06e4\u06e2\u06e7\u06e8\u06d8\u06d9\u06ec\u06ec\u06e7\u06e7\u06d8\u06d8"

    move-object v3, v1

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "\u06e4\u06da\u06e2\u06e1\u06ec\u06d9\u06dc\u06da\u06dc\u06d7\u06e8\u06d8\u06e8\u06e7\u06e5\u06d8\u06e1\u06ec\u06dc\u06e7\u06e0\u06db\u06ec\u06da\u06dc\u06d8\u06e2\u06d9\u06e0"

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "\u06ec\u06d7\u06e5\u06e6\u06e5\u06e7\u06e2\u06eb\u06e0\u06d8\u06ec\u06e0\u06d9\u06d8\u06d8\u06e6\u06d8\u06e8\u06d8"

    goto/16 :goto_0

    :sswitch_1b
    return-object v3

    :sswitch_data_0
    .sparse-switch
        -0x6e0c2ce7 -> :sswitch_3
        -0x5abcda49 -> :sswitch_4
        -0x4977a6e6 -> :sswitch_17
        -0x376a100c -> :sswitch_b
        -0x1fa4bfc6 -> :sswitch_a
        -0x1b6e1233 -> :sswitch_1b
        -0x14dfd51c -> :sswitch_c
        -0x11205185 -> :sswitch_5
        -0x5670f8a -> :sswitch_10
        0xb4f678a -> :sswitch_1
        0x1375b45d -> :sswitch_0
        0x2a1bf534 -> :sswitch_16
        0x374fc36d -> :sswitch_1a
        0x5055c003 -> :sswitch_9
        0x5e0a3133 -> :sswitch_15
        0x60e4cdea -> :sswitch_18
        0x7fef094d -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x764283fe -> :sswitch_7
        -0x3dcc5250 -> :sswitch_19
        0x37a6a350 -> :sswitch_8
        0x71c7d14a -> :sswitch_6
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0xe94986b -> :sswitch_11
        0x1e2adf9c -> :sswitch_d
        0x3e6b385b -> :sswitch_f
        0x49584330 -> :sswitch_e
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x14f1e7f4 -> :sswitch_13
        0x7eb89bd -> :sswitch_11
        0x1a4fdb8b -> :sswitch_12
        0x67428f9a -> :sswitch_14
    .end sparse-switch
.end method

.method public static native fcmark()V
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 4

    const-string v0, "\u06e5\u06dc\u06d8\u06d8\u06d7\u06eb\u06dc\u06da\u06ec\u06dc\u06d8\u06da\u06d8\u06d8\u06d7\u06d6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x153

    const v3, 0x33b7d238

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/stub/StubApp;->c:Landroid/content/Context;

    return-object v0

    :pswitch_data_0
    .packed-switch -0x3a888f
        :pswitch_0
    .end packed-switch
.end method

.method public static getDir()Ljava/lang/String;
    .locals 4

    const-string v0, "\u06e8\u06d8\u06e7\u06d8\u06df\u06e4\u06e8\u06d8\u06ec\u06e1\u06d8\u06eb\u06ec\u06d7\u06e4\u06ec\u06ec\u06e1\u06e5\u06db\u06df\u06d7\u06dc\u06dc\u06eb\u06e6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x334

    const v3, 0x502318f8

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/stub/StubApp;->g:Ljava/lang/String;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x4c7b7683
        :pswitch_0
    .end packed-switch
.end method

.method public static getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 4

    const-string v0, "\u06e5\u06eb\u06d6\u06e2\u06e4\u06e5\u06d8\u06d8\u06e0\u06d8\u06d8\u06e8\u06e8\u06da\u06e7\u06d9\u06e8\u06db\u06e4\u06d8\u06ec\u06d9\u06df"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1c0

    const v3, -0x7051c652

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e1\u06e0\u06db\u06e5\u06eb\u06d6\u06d8\u06d8\u06e7\u06dc\u06d9\u06ec\u06df\u06e7\u06e8\u06e5\u06db\u06d6\u06e1\u06d8"

    goto :goto_0

    :sswitch_1
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2f59523 -> :sswitch_1
        0x7f9b14c2 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getSoPath1()Ljava/lang/String;
    .locals 4

    const-string v0, "\u06e5\u06d9\u06da\u06e1\u06e1\u06e5\u06d7\u06ec\u06e6\u06d8\u06e4\u06e1\u06e5\u06e1\u06e6\u06e2\u06d7\u06dc\u06d9"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3b9

    const v3, -0x2ac9bb17

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/stub/StubApp;->e:Ljava/lang/String;

    return-object v0

    :pswitch_data_0
    .packed-switch -0x4d074b17
        :pswitch_0
    .end packed-switch
.end method

.method public static getSoPath2()Ljava/lang/String;
    .locals 4

    const-string v0, "\u06eb\u06df\u06e8\u06d8\u06e0\u06d9\u06e6\u06db\u06e0\u06df\u06e4\u06e1\u06e8\u06e5\u06eb\u06ec\u06e6\u06e7\u06da\u06e0\u06dc\u06e1\u06ec\u06d8\u06ec"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2e8

    const v3, -0x7e67de1

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/stub/StubApp;->f:Ljava/lang/String;

    return-object v0

    :pswitch_data_0
    .packed-switch -0x224d5ee1
        :pswitch_0
    .end packed-switch
.end method

.method public static getString2(I)Ljava/lang/String;
    .locals 9

    const/4 v3, 0x0

    const-string v0, "\u06e1\u06e5\u06d8\u06d8\u06dc\u06e8\u06db\u06d6\u06e0\u06e1\u06e1\u06e0\u06dc\u06d8\u06ec\u06e7\u06df\u06df\u06d8\u06d8\u06d8\u06da\u06d6\u06d8"

    move-object v1, v0

    move-object v2, v3

    move-object v4, v3

    move-object v6, v3

    move-object v5, v3

    move-object v7, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v3, 0x2ad

    const v8, 0x6134d688

    xor-int/2addr v0, v3

    xor-int/2addr v0, v8

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06e1\u06ec\u06e1\u06d9\u06dc\u06e6\u06ec\u06ec\u06d7\u06df\u06db\u06d8\u06db\u06eb\u06e7\u06e8\u06d6\u06dc\u06db\u06d8\u06da\u06e2\u06dc\u06d8"

    move-object v1, v0

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/stub/StubApp;->i:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "\u06da\u06d8\u06e1\u06e6\u06e7\u06e6\u06eb\u06db\u06e5\u06d8\u06d7\u06eb\u06df\u06e8\u06dc\u06d7\u06e2\u06e6\u06d7\u06dc\u06da\u06e8\u06d8"

    move-object v7, v0

    goto :goto_0

    :sswitch_2
    const-string v0, "\u06d9\u06eb\u06e6\u06d8\u06e8\u06e7\u06e8\u06e0\u06e2\u06e8\u06e6\u06e7\u06e8\u06d8\u06e8\u06e7\u06e6\u06d8\u06e2\u06eb\u06e7\u06d6\u06da\u06df"

    move-object v1, v0

    move-object v5, v7

    goto :goto_0

    :sswitch_3
    const v1, -0xadbee52

    const-string v0, "\u06da\u06ec\u06eb\u06e4\u06e0\u06db\u06e7\u06e5\u06da\u06e2\u06e5\u06e1\u06d8\u06ec\u06d6\u06df\u06df\u06e2\u06e2\u06eb\u06e5\u06e2\u06d6\u06d7\u06d6\u06d8\u06e6\u06d8\u06e5\u06d8"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_4
    if-nez v7, :cond_0

    const-string v0, "\u06d8\u06e7\u06da\u06da\u06da\u06e6\u06d8\u06db\u06d7\u06e1\u06d8\u06d9\u06e7\u06e4\u06e2\u06e8\u06e4\u06ec\u06da\u06e5"

    goto :goto_1

    :cond_0
    const-string v0, "\u06d7\u06db\u06e7\u06e1\u06dc\u06dc\u06eb\u06e1\u06e1\u06eb\u06d9\u06e5\u06d8\u06eb\u06d8\u06e5\u06d8\u06e2\u06e2\u06e2\u06d8\u06df\u06d8\u06d8\u06df\u06e1\u06eb\u06df\u06eb\u06da"

    goto :goto_1

    :sswitch_5
    const-string v0, "\u06df\u06d6\u06e7\u06e0\u06e8\u06e7\u06d8\u06e2\u06e2\u06e8\u06d8\u06e0\u06ec\u06e7\u06e5\u06e5\u06df\u06df\u06dc\u06d6\u06d8\u06e2\u06e5\u06e6\u06d8\u06e6\u06da\u06eb"

    goto :goto_1

    :sswitch_6
    const-string v0, "\u06db\u06da\u06d8\u06e1\u06dc\u06e6\u06d8\u06e0\u06d6\u06d6\u06e1\u06e2\u06dc\u06e7\u06eb\u06d6\u06d8\u06e7\u06d8\u06d6\u06d8\u06d9\u06d6\u06d6"

    move-object v1, v0

    goto :goto_0

    :sswitch_7
    invoke-static {p0}, Lcom/stub/StubApp;->interface14(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "\u06df\u06e0\u06eb\u06e5\u06e1\u06e7\u06e7\u06ec\u06e6\u06d6\u06d9\u06d7\u06df\u06d9\u06d7\u06e8\u06df\u06e6\u06e5\u06e4\u06d6\u06d8"

    move-object v1, v0

    move-object v6, v3

    goto :goto_0

    :sswitch_8
    sget-object v0, Lcom/stub/StubApp;->i:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u06ec\u06d6\u06e7\u06d9\u06eb\u06e8\u06e1\u06db\u06d9\u06e5\u06e7\u06d9\u06da\u06e6\u06db"

    move-object v1, v0

    goto :goto_0

    :sswitch_9
    const-string v0, "\u06e7\u06e0\u06e0\u06e2\u06dc\u06e2\u06e8\u06e2\u06d6\u06d8\u06d9\u06e7\u06e7\u06dc\u06e8\u06df\u06e0\u06e4\u06ec\u06e6\u06d7\u06e8"

    move-object v1, v0

    move-object v5, v6

    goto :goto_0

    :sswitch_a
    const-string v0, "\u06df\u06e5\u06d7\u06d8\u06d6\u06e5\u06e4\u06e8\u06d6\u06d8\u06d7\u06e4\u06df\u06e0\u06d9\u06da"

    move-object v1, v0

    move-object v4, v5

    goto :goto_0

    :sswitch_b
    const v1, -0x162ef00e

    const-string v0, "\u06db\u06d6\u06da\u06e5\u06eb\u06e7\u06df\u06dc\u06eb\u06e8\u06e6\u06e6\u06d8\u06eb\u06e2\u06e6\u06da\u06e5\u06d6\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_c
    const-string v0, "\u06ec\u06d9\u06d6\u06e2\u06e5\u06ec\u06d9\u06eb\u06ec\u06da\u06da\u06e4\u06e1\u06d8\u06e1\u06d9\u06eb\u06e5\u06d8\u06d8\u06df\u06d6\u06da\u06dc\u06d7"

    move-object v1, v0

    goto :goto_0

    :cond_1
    const-string v0, "\u06e4\u06e1\u06e7\u06e0\u06d6\u06e4\u06e0\u06e1\u06e6\u06d8\u06dc\u06db\u06db\u06d9\u06e7\u06e1\u06d6\u06e6\u06e6\u06d7\u06eb\u06e8\u06eb\u06e1\u06e0\u06e1\u06ec\u06e8"

    goto :goto_2

    :sswitch_d
    if-eqz v5, :cond_1

    const-string v0, "\u06d7\u06e6\u06d6\u06d8\u06dc\u06e5\u06e6\u06dc\u06eb\u06d6\u06d8\u06e5\u06d8\u06dc\u06d7\u06e7\u06e8\u06d8"

    goto :goto_2

    :sswitch_e
    const-string v0, "\u06df\u06df\u06e4\u06e7\u06e6\u06e2\u06d8\u06e1\u06dc\u06d8\u06dc\u06d8\u06e1\u06d8\u06e8\u06db\u06dc\u06d8\u06e8\u06db\u06ec"

    goto :goto_2

    :sswitch_f
    const-string v0, "\u06d8\u06d7\u06d7\u06db\u06d7\u06e7\u06e1\u06e8\u06ec\u06df\u06d6\u06d8\u06ec\u06d6\u06eb\u06e4\u06da\u06d9\u06eb\u06d8\u06e7\u06dc\u06dc\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "\u06e5\u06e0\u06eb\u06d6\u06d9\u06e2\u06e4\u06e4\u06d8\u06e0\u06df\u06e5\u06d8\u06e8\u06d6\u06db\u06ec\u06d9\u06e7\u06da\u06e0\u06e0"

    move-object v1, v0

    move-object v4, v5

    goto/16 :goto_0

    :sswitch_11
    const v1, -0x44dc8bd6

    const-string v0, "\u06da\u06da\u06e6\u06df\u06eb\u06eb\u06dc\u06e8\u06e6\u06df\u06e1\u06d8\u06df\u06e6\u06df"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_3

    goto :goto_3

    :sswitch_12
    const-string v0, "\u06e4\u06e8\u06e7\u06d8\u06e7\u06df\u06e0\u06e1\u06db\u06dc\u06d7\u06d9\u06d7\u06d8\u06df\u06e1\u06d9\u06e4\u06e2\u06dc\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :cond_2
    const-string v0, "\u06e2\u06e7\u06ec\u06d9\u06d8\u06e1\u06dc\u06e4\u06e8\u06df\u06df\u06db\u06d6\u06d9\u06e0\u06d6\u06e6\u06e7\u06da\u06e0\u06dc\u06e8\u06e7\u06d8"

    goto :goto_3

    :sswitch_13
    sget-boolean v0, Lcom/stub/StubApp;->returnIntern:Z

    if-eqz v0, :cond_2

    const-string v0, "\u06da\u06df\u06d9\u06e8\u06dc\u06dc\u06d8\u06e8\u06ec\u06e5\u06d8\u06e7\u06d9\u06dc\u06e6\u06eb\u06e1\u06df\u06df\u06d8\u06d8\u06e5\u06d7\u06e6\u06e8\u06e6\u06e1"

    goto :goto_3

    :sswitch_14
    const-string v0, "\u06d6\u06d9\u06e5\u06df\u06e6\u06eb\u06d8\u06d8\u06eb\u06e6\u06d9\u06dc\u06df\u06eb\u06e1\u06d8\u06e5\u06d6"

    goto :goto_3

    :sswitch_15
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const-string v0, "\u06e4\u06e6\u06d8\u06d8\u06e0\u06e6\u06da\u06d6\u06d6\u06e5\u06e2\u06e0\u06e1\u06d8\u06e0\u06d7\u06d8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "\u06ec\u06d9\u06d6\u06e2\u06e5\u06ec\u06d9\u06eb\u06ec\u06da\u06da\u06e4\u06e1\u06d8\u06e1\u06d9\u06eb\u06e5\u06d8\u06d8\u06df\u06d6\u06da\u06dc\u06d7"

    move-object v1, v0

    move-object v4, v2

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "\u06e7\u06e0\u06e0\u06e2\u06dc\u06e2\u06e8\u06e2\u06d6\u06d8\u06d9\u06e7\u06e7\u06dc\u06e8\u06df\u06e0\u06e4\u06ec\u06e6\u06d7\u06e8"

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_18
    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x77819edd -> :sswitch_0
        -0x75872a1d -> :sswitch_a
        -0x5d7d7116 -> :sswitch_10
        -0x41b77c09 -> :sswitch_11
        -0x39fc7d3e -> :sswitch_8
        -0x1c4811c0 -> :sswitch_1
        -0x182ac004 -> :sswitch_16
        -0xeab2c25 -> :sswitch_9
        0xada1881 -> :sswitch_2
        0xc49455a -> :sswitch_7
        0x1bdef8c5 -> :sswitch_3
        0x21f06bee -> :sswitch_b
        0x228829ba -> :sswitch_15
        0x3946b2ce -> :sswitch_18
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x71a4a472 -> :sswitch_17
        -0x244e21af -> :sswitch_5
        0xf822ce8 -> :sswitch_6
        0x2d46c0f8 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x293bc7e2 -> :sswitch_e
        -0x1103a5f3 -> :sswitch_c
        -0x60028ee -> :sswitch_d
        0x8b2e541 -> :sswitch_f
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x555568a -> :sswitch_14
        0x2e99a41e -> :sswitch_12
        0x3aca62d9 -> :sswitch_c
        0x52078b69 -> :sswitch_13
    .end sparse-switch
.end method

.method public static getString2(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/stub/StubApp;->getString2(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static native interface11(I)V
.end method

.method public static native interface12(Ldalvik/system/DexFile;)Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/DexFile;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public static native interface13(IJJJIIJ)J
.end method

.method public static native interface14(I)Ljava/lang/String;
.end method

.method public static native interface17(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
.end method

.method public static native interface18(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;
.end method

.method public static native interface19(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
.end method

.method public static native interface20()V
.end method

.method public static native interface21(Landroid/app/Application;)V
.end method

.method public static native interface22(I[Ljava/lang/String;[I)V
.end method

.method public static native interface30(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/zip/ZipEntry;
.end method

.method public static native interface5(Landroid/app/Application;)V
.end method

.method public static native interface6(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native interface7(Landroid/app/Application;Landroid/content/Context;)Z
.end method

.method public static native interface8(Landroid/app/Application;Landroid/content/Context;)Z
.end method

.method public static isX86Arch()Z
    .locals 4

    const-string v0, "\u06d8\u06d7\u06eb\u06e4\u06e8\u06d8\u06ec\u06dc\u06dc\u06e0\u06d6\u06eb\u06ec\u06db\u06e8\u06d6\u06e8\u06d6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1d9

    const v3, 0x12cd0dfd

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/qihoo/util/a;->a()Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch -0x5fc5a008
        :pswitch_0
    .end packed-switch
.end method

.method public static native mark(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;
.end method

.method public static native mark()V
.end method

.method public static native mark(Landroid/location/Location;)V
.end method

.method public static native n010333(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public static native n0110()V
.end method

.method public static native n0111()Z
.end method

.method public static native n0111320(ILjava/lang/Object;J)V
.end method

.method public static native n0111330(ILjava/lang/Object;Ljava/lang/Object;)V
.end method

.method public static native n01113320(ILjava/lang/Object;Ljava/lang/Object;J)V
.end method

.method public static native n01120(J)V
.end method

.method public static native n0112333(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public static native n01123333(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public static native n0113()Ljava/lang/Object;
.end method

.method public static native n01130(Ljava/lang/Object;)V
.end method

.method public static native n01131(Ljava/lang/Object;)Z
.end method

.method public static native n0113130(Ljava/lang/Object;ILjava/lang/Object;)V
.end method

.method public static native n0113131130(Ljava/lang/Object;ILjava/lang/Object;IZLjava/lang/Object;)V
.end method

.method public static native n0113133(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
.end method

.method public static native n01133(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public static native n011330(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public static native n011331(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public static native n011333(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public static native n0113330(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public static native n0113333(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public static native pmark(Landroid/content/Context;)V
.end method

.method public static native rmark()V
.end method


# virtual methods
.method protected final attachBaseContext(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    const v1, 0x6b933a8b

    const-string v0, "\u06ec\u06ec\u06dc\u06e1\u06e4\u06e5\u06e2\u06e2\u06e7\u06d6\u06e7\u06d8\u06e5\u06d7\u06d7"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d7\u06d6\u06e1\u06e5\u06ec\u06ec\u06d6\u06e4\u06e6\u06d8\u06df\u06dc\u06e5\u06e8\u06dc\u06e7\u06d9\u06e6\u06d6\u06d8"

    goto :goto_0

    :cond_0
    const-string v0, "\u06df\u06d8\u06e5\u06d8\u06e7\u06e2\u06e2\u06d7\u06df\u06da\u06d7\u06e8\u06e6\u06d8\u06d8\u06e7\u06dc"

    goto :goto_0

    :sswitch_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ne v0, v2, :cond_0

    const-string v0, "\u06e8\u06e1\u06e8\u06d8\u06db\u06db\u06e1\u06e1\u06e2\u06d8\u06e7\u06da\u06df\u06db\u06d8"

    goto :goto_0

    :sswitch_2
    :try_start_0
    const-string v0, "q~tb\u007fyt>s\u007f~du~d>`}>@qs{qwu@qbcub4@qs{qwu"

    invoke-static {v0}, Lcom/qihoo/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    const-string v0, "q~tb\u007fyt>q``>QsdyfydiDxbuqt"

    invoke-static {v0}, Lcom/qihoo/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "sebbu~dQsdyfydiDxbuqt"

    invoke-static {v1}, Lcom/qihoo/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "}Xyttu~Q`yGqb~y~wCx\u007fg~"

    invoke-static {v2}, Lcom/qihoo/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    :goto_2
    :sswitch_3
    sput-object p1, Lcom/stub/StubApp;->c:Landroid/content/Context;

    const v1, -0x31d89c69

    const-string v0, "\u06d8\u06dc\u06e6\u06e4\u06e2\u06db\u06db\u06d6\u06e1\u06e5\u06e8\u06ec\u06da\u06df\u06df\u06da\u06dc\u06e5\u06dc\u06e6"

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_1

    goto :goto_3

    :sswitch_4
    sput-object p0, Lcom/stub/StubApp;->a:Landroid/app/Application;

    :sswitch_5
    invoke-static {}, Lcom/qihoo/util/a;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const v3, -0x52422e5f

    const-string v0, "\u06e4\u06e8\u06ec\u06d9\u06eb\u06e6\u06ec\u06d9\u06d6\u06d8\u06d6\u06e5\u06dc\u06d8\u06e6\u06d7\u06d6\u06d8\u06e6\u06da\u06e1\u06d8\u06da\u06db\u06db"

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v3

    sparse-switch v5, :sswitch_data_2

    goto :goto_4

    :sswitch_6
    const-string v0, "\u06db\u06ec\u06eb\u06eb\u06e0\u06e6\u06e1\u06e4\u06d9\u06e6\u06e5\u06da\u06df\u06e2\u06e7"

    goto :goto_4

    :cond_1
    :try_start_2
    const-string v0, "\u06df\u06e8\u06d8\u06e1\u06d8\u06e6\u06e2\u06d8\u06d9\u06e8\u06d8\u06e6\u06e0\u06e5\u06d8\u06dc\u06d8\u06e0\u06d9\u06e1\u06e2"

    goto :goto_3

    :sswitch_7
    sget-object v0, Lcom/stub/StubApp;->a:Landroid/app/Application;

    if-nez v0, :cond_1

    const-string v0, "\u06d9\u06e1\u06df\u06eb\u06dc\u06e1\u06db\u06e8\u06d6\u06db\u06d8\u06e7\u06d8\u06e5\u06da\u06d8\u06d7\u06e5\u06e5\u06eb\u06e7\u06e2\u06e1\u06e4\u06e0\u06e6\u06e1"
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :sswitch_8
    const-string v0, "\u06e2\u06df\u06d6\u06da\u06d8\u06e8\u06d8\u06d8\u06ec\u06e4\u06db\u06e4\u06e8\u06d9\u06e5\u06dc\u06d8\u06db\u06e2\u06dc\u06d8\u06df\u06df\u06d6\u06d8"

    goto :goto_3

    :cond_2
    const-string v0, "\u06d6\u06df\u06df\u06e7\u06e5\u06e0\u06e0\u06d9\u06e6\u06ec\u06e2\u06e6\u06e6\u06ec\u06e2\u06ec\u06e2\u06e1\u06d8\u06da\u06e7\u06e6\u06d8\u06d8\u06e1\u06d9"

    goto :goto_4

    :sswitch_9
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v5, "64"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u06e2\u06d6\u06ec\u06e2\u06ec\u06da\u06e2\u06e8\u06e5\u06d8\u06d8\u06d7\u06e1\u06d8\u06da\u06e1\u06e6\u06d8\u06e5\u06e6\u06da\u06e1\u06d9\u06e7\u06d7\u06db\u06ec"

    goto :goto_4

    :sswitch_a
    const v3, 0x615548d9

    const-string v0, "\u06eb\u06eb\u06eb\u06d8\u06e7\u06db\u06e8\u06d9\u06e0\u06e4\u06d6\u06d8\u06d8\u06e5\u06eb\u06d9\u06e1\u06ec\u06e5\u06e7\u06db\u06d6"

    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v3

    sparse-switch v5, :sswitch_data_3

    goto :goto_5

    :sswitch_b
    const-string v0, "\u06e8\u06e2\u06eb\u06d6\u06e5\u06e0\u06e6\u06eb\u06da\u06e1\u06e2\u06d9\u06e1\u06db\u06e8\u06d8\u06e2\u06e4\u06da\u06e0\u06e8\u06e4"

    goto :goto_5

    :cond_3
    const-string v0, "\u06d6\u06df\u06d9\u06d9\u06d6\u06e2\u06e0\u06e6\u06e8\u06d8\u06e5\u06e5\u06e2\u06e7\u06d8\u06e1\u06e1\u06e7\u06d9"

    goto :goto_5

    :sswitch_c
    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    const-string v5, "64"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u06df\u06e2\u06e1\u06d8\u06dc\u06df\u06e7\u06e2\u06d7\u06e8\u06d8\u06e2\u06e2\u06dc\u06d8\u06dc\u06d8\u06dc\u06d8\u06da\u06e7\u06d8\u06d8\u06e6\u06e1\u06d8\u06da\u06d8\u06e8\u06e7\u06da\u06ec"

    goto :goto_5

    :sswitch_d
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_6
    const v3, -0x1ba0608c

    const-string v1, "\u06e5\u06e7\u06e5\u06d8\u06e6\u06e6\u06eb\u06d9\u06e0\u06da\u06d6\u06e7\u06e6\u06e8\u06d7\u06e1\u06da\u06e5\u06d8"

    :goto_7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v3

    sparse-switch v5, :sswitch_data_4

    goto :goto_7

    :sswitch_e
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v5, "mips"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "\u06e1\u06e7\u06d8\u06d8\u06ec\u06db\u06d6\u06d8\u06d7\u06d7\u06da\u06e8\u06e5\u06d7\u06d6\u06e2\u06e6\u06e8\u06eb\u06eb\u06e0\u06d8\u06d6\u06d8\u06e4\u06d7\u06e7"

    goto :goto_7

    :cond_4
    const-string v1, "\u06d8\u06ec\u06e4\u06d8\u06eb\u06e1\u06e2\u06e2\u06eb\u06e1\u06ec\u06e6\u06e5\u06e4\u06e4\u06e6\u06e8\u06e1\u06d8\u06dc\u06e4\u06e2"

    goto :goto_7

    :sswitch_f
    const-string v1, "\u06d9\u06e1\u06e7\u06d8\u06ec\u06e5\u06d8\u06d8\u06e0\u06e2\u06d6\u06e6\u06d9\u06e7\u06e5\u06d9\u06e2"

    goto :goto_7

    :sswitch_10
    const v3, 0x33c5e500

    const-string v1, "\u06dc\u06e7\u06e7\u06e2\u06e7\u06e1\u06da\u06d8\u06e1\u06d7\u06e6\u06e6\u06d8\u06dc\u06e2\u06e5\u06e2\u06e7\u06e8\u06d8\u06d7\u06d8\u06eb\u06e8\u06e7\u06d8\u06db\u06d7\u06ec"

    :goto_8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v3

    sparse-switch v5, :sswitch_data_5

    goto :goto_8

    :sswitch_11
    const-string v1, "\u06e4\u06e5\u06e7\u06d8\u06e7\u06d7\u06d6\u06d8\u06e8\u06db\u06d6\u06d8\u06d8\u06e5\u06e5\u06d8\u06ec\u06e2\u06dc\u06d8"

    goto :goto_8

    :cond_5
    const-string v1, "\u06d6\u06d9\u06e8\u06e6\u06d7\u06d6\u06e2\u06d9\u06db\u06e0\u06df\u06eb\u06da\u06eb\u06da\u06e7\u06eb\u06d8\u06d8\u06d8\u06ec\u06e4\u06e5\u06eb\u06e8\u06d9\u06e1\u06d8"

    goto :goto_8

    :sswitch_12
    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    const-string v5, "mips"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "\u06e4\u06d9\u06e6\u06d8\u06d8\u06e7\u06d6\u06eb\u06d7\u06e2\u06d8\u06e0\u06e7\u06e5\u06eb\u06e4\u06d9\u06df\u06da\u06dc\u06da\u06e2\u06df\u06df\u06e7"

    goto :goto_8

    :sswitch_13
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_9
    const v3, -0x1d010279

    const-string v2, "\u06db\u06d7\u06e5\u06db\u06eb\u06e0\u06eb\u06eb\u06d6\u06d8\u06e4\u06e8\u06e1\u06d8\u06e4\u06e7\u06e0\u06eb\u06d6\u06e2\u06e2\u06db\u06e6"

    :goto_a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v3

    sparse-switch v5, :sswitch_data_6

    goto :goto_a

    :sswitch_14
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "\u06e7\u06d7\u06e5\u06d8\u06df\u06db\u06db\u06e5\u06d8\u06db\u06e4\u06db\u06ec\u06df\u06ec\u06e2\u06eb\u06e8\u06e6\u06d8"

    goto :goto_a

    :cond_6
    const-string v2, "\u06df\u06e4\u06db\u06dc\u06e8\u06eb\u06e2\u06e8\u06e8\u06e7\u06e7\u06db\u06e1\u06d9"

    goto :goto_a

    :sswitch_15
    const-string v2, "\u06e8\u06e7\u06db\u06df\u06d8\u06ec\u06da\u06ec\u06e1\u06d8\u06d9\u06e5\u06e6\u06d9\u06e0\u06e1\u06d8\u06dc\u06e6\u06e6\u06eb\u06e0\u06df"

    goto :goto_a

    :sswitch_16
    const v3, -0x2410964f

    const-string v2, "\u06e7\u06db\u06d6\u06d8\u06e7\u06d8\u06e0\u06e4\u06d7\u06ec\u06d8\u06e8\u06d8\u06e5\u06e8\u06e7\u06d8\u06d9\u06e2\u06dc\u06d8\u06e5\u06d6\u06d6\u06e4\u06df"

    :goto_b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v3

    sparse-switch v5, :sswitch_data_7

    goto :goto_b

    :sswitch_17
    const-string v2, "X86Bridge"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :sswitch_18
    const v3, 0x40022b6f

    const-string v2, "\u06d8\u06dc\u06d7\u06dc\u06e4\u06d6\u06d8\u06e5\u06d6\u06ec\u06d7\u06da\u06ec\u06d8\u06eb\u06d6\u06d8\u06d8\u06e1\u06e7\u06d8\u06e4\u06e4\u06dc\u06d8\u06df\u06e7\u06d8\u06e7\u06d8\u06db"

    :goto_c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v3

    sparse-switch v5, :sswitch_data_8

    goto :goto_c

    :sswitch_19
    const v1, 0x3e6d71c7

    const-string v0, "\u06dc\u06e1\u06e2\u06e4\u06eb\u06dc\u06d8\u06eb\u06da\u06df\u06e6\u06d6\u06e5\u06df\u06dc\u06dc\u06d8\u06e1\u06d9\u06da\u06e6\u06d7\u06d7\u06e1\u06d6\u06e8\u06d8"

    :goto_d
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_9

    goto :goto_d

    :sswitch_1a
    const-string v0, "\u06d6\u06eb\u06e1\u06d8\u06da\u06d9\u06e5\u06d7\u06d9\u06e2\u06d8\u06d8\u06d8\u06e7\u06d9\u06e5\u06d8"

    goto :goto_d

    :cond_7
    const-string v2, "\u06e1\u06d7\u06da\u06e8\u06e7\u06e1\u06e4\u06e6\u06eb\u06eb\u06e5\u06d8\u06da\u06db\u06d8\u06d9\u06dc\u06e6\u06d8\u06e5\u06e7\u06db\u06eb\u06e8\u06e0"

    goto :goto_b

    :sswitch_1b
    sget-boolean v2, Lcom/stub/StubApp;->needX86Bridge:Z

    if-eqz v2, :cond_7

    const-string v2, "\u06e1\u06df\u06e8\u06e1\u06df\u06d8\u06d8\u06d7\u06e2\u06e8\u06d8\u06e8\u06e0\u06dc\u06d8\u06df\u06e0\u06e6"

    goto :goto_b

    :sswitch_1c
    const-string v2, "\u06e6\u06e7\u06e8\u06db\u06eb\u06d7\u06e1\u06e8\u06e8\u06d8\u06e6\u06e1\u06e7\u06d8\u06e5\u06e0\u06e7\u06d6\u06e4\u06e4\u06eb\u06dc\u06e4"

    goto :goto_b

    :cond_8
    const-string v2, "\u06df\u06d7\u06e5\u06d9\u06e0\u06da\u06d7\u06d8\u06e2\u06d9\u06da\u06df\u06e7\u06d9\u06e1\u06e4\u06d9\u06d7\u06d9\u06e4\u06e8\u06da\u06d6\u06e1\u06d8\u06e6\u06e0\u06e1"

    goto :goto_c

    :sswitch_1d
    sget-boolean v2, Lcom/stub/StubApp;->loadFromLib:Z

    if-eqz v2, :cond_8

    const-string v2, "\u06db\u06d9\u06e6\u06e1\u06d7\u06e7\u06e1\u06e8\u06e2\u06d8\u06d7\u06e5\u06d8\u06e8\u06eb\u06d7\u06ec\u06e0\u06e8\u06d8\u06e6\u06da\u06da"

    goto :goto_c

    :sswitch_1e
    const-string v2, "\u06eb\u06e1\u06dc\u06e4\u06dc\u06da\u06e2\u06da\u06ec\u06e1\u06eb\u06dc\u06d9\u06e0\u06e1\u06d8\u06d9\u06df\u06e0\u06ec\u06dc\u06ec"

    goto :goto_c

    :cond_9
    const-string v0, "\u06ec\u06e5\u06e7\u06e1\u06e8\u06e6\u06da\u06e1\u06dc\u06d8\u06d8\u06e1\u06eb\u06e8\u06ec\u06df\u06e6\u06e8\u06e4"

    goto :goto_d

    :sswitch_1f
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "\u06d9\u06ec\u06e1\u06d8\u06e2\u06d6\u06d6\u06e7\u06e5\u06d8\u06e4\u06e1\u06e5\u06d8\u06ec\u06e7\u06e7"

    goto :goto_d

    :sswitch_20
    const v1, -0x5649bb2d

    const-string v0, "\u06d8\u06df\u06e6\u06e5\u06e5\u06e4\u06eb\u06e0\u06d8\u06db\u06e6\u06e7\u06e5\u06d9\u06e1\u06d9\u06d7\u06e8\u06dc\u06e6\u06d9\u06df\u06d8\u06db\u06df\u06d9"

    :goto_e
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_a

    goto :goto_e

    :sswitch_21
    const-string v0, "\u06e0\u06eb\u06e6\u06e5\u06dc\u06e7\u06eb\u06df\u06e8\u06d8\u06ec\u06db\u06e8\u06d8\u06db\u06e6\u06e6\u06d8"

    goto :goto_e

    :cond_a
    const-string v0, "\u06e1\u06e8\u06e2\u06e8\u06e4\u06e6\u06d8\u06d7\u06e7\u06d9\u06da\u06e4\u06e8\u06d8\u06d6\u06e5\u06e1\u06d8"

    goto :goto_e

    :sswitch_22
    sget-boolean v0, Lcom/stub/StubApp;->needX86Bridge:Z

    if-nez v0, :cond_a

    const-string v0, "\u06e0\u06e4\u06dc\u06e0\u06e7\u06dc\u06d8\u06e5\u06e1\u06da\u06e4\u06e0\u06ec\u06e5\u06ec\u06e8\u06d8\u06d7\u06db\u06d8\u06d8\u06e8\u06e7\u06e1\u06da\u06dc\u06e7\u06d8"

    goto :goto_e

    :sswitch_23
    const-string v0, "jiagu_x86"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :goto_f
    invoke-static {p0}, Lcom/stub/StubApp;->interface5(Landroid/app/Application;)V

    return-void

    :sswitch_24
    const-string v0, "jiagu"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_f

    :sswitch_25
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v2

    :goto_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.jiagu"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v3, v2, v5}, Lcom/stub/StubApp;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/stub/StubApp;->h:Ljava/lang/String;

    invoke-static {v3, v6, v6}, Lcom/stub/StubApp;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/stub/StubApp;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/stub/StubApp;->d:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/stub/StubApp;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/stub/StubApp;->h:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/stub/StubApp;->f:Ljava/lang/String;

    sput-object v3, Lcom/stub/StubApp;->g:Ljava/lang/String;

    const v5, -0x78d9e392

    const-string v2, "\u06d9\u06e1\u06e5\u06d8\u06e1\u06d8\u06df\u06e8\u06e0\u06da\u06e2\u06e8\u06d8\u06dc\u06d6\u06e1\u06e7\u06ec\u06e0\u06e0\u06e8\u06dc\u06d6\u06eb\u06e8\u06df\u06da\u06db"

    :goto_11
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_b

    goto :goto_11

    :sswitch_26
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "\u06e7\u06e4\u06eb\u06e5\u06e0\u06da\u06dc\u06df\u06dc\u06d8\u06e8\u06e2\u06dc\u06d8\u06e6\u06d9\u06d8\u06e2\u06e8\u06e6\u06d8\u06ec\u06e5\u06eb"

    goto :goto_11

    :cond_b
    const-string v2, "\u06e8\u06e5\u06dc\u06e7\u06e6\u06df\u06df\u06d7\u06e1\u06d8\u06e4\u06da\u06da\u06e7\u06d9\u06dc\u06d8\u06e5\u06e7\u06e1"

    goto :goto_11

    :sswitch_27
    const-string v2, "\u06df\u06d8\u06e7\u06d8\u06e4\u06d6\u06dc\u06d8\u06d6\u06db\u06d9\u06d7\u06db\u06e2\u06e2\u06e8\u06e1"

    goto :goto_11

    :sswitch_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/stub/StubApp;->b:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "_mips.so"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/stub/StubApp;->d:Ljava/lang/String;

    invoke-static {p1, v2, v3, v5}, Lcom/qihoo/util/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_12
    const v5, 0x2ba09d89

    const-string v2, "\u06df\u06db\u06d9\u06da\u06df\u06e2\u06db\u06eb\u06eb\u06db\u06e2\u06d6\u06d8\u06dc\u06e0\u06d8"

    :goto_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_c

    goto :goto_13

    :sswitch_29
    const-string v2, "\u06ec\u06eb\u06d9\u06ec\u06eb\u06db\u06d9\u06d9\u06e4\u06e0\u06e2\u06d8\u06e8\u06e0\u06da\u06eb\u06e5\u06df"

    goto :goto_13

    :cond_c
    const-string v2, "\u06e7\u06eb\u06d7\u06e5\u06e8\u06e5\u06d8\u06d8\u06e4\u06e8\u06da\u06db\u06e7\u06e1\u06d6\u06e5\u06d8\u06e7\u06e2\u06df\u06d9\u06ec\u06d7\u06db\u06e2\u06e5\u06d8"

    goto :goto_13

    :sswitch_2a
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "\u06e6\u06eb\u06e2\u06da\u06d6\u06d8\u06d8\u06d6\u06d8\u06e1\u06d8\u06d8\u06dc\u06eb\u06d9\u06d6\u06d7\u06d6\u06e8\u06e7\u06d6\u06e8\u06e0\u06d8\u06e0"

    goto :goto_13

    :sswitch_2b
    const v2, 0x49bd4c51

    const-string v0, "\u06e2\u06d9\u06e6\u06d9\u06d7\u06e5\u06e4\u06da\u06d9\u06d9\u06ec\u06e4\u06e2\u06d9\u06dc\u06d8\u06d7\u06e6\u06ec\u06d7\u06dc\u06db"

    :goto_14
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v5, v2

    sparse-switch v5, :sswitch_data_d

    goto :goto_14

    :sswitch_2c
    const v1, 0x28089c27

    const-string v0, "\u06e7\u06e2\u06e5\u06d8\u06dc\u06ec\u06e6\u06eb\u06db\u06d8\u06d8\u06e0\u06e0\u06eb\u06e4\u06e0\u06eb\u06eb\u06d8\u06ec\u06dc\u06e6\u06e6\u06e7\u06e1"

    :goto_15
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_e

    goto :goto_15

    :sswitch_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/stub/StubApp;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_a64.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/stub/StubApp;->h:Ljava/lang/String;

    invoke-static {p1, v0, v3, v1}, Lcom/qihoo/util/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_16
    const v2, 0x473c5ea1

    const-string v1, "\u06d9\u06da\u06e6\u06d6\u06d6\u06dc\u06d8\u06e6\u06ec\u06d9\u06d6\u06eb\u06e2\u06e2\u06db\u06e6\u06d8"

    :goto_17
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v4, v2

    sparse-switch v4, :sswitch_data_f

    goto :goto_17

    :sswitch_2e
    const-string v1, "\u06e2\u06da\u06e1\u06d9\u06d8\u06e7\u06d8\u06d9\u06d9\u06d6\u06e6\u06ec\u06d8\u06d8\u06da\u06e2\u06d7\u06da\u06d8\u06e6\u06db\u06e2\u06ec"

    goto :goto_17

    :cond_d
    const-string v0, "\u06ec\u06e5\u06d6\u06d8\u06db\u06d8\u06e6\u06e0\u06e5\u06db\u06d9\u06e1\u06d6\u06e5\u06e0\u06e8\u06d8\u06df\u06e6\u06eb\u06db\u06da\u06d6\u06d8\u06e5\u06db\u06d8\u06d7\u06db\u06eb"

    goto :goto_14

    :sswitch_2f
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "\u06e4\u06db\u06e5\u06dc\u06e5\u06e5\u06d8\u06eb\u06d6\u06db\u06df\u06d9\u06e6\u06d8\u06e1\u06d6\u06d6\u06d8\u06e8\u06e2\u06d9\u06e4\u06e4\u06db\u06d8\u06dc\u06e7\u06d8"

    goto :goto_14

    :sswitch_30
    const-string v0, "\u06e0\u06da\u06e2\u06d6\u06e2\u06eb\u06e0\u06e8\u06db\u06d8\u06e6\u06eb\u06d7\u06e6\u06db\u06e7\u06dc\u06e4"

    goto :goto_14

    :cond_e
    const-string v0, "\u06d9\u06e0\u06da\u06df\u06e5\u06e7\u06e2\u06e4\u06e1\u06df\u06d7\u06d8\u06e5\u06db\u06d8"

    goto :goto_15

    :sswitch_31
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "\u06e6\u06e8\u06e0\u06e6\u06ec\u06e4\u06d8\u06da\u06d8\u06dc\u06e5\u06dc\u06d8\u06d8\u06d8\u06e7\u06d8\u06dc\u06e5\u06e4\u06dc\u06da\u06e7\u06e6\u06e8\u06eb"

    goto :goto_15

    :sswitch_32
    const-string v0, "\u06e7\u06e4\u06d7\u06ec\u06da\u06e7\u06da\u06d6\u06d6\u06d8\u06dc\u06e5\u06e0\u06e4\u06d9\u06df\u06d8\u06db\u06d6\u06d7\u06e7\u06e5\u06e4\u06df\u06e0"

    goto :goto_15

    :sswitch_33
    const v1, -0x4a3c20a5

    const-string v0, "\u06db\u06ec\u06da\u06e4\u06d9\u06d6\u06d8\u06d7\u06db\u06e5\u06d8\u06ec\u06da\u06e7\u06e7\u06e1\u06d8\u06d8\u06e8\u06da\u06e6\u06e0\u06e6\u06e1\u06d8\u06d8\u06d8\u06e1\u06d8\u06e8\u06d7\u06ec"

    :goto_18
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_10

    goto :goto_18

    :sswitch_34
    const-string v0, "\u06e0\u06d7\u06e8\u06d8\u06e4\u06d8\u06e1\u06d6\u06e4\u06eb\u06d8\u06dc\u06d8\u06df\u06df\u06e0\u06e1\u06dc\u06da\u06da\u06e4"

    goto :goto_18

    :cond_f
    const-string v0, "\u06db\u06dc\u06da\u06e4\u06e8\u06dc\u06db\u06df\u06d6\u06e7\u06e0\u06eb\u06e6\u06e2\u06e0\u06e2\u06eb"

    goto :goto_18

    :sswitch_35
    sget-boolean v0, Lcom/stub/StubApp;->needX86Bridge:Z

    if-nez v0, :cond_f

    const-string v0, "\u06e0\u06df\u06dc\u06d6\u06d7\u06d8\u06e5\u06db\u06e8\u06eb\u06e0\u06ec\u06e1\u06d9\u06e2\u06df\u06da\u06ec\u06e1\u06ec\u06db\u06db\u06db\u06df\u06e5\u06d7\u06e0"

    goto :goto_18

    :sswitch_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/stub/StubApp;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_x64.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/stub/StubApp;->h:Ljava/lang/String;

    invoke-static {p1, v0, v3, v1}, Lcom/qihoo/util/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_16

    :cond_10
    const-string v1, "\u06da\u06d7\u06e1\u06d8\u06e2\u06ec\u06e1\u06d8\u06e7\u06df\u06db\u06da\u06d9\u06e5\u06d8\u06df\u06dc\u06e1\u06da\u06e5\u06e8\u06e6\u06e6"

    goto :goto_17

    :sswitch_37
    if-eqz v0, :cond_10

    const-string v1, "\u06db\u06d8\u06e7\u06df\u06ec\u06e5\u06d8\u06d6\u06e4\u06e1\u06d8\u06da\u06e5\u06e4\u06df\u06e2\u06e8"

    goto :goto_17

    :sswitch_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/stub/StubApp;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto/16 :goto_f

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_10

    :sswitch_39
    const v5, 0x212b3725

    const-string v2, "\u06e0\u06d6\u06e5\u06df\u06da\u06dc\u06eb\u06e8\u06ec\u06db\u06db\u06e7\u06d7\u06df"

    :goto_19
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_11

    goto :goto_19

    :sswitch_3a
    const v5, 0x472ec793

    const-string v2, "\u06ec\u06d8\u06e6\u06d8\u06d6\u06d7\u06e6\u06d7\u06e4\u06dc\u06d8\u06d6\u06ec\u06dc\u06e8\u06da\u06e1\u06d8\u06e8\u06e6\u06e1\u06e7\u06e1\u06e1"

    :goto_1a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, v5

    sparse-switch v6, :sswitch_data_12

    goto :goto_1a

    :sswitch_3b
    const-string v2, "\u06da\u06df\u06dc\u06e1\u06dc\u06eb\u06e1\u06ec\u06da\u06e5\u06e6\u06d7\u06e2\u06e5\u06d8\u06ec\u06e2\u06ec\u06e0\u06db\u06ec\u06eb\u06eb\u06d7"

    goto :goto_1a

    :cond_11
    const-string v2, "\u06e1\u06db\u06e6\u06d8\u06e8\u06e1\u06e2\u06e0\u06e5\u06e4\u06dc\u06d7\u06dc\u06e5\u06df\u06d8"

    goto :goto_19

    :sswitch_3c
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "\u06dc\u06e0\u06e7\u06e8\u06e0\u06d7\u06e7\u06da\u06e2\u06e4\u06ec\u06dc\u06ec\u06db\u06e5\u06d9\u06d8\u06e7\u06d8\u06ec\u06e0"

    goto :goto_19

    :sswitch_3d
    const-string v2, "\u06df\u06d9\u06db\u06d7\u06e2\u06e7\u06e2\u06db\u06d8\u06d8\u06df\u06e5\u06e2\u06dc\u06d6\u06e7\u06d8\u06e0\u06d7\u06d7\u06ec\u06e4\u06e6\u06eb\u06e4"

    goto :goto_19

    :cond_12
    const-string v2, "\u06d6\u06db\u06e5\u06d8\u06d6\u06df\u06e6\u06e4\u06e5\u06da\u06d8\u06ec\u06e2\u06d6\u06e8\u06eb\u06e6\u06d8"

    goto :goto_1a

    :sswitch_3e
    sget-boolean v2, Lcom/stub/StubApp;->needX86Bridge:Z

    if-nez v2, :cond_12

    const-string v2, "\u06da\u06db\u06da\u06da\u06d7\u06d9\u06ec\u06e6\u06e0\u06db\u06e2\u06e7\u06e1\u06e6\u06eb\u06d7\u06d9\u06e2"

    goto :goto_1a

    :sswitch_3f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/stub/StubApp;->b:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "_x86.so"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/stub/StubApp;->d:Ljava/lang/String;

    invoke-static {p1, v2, v3, v5}, Lcom/qihoo/util/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_12

    :sswitch_40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/stub/StubApp;->b:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".so"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/stub/StubApp;->d:Ljava/lang/String;

    invoke-static {p1, v2, v3, v5}, Lcom/qihoo/util/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_12

    :sswitch_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/stub/StubApp;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto/16 :goto_f

    :sswitch_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/stub/StubApp;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto/16 :goto_f

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_2

    :sswitch_43
    move-object v1, v2

    goto/16 :goto_9

    :sswitch_44
    move-object v0, v1

    goto/16 :goto_6

    nop

    :sswitch_data_0
    .sparse-switch
        -0x338bd5ca -> :sswitch_2
        -0x23d0c148 -> :sswitch_3
        0x28e51d01 -> :sswitch_0
        0x553bca54 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x4599909a -> :sswitch_7
        -0x1ba0b20c -> :sswitch_4
        0x46e3df13 -> :sswitch_8
        0x5c9ec561 -> :sswitch_5
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0xd39ea09 -> :sswitch_a
        0x12eccaf6 -> :sswitch_d
        0x2a62ae17 -> :sswitch_9
        0x792506d3 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x4bee423b -> :sswitch_b
        -0x48e91358 -> :sswitch_d
        -0x3c52e99e -> :sswitch_c
        0x729231e3 -> :sswitch_44
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        -0x794d53f9 -> :sswitch_e
        -0x7943f77f -> :sswitch_f
        0x16bb2f28 -> :sswitch_10
        0x4585f87e -> :sswitch_13
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        -0x7dd1f0ef -> :sswitch_12
        0x26043a6b -> :sswitch_13
        0x2b0e4b82 -> :sswitch_11
        0x51cfe2b9 -> :sswitch_43
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        -0x727401a4 -> :sswitch_15
        -0x2c59b51f -> :sswitch_16
        0x33ada83d -> :sswitch_18
        0x6ac856e8 -> :sswitch_14
    .end sparse-switch

    :sswitch_data_7
    .sparse-switch
        -0x5063e6c1 -> :sswitch_1c
        -0x3042b389 -> :sswitch_17
        -0x2b118df2 -> :sswitch_1b
        -0x1eef36ce -> :sswitch_18
    .end sparse-switch

    :sswitch_data_8
    .sparse-switch
        -0x29226b03 -> :sswitch_1e
        0x311bd63f -> :sswitch_1d
        0x3422c762 -> :sswitch_25
        0x40e66035 -> :sswitch_19
    .end sparse-switch

    :sswitch_data_9
    .sparse-switch
        -0x6bab3d6e -> :sswitch_24
        -0x5faf5863 -> :sswitch_1a
        -0xdbfda0 -> :sswitch_1f
        0x4d577390 -> :sswitch_20
    .end sparse-switch

    :sswitch_data_a
    .sparse-switch
        -0x5fca4f4d -> :sswitch_24
        0x2dbcbf7b -> :sswitch_22
        0x33e49d86 -> :sswitch_23
        0x76737e1e -> :sswitch_21
    .end sparse-switch

    :sswitch_data_b
    .sparse-switch
        -0x40e9ae69 -> :sswitch_28
        0xef5b735 -> :sswitch_27
        0x21194a1e -> :sswitch_26
        0x27f46fd3 -> :sswitch_39
    .end sparse-switch

    :sswitch_data_c
    .sparse-switch
        -0x2fee00c2 -> :sswitch_2b
        0x42ab88f -> :sswitch_29
        0x4d9f719c -> :sswitch_42
        0x6a45f019 -> :sswitch_2a
    .end sparse-switch

    :sswitch_data_d
    .sparse-switch
        -0xaf68f6b -> :sswitch_2c
        0x19b778cb -> :sswitch_30
        0x2db9a608 -> :sswitch_42
        0x392a1d23 -> :sswitch_2f
    .end sparse-switch

    :sswitch_data_e
    .sparse-switch
        -0x7eb1668c -> :sswitch_33
        -0x49508c38 -> :sswitch_32
        -0x287b702c -> :sswitch_31
        0x6d76834 -> :sswitch_2d
    .end sparse-switch

    :sswitch_data_f
    .sparse-switch
        -0x2fe11659 -> :sswitch_37
        -0x1b430078 -> :sswitch_38
        0x2b6a56f8 -> :sswitch_41
        0x6e8398fa -> :sswitch_2e
    .end sparse-switch

    :sswitch_data_10
    .sparse-switch
        -0x79fa6196 -> :sswitch_35
        -0x59ca73e -> :sswitch_34
        0x244c1bd -> :sswitch_36
        0x433985b5 -> :sswitch_2d
    .end sparse-switch

    :sswitch_data_11
    .sparse-switch
        -0x35d7ef41 -> :sswitch_3a
        0x237eff9a -> :sswitch_40
        0x75850217 -> :sswitch_3c
        0x7858ecdc -> :sswitch_3d
    .end sparse-switch

    :sswitch_data_12
    .sparse-switch
        -0x1d051d9c -> :sswitch_3b
        0x2af26e34 -> :sswitch_3f
        0x34873450 -> :sswitch_3e
        0x5d2520e2 -> :sswitch_40
    .end sparse-switch
.end method

.method public native n11030(Ljava/lang/Object;)V
.end method

.method public native n110331(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public native n1110()V
.end method

.method public native n1111()Z
.end method

.method public native n11110(I)V
.end method

.method public native n11111(I)I
.end method

.method public native n111110(II)V
.end method

.method public native n11111110(IIII)V
.end method

.method public native n111130(ILjava/lang/Object;)V
.end method

.method public native n11113311(ILjava/lang/Object;Ljava/lang/Object;I)Z
.end method

.method public native n111220(JJ)V
.end method

.method public native n11122220(JJJJ)V
.end method

.method public native n1112330(JLjava/lang/Object;Ljava/lang/Object;)V
.end method

.method public native n1113()Ljava/lang/Object;
.end method

.method public native n11130(Ljava/lang/Object;)V
.end method

.method public native n11131(Ljava/lang/Object;)Z
.end method

.method public native n111310(Ljava/lang/Object;I)V
.end method

.method public native n111311(Ljava/lang/Object;I)I
.end method

.method public native n1113110(Ljava/lang/Object;II)V
.end method

.method public native n1113130(Ljava/lang/Object;ZLjava/lang/Object;)V
.end method

.method public native n11133(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public native n111330(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public native n1113310(Ljava/lang/Object;Ljava/lang/Object;Z)V
.end method

.method public native n11133110(Ljava/lang/Object;Ljava/lang/Object;ZI)V
.end method

.method public native n1113330(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public native n11133310(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
.end method

.method public native n1113331110(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;III)V
.end method

.method public native n1113333(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final onCreate()V
    .locals 5

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {p0}, Lcom/stub/StubApp;->interface21(Landroid/app/Application;)V

    sget-object v1, Lcom/stub/StubApp;->c:Landroid/content/Context;

    const v2, -0x4d9c6911

    const-string v0, "\u06e7\u06e7\u06d7\u06e4\u06e5\u06e6\u06eb\u06dc\u06e7\u06da\u06eb\u06e0\u06ec\u06d8\u06df\u06d6\u06d6\u06dc\u06d8\u06da\u06e4\u06df\u06e0\u06e5\u06e8\u06d8\u06dc\u06da\u06d6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    if-eqz p0, :cond_0

    const-string v0, "\u06e7\u06d8\u06e1\u06d8\u06df\u06e0\u06e7\u06d8\u06e8\u06e7\u06e7\u06d6\u06e8\u06d6\u06ec\u06e2\u06da\u06d9\u06df\u06e5\u06e1\u06df\u06ec\u06e4\u06e8\u06d8"

    goto :goto_0

    :cond_0
    const-string v0, "\u06ec\u06d8\u06df\u06db\u06e7\u06e4\u06dc\u06df\u06e5\u06d8\u06d7\u06da\u06e7\u06da\u06d8\u06dc\u06d8\u06dc\u06ec\u06d6\u06d8\u06e4\u06dc"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e8\u06d6\u06e7\u06e8\u06eb\u06d6\u06d8\u06e7\u06d7\u06d9\u06da\u06d9\u06d8\u06d8\u06ec\u06e5\u06eb\u06e7\u06d6\u06e6\u06eb\u06db\u06e1\u06e7\u06e0\u06df"

    goto :goto_0

    :sswitch_2
    const v2, 0x600764c6

    const-string v0, "\u06e8\u06e7\u06e1\u06dc\u06e2\u06d7\u06e1\u06dc\u06e7\u06d8\u06e4\u06e4\u06d6\u06d8\u06e1\u06ec\u06dc"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    if-eqz v1, :cond_1

    const-string v0, "\u06e6\u06e2\u06e7\u06d9\u06d7\u06d6\u06d8\u06e4\u06d7\u06d7\u06d9\u06d8\u06da\u06e7\u06e5\u06e5\u06d8\u06df\u06ec\u06e5\u06d8\u06e7\u06da\u06ec\u06db\u06ec\u06e5\u06d8"

    goto :goto_1

    :cond_1
    const-string v0, "\u06da\u06d8\u06e1\u06da\u06e8\u06e4\u06e5\u06e7\u06dc\u06d8\u06eb\u06e0\u06d6\u06d8\u06e5\u06df\u06e8\u06e2\u06da\u06e7"

    goto :goto_1

    :sswitch_4
    const-string v0, "\u06d8\u06d7\u06dc\u06d8\u06eb\u06e1\u06d8\u06df\u06db\u06e6\u06d8\u06e6\u06e0\u06e2\u06e1\u06e2\u06d6\u06d8\u06dc\u06e5\u06d7\u06e2\u06da\u06e7\u06e1\u06d6\u06e1"

    goto :goto_1

    :sswitch_5
    const v2, 0x109f3419

    const-string v0, "\u06db\u06e2\u06d7\u06eb\u06da\u06dc\u06d8\u06da\u06e4\u06d9\u06e8\u06db\u06dc\u06d8\u06dc\u06e1\u06d9\u06da\u06e6\u06d8"

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_2

    goto :goto_2

    :sswitch_6
    :try_start_0
    const-string v0, "s\u007f}>zw>rx>Bu`\u007fbdcDy}u"

    invoke-static {v0}, Lcom/qihoo/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "BuwycdubQsdyfydiSq||Rqs{c"

    invoke-static {v1}, Lcom/qihoo/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Application;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    :sswitch_7
    return-void

    :cond_2
    const-string v0, "\u06dc\u06e1\u06e5\u06d8\u06d6\u06da\u06e5\u06e1\u06e7\u06e2\u06e4\u06e6\u06d6\u06d8\u06d7\u06e7\u06e5\u06d9\u06d8\u06db\u06e1\u06d6\u06d8\u06d8\u06da\u06e1\u06ec\u06db\u06e1\u06da"

    goto :goto_2

    :sswitch_8
    invoke-static {v1}, Lcom/qihoo/util/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u06e8\u06d9\u06d8\u06d8\u06eb\u06e8\u06e8\u06d8\u06e6\u06d9\u06e8\u06d8\u06d8\u06e2\u06e8\u06d8\u06da\u06e4\u06d8\u06d6\u06df\u06e6\u06d8"

    goto :goto_2

    :sswitch_9
    const-string v0, "\u06d9\u06d7\u06e7\u06e1\u06e6\u06e6\u06d8\u06e1\u06e1\u06d8\u06e0\u06eb\u06e1\u06d8\u06d8\u06e7\u06da\u06e0\u06d7\u06e5\u06d8\u06db\u06e0\u06e0\u06df\u06e8\u06d6"

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        -0x7aa97e5e -> :sswitch_7
        0x3dfc25d8 -> :sswitch_1
        0x4018ff8b -> :sswitch_2
        0x68e8eb0d -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x3597ec6d -> :sswitch_5
        -0x11d67634 -> :sswitch_4
        -0xcf8644e -> :sswitch_3
        0x372fae2f -> :sswitch_7
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x44e7ae7e -> :sswitch_8
        -0x1b275ec -> :sswitch_7
        0x624b8997 -> :sswitch_9
        0x773d53db -> :sswitch_6
    .end sparse-switch
.end method
