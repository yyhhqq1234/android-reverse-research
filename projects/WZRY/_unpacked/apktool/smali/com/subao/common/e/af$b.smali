.class public Lcom/subao/common/e/af$b;
.super Ljava/lang/Object;
.source "PortalMiscConfigDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/e/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:[Lcom/subao/common/e/f$a;

.field private h:[Lcom/subao/common/e/f$a;

.field private i:I

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/16 v0, 0x64

    iput v0, p0, Lcom/subao/common/e/af$b;->a:I

    .line 109
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/subao/common/e/af$b;->b:I

    .line 113
    const/16 v0, 0x2710

    iput v0, p0, Lcom/subao/common/e/af$b;->c:I

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/subao/common/e/af$b;->d:I

    .line 134
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/subao/common/e/af$b;->j:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/subao/common/e/af$b;)I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/subao/common/e/af$b;->a:I

    return v0
.end method

.method static a(I)Z
    .locals 2

    .prologue
    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/subao/common/e/af$b;->a(IJ)Z

    move-result v0

    return v0
.end method

.method static a(IJ)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 195
    if-gtz p0, :cond_1

    move v0, v1

    .line 202
    :cond_0
    :goto_0
    return v0

    .line 198
    :cond_1
    const/16 v2, 0x2710

    if-ge p0, v2, :cond_0

    .line 201
    const-wide/32 v2, 0xffffff

    and-long/2addr v2, p1

    long-to-int v2, v2

    .line 202
    rem-int/lit16 v2, v2, 0x2710

    if-lt v2, p0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/subao/common/e/af$b;)I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/subao/common/e/af$b;->b:I

    return v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 137
    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method static synthetic c(Lcom/subao/common/e/af$b;)I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/subao/common/e/af$b;->d:I

    return v0
.end method

.method private static c(Ljava/lang/String;)[Lcom/subao/common/e/f$a;
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 234
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    const/4 v0, 0x0

    .line 257
    :goto_0
    return-object v0

    .line 237
    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 238
    new-instance v6, Ljava/util/ArrayList;

    array-length v0, v5

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 239
    array-length v7, v5

    move v3, v4

    :goto_1
    if-ge v3, v7, :cond_2

    aget-object v8, v5, v3

    .line 241
    const/16 v0, 0x3a

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 242
    if-gez v9, :cond_1

    .line 243
    new-instance v0, Lcom/subao/common/e/f$a;

    invoke-direct {v0, v8, v1}, Lcom/subao/common/e/f$a;-><init>(Ljava/lang/String;I)V

    .line 254
    :goto_2
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 247
    :cond_1
    add-int/lit8 v0, v9, 0x1

    :try_start_0
    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 252
    :goto_3
    new-instance v2, Lcom/subao/common/e/f$a;

    invoke-virtual {v8, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8, v0}, Lcom/subao/common/e/f$a;-><init>(Ljava/lang/String;I)V

    move-object v0, v2

    goto :goto_2

    .line 248
    :catch_0
    move-exception v0

    .line 249
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move v0, v1

    .line 250
    goto :goto_3

    .line 256
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/subao/common/e/f$a;

    .line 257
    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subao/common/e/f$a;

    goto :goto_0
.end method

.method static synthetic d(Lcom/subao/common/e/af$b;)I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/subao/common/e/af$b;->c:I

    return v0
.end method

.method static synthetic e(Lcom/subao/common/e/af$b;)Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/subao/common/e/af$b;->e:Z

    return v0
.end method

.method static synthetic f(Lcom/subao/common/e/af$b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/subao/common/e/af$b;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/subao/common/e/af$b;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 207
    :try_start_0
    const-string v0, "er_tg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/subao/common/e/af$b;->a:I

    .line 231
    :goto_0
    return-void

    .line 209
    :cond_0
    const-string v0, "er_auth"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/subao/common/e/af$b;->b:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 211
    :cond_1
    :try_start_1
    const-string v0, "er_was"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/subao/common/e/af$b;->c:I

    goto :goto_0

    .line 213
    :cond_2
    const-string v0, "er_ml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 214
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/subao/common/e/af$b;->d:I

    goto :goto_0

    .line 215
    :cond_3
    const-string v0, "auth_http"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 216
    invoke-static {p2}, Lcom/subao/common/e/af$b;->b(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/subao/common/e/af$b;->e:Z

    goto :goto_0

    .line 217
    :cond_4
    const-string v0, "acc_info_up_proto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 218
    iput-object p2, p0, Lcom/subao/common/e/af$b;->f:Ljava/lang/String;

    goto :goto_0

    .line 219
    :cond_5
    const-string v0, "qos_zte_primary"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 220
    invoke-static {p2}, Lcom/subao/common/e/af$b;->c(Ljava/lang/String;)[Lcom/subao/common/e/f$a;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/e/af$b;->g:[Lcom/subao/common/e/f$a;

    goto :goto_0

    .line 221
    :cond_6
    const-string v0, "qos_zte_secondary"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 222
    invoke-static {p2}, Lcom/subao/common/e/af$b;->c(Ljava/lang/String;)[Lcom/subao/common/e/f$a;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/e/af$b;->h:[Lcom/subao/common/e/f$a;

    goto :goto_0

    .line 223
    :cond_7
    const-string v0, "auth_cache_time"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 224
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/subao/common/e/af$b;->i:I

    goto :goto_0

    .line 226
    :cond_8
    iget-object v0, p0, Lcom/subao/common/e/af$b;->j:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method a()[Lcom/subao/common/e/f$a;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/subao/common/e/af$b;->g:[Lcom/subao/common/e/f$a;

    return-object v0
.end method

.method b()[Lcom/subao/common/e/f$a;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/subao/common/e/af$b;->h:[Lcom/subao/common/e/f$a;

    return-object v0
.end method
