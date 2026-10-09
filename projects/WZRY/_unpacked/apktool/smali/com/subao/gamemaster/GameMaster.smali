.class public Lcom/subao/gamemaster/GameMaster;
.super Ljava/lang/Object;
.source "GameMaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/gamemaster/GameMaster$g;,
        Lcom/subao/gamemaster/GameMaster$f;,
        Lcom/subao/gamemaster/GameMaster$a;,
        Lcom/subao/gamemaster/GameMaster$d;,
        Lcom/subao/gamemaster/GameMaster$e;,
        Lcom/subao/gamemaster/GameMaster$c;,
        Lcom/subao/gamemaster/GameMaster$I2;,
        Lcom/subao/gamemaster/GameMaster$I1;,
        Lcom/subao/gamemaster/GameMaster$b;
    }
.end annotation


# static fields
.field public static final ACCEL_RECOMMENDATION_HAS_NEW_FEATURE:I = 0x3

.field public static final ACCEL_RECOMMENDATION_MOBILE_SWITCH:I = 0x6

.field public static final ACCEL_RECOMMENDATION_NONE:I = 0x0

.field public static final ACCEL_RECOMMENDATION_NOTICE:I = 0x1

.field public static final ACCEL_RECOMMENDATION_PROMPT_MONTH_REPORT:I = 0x4

.field public static final ACCEL_RECOMMENDATION_UNKNOWN:I = -0x1

.field public static final ACCEL_RECOMMENDATION_VIP_EXPIRED:I = 0x5

.field public static final ACCEL_RECOMMENDATION_WIFI:I = 0x2

.field public static final BUILD_TIME:Ljava/lang/String; = "20190103_185736"

.field public static final COMMIT_ID:Ljava/lang/String; = "684bbad7bcbc3cfcedb0fdf875ac553d719a27be"

.field public static final DEFAULT_NODE_DETECT_TIMEOUT:J = 0x1f40L

.field public static final DEFAULT_UDP_ECHO_PORT:I = 0xde

.field public static final GM_INIT_ALREADY:I = 0x1

.field public static final GM_INIT_FAILURE:I = -0x1

.field public static final GM_INIT_ILLEGAL_ARGUMENT:I = -0x4

.field public static final GM_INIT_NOT_IN_MAIN_THREAD:I = -0x3

.field public static final GM_INIT_NO_PERMISSION:I = -0x2

.field public static final GM_INIT_PENDING:I = 0x2

.field public static final GM_INIT_SUCCESS:I = 0x0

.field public static final HOOK_TYPE_CONNECT:I = 0x0

.field public static final HOOK_TYPE_SENDMSG_RECVMSG:I = 0x2

.field public static final HOOK_TYPE_SENDTO_RECVFROM:I = 0x1

.field public static final HOOK_TYPE_SENDTO_RECVFROM_AND_TCP:I = 0x3

.field public static final NETWORK_CLASS_2G:I = 0x2

.field public static final NETWORK_CLASS_3G:I = 0x3

.field public static final NETWORK_CLASS_4G:I = 0x4

.field public static final NETWORK_CLASS_DISCONNECT:I = -0x1

.field public static final NETWORK_CLASS_UNKNOWN:I = 0x0

.field public static final NETWORK_CLASS_WIFI:I = 0x1

.field public static final PAY_TYPE_ALIPAY:I = 0x0

.field public static final PAY_TYPE_OTHER:I = 0x5

.field public static final PAY_TYPE_PHONE:I = 0x4

.field public static final PAY_TYPE_QQ:I = 0x2

.field public static final PAY_TYPE_UNIONPAY:I = 0x3

.field public static final PAY_TYPE_WECHAT:I = 0x1

.field public static final SDK_EXPIRED:I = 0x5

.field public static final SDK_FREE:I = 0x6

.field public static final SDK_FREE_TRIAL:I = 0x2

.field public static final SDK_IN_USE:I = 0x4

.field public static final SDK_MODE_FREE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SDK_MODE_GRAY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SDK_MODE_OFFICIAL:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SDK_NOT_QUALIFIED:I = 0x0

.field public static final SDK_QUALIFIED:I = 0x1

.field public static final SDK_TRIAL_EXPIRED:I = 0x3

.field public static final VERSION_NAME:Ljava/lang/String; = "3.9.4.5"

