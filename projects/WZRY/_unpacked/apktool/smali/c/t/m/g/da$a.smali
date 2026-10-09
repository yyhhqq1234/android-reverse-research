.class final Lc/t/m/g/da$a;
.super Landroid/os/Handler;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/t/m/g/da;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lc/t/m/g/da;


# direct methods
.method private constructor <init>(Lc/t/m/g/da;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lc/t/m/g/da$a;->a:Lc/t/m/g/da;

    .line 254
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 255
    return-void
.end method

.method synthetic constructor <init>(Lc/t/m/g/da;Landroid/os/Looper;B)V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0, p1, p2}, Lc/t/m/g/da$a;-><init>(Lc/t/m/g/da;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lc/t/m/g/da$a;->a:Lc/t/m/g/da;

    iget-boolean v0, v0, Lc/t/m/g/da;->a:Z

    if-nez v0, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    const/4 v0, 0x0

    .line 263
    iget-object v1, p0, Lc/t/m/g/da$a;->a:Lc/t/m/g/da;

    invoke-static {v1}, Lc/t/m/g/da;->b(Lc/t/m/g/da;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 265
    :try_start_0
    iget-object v1, p0, Lc/t/m/g/da$a;->a:Lc/t/m/g/da;

    invoke-static {v1}, Lc/t/m/g/da;->b(Lc/t/m/g/da;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 270
    :goto_1
    iget-object v1, p0, Lc/t/m/g/da$a;->a:Lc/t/m/g/da;

    invoke-virtual {v1, v0}, Lc/t/m/g/da;->onCellInfoChanged(Ljava/util/List;)V

    .line 272
    :cond_2
    iget-object v0, p0, Lc/t/m/g/da$a;->a:Lc/t/m/g/da;

    invoke-static {v0}, Lc/t/m/g/da;->c(Lc/t/m/g/da;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    const/4 v0, 0x0

    const-wide/16 v2, 0x7530

    invoke-virtual {p0, v0, v2, v3}, Lc/t/m/g/da$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 266
    :catch_0
    move-exception v1

    .line 267
    const-string v2, "TxNewCellProvider"

    const-string v3, "cannot get cellinfo"

    invoke-static {v2, v3, v1}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
