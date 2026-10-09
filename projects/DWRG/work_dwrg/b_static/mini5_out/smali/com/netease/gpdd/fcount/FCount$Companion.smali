.class public final Lcom/netease/gpdd/fcount/FCount$Companion;
.super Ljava/lang/Object;
.source "FCount.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/gpdd/fcount/FCount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J8\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00062\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\"2\u0008\u0008\u0002\u0010#\u001a\u00020\u00122\u0008\u0008\u0002\u0010$\u001a\u00020%H\u0007J8\u0010&\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00062\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\"2\u0008\u0008\u0002\u0010#\u001a\u00020\u00122\u0008\u0008\u0002\u0010$\u001a\u00020%H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000b\"\u0004\u0008\u0010\u0010\rR\u000e\u0010\u0011\u001a\u00020\u0012X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0012X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0012X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0012X\u0086T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0016\u001a\u00020\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/netease/gpdd/fcount/FCount$Companion;",
        "",
        "()V",
        "EVENT_COUNT_TO_KEEP_BEFORE_START",
        "",
        "EVENT_NAME_CHANGE_USER",
        "",
        "EVENT_NAME_LAUNCH",
        "EVENT_NAME_PV",
        "LOG_LEVEL",
        "getLOG_LEVEL",
        "()I",
        "setLOG_LEVEL",
        "(I)V",
        "MAX_UPLOAD_BATCH_SIZE",
        "getMAX_UPLOAD_BATCH_SIZE",
        "setMAX_UPLOAD_BATCH_SIZE",
        "SESSION_TIMEOUT_MILLIS",
        "",
        "STRICT_MODE_FLAG_ALL",
        "STRICT_MODE_FLAG_EVENT_NAME",
        "STRICT_MODE_FLAG_PARAM",
        "uncaughtExceptionHandler",
        "Lcom/netease/gpdd/fcount/UncaughtExceptionHandler;",
        "getUncaughtExceptionHandler",
        "()Lcom/netease/gpdd/fcount/UncaughtExceptionHandler;",
        "setUncaughtExceptionHandler",
        "(Lcom/netease/gpdd/fcount/UncaughtExceptionHandler;)V",
        "newInstance",
        "Lcom/netease/gpdd/fcount/FCount;",
        "context",
        "Landroid/content/Context;",
        "appKey",
        "androidIdOverride",
        "Lcom/netease/gpdd/fcount/AndroidIdOverrider;",
        "strictModeFlags",
        "mainProcessOnly",
        "",
        "newRawLogger",
        "SDK_uuRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/gpdd/fcount/FCount$Companion;-><init>()V

    return-void
.end method

.method public static synthetic newInstance$default(Lcom/netease/gpdd/fcount/FCount$Companion;Landroid/content/Context;Ljava/lang/String;Lcom/netease/gpdd/fcount/AndroidIdOverrider;JZILjava/lang/Object;)Lcom/netease/gpdd/fcount/FCount;
    .locals 7

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_1

    const-wide/16 p4, 0x0

    :cond_1
    move-wide v4, p4

    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_2

    const/4 p6, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    move v6, p6

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 598
    invoke-virtual/range {v0 .. v6}, Lcom/netease/gpdd/fcount/FCount$Companion;->newInstance(Landroid/content/Context;Ljava/lang/String;Lcom/netease/gpdd/fcount/AndroidIdOverrider;JZ)Lcom/netease/gpdd/fcount/FCount;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic newRawLogger$default(Lcom/netease/gpdd/fcount/FCount$Companion;Landroid/content/Context;Ljava/lang/String;Lcom/netease/gpdd/fcount/AndroidIdOverrider;JZILjava/lang/Object;)Lcom/netease/gpdd/fcount/FCount;
    .locals 7

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_1

    const-wide/16 p4, 0x0

    :cond_1
    move-wide v4, p4

    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_2

    const/4 p6, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    move v6, p6

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 571
    invoke-virtual/range {v0 .. v6}, Lcom/netease/gpdd/fcount/FCount$Companion;->newRawLogger(Landroid/content/Context;Ljava/lang/String;Lcom/netease/gpdd/fcount/AndroidIdOverrider;JZ)Lcom/netease/gpdd/fcount/FCount;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getLOG_LEVEL()I
    .locals 1

    .line 527
    invoke-static {}, Lcom/netease/gpdd/fcount/FCount;->access$getLOG_LEVEL$cp()I

    move-result v0

    return v0
.end method

.method public final getMAX_UPLOAD_BATCH_SIZE()I
    .locals 1

    .line 536
    invoke-static {}, Lcom/netease/gpdd/fcount/FCount;->access$getMAX_UPLOAD_BATCH_SIZE$cp()I

    move-result v0

    return v0
.end method

.method public final getUncaughtExceptionHandler()Lcom/netease/gpdd/fcount/UncaughtExceptionHandler;
    .locals 1

    .line 538
    invoke-static {}, Lcom/netease/gpdd/fcount/FCount;->access$getUncaughtExceptionHandler$cp()Lcom/netease/gpdd/fcount/UncaughtExceptionHandler;

    move-result-object v0

    return-object v0
.end method

.method public final newInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/gpdd/fcount/FCount;
    .locals 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v9}, Lcom/netease/gpdd/fcount/FCount$Companion;->newInstance$default(Lcom/netease/gpdd/fcount/FCount$Companion;Landroid/content/Context;Ljava/lang/String;Lcom/netease/gpdd/fcount/AndroidIdOverrider;JZILjava/lang/Object;)Lcom/netease/gpdd/fcount/FCount;

    move-result-object p1

    return-object p1
.end method

