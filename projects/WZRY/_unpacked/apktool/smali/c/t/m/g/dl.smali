.class public final Lc/t/m/g/dl;
.super Ljava/lang/Object;
.source "TL"


# static fields
.field public static a:I


# instance fields
.field private final b:Lc/t/m/g/dn;

.field private final c:Lc/t/m/g/dj;

.field private final d:Lc/t/m/g/dk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput v0, Lc/t/m/g/dl;->a:I

    return-void
.end method

.method public constructor <init>(Lc/t/m/g/dn;Lc/t/m/g/dj;Lc/t/m/g/dk;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lc/t/m/g/dl;->b:Lc/t/m/g/dn;

    .line 24
    iput-object p2, p0, Lc/t/m/g/dl;->c:Lc/t/m/g/dj;

    .line 25
    iput-object p3, p0, Lc/t/m/g/dl;->d:Lc/t/m/g/dk;

    .line 26
    return-void
.end method

.method private a(IILjava/lang/String;Lc/t/m/g/cj;ZZ)Ljava/lang/String;
    .locals 13

    .prologue
    .line 58
    if-nez p4, :cond_0

    .line 59
    const/4 v1, 0x0

    .line 124
    :goto_0
    return-object v1

    .line 60
    :cond_0
    :try_start_0
    iget-object v1, p0, Lc/t/m/g/dl;->c:Lc/t/m/g/dj;

    if-nez v1, :cond_1

    .line 62
    const/4 v1, 0x1

    .line 68
    :goto_1
    iget-object v2, p0, Lc/t/m/g/dl;->b:Lc/t/m/g/dn;

    invoke-static {v2}, Lc/t/m/g/f$a;->a(Lc/t/m/g/dn;)Ljava/lang/String;

    move-result-object v2

    .line 69
    iget-object v3, p0, Lc/t/m/g/dl;->c:Lc/t/m/g/dj;

    invoke-static {v3, v1}, Lc/t/m/g/f$a;->a(Lc/t/m/g/dj;Z)Ljava/lang/String;

    move-result-object v3

    .line 70
    iget-object v1, p0, Lc/t/m/g/dl;->d:Lc/t/m/g/dk;

    invoke-static {v1}, Lc/t/m/g/f$a;->a(Lc/t/m/g/dk;)Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-virtual/range {p4 .. p4}, Lc/t/m/g/cj;->i()Lc/t/m/g/ck;

    move-result-object v5

    .line 76
    if-nez v5, :cond_3

    .line 77
    const/4 v1, 0x0

    goto :goto_0

    .line 64
    :cond_1
    sget v1, Lc/t/m/g/dl;->a:I

    iget-object v2, p0, Lc/t/m/g/dl;->c:Lc/t/m/g/dj;

    iget v2, v2, Lc/t/m/g/dj;->e:I

    if-eq v1, v2, :cond_2

    const/4 v1, 0x1

    .line 65
    :goto_2
    iget-object v2, p0, Lc/t/m/g/dl;->c:Lc/t/m/g/dj;

    iget v2, v2, Lc/t/m/g/dj;->e:I

    sput v2, Lc/t/m/g/dl;->a:I

    goto :goto_1

    .line 124
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0

    .line 64
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 78
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v6, "imei"

    invoke-virtual {v5}, Lc/t/m/g/ck;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "imsi"

    invoke-virtual {v5}, Lc/t/m/g/ck;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "phonenum"

    iget-object v7, v5, Lc/t/m/g/ck;->e:Ljava/lang/String;

    invoke-static {v7}, Lc/t/m/g/f$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "qq"

    iget-object v7, v5, Lc/t/m/g/ck;->g:Ljava/lang/String;

    invoke-static {v7}, Lc/t/m/g/f$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "mac"

    invoke-virtual {v5}, Lc/t/m/g/ck;->c()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v5, Lc/t/m/g/ck;->a:Lc/t/m/g/cj;

    invoke-virtual {v6}, Lc/t/m/g/cj;->c()Landroid/telephony/TelephonyManager;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 79
    invoke-virtual {v5}, Lc/t/m/g/ck;->f()Ljava/lang/String;

    move-result-object v7

    .line 80
    invoke-static {}, Lc/t/m/g/dz;->a()Lc/t/m/g/dz;

    move-object/from16 v0, p4

    iget-object v1, v0, Lc/t/m/g/cj;->a:Landroid/content/Context;

    invoke-static {v1}, Lc/t/m/g/dz;->a(Landroid/content/Context;)I

    move-result v8

    .line 81
    invoke-static/range {p4 .. p4}, Lc/t/m/g/eb;->c(Lc/t/m/g/cj;)Ljava/lang/String;

    move-result-object v9

    .line 84
    iget-object v1, v5, Lc/t/m/g/ck;->j:Ljava/lang/String;

    .line 85
    if-eqz v1, :cond_4

    .line 86
    const-string v10, "\""

    const-string v11, ""

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 88
    :cond_4
    if-eqz v1, :cond_5

    .line 89
    const-string/jumbo v10, "|"

    const-string v11, ""

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 91
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, "_"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v10, v5, Lc/t/m/g/ck;->i:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 94
    const/16 v1, 0xcb

    .line 95
    if-eqz p6, :cond_6

    .line 96
    invoke-virtual {v5}, Lc/t/m/g/ck;->a()Ljava/lang/String;

    move-result-object v11

    .line 97
    if-eqz v11, :cond_6

    .line 98
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    rem-int/lit16 v1, v1, 0x3e8

    add-int/lit16 v1, v1, 0x3e9

    .line 102
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "{\"version\":\""

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lc/t/m/g/ck;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "\",\"address\":"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 104
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, ",\"source\":"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ",\"access_token\":\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\",\"app_name\":\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\",\"app_label\":\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\",\"bearing\":1"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    if-ltz p2, :cond_7

    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ",\"control\":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    :cond_7
    if-eqz p5, :cond_8

    if-nez p6, :cond_8

    .line 112
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ",\"detectgps\":1"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ",\"pstat\":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ",\"wlan\":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ",\"attribute\":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ",\"location\":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ",\"cells\":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",\"wifis\":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 114
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ",\"detectgps\":0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_3
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lc/t/m/g/dl;->c:Lc/t/m/g/dj;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lc/t/m/g/dl;->b:Lc/t/m/g/dn;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lc/t/m/g/dl;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 141
    if-nez p1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v0

    .line 150
    :cond_1
    invoke-direct {p1}, Lc/t/m/g/dl;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lc/t/m/g/dl;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/t/m/g/dl;->b:Lc/t/m/g/dn;

    iget-object v2, p1, Lc/t/m/g/dl;->b:Lc/t/m/g/dn;

    invoke-virtual {v1, v2}, Lc/t/m/g/dn;->a(Lc/t/m/g/dn;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 151
    const/4 v0, 0x2

    goto :goto_0

    .line 152
    :cond_2
    invoke-direct {p1}, Lc/t/m/g/dl;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lc/t/m/g/dl;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p1}, Lc/t/m/g/dl;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lc/t/m/g/dl;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lc/t/m/g/dl;->c:Lc/t/m/g/dj;

    invoke-virtual {v1}, Lc/t/m/g/dj;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lc/t/m/g/dl;->c:Lc/t/m/g/dj;

    invoke-virtual {v2}, Lc/t/m/g/dj;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a()Lc/t/m/g/dk;
    .locals 1
    .annotation build Lorg/eclipse/jdt/annotation/Nullable;
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lc/t/m/g/dl;->d:Lc/t/m/g/dk;

    return-object v0
.end method

.method public final a(ILjava/lang/String;Lc/t/m/g/cj;ZZZ)Ljava/lang/String;
    .locals 7

    .prologue
    .line 130
    if-eqz p5, :cond_0

    .line 131
    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lc/t/m/g/dl;->a(IILjava/lang/String;Lc/t/m/g/cj;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lc/t/m/g/dl;->a(IILjava/lang/String;Lc/t/m/g/cj;ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