.field static a:Lcom/subao/common/a/c;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static b:Lcom/subao/gamemaster/GameMaster$g;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 341
    sget-object v0, Lcom/subao/common/e/q$a;->a:Lcom/subao/common/e/q$a;

    sput-object v0, Lcom/subao/common/e/q;->b:Lcom/subao/common/e/q$a;

    .line 342
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Lcom/subao/common/e/q$a;Lcom/subao/common/g/a;Ljava/lang/String;I[BLcom/subao/common/a/c;ZLcom/subao/gamemaster/GameMaster$c;)I
    .locals 13

    .prologue
    .line 513
    invoke-static {}, Lcom/subao/gamemaster/GameMaster;->a()Lcom/subao/gamemaster/GameMaster$g;

    move-result-object v2

    .line 514
    if-eqz v2, :cond_1

    .line 516
    new-instance v1, Lcom/subao/gamemaster/a;

    invoke-direct {v1}, Lcom/subao/gamemaster/a;-><init>()V

    .line 517
    invoke-virtual {v1}, Lcom/subao/gamemaster/a;->a()Landroid/app/Activity;

    move-result-object v3

    .line 518
    if-nez v3, :cond_0

    .line 519
    const/4 v0, -0x4

    .line 534
    :goto_0
    return v0

    .line 521
    :cond_0
    new-instance v0, Lcom/subao/gamemaster/GameMaster$b;

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    invoke-direct/range {v0 .. v12}, Lcom/subao/gamemaster/GameMaster$b;-><init>(Lcom/subao/gamemaster/a;Lcom/subao/gamemaster/GameMaster$g;Landroid/content/Context;Ljava/lang/String;Lcom/subao/common/e/q$a;Lcom/subao/common/g/a;Ljava/lang/String;I[BLcom/subao/common/a/c;ZLcom/subao/gamemaster/GameMaster$c;)V

    .line 526
    invoke-virtual {v3, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 527
    const/4 v0, 0x2

    goto :goto_0

    .line 530
    :cond_1
    invoke-static/range {p0 .. p9}, Lcom/subao/gamemaster/GameMaster;->b(Landroid/content/Context;Ljava/lang/String;Lcom/subao/common/e/q$a;Lcom/subao/common/g/a;Ljava/lang/String;I[BLcom/subao/common/a/c;ZLcom/subao/gamemaster/GameMaster$c;)I

    move-result v0

    .line 533
    const-string v1, "SubaoGame"

    sget-object v2, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v3, "GameMaster.init() result: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Lcom/subao/common/e/q$a;
    .locals 1

    .prologue
    .line 1751
    const-string v0, "sdk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1752
    sget-object v0, Lcom/subao/common/e/q$a;->a:Lcom/subao/common/e/q$a;

    .line 1757
    :goto_0
    return-object v0

    .line 1754
    :cond_0
    const-string v0, "rom"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1755
    sget-object v0, Lcom/subao/common/e/q$a;->d:Lcom/subao/common/e/q$a;

    goto :goto_0

    .line 1757
    :cond_1
    sget-object v0, Lcom/subao/common/e/q$a;->c:Lcom/subao/common/e/q$a;

    goto :goto_0
.end method

.method static a(I)Lcom/subao/common/g/a;
    .locals 1

    .prologue
    .line 348
    packed-switch p0, :pswitch_data_0

    .line 357
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 350
    :pswitch_0
    sget-object v0, Lcom/subao/common/g/a;->b:Lcom/subao/common/g/a;

    goto :goto_0

    .line 353
    :pswitch_1
    sget-object v0, Lcom/subao/common/g/a;->a:Lcom/subao/common/g/a;

    goto :goto_0

    .line 355
    :pswitch_2
    sget-object v0, Lcom/subao/common/g/a;->d:Lcom/subao/common/g/a;

    goto :goto_0

    .line 348
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static a()Lcom/subao/gamemaster/GameMaster$g;
    .locals 2

    .prologue
    .line 391
    const-class v1, Lcom/subao/gamemaster/GameMaster;

    monitor-enter v1

    .line 392
    :try_start_0
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->b:Lcom/subao/gamemaster/GameMaster$g;

    .line 393
    monitor-exit v1

    .line 394
    return-object v0

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(ZLjava/lang/String;Lcom/subao/common/e/ao$a;)Ljava/util/List;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/lang/String;",
            "Lcom/subao/common/e/ao$a",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1379
    const/4 v0, 0x0

    .line 1380
    sget-object v1, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 1381
    if-eqz v1, :cond_0

    .line 1382
    invoke-virtual {v1, p0}, Lcom/subao/common/a/c;->c(Z)Lcom/subao/common/e/ao;

    move-result-object v1

    .line 1383
    if-eqz v1, :cond_0

    .line 1384
    invoke-virtual {v1, p2, v5}, Lcom/subao/common/e/ao;->a(Lcom/subao/common/e/ao$a;Z)Ljava/util/List;

    move-result-object v0

    .line 1387
    :cond_0
    if-nez v0, :cond_1

    .line 1388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1390
    :cond_1
    const-string v1, "SubaoGame"

    invoke-static {v1}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1391
    const-string v1, "SubaoGame"

    sget-object v2, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v3, "%s(%b) return %d element(s)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    :cond_2
    return-object v0
.end method

.method public static addAccelAddress(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 999
    const-string v0, "SubaoGame"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    const-string v0, "SubaoGame"

    sget-object v1, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v2, "addAccelAddress(%s, %s, %d)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :cond_0
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 1003
    if-eqz v0, :cond_1

    .line 1004
    invoke-virtual {v0, p0, p1, p2}, Lcom/subao/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1006
    :cond_1
    return-void
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;Lcom/subao/common/e/q$a;Lcom/subao/common/g/a;Ljava/lang/String;I[BLcom/subao/common/a/c;ZLcom/subao/gamemaster/GameMaster$c;)I
    .locals 11

    .prologue
    .line 609
    const-string v1, "SubaoGame"

    const-string v2, "GameMaster %s (%s)\ncommit-id: %s\n"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "3.9.4.5"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "20190103_185736"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "684bbad7bcbc3cfcedb0fdf875ac553d719a27be"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const-string v1, "SubaoGame"

    invoke-static {v1}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 615
    const-string v1, "SubaoGame"

    const-string v2, "[%s] with %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p2, Lcom/subao/common/e/q$a;->g:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 618
    const-string v1, "SubaoGame"

    const-string v2, "Null game-guid, init failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const/4 v1, -0x4

    .line 665
    :goto_0
    return v1

    .line 622
    :cond_1
    invoke-static {}, Lcom/subao/common/n/i;->b()Z

    move-result v1

    if-nez v1, :cond_2

    .line 623
    const-string v1, "SubaoGame"

    const-string v2, "init() must be called in android UI thread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const/4 v1, -0x3

    goto :goto_0

    .line 627
    :cond_2
    if-eqz p9, :cond_3

    .line 628
    move-object/from16 v0, p9

    invoke-interface {v0, p0}, Lcom/subao/gamemaster/GameMaster$c;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 629
    const-string v1, "SubaoGame"

    const-string v2, "You are not granted to use GameMaster SDK, please add related permission to your Manifest.xml!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const/4 v1, -0x2

    goto :goto_0

    .line 634
    :cond_3
    const-class v10, Lcom/subao/gamemaster/GameMaster;

    monitor-enter v10

    .line 635
    :try_start_0
    sget-object v1, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    if-eqz v1, :cond_4

    .line 636
    const/4 v1, 0x1

    monitor-exit v10

    goto :goto_0

    .line 647
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 638
    :cond_4
    if-nez p7, :cond_8

    .line 639
    :try_start_1
    new-instance v1, Lcom/subao/common/a/c;

    const-string v5, "3.9.4.5"

    .line 640
    invoke-static {p0}, Lcom/subao/common/j/h;->a(Landroid/content/Context;)Lcom/subao/common/j/h;

    move-result-object v6

    new-instance v7, Lcom/subao/common/g/c;

    const-string v2, "gamemaster"

    invoke-direct {v7, v2}, Lcom/subao/common/g/c;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v1 .. v9}, Lcom/subao/common/a/c;-><init>(Landroid/content/Context;Lcom/subao/common/e/q$a;Ljava/lang/String;Ljava/lang/String;Lcom/subao/common/j/h;Lcom/subao/common/g/c;Lcom/subao/common/e/ak;Z)V

    .line 645
    :goto_1
    move/from16 v0, p8

    invoke-virtual {v1, v0}, Lcom/subao/common/a/c;->b(Z)V

    .line 646
    sput-object v1, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 647
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 650
    sget-object v2, Lcom/subao/common/e/q$a;->d:Lcom/subao/common/e/q$a;

    if-ne p2, v2, :cond_6

    .line 651
    const-string v3, "android_rom"

    :goto_2
    move-object v2, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    .line 655
    invoke-virtual/range {v1 .. v6}, Lcom/subao/common/a/c;->a(Lcom/subao/common/g/a;Ljava/lang/String;Ljava/lang/String;I[B)I

    move-result v2

    .line 656
    if-nez v2, :cond_7

    .line 657
    sget-object v3, Lcom/subao/common/g/a;->c:Lcom/subao/common/g/a;

    if-ne p3, v3, :cond_5

    .line 658
    new-instance v3, Lcom/subao/gamemaster/GameMaster$f;

    invoke-direct {v3}, Lcom/subao/gamemaster/GameMaster$f;-><init>()V

    invoke-virtual {v1, v3}, Lcom/subao/common/a/c;->a(Lcom/subao/common/a/e$a;)V

    .line 660
    :cond_5
    invoke-static {v1}, Lcom/subao/common/a/b;->a(Lcom/subao/common/a/a;)Lcom/subao/common/a/a;

    :goto_3
    move v1, v2

    .line 665
    goto :goto_0

    .line 653
    :cond_6
    const-string v3, "android_sdk"

    goto :goto_2

    .line 662
    :cond_7
    invoke-virtual {v1}, Lcom/subao/common/a/c;->a()V

    .line 663
    const/4 v1, 0x0

    sput-object v1, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    goto :goto_3

    :cond_8
    move-object/from16 v1, p7

    goto :goto_1
.end method

.method public static beginRound(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1289
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 1290
    if-eqz v0, :cond_0

    .line 1291
    invoke-virtual {v0, p0, p1}, Lcom/subao/common/a/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    :cond_0
    return-void
.end method

.method public static clearUDPCache()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1188
    return-void
.end method

.method public static closeVPN()V
    .locals 1

    .prologue
    .line 702
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 703
    if-eqz v0, :cond_0

    .line 704
    invoke-virtual {v0}, Lcom/subao/common/a/c;->C()V

    .line 706
    :cond_0
    return-void
.end method

.method public static enableWiFiAccelSwitch()V
    .locals 1

    .prologue
    .line 1278
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/subao/gamemaster/GameMaster;->setWiFiAccelSwitch(Z)V

    .line 1279
    return-void
.end method

.method public static gameBackground()V
    .locals 2

    .prologue
    .line 1178
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 1179
    if-eqz v0, :cond_0

    .line 1180
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/subao/common/a/c;->d(Z)V

    .line 1182
    :cond_0
    return-void
.end method

.method public static gameForeground()V
    .locals 2

    .prologue
    .line 1171
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 1172
    if-eqz v0, :cond_0

    .line 1173
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/subao/common/a/c;->d(Z)V

    .line 1175
    :cond_0
    return-void
.end method

.method public static getAccelRecommendation()I
    .locals 4

    .prologue
    .line 952
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 953
    if-eqz v0, :cond_1

    .line 954
    invoke-virtual {v0}, Lcom/subao/common/a/c;->u()I

    move-result v0

    .line 958
    :goto_0
    const-string v1, "SubaoGame"

    invoke-static {v1}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 959
    const-string v1, "SubaoGame"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccelRecommendation() return: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_0
    return v0

    .line 956
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getAccelRecommendationData(I)Ljava/lang/String;
    .locals 6

    .prologue
    .line 1238
    const-string v0, "SubaoGame"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1239
    const-string v0, "SubaoGame"

    sget-object v1, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v2, "getAccelRecommendationData(%d)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    :cond_0
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 1242
    if-eqz v0, :cond_1

    .line 1243
    invoke-virtual {v0, p0}, Lcom/subao/common/a/c;->h(I)Ljava/lang/String;

    move-result-object v0

    .line 1245
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static getAccelerationStatus()I
    .locals 1

    .prologue
    .line 1159
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 1160
    if-eqz v0, :cond_0

    .line 1161
    invoke-virtual {v0}, Lcom/subao/common/a/c;->x()I

    move-result v0

    .line 1163
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCurrentConnectionType()I
    .locals 1

    .prologue
    .line 978
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 979
    if-eqz v0, :cond_0

    .line 980
    invoke-virtual {v0}, Lcom/subao/common/a/c;->z()I

    move-result v0

    .line 982
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCurrentUserFreeFlowType()I
    .locals 1

    .prologue
    .line 903
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 904
    if-eqz v0, :cond_0

    .line 905
    invoke-virtual {v0}, Lcom/subao/common/a/c;->t()I

    move-result v0

    .line 907
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getJNIBits()I
    .locals 1

    .prologue
    .line 367
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 368
    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0}, Lcom/subao/common/a/c;->m()I

    move-result v0

    .line 371
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLastServerTime()J
    .locals 2

    .prologue
    .line 1439
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 1440
    if-nez v0, :cond_0

    .line 1441
    const-wide/16 v0, 0x0

    .line 1443
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/subao/common/a/c;->q()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getLocalIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1677
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 1678
    if-eqz v0, :cond_0

    .line 1679
    invoke-virtual {v0}, Lcom/subao/common/a/c;->E()Ljava/lang/String;

    move-result-object v0

    .line 1682
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getLong(I)J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1029
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getServiceUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1086
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 1087
    if-eqz v0, :cond_0

    .line 1088
    invoke-virtual {v0}, Lcom/subao/common/a/c;->v()Ljava/lang/String;

    move-result-object v0

    .line 1090
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/subao/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1017
    const-string v0, ""

    return-object v0
.end method

.method public static getSupportGameInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/intf/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1353
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/subao/gamemaster/GameMaster;->getSupportGameInfoList(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportGameInfoList(Z)Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/intf/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1374
    const-string v0, "getSupportGameInfoList"

    new-instance v1, Lcom/subao/common/e/ao$b;

    invoke-direct {v1}, Lcom/subao/common/e/ao$b;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/subao/gamemaster/GameMaster;->a(ZLjava/lang/String;Lcom/subao/common/e/ao$a;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportGameLabelList()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/intf/SupportGameLabel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1403
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 1404
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/subao/common/a/c;->i()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSupportGameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1349
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/subao/gamemaster/GameMaster;->getSupportGameList(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportGameList(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1363
    const-string v0, "getSupportGameList"

    new-instance v1, Lcom/subao/common/e/ao$c;

    invoke-direct {v1}, Lcom/subao/common/e/ao$c;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/subao/gamemaster/GameMaster;->a(ZLjava/lang/String;Lcom/subao/common/e/ao$a;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getUserConfig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1167
    invoke-static {}, Lcom/subao/common/i/k;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVIPValidTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1146
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 1147
    if-eqz v0, :cond_1

    .line 1148
    invoke-virtual {v0}, Lcom/subao/common/a/c;->w()Ljava/lang/String;

    move-result-object v0

    .line 1149
    if-nez v0, :cond_0

    const-string v0, ""

    .line 1151
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static getWebUIUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1053
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/subao/gamemaster/GameMaster;->getWebUIUrl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWebUIUrl(I)Ljava/lang/String;
    .locals 6

    .prologue
    .line 1071
    const-string v0, "SubaoGame"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1072
    const-string v0, "SubaoGame"

    sget-object v1, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v2, "getWebUIUrl(%d)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    :cond_0
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 1075
    if-eqz v0, :cond_1

    .line 1076
    invoke-virtual {v0, p0}, Lcom/subao/common/a/c;->f(I)Ljava/lang/String;

    move-result-object v0

    .line 1078
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/subao/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getXunyouAccessToken()[B
    .locals 1

    .prologue
    .line 1521
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 1522
    if-eqz v0, :cond_0

    .line 1523
    invoke-virtual {v0}, Lcom/subao/common/a/c;->r()[B

    move-result-object v0

    .line 1525
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)I
    .locals 6

    .prologue
    .line 419
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/subao/gamemaster/GameMaster;->init(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 446
    invoke-static {p1}, Lcom/subao/gamemaster/GameMaster;->a(I)Lcom/subao/common/g/a;

    move-result-object v3

    .line 447
    if-nez v3, :cond_0

    .line 448
    const/4 v0, -0x4

    .line 450
    :goto_0
    return v0

    :cond_0
    sget-object v2, Lcom/subao/common/e/q$a;->a:Lcom/subao/common/e/q$a;

    const/4 v8, 0x0

    new-instance v9, Lcom/subao/gamemaster/GameMaster$d;

    invoke-direct {v9}, Lcom/subao/gamemaster/GameMaster$d;-><init>()V

    move-object v0, p0

    move-object v1, p2

    move-object v4, p4

    move v5, p5

    move-object v7, v6

    invoke-static/range {v0 .. v9}, Lcom/subao/gamemaster/GameMaster;->a(Landroid/content/Context;Ljava/lang/String;Lcom/subao/common/e/q$a;Lcom/subao/common/g/a;Ljava/lang/String;I[BLcom/subao/common/a/c;ZLcom/subao/gamemaster/GameMaster$c;)I

    move-result v0

    goto :goto_0
.end method

.method public static initWithVPN(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 467
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/subao/gamemaster/GameMaster;->initWithVPN(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static initWithVPN(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/subao/gamemaster/GameMaster;->initWithVPN(Landroid/content/Context;Ljava/lang/String;Z[B)I

    move-result v0

    return v0
.end method

.method public static initWithVPN(Landroid/content/Context;Ljava/lang/String;Z[B)I
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 493
    sget-object v2, Lcom/subao/common/e/q$a;->d:Lcom/subao/common/e/q$a;

    sget-object v3, Lcom/subao/common/g/a;->c:Lcom/subao/common/g/a;

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    move-object v7, v4

    move v8, p2

    move-object v9, v4

    invoke-static/range {v0 .. v9}, Lcom/subao/gamemaster/GameMaster;->a(Landroid/content/Context;Ljava/lang/String;Lcom/subao/common/e/q$a;Lcom/subao/common/g/a;Ljava/lang/String;I[BLcom/subao/common/a/c;ZLcom/subao/gamemaster/GameMaster$c;)I

    move-result v0

    return v0
.end method

.method public static isAccelOpened()Z
    .locals 1

    .prologue
    .line 815
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 816
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/subao/common/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEngineRunning()Z
    .locals 1

    .prologue
    .line 792
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNodeDetectSucceed()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1011
    const/4 v0, 0x1

    return v0
.end method

.method public static isNodeDetected(I)Z
    .locals 1

    .prologue
    .line 852
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 853
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/subao/common/a/c;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUDPProxy()Z
    .locals 1

    .prologue
    .line 801
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 802
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/subao/common/a/c;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVpnEstablished()Z
    .locals 1

    .prologue
    .line 715
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 716
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/subao/common/a/c;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static launcherGame(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1414
    invoke-static {p0, p1}, Lcom/subao/common/n/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static loginByXunyouToken(Ljava/lang/String;[BLcom/subao/common/intf/XunyouTokenStateListener;)V
    .locals 1

    .prologue
    .line 1537
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 1544
    :cond_0
    :goto_0
    return-void

    .line 1540
    :cond_1
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 1541
    if-eqz v0, :cond_0

    .line 1542
    invoke-virtual {v0, p0, p1, p2}, Lcom/subao/common/a/c;->a(Ljava/lang/String;[BLcom/subao/common/intf/XunyouTokenStateListener;)V

    goto :goto_0
.end method

.method public static onAccelRecommendationResult(IZ)V
    .locals 6

    .prologue
    .line 1256
    const-string v0, "SubaoGame"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1257
    const-string v0, "SubaoGame"

    sget-object v1, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v2, "onAccelRecommendationResult(%d, %b)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    :cond_0
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 1260
    if-eqz v0, :cond_1

    .line 1261
    invoke-virtual {v0, p0, p1}, Lcom/subao/common/a/c;->a(IZ)V

    .line 1263
    :cond_1
    return-void
.end method

.method public static onNetDelay(I)V
    .locals 1

    .prologue
    .line 932
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 933
    if-eqz v0, :cond_0

    .line 934
    invoke-virtual {v0, p0}, Lcom/subao/common/a/c;->c(I)V

    .line 936
    :cond_0
    return-void
.end method

.method public static onNetDelayQuality(FFFI)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1108
    return-void
.end method

.method public static onNetDelayQuality2(FFFFF)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1122
    const/16 v5, -0x2710

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/subao/gamemaster/GameMaster;->onNetDelayQuality3(FFFFFI)V

    .line 1123
    return-void
.end method

.method public static onNetDelayQuality3(FFFFFI)V
    .locals 7

    .prologue
    .line 1136
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 1137
    if-eqz v0, :cond_0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 1138
    invoke-virtual/range {v0 .. v6}, Lcom/subao/common/a/c;->a(FFFFFI)V

    .line 1140
    :cond_0
    return-void
.end method

.method public static openVPN()I
    .locals 1

    .prologue
    .line 690
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 691
    if-eqz v0, :cond_0

    .line 692
    invoke-virtual {v0}, Lcom/subao/common/a/c;->B()I

    move-result v0

    .line 694
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x3e8

    goto :goto_0
.end method

.method public static prepareVPN(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 679
    :try_start_0
    invoke-static {p0}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 682
    :goto_0
    return-object v0

    .line 680
    :catch_0
    move-exception v0

    .line 681
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 682
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static queryAvailableSignCoupons(Lcom/subao/common/intf/QuerySignCouponsCallback;)V
    .locals 2

    .prologue
    .line 1662
    if-nez p0, :cond_0

    .line 1671
    :goto_0
    return-void

    .line 1665
    :cond_0
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 1666
    if-eqz v0, :cond_1

    .line 1667
    invoke-virtual {v0, p0}, Lcom/subao/common/a/c;->a(Lcom/subao/common/intf/QuerySignCouponsCallback;)V

    goto :goto_0

    .line 1669
    :cond_1
    const/16 v0, 0x3e8

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/subao/common/intf/QuerySignCouponsCallback;->onQuerySignCouponsResult(ILjava/util/List;)V

    goto :goto_0
.end method

.method public static queryOriginUserState(Lcom/subao/common/intf/UserInfo;JLcom/subao/common/intf/QueryOriginUserStateCallback;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 1427
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 1428
    if-nez v0, :cond_0

    .line 1429
    const/16 v3, 0x3e8

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p0

    move-object v2, p4

    invoke-interface/range {v0 .. v5}, Lcom/subao/common/intf/QueryOriginUserStateCallback;->onOriginUserState(Lcom/subao/common/intf/UserInfo;Ljava/lang/Object;IILjava/lang/String;)V

    .line 1433
    :goto_0
    return-void

    :cond_0
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 1431
    invoke-virtual/range {v0 .. v5}, Lcom/subao/common/a/c;->a(Lcom/subao/common/intf/UserInfo;JLcom/subao/common/intf/QueryOriginUserStateCallback;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static queryProductList(Lcom/subao/common/intf/QueryProductCallback;Z)V
    .locals 2
    .param p0    # Lcom/subao/common/intf/QueryProductCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1607
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 1608
    if-eqz v0, :cond_0

    .line 1609
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    invoke-virtual {v0, p0, p1}, Lcom/subao/common/a/c;->a(Lcom/subao/common/intf/QueryProductCallback;Z)V

    .line 1613
    :goto_0
    return-void

    .line 1611
    :cond_0
    const/16 v0, 0x3e8

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/subao/common/intf/QueryProductCallback;->onQueryProductResult(ILcom/subao/common/intf/ProductList;)V

    goto :goto_0
.end method

.method public static queryThirdPartyAuthInfo(Lcom/subao/common/intf/UserInfo;JLcom/subao/common/intf/QueryThirdPartyAuthInfoCallback;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1558
    if-nez p3, :cond_0

    .line 1571
    :goto_0
    return-void

    .line 1561
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/subao/common/intf/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1562
    :cond_1
    const/16 v0, 0x3f4

    invoke-interface {p3, v0, v1}, Lcom/subao/common/intf/QueryThirdPartyAuthInfoCallback;->onThirdPartyAuthInfoResult(ILcom/subao/common/intf/ThirdPartyAuthInfo;)V

    goto :goto_0

    .line 1565
    :cond_2
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 1566
    if-nez v0, :cond_3

    .line 1567
    const/16 v0, 0x3e8

    invoke-interface {p3, v0, v1}, Lcom/subao/common/intf/QueryThirdPartyAuthInfoCallback;->onThirdPartyAuthInfoResult(ILcom/subao/common/intf/ThirdPartyAuthInfo;)V

    goto :goto_0

    .line 1569
    :cond_3
    long-to-int v1, p1

    invoke-virtual {v0, p0, v1, p3}, Lcom/subao/common/a/c;->a(Lcom/subao/common/intf/UserInfo;ILcom/subao/common/intf/QueryThirdPartyAuthInfoCallback;)V

    goto :goto_0
.end method

.method public static queryXunyouUserState(Lcom/subao/common/intf/UserInfo;JLcom/subao/common/intf/XunyouUserStateCallback;Ljava/lang/Object;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1462
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lcom/subao/gamemaster/GameMaster;->queryXunyouUserState(Lcom/subao/common/intf/UserInfo;JLcom/subao/common/intf/XunyouUserStateCallback;Ljava/lang/Object;Z)V

    .line 1463
    return-void
.end method

.method public static queryXunyouUserState(Lcom/subao/common/intf/UserInfo;JLcom/subao/common/intf/XunyouUserStateCallback;Ljava/lang/Object;Z)V
    .locals 7

    .prologue
    .line 1482
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 1483
    if-nez v0, :cond_0

    .line 1484
    const/16 v3, 0x3e8

    const/4 v4, 0x0

    const-string v5, ""

    move-object v0, p3

    move-object v1, p0

    move-object v2, p4

    invoke-interface/range {v0 .. v5}, Lcom/subao/common/intf/XunyouUserStateCallback;->onXunyouUserState(Lcom/subao/common/intf/UserInfo;Ljava/lang/Object;IILjava/lang/String;)V

    .line 1488
    :goto_0
    return-void

    :cond_0
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 1486
    invoke-virtual/range {v0 .. v6}, Lcom/subao/common/a/c;->a(Lcom/subao/common/intf/UserInfo;JLcom/subao/common/intf/XunyouUserStateCallback;Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method public static refreshXunyouUserState(JLcom/subao/common/intf/XunyouUserStateCallback;Ljava/lang/Object;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1503
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 1504
    if-nez v0, :cond_1

    .line 1505
    if-eqz p2, :cond_0

    .line 1506
    const/4 v1, 0x0

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    const-string v5, ""

    move-object v0, p2

    move-object v2, p3

    invoke-interface/range {v0 .. v5}, Lcom/subao/common/intf/XunyouUserStateCallback;->onXunyouUserState(Lcom/subao/common/intf/UserInfo;Ljava/lang/Object;IILjava/lang/String;)V

    .line 1511
    :cond_0
    :goto_0
    return-void

    .line 1509
    :cond_1
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/subao/common/a/c;->a(JLcom/subao/common/intf/XunyouUserStateCallback;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static requestBuy(Ljava/lang/String;Ljava/lang/String;ILcom/subao/common/intf/RequestBuyCallback;)V
    .locals 2

    .prologue
    .line 1629
    if-nez p3, :cond_0

    .line 1630
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Callback can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1635
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1636
    const/16 v0, 0x3f4

    .line 1652
    :goto_0
    const/4 v1, 0x0

    invoke-interface {p3, v0, v1}, Lcom/subao/common/intf/RequestBuyCallback;->onRequestBuyResult(ILcom/subao/common/intf/RequestBuyResult;)V

    .line 1653
    :goto_1
    return-void

    .line 1639
    :cond_1
    const/16 v0, 0xc

    if-eq p2, v0, :cond_2

    .line 1641
    const/16 v0, 0x3f3

    .line 1642
    goto :goto_0

    .line 1644
    :cond_2
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 1645
    if-nez v0, :cond_3

    .line 1646
    const/16 v0, 0x3e8

    .line 1647
    goto :goto_0

    .line 1649
    :cond_3
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/subao/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;ILcom/subao/common/intf/RequestBuyCallback;)V

    goto :goto_1
.end method

.method public static requestTrial(Lcom/subao/common/intf/RequestTrialCallback;)Z
    .locals 1
    .param p0    # Lcom/subao/common/intf/RequestTrialCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1589
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 1590
    if-eqz v0, :cond_0

    .line 1591
    invoke-virtual {v0, p0}, Lcom/subao/common/a/c;->a(Lcom/subao/common/intf/RequestTrialCallback;)Z

    move-result v0

    .line 1596
    :goto_0
    return v0

    .line 1593
    :cond_0
    if-eqz p0, :cond_1

    .line 1594
    const/16 v0, 0x3e8

    invoke-interface {p0, v0}, Lcom/subao/common/intf/RequestTrialCallback;->onRequestTrialResult(I)V

    .line 1596
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setAccelSwitchListener(Lcom/subao/common/intf/AccelSwitchListener;)Z
    .locals 1

    .prologue
    .line 777
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 778
    if-eqz v0, :cond_0

    .line 779
    invoke-virtual {v0, p0}, Lcom/subao/common/a/c;->a(Lcom/subao/common/intf/AccelSwitchListener;)V

    .line 780
    const/4 v0, 0x1

    .line 782
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setFreeFlowUser(I)V
    .locals 3

    .prologue
    .line 917
    const-string v0, "SubaoGame"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    const-string v0, "SubaoGame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Free flow user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_0
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 921
    if-eqz v0, :cond_1

    .line 922
    invoke-virtual {v0, p0}, Lcom/subao/common/a/c;->e(I)V

    .line 924
    :cond_1
    return-void
.end method

.method public static setGameId(I)V
    .locals 1

    .prologue
    .line 1196
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/subao/gamemaster/GameMaster;->setGameId(Ljava/lang/String;)V

    .line 1197
    return-void
.end method

.method public static setGameId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1205
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 1206
    if-eqz v0, :cond_0

    .line 1207
    invoke-virtual {v0, p0}, Lcom/subao/common/a/c;->a(Ljava/lang/String;)V

    .line 1209
    :cond_0
    return-void
.end method

.method public static setLong(IJ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1036
    return-void
.end method

.method public static setPayTypeWhiteList(I)V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 1334
    if-nez p0, :cond_0

    .line 1335
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/subao/gamemaster/GameMaster;->setPayTypeWhiteList(Ljava/lang/String;)V

    .line 1346
    :goto_0
    return-void

    .line 1338
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1339
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    .line 1340
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    .line 1341
    and-int/2addr v2, p0

    if-eqz v2, :cond_1

    .line 1342
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1339
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1345
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/subao/gamemaster/GameMaster;->setPayTypeWhiteList(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setPayTypeWhiteList(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1308
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 1309
    if-eqz v0, :cond_0

    .line 1310
    invoke-virtual {v0, p0}, Lcom/subao/common/a/c;->b(Ljava/lang/String;)V

    .line 1312
    :cond_0
    return-void
.end method

.method public static setPlayerLevel(I)V
    .locals 1

    .prologue
    .line 1215
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 1216
    if-eqz v0, :cond_0

    .line 1217
    invoke-virtual {v0, p0}, Lcom/subao/common/a/c;->g(I)V

    .line 1219
    :cond_0
    return-void
.end method

.method public static setRecommendationGameIP(Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 1222
    const-string v0, "SubaoGame"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1223
    const-string v0, "SubaoGame"

    sget-object v1, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v2, "setRecommendationGameIP(%s, %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    :cond_0
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 1226
    if-eqz v0, :cond_1

    .line 1227
    invoke-virtual {v0, p0, p1}, Lcom/subao/common/a/c;->a(Ljava/lang/String;I)V

    .line 1229
    :cond_1
    return-void
.end method

.method public static setSDKMode(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1045
    return-void
.end method

.method public static setString(ILjava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1024
    return-void
.end method

.method public static setU3DObserver(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 382
    const-string v0, "SubaoGame"

    const-string v1, "setU3DObserver(%s, %s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-static {p0, p1}, Lcom/subao/gamemaster/GameMaster$g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/subao/gamemaster/GameMaster$g;

    move-result-object v0

    .line 384
    const-class v1, Lcom/subao/gamemaster/GameMaster;

    monitor-enter v1

    .line 385
    :try_start_0
    sput-object v0, Lcom/subao/gamemaster/GameMaster;->b:Lcom/subao/gamemaster/GameMaster$g;

    .line 386
    monitor-exit v1

    .line 387
    return-void

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setUdpEchoPort(I)V
    .locals 1

    .prologue
    .line 968
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 969
    if-eqz v0, :cond_0

    .line 970
    invoke-virtual {v0, p0}, Lcom/subao/common/a/c;->d(I)V

    .line 972
    :cond_0
    return-void
.end method

.method public static setUserStateListener(Lcom/subao/common/intf/UserStateListener;)V
    .locals 1

    .prologue
    .line 861
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 862
    if-eqz v0, :cond_0

    .line 863
    invoke-virtual {v0, p0}, Lcom/subao/common/a/c;->a(Lcom/subao/common/intf/UserStateListener;)V

    .line 865
    :cond_0
    return-void
.end method

.method public static setUserToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/subao/common/intf/UserAuthCallback;Ljava/lang/Object;)I
    .locals 9

    .prologue
    .line 889
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 890
    if-nez v0, :cond_0

    .line 891
    const/16 v0, 0x3e8

    .line 894
    :goto_0
    return v0

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    .line 893
    invoke-virtual/range {v0 .. v7}, Lcom/subao/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/subao/common/intf/UserAuthCallback;Ljava/lang/Object;)V

    .line 894
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setUserToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 875
    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, v6

    invoke-static/range {v1 .. v7}, Lcom/subao/gamemaster/GameMaster;->setUserToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/subao/common/intf/UserAuthCallback;Ljava/lang/Object;)I

    .line 876
    return-void
.end method

.method public static setVPNStateListener(Lcom/subao/common/intf/VPNStateListener;)Z
    .locals 1

    .prologue
    .line 720
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 721
    if-eqz v0, :cond_0

    .line 722
    invoke-virtual {v0, p0}, Lcom/subao/common/a/c;->a(Lcom/subao/common/intf/VPNStateListener;)V

    .line 723
    const/4 v0, 0x1

    .line 725
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setVpnSessionName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 738
    invoke-static {p0}, Lcom/subao/gamemaster/GameMasterVpnService;->a(Ljava/lang/String;)V

    .line 739
    return-void
.end method

.method public static setWiFiAccelSwitch(Z)V
    .locals 1

    .prologue
    .line 1271
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 1272
    if-eqz v0, :cond_0

    .line 1273
    invoke-virtual {v0, p0}, Lcom/subao/common/a/c;->e(Z)V

    .line 1275
    :cond_0
    return-void
.end method

.method public static start(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 751
    sget-object v1, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 752
    if-nez v1, :cond_1

    .line 756
    :cond_0
    :goto_0
    return v0

    .line 755
    :cond_1
    invoke-virtual {v1}, Lcom/subao/common/a/c;->o()I

    move-result v1

    .line 756
    if-eqz v1, :cond_2

    const/16 v2, 0x3ea

    if-ne v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static startNodeDetect(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 825
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1, v2, v2}, Lcom/subao/gamemaster/GameMaster;->startNodeDetect(IJLcom/subao/common/intf/NodeDetectCallback;Ljava/lang/Object;)Z

    .line 826
    return-void
.end method

.method public static startNodeDetect(IJLcom/subao/common/intf/NodeDetectCallback;Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 839
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 840
    if-eqz v0, :cond_0

    move v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 841
    invoke-virtual/range {v0 .. v5}, Lcom/subao/common/a/c;->a(IJLcom/subao/common/intf/NodeDetectCallback;Ljava/lang/Object;)V

    .line 842
    const/4 v0, 0x1

    .line 844
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static stop()V
    .locals 1

    .prologue
    .line 764
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 765
    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {v0}, Lcom/subao/common/a/c;->p()V

    .line 768
    :cond_0
    return-void
.end method

.method public static stopService(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 730
    invoke-static {p0}, Lcom/subao/gamemaster/GameMasterVpnService;->c(Landroid/content/Context;)V

    .line 731
    return-void
.end method

.method static x1()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 1693
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 1694
    if-nez v0, :cond_0

    .line 1696
    const/16 v0, 0x3e8

    .line 1706
    :goto_0
    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 1699
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/subao/common/a/c;->s()I
    :try_end_0
    .catch Lcom/subao/common/k/b$d; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1700
    const/4 v0, 0x0

    goto :goto_0

    .line 1701
    :catch_0
    move-exception v0

    .line 1703
    invoke-virtual {v0}, Lcom/subao/common/k/b$d;->a()I

    move-result v0

    goto :goto_0
.end method

.method static x10(Landroid/content/Context;Lcom/subao/gamemaster/GameMaster$I2;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1800
    new-instance v0, Lcom/subao/common/j/p;

    new-instance v1, Lcom/subao/gamemaster/GameMaster$e;

    invoke-direct {v1, p1}, Lcom/subao/gamemaster/GameMaster$e;-><init>(Lcom/subao/gamemaster/GameMaster$I2;)V

    invoke-direct {v0, v1}, Lcom/subao/common/j/p;-><init>(Lcom/subao/common/j/o$a;)V

    .line 1801
    invoke-virtual {v0, p0}, Lcom/subao/common/j/p;->a(Landroid/content/Context;)V

    .line 1802
    return-object v0
.end method

.method static x11(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1806
    check-cast p0, Lcom/subao/common/j/o;

    invoke-virtual {p0}, Lcom/subao/common/j/o;->a()V

    .line 1807
    return-void
.end method

.method static x12(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1814
    new-instance v0, Lcom/subao/gamemaster/GameMaster$a;

    invoke-direct {v0, v4}, Lcom/subao/gamemaster/GameMaster$a;-><init>(Lcom/subao/gamemaster/GameMaster$1;)V

    .line 1815
    new-instance v1, Lcom/subao/common/e/al;

    sget-object v2, Lcom/subao/common/e/f$a;->d:Lcom/subao/common/e/f$a;

    iget-object v2, v2, Lcom/subao/common/e/f$a;->a:Ljava/lang/String;

    sget-object v3, Lcom/subao/common/e/f$a;->d:Lcom/subao/common/e/f$a;

    iget v3, v3, Lcom/subao/common/e/f$a;->b:I

    invoke-direct {v1, v4, v2, v3}, Lcom/subao/common/e/al;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p0, v0, v4, v1}, Lcom/subao/common/j/d;->a(Ljava/lang/String;Lcom/subao/common/j/d$a;Ljava/lang/Object;Lcom/subao/common/e/al;)V

    .line 1818
    invoke-virtual {v0}, Lcom/subao/gamemaster/GameMaster$a;->a()Lcom/subao/common/j/d$c;

    move-result-object v0

    .line 1819
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/subao/common/j/d$c;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "fail"

    goto :goto_0
.end method

.method static x13(I)I
    .locals 1

    .prologue
    .line 1823
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 1824
    if-nez v0, :cond_0

    .line 1825
    const/16 v0, 0x3e8

    .line 1827
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/subao/common/a/c;->b(I)I

    move-result v0

    goto :goto_0
.end method

.method static x2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1713
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 1714
    if-nez v0, :cond_0

    .line 1718
    :goto_0
    return-void

    .line 1717
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/subao/common/a/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static x3(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1726
    new-instance v0, Lcom/subao/common/i/m;

    invoke-direct {v0, p0}, Lcom/subao/common/i/m;-><init>(Landroid/content/Context;)V

    .line 1727
    new-instance v1, Ljava/io/StringWriter;

    const/16 v2, 0x800

    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 1728
    new-instance v2, Landroid/util/JsonWriter;

    invoke-direct {v2, v1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 1730
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/subao/common/i/m;->serialize(Landroid/util/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1735
    invoke-static {v2}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    .line 1737
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1731
    :catch_0
    move-exception v0

    .line 1732
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1733
    const/4 v0, 0x0

    .line 1735
    invoke-static {v2}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method static x4()V
    .locals 1

    .prologue
    .line 1744
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 1745
    if-eqz v0, :cond_0

    .line 1746
    invoke-virtual {v0}, Lcom/subao/common/a/c;->A()V

    .line 1748
    :cond_0
    return-void
.end method

.method static x5(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .prologue
    .line 1764
    invoke-static {p1}, Lcom/subao/gamemaster/GameMaster;->a(Ljava/lang/String;)Lcom/subao/common/e/q$a;

    move-result-object v0

    .line 1765
    invoke-static {p0, v0}, Lcom/subao/common/e/ak;->a(Ljava/io/File;Lcom/subao/common/e/q$a;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static x6(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .prologue
    .line 1772
    invoke-static {p0}, Lcom/subao/gamemaster/GameMaster;->a(Ljava/lang/String;)Lcom/subao/common/e/q$a;

    move-result-object v0

    invoke-static {v0}, Lcom/subao/common/e/y;->b(Lcom/subao/common/e/q$a;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static x8(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    .prologue
    .line 1779
    sget-object v0, Lcom/subao/common/e/q$a;->a:Lcom/subao/common/e/q$a;

    invoke-static {p0, v0}, Lcom/subao/common/f/a;->a(Landroid/content/Context;Lcom/subao/common/e/q$a;)Ljava/io/File;

    .line 1780
    invoke-static {}, Lcom/subao/common/f/a;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static x9(Ljava/lang/String;Lcom/subao/gamemaster/GameMaster$I1;)V
    .locals 3

    .prologue
    .line 1784
    sget-object v0, Lcom/subao/gamemaster/GameMaster;->a:Lcom/subao/common/a/c;

    .line 1785
    if-eqz v0, :cond_0

    .line 1786
    invoke-virtual {v0}, Lcom/subao/common/a/c;->k()Lcom/subao/common/e/u$a;

    move-result-object v0

    .line 1787
    iget-object v1, v0, Lcom/subao/common/e/u$a;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/subao/common/e/u$a;->c:Lcom/subao/common/e/al;

    new-instance v2, Lcom/subao/gamemaster/GameMaster$1;

    invoke-direct {v2, p1}, Lcom/subao/gamemaster/GameMaster$1;-><init>(Lcom/subao/gamemaster/GameMaster$I1;)V

    invoke-static {v1, v0, p0, v2}, Lcom/subao/common/e/h;->a(Ljava/lang/String;Lcom/subao/common/e/al;Ljava/lang/String;Lcom/subao/common/e/h$a;)V

    .line 1797
    :goto_0
    return-void

    .line 1795
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/subao/gamemaster/GameMaster$I1;->a(Z)V

    goto :goto_0
.end method

.method static xy(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1838
    invoke-static {}, Lcom/subao/common/e/am;->b()Lcom/subao/common/e/am;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/subao/common/e/am;->b(Ljava/lang/String;)V

    .line 1839
    invoke-static {p1}, Lcom/subao/gamemaster/GameMaster;->a(Ljava/lang/String;)Lcom/subao/common/e/q$a;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/subao/common/f/a;->a(Landroid/content/Context;Lcom/subao/common/e/q$a;)Ljava/io/File;

    .line 1840
    invoke-static {}, Lcom/subao/common/f/a;->a()Ljava/io/File;

    move-result-object v1

    .line 1841
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1842
    if-eqz v2, :cond_0

    .line 1843
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 1844
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1843
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1847
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1848
    return-void
.end method