.method public final newInstance(Landroid/content/Context;Ljava/lang/String;Lcom/netease/gpdd/fcount/AndroidIdOverrider;)Lcom/netease/gpdd/fcount/FCount;
    .locals 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x18

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v9}, Lcom/netease/gpdd/fcount/FCount$Companion;->newInstance$default(Lcom/netease/gpdd/fcount/FCount$Companion;Landroid/content/Context;Ljava/lang/String;Lcom/netease/gpdd/fcount/AndroidIdOverrider;JZILjava/lang/Object;)Lcom/netease/gpdd/fcount/FCount;

    move-result-object p1

    return-object p1
.end method

.method public final newInstance(Landroid/content/Context;Ljava/lang/String;Lcom/netease/gpdd/fcount/AndroidIdOverrider;J)Lcom/netease/gpdd/fcount/FCount;
    .locals 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-static/range {v1 .. v9}, Lcom/netease/gpdd/fcount/FCount$Companion;->newInstance$default(Lcom/netease/gpdd/fcount/FCount$Companion;Landroid/content/Context;Ljava/lang/String;Lcom/netease/gpdd/fcount/AndroidIdOverrider;JZILjava/lang/Object;)Lcom/netease/gpdd/fcount/FCount;

    move-result-object p1

    return-object p1
.end method

.method public final newInstance(Landroid/content/Context;Ljava/lang/String;Lcom/netease/gpdd/fcount/AndroidIdOverrider;JZ)Lcom/netease/gpdd/fcount/FCount;
    .locals 13
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    move-object v1, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appKey"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 607
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 606
    new-instance v0, Lcom/netease/gpdd/fcount/FCount;

    const-string v1, "applicationContext"

    .line 607
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v12, 0x0

    move-object v1, v0

    move-wide/from16 v8, p4

    move-object/from16 v10, p3

    move/from16 v11, p6

    .line 606
    invoke-direct/range {v1 .. v12}, Lcom/netease/gpdd/fcount/FCount;-><init>(Landroid/content/Context;Ljava/lang/String;ZZZZJLcom/netease/gpdd/fcount/AndroidIdOverrider;ZLjava/lang/String;)V

    return-object v0
.end method

.method public final newRawLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/gpdd/fcount/FCount;
    .locals 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v9}, Lcom/netease/gpdd/fcount/FCount$Companion;->newRawLogger$default(Lcom/netease/gpdd/fcount/FCount$Companion;Landroid/content/Context;Ljava/lang/String;Lcom/netease/gpdd/fcount/AndroidIdOverrider;JZILjava/lang/Object;)Lcom/netease/gpdd/fcount/FCount;

    move-result-object p1

    return-object p1
.end method

.method public final newRawLogger(Landroid/content/Context;Ljava/lang/String;Lcom/netease/gpdd/fcount/AndroidIdOverrider;)Lcom/netease/gpdd/fcount/FCount;
    .locals 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x18

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v9}, Lcom/netease/gpdd/fcount/FCount$Companion;->newRawLogger$default(Lcom/netease/gpdd/fcount/FCount$Companion;Landroid/content/Context;Ljava/lang/String;Lcom/netease/gpdd/fcount/AndroidIdOverrider;JZILjava/lang/Object;)Lcom/netease/gpdd/fcount/FCount;

    move-result-object p1

    return-object p1
.end method

.method public final newRawLogger(Landroid/content/Context;Ljava/lang/String;Lcom/netease/gpdd/fcount/AndroidIdOverrider;J)Lcom/netease/gpdd/fcount/FCount;
    .locals 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-static/range {v1 .. v9}, Lcom/netease/gpdd/fcount/FCount$Companion;->newRawLogger$default(Lcom/netease/gpdd/fcount/FCount$Companion;Landroid/content/Context;Ljava/lang/String;Lcom/netease/gpdd/fcount/AndroidIdOverrider;JZILjava/lang/Object;)Lcom/netease/gpdd/fcount/FCount;

    move-result-object p1

    return-object p1
.end method

.method public final newRawLogger(Landroid/content/Context;Ljava/lang/String;Lcom/netease/gpdd/fcount/AndroidIdOverrider;JZ)Lcom/netease/gpdd/fcount/FCount;
    .locals 13
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    move-object v1, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appKey"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 580
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 579
    new-instance v0, Lcom/netease/gpdd/fcount/FCount;

    const-string v1, "applicationContext"

    .line 580
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    move-object v1, v0

    move-wide/from16 v8, p4

    move-object/from16 v10, p3

    move/from16 v11, p6

    .line 579
    invoke-direct/range {v1 .. v12}, Lcom/netease/gpdd/fcount/FCount;-><init>(Landroid/content/Context;Ljava/lang/String;ZZZZJLcom/netease/gpdd/fcount/AndroidIdOverrider;ZLjava/lang/String;)V

    return-object v0
.end method

.method public final setLOG_LEVEL(I)V
    .locals 0

    .line 527
    invoke-static {p1}, Lcom/netease/gpdd/fcount/FCount;->access$setLOG_LEVEL$cp(I)V

    return-void
.end method

.method public final setMAX_UPLOAD_BATCH_SIZE(I)V
    .locals 0

    .line 536
    invoke-static {p1}, Lcom/netease/gpdd/fcount/FCount;->access$setMAX_UPLOAD_BATCH_SIZE$cp(I)V

    return-void
.end method

.method public final setUncaughtExceptionHandler(Lcom/netease/gpdd/fcount/UncaughtExceptionHandler;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 538
    invoke-static {p1}, Lcom/netease/gpdd/fcount/FCount;->access$setUncaughtExceptionHandler$cp(Lcom/netease/gpdd/fcount/UncaughtExceptionHandler;)V

    return-void
.end method
