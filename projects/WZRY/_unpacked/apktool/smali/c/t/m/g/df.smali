.class final Lc/t/m/g/df;
.super Landroid/content/BroadcastReceiver;
.source "TL"


# static fields
.field private static h:Landroid/os/Handler;

.field private static final l:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile a:Z

.field private final b:Lc/t/m/g/cj;

.field private final c:Landroid/net/wifi/WifiManager;

.field private d:Z

.field private volatile e:Z

.field private f:J

.field private g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/lang/Runnable;

.field private final k:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 279
    new-instance v0, Lc/t/m/g/df$2;

    invoke-direct {v0}, Lc/t/m/g/df$2;-><init>()V

    sput-object v0, Lc/t/m/g/df;->l:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lc/t/m/g/cj;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/t/m/g/df;->e:Z

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc/t/m/g/df;->k:Ljava/lang/Object;

    .line 63
    iput-object p1, p0, Lc/t/m/g/df;->b:Lc/t/m/g/cj;

    .line 64
    invoke-virtual {p1}, Lc/t/m/g/cj;->d()Landroid/net/wifi/WifiManager;

    move-result-object v0

    iput-object v0, p0, Lc/t/m/g/df;->c:Landroid/net/wifi/WifiManager;

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc/t/m/g/df;->g:Ljava/util/HashSet;

    .line 67
    new-instance v0, Lc/t/m/g/df$1;

    invoke-direct {v0, p0}, Lc/t/m/g/df$1;-><init>(Lc/t/m/g/df;)V

    iput-object v0, p0, Lc/t/m/g/df;->j:Ljava/lang/Runnable;

    .line 84
    return-void
.end method

.method private a(J)V
    .locals 3

    .prologue
    .line 216
    const-string v0, "TxWifiProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ScanInterval:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    sget-object v0, Lc/t/m/g/df;->h:Landroid/os/Handler;

    .line 218
    iget-object v1, p0, Lc/t/m/g/df;->j:Ljava/lang/Runnable;

    .line 220
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 221
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 222
    return-void
.end method

.method static synthetic a(Lc/t/m/g/df;J)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lc/t/m/g/df;->a(J)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    const-string v0, "TxWifiProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-----------------------------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 191
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 192
    if-eqz v0, :cond_0

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 195
    :cond_1
    const-string v0, "TxWifiProvider"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_2
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 286
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 287
    :cond_0
    invoke-direct {p0}, Lc/t/m/g/df;->e()V

    .line 294
    :cond_1
    :goto_0
    new-instance v0, Lc/t/m/g/dn;

    iget-wide v2, p0, Lc/t/m/g/df;->f:J

    iget-object v1, p0, Lc/t/m/g/df;->c:Landroid/net/wifi/WifiManager;

    .line 295
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    invoke-direct {v0, p1, v2, v3}, Lc/t/m/g/dn;-><init>(Ljava/util/List;J)V

    .line 296
    iget-object v1, p0, Lc/t/m/g/df;->b:Lc/t/m/g/cj;

    invoke-virtual {v1, v0}, Lc/t/m/g/cj;->b(Ljava/lang/Object;)V

    .line 297
    return-void

    .line 289
    :cond_2
    sget-boolean v0, Lc/t/m/g/eb;->a:Z

    if-eqz v0, :cond_1

    .line 290
    const/4 v0, 0x0

    sput-boolean v0, Lc/t/m/g/eb;->a:Z

    .line 291
    invoke-direct {p0}, Lc/t/m/g/df;->e()V

    goto :goto_0
.end method

