.class public Lcom/tencent/kgvmp/report/BatteryInfoReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:D

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/a/b;->a:Ljava/lang/String;

    sput-object v0, Lcom/tencent/kgvmp/report/BatteryInfoReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/kgvmp/report/BatteryInfoReceiver;->b:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/kgvmp/report/BatteryInfoReceiver;->c:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v2, "temperature"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/tencent/kgvmp/report/BatteryInfoReceiver;->b:D

    sget-object v2, Lcom/tencent/kgvmp/a/e;->BATTERY_TEMP:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v2}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v4, "%.1f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-wide v8, p0, Lcom/tencent/kgvmp/report/BatteryInfoReceiver;->b:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/kgvmp/report/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/kgvmp/report/BatteryInfoReceiver;->c:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/kgvmp/report/BatteryInfoReceiver;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/kgvmp/report/BatteryInfoReceiver;->c:I

    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "where"

    const-string v2, "battery"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/tencent/kgvmp/report/j;->i(Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/tencent/kgvmp/report/BatteryInfoReceiver;->a:Ljava/lang/String;

    const-string v2, "BatteryInfoReceiver:onReceive: exception"

    invoke-static {v0, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v0, Lcom/tencent/kgvmp/report/BatteryInfoReceiver;->a:Ljava/lang/String;

    const-string v1, "BatteryInfoReceiver: vmp get temperature exception report exception. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