.method static synthetic a(Lc/t/m/g/df;)Z
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lc/t/m/g/df;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lc/t/m/g/df;)Lc/t/m/g/cj;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lc/t/m/g/df;->b:Lc/t/m/g/cj;

    return-object v0
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lc/t/m/g/df;->b:Lc/t/m/g/cj;

    invoke-static {v0}, Lc/t/m/g/eb;->b(Lc/t/m/g/cj;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc/t/m/g/df;->d:Z

    if-eqz v0, :cond_1

    .line 230
    :cond_0
    const-string v0, "TxWifiProvider"

    const-string v1, "no try scan ,return!!"

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const/4 v0, 0x0

    .line 234
    :goto_0
    return v0

    .line 233
    :cond_1
    iget-object v0, p0, Lc/t/m/g/df;->c:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Lc/t/m/g/eb;->a(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic c(Lc/t/m/g/df;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lc/t/m/g/df;->e:Z

    return v0
.end method

.method private d()V
    .locals 6

    .prologue
    .line 238
    const-string v0, "TxWifiProvider"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lc/t/m/g/df;->g:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc/t/m/g/df;->g:Ljava/util/HashSet;

    .line 242
    :cond_0
    iget-object v0, p0, Lc/t/m/g/df;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 243
    iget-object v0, p0, Lc/t/m/g/df;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 244
    iget-object v2, p0, Lc/t/m/g/df;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Landroid/net/wifi/ScanResult;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 246
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc/t/m/g/df;->f:J

    .line 247
    const-string v0, "TxWifiProvider"

    const-string v1, "first receiver"

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lc/t/m/g/df;->i:Ljava/util/List;

    invoke-direct {p0, v0}, Lc/t/m/g/df;->a(Ljava/util/List;)V

    .line 277
    :goto_1
    return-void

    .line 250
    :cond_2
    iget-object v0, p0, Lc/t/m/g/df;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    .line 251
    iget-object v0, p0, Lc/t/m/g/df;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 252
    if-eq v1, v0, :cond_4

    .line 253
    iget-object v0, p0, Lc/t/m/g/df;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 254
    iget-object v0, p0, Lc/t/m/g/df;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 255
    iget-object v2, p0, Lc/t/m/g/df;->g:Ljava/util/HashSet;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 257
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc/t/m/g/df;->f:J

    .line 258
    const-string v0, "TxWifiProvider"

    const-string v1, "size not same"

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lc/t/m/g/df;->i:Ljava/util/List;

    invoke-direct {p0, v0}, Lc/t/m/g/df;->a(Ljava/util/List;)V

    goto :goto_1

    .line 261
    :cond_4
    iget-object v0, p0, Lc/t/m/g/df;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 262
    iget-object v3, p0, Lc/t/m/g/df;->g:Ljava/util/HashSet;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 264
    :cond_5
    iget-object v0, p0, Lc/t/m/g/df;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-eq v1, v0, :cond_7

    .line 265
    iget-object v0, p0, Lc/t/m/g/df;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 266
    iget-object v0, p0, Lc/t/m/g/df;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 267
    iget-object v2, p0, Lc/t/m/g/df;->g:Ljava/util/HashSet;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 269
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc/t/m/g/df;->f:J

    .line 270
    const-string v0, "TxWifiProvider"

    const-string v1, "size same,but mac is not same"

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lc/t/m/g/df;->i:Ljava/util/List;

    invoke-direct {p0, v0}, Lc/t/m/g/df;->a(Ljava/util/List;)V

    goto/16 :goto_1

    .line 273
    :cond_7
    const-string v0, "TxWifiProvider"

    const-string v1, "size same,mac and rssi same"

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 300
    iget-object v1, p0, Lc/t/m/g/df;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    .line 304
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 305
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Lc/t/m/g/df;->a(J)V

    .line 317
    :goto_0
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lc/t/m/g/df;->b:Lc/t/m/g/cj;

    .line 318
    invoke-virtual {v1}, Lc/t/m/g/cj;->e()Landroid/location/LocationManager;

    move-result-object v1

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lc/t/m/g/df;->b:Lc/t/m/g/cj;

    .line 319
    invoke-virtual {v1}, Lc/t/m/g/cj;->e()Landroid/location/LocationManager;

    move-result-object v1

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 320
    const/4 v0, 0x5

    .line 324
    :cond_0
    :goto_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 325
    const/16 v2, 0x32c7

    iput v2, v1, Landroid/os/Message;->what:I

    .line 326
    const/16 v2, 0x2ee1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 327
    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 328
    iget-object v0, p0, Lc/t/m/g/df;->b:Lc/t/m/g/cj;

    invoke-virtual {v0, v1}, Lc/t/m/g/cj;->b(Ljava/lang/Object;)V

    .line 329
    return-void

    .line 307
    :cond_1
    if-ne v1, v0, :cond_3

    .line 308
    const/4 v0, 0x0

    .line 310
    iget-object v1, p0, Lc/t/m/g/df;->i:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 311
    iget-object v1, p0, Lc/t/m/g/df;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 312
    :cond_2
    iget-object v1, p0, Lc/t/m/g/df;->b:Lc/t/m/g/cj;

    sget-object v2, Lc/t/m/g/dn;->a:Lc/t/m/g/dn;

    invoke-virtual {v1, v2}, Lc/t/m/g/cj;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 314
    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 108
    iget-object v1, p0, Lc/t/m/g/df;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    :try_start_0
    iget-boolean v0, p0, Lc/t/m/g/df;->a:Z

    if-nez v0, :cond_0

    .line 110
    monitor-exit v1

    .line 130
    :goto_0
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/t/m/g/df;->a:Z

    .line 113
    sget-object v0, Lc/t/m/g/df;->h:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :try_start_1
    iget-object v0, p0, Lc/t/m/g/df;->b:Lc/t/m/g/cj;

    iget-object v0, v0, Lc/t/m/g/cj;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 116
    const-string v0, "TxWifiProvider"

    const-string/jumbo v2, "unregisterReceiver success"

    invoke-static {v0, v2}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :goto_1
    const-wide/16 v2, 0x0

    :try_start_2
    iput-wide v2, p0, Lc/t/m/g/df;->f:J

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lc/t/m/g/df;->g:Ljava/util/HashSet;

    .line 124
    iget-object v0, p0, Lc/t/m/g/df;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lc/t/m/g/df;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 127
    :cond_1
    iget-object v0, p0, Lc/t/m/g/df;->g:Ljava/util/HashSet;

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lc/t/m/g/df;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 129
    :cond_2
    const-string v0, "TxWifiProvider"

    const-string v2, "shutdown: state=[shutdown]"

    invoke-static {v0, v2}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 118
    :catch_0
    move-exception v0

    :try_start_3
    const-string v0, "TxWifiProvider"

    const-string/jumbo v2, "unregisterReceiver failed"

    invoke-static {v0, v2}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public final a(Landroid/os/Handler;Z)V
    .locals 3

    .prologue
    .line 87
    iget-boolean v0, p0, Lc/t/m/g/df;->a:Z

    if-eqz v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/t/m/g/df;->a:Z

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/t/m/g/df;->e:Z

    .line 92
    iput-boolean p2, p0, Lc/t/m/g/df;->d:Z

    .line 93
    sput-object p1, Lc/t/m/g/df;->h:Landroid/os/Handler;

    .line 94
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lc/t/m/g/df;->b:Lc/t/m/g/cj;

    iget-object v1, v1, Lc/t/m/g/cj;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_1
    iget-boolean v0, p0, Lc/t/m/g/df;->d:Z

    if-nez v0, :cond_1

    .line 98
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lc/t/m/g/df;->a(J)V

    .line 100
    :cond_1
    const-string v0, "TxWifiProvider"

    const-string v1, "startup: state=[start]"

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    const-string v1, "TxWifiProvider"

    const-string v2, "listenWifiState: failed"

    invoke-static {v1, v2, v0}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 104
    iput-boolean p1, p0, Lc/t/m/g/df;->e:Z

    .line 105
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Lc/t/m/g/df;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 147
    if-nez p2, :cond_0

    .line 182
    :goto_0
    return-void

    .line 151
    :cond_0
    :try_start_0
    iget-object v1, p0, Lc/t/m/g/df;->k:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 153
    const-string v2, "TxWifiProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onReceive "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    invoke-direct {p0}, Lc/t/m/g/df;->e()V

    .line 159
    :cond_1
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.net.wifi.SCAN_RESULTS"

    .line 160
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    :cond_2
    iget-object v0, p0, Lc/t/m/g/df;->c:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Lc/t/m/g/eb;->b(Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 163
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lc/t/m/g/df;->i:Ljava/util/List;

    .line 165
    const-string v0, "before filter!"

    iget-object v2, p0, Lc/t/m/g/df;->i:Ljava/util/List;

    invoke-static {v0, v2}, Lc/t/m/g/df;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 167
    iget-object v0, p0, Lc/t/m/g/df;->i:Ljava/util/List;

    invoke-static {v0}, Lc/t/m/g/dg;->a(Ljava/util/List;)V

    .line 169
    const-string v0, "after filter!"

    iget-object v2, p0, Lc/t/m/g/df;->i:Ljava/util/List;

    invoke-static {v0, v2}, Lc/t/m/g/df;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 170
    iget-object v0, p0, Lc/t/m/g/df;->i:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc/t/m/g/df;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 171
    iget-object v0, p0, Lc/t/m/g/df;->i:Ljava/util/List;

    sget-object v2, Lc/t/m/g/df;->l:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 172
    invoke-direct {p0}, Lc/t/m/g/df;->d()V

    .line 178
    :cond_3
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 181
    :catch_0
    move-exception v0

    .line 180
    const-string v1, "TxWifiProvider"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 175
    :cond_4
    :try_start_3
    const-string v2, "TxWifiProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ScanResult list is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_5

    const-string v0, "null"

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, "size=0"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method
