.class public final Lcom/netease/gpdd/fcount/FCount;
.super Ljava/lang/Object;
.source "FCount.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/gpdd/fcount/FCount$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFCount.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FCount.kt\ncom/netease/gpdd/fcount/FCount\n+ 2 Logger.kt\ncom/netease/gpdd/fcount/util/Logger\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,620:1\n54#2,7:621\n39#2,7:628\n39#2,7:639\n215#3,2:635\n1855#4,2:637\n*S KotlinDebug\n*F\n+ 1 FCount.kt\ncom/netease/gpdd/fcount/FCount\n*L\n304#1:621,7\n360#1:628,7\n456#1:639,7\n410#1:635,2\n429#1:637,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000k\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000b*\u0001\u0014\u0018\u0000 \\2\u00020\u0001:\u0001\\B-\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nB]\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000e\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000c\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0010\u001a\u00020\u000c\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0012J\u0010\u0010F\u001a\u00020G2\u0006\u0010H\u001a\u00020\u0005H\u0002J\u001c\u0010I\u001a\u00020G2\u0012\u0010J\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010KH\u0002J\u0006\u0010L\u001a\u00020GJ\u0008\u0010M\u001a\u00020GH\u0002J\u0011\u0010N\u001a\u00020GH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010OJ\u0010\u0010P\u001a\u00020\u00052\u0006\u0010Q\u001a\u00020RH\u0002J\u0008\u0010S\u001a\u00020\u0005H\u0002J&\u0010T\u001a\u00020G2\u0006\u0010H\u001a\u00020\u00052\u0016\u0008\u0002\u0010J\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0001\u0018\u00010KJ;\u0010U\u001a\u00020G2\u0006\u0010H\u001a\u00020\u00052\u0014\u0010J\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0001\u0018\u00010K2\n\u0008\u0002\u0010V\u001a\u0004\u0018\u00010\tH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010WJ&\u0010X\u001a\u00020G2\u0006\u0010H\u001a\u00020\u00052\u0016\u0008\u0002\u0010Y\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0001\u0018\u00010KJ\u0010\u0010Z\u001a\u00020\u000c2\u0006\u0010[\u001a\u00020\tH\u0002R\u001b\u0010\u0013\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0015\u0010\u0016R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR+\u0010\u001e\u001a\u0012\u0012\u0004\u0012\u00020 0\u001fj\u0008\u0012\u0004\u0012\u00020 `!8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010\u0018\u001a\u0004\u0008\"\u0010#R\u001b\u0010%\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008(\u0010\u0018\u001a\u0004\u0008&\u0010\'R\u001b\u0010)\u001a\u00020*8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010\u0018\u001a\u0004\u0008+\u0010,R\u001b\u0010.\u001a\u00020*8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00080\u0010\u0018\u001a\u0004\u0008/\u0010,R\u000e\u00101\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u00104\u001a\u0004\u0018\u00010\u00052\u0008\u00103\u001a\u0004\u0018\u00010\u0005@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010\u001b\"\u0004\u00086\u0010\u001dR\u000e\u0010\u000f\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00107\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R*\u00108\u001a\u00020\u000c2\u0006\u00103\u001a\u00020\u000c@FX\u0086\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u00089\u0010:\u001a\u0004\u0008;\u0010\'\"\u0004\u0008<\u0010=R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010>\u001a\u00020?8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008B\u0010\u0018\u001a\u0004\u0008@\u0010AR(\u0010C\u001a\u0004\u0018\u00010\u00052\u0008\u00103\u001a\u0004\u0018\u00010\u0005@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010\u001b\"\u0004\u0008E\u0010\u001d\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006]"
    }
    d2 = {
        "Lcom/netease/gpdd/fcount/FCount;",
        "",
        "context",
        "Landroid/content/Context;",
        "appKey",
        "",
        "androidIdOverride",
        "Lcom/netease/gpdd/fcount/AndroidIdOverrider;",
        "strictModeFlags",
        "",
        "(Landroid/content/Context;Ljava/lang/String;Lcom/netease/gpdd/fcount/AndroidIdOverrider;J)V",
        "autoLogPageView",
        "",
        "logLaunch",
        "logChangeUser",
        "recordSessions",
        "mainProcessOnly",
        "appKeyApiOverride",
        "(Landroid/content/Context;Ljava/lang/String;ZZZZJLcom/netease/gpdd/fcount/AndroidIdOverrider;ZLjava/lang/String;)V",
        "activityLifecycleCallback",
        "com/netease/gpdd/fcount/FCount$activityLifecycleCallback$2$1",
        "getActivityLifecycleCallback",
        "()Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2$1;",
        "activityLifecycleCallback$delegate",
        "Lkotlin/Lazy;",
        "channel",
        "getChannel",
        "()Ljava/lang/String;",
        "setChannel",
        "(Ljava/lang/String;)V",
        "delayedEvents",
        "Ljava/util/ArrayList;",
        "Lcom/netease/gpdd/fcount/model/EventFromUser;",
        "Lkotlin/collections/ArrayList;",
        "getDelayedEvents",
        "()Ljava/util/ArrayList;",
        "delayedEvents$delegate",
        "enabled",
        "getEnabled",
        "()Z",
        "enabled$delegate",
        "eventNameRule",
        "Lkotlin/text/Regex;",
        "getEventNameRule",
        "()Lkotlin/text/Regex;",
        "eventNameRule$delegate",
        "eventParamNameRule",
        "getEventParamNameRule",
        "eventParamNameRule$delegate",
        "launchLogged",
        "launchLoggedLock",
        "value",
        "oaid",
        "getOaid",
        "setOaid",
        "sessionId",
        "started",
        "getStarted$annotations",
        "()V",
        "getStarted",
        "setStarted",
        "(Z)V",
        "uiThreadHandler",
        "Landroid/os/Handler;",
        "getUiThreadHandler",
        "()Landroid/os/Handler;",
        "uiThreadHandler$delegate",
        "uid",
        "getUid",
        "setUid",
        "checkEventName",
        "",
        "name",
        "checkEventParams",
        "params",
        "",
        "detachFromLifeCycle",
        "ensureLaunchLogged",
        "flushEvents",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "generatePageName",
        "activity",
        "Landroid/app/Activity;",
        "generateSessionId",
        "logEvent",
        "logEventImpl",
        "originatingTimeStamp",
        "(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "logPageView",
        "extraParams",
        "strictModeEnabled",
        "strictModeFlag",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/netease/gpdd/fcount/FCount$Companion;

.field private static final EVENT_COUNT_TO_KEEP_BEFORE_START:I = 0x10

.field private static final EVENT_NAME_CHANGE_USER:Ljava/lang/String; = "FLERKEN_change_user"

.field private static final EVENT_NAME_LAUNCH:Ljava/lang/String; = "FLERKEN_launch_app"

.field private static final EVENT_NAME_PV:Ljava/lang/String; = "FLERKEN_page_view"

.field private static LOG_LEVEL:I = 0x0

.field private static MAX_UPLOAD_BATCH_SIZE:I = 0x0

.field private static final SESSION_TIMEOUT_MILLIS:J = 0x7530L

.field public static final STRICT_MODE_FLAG_ALL:J = 0x7fffffffffffffffL

.field public static final STRICT_MODE_FLAG_EVENT_NAME:J = 0x1L

.field public static final STRICT_MODE_FLAG_PARAM:J = 0x2L

.field private static uncaughtExceptionHandler:Lcom/netease/gpdd/fcount/UncaughtExceptionHandler;


# instance fields
.field private final activityLifecycleCallback$delegate:Lkotlin/Lazy;

.field private androidIdOverride:Lcom/netease/gpdd/fcount/AndroidIdOverrider;

.field private final appKey:Ljava/lang/String;

.field private final autoLogPageView:Z

.field private channel:Ljava/lang/String;

.field private final delayedEvents$delegate:Lkotlin/Lazy;

.field private final enabled$delegate:Lkotlin/Lazy;

.field private final eventNameRule$delegate:Lkotlin/Lazy;

.field private final eventParamNameRule$delegate:Lkotlin/Lazy;

.field private launchLogged:Z

.field private final launchLoggedLock:Ljava/lang/Object;

.field private final logChangeUser:Z

.field private final logLaunch:Z

.field private final mainProcessOnly:Z

.field private oaid:Ljava/lang/String;

.field private final recordSessions:Z

.field private sessionId:Ljava/lang/String;

.field private started:Z

.field private final strictModeFlags:J

.field private final uiThreadHandler$delegate:Lkotlin/Lazy;

.field private uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netease/gpdd/fcount/FCount$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/gpdd/fcount/FCount$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/netease/gpdd/fcount/FCount;->Companion:Lcom/netease/gpdd/fcount/FCount$Companion;

    .line 527
    sget-boolean v0, Lcom/netease/gpdd/fcount/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    sput v0, Lcom/netease/gpdd/fcount/FCount;->LOG_LEVEL:I

    const/16 v0, 0x64

    .line 536
    sput v0, Lcom/netease/gpdd/fcount/FCount;->MAX_UPLOAD_BATCH_SIZE:I

    .line 538
    new-instance v0, Lcom/netease/gpdd/fcount/FCount$Companion$uncaughtExceptionHandler$1;

    invoke-direct {v0}, Lcom/netease/gpdd/fcount/FCount$Companion$uncaughtExceptionHandler$1;-><init>()V

    check-cast v0, Lcom/netease/gpdd/fcount/UncaughtExceptionHandler;

    sput-object v0, Lcom/netease/gpdd/fcount/FCount;->uncaughtExceptionHandler:Lcom/netease/gpdd/fcount/UncaughtExceptionHandler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/netease/gpdd/fcount/AndroidIdOverrider;J)V
    .locals 13
    .annotation runtime Lkotlin/Deprecated;
        message = "Use FCount.newInstance instead. For AS/IDEA, use `Context actions\' (Alt-Enter) for a quick update."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "FCount.newInstance(context = context, appKey = appKey, androidIdOverride = androidIdOverride, strictModeFlags = strictModeFlags)"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "context"

    move-object v1, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appKey"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, "applicationContext"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v1, p0

    move-wide/from16 v8, p4

    move-object/from16 v10, p3

    .line 149
    invoke-direct/range {v1 .. v12}, Lcom/netease/gpdd/fcount/FCount;-><init>(Landroid/content/Context;Ljava/lang/String;ZZZZJLcom/netease/gpdd/fcount/AndroidIdOverrider;ZLjava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/netease/gpdd/fcount/AndroidIdOverrider;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const-wide/16 p4, 0x0

    :cond_1
    move-wide v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 144
    invoke-direct/range {v0 .. v5}, Lcom/netease/gpdd/fcount/FCount;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netease/gpdd/fcount/AndroidIdOverrider;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZZZJLcom/netease/gpdd/fcount/AndroidIdOverrider;Z)V
    .locals 15
    .annotation runtime Lkotlin/Deprecated;
        message = "The primary constructor is no longer intended to be maintained for the users"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "FCount.newInstance(context = context, appKey = appKey, androidIdOverride = androidIdOverride, strictModeFlags = strictModeFlags)"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appKey"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x0

    const/16 v13, 0x200

    const/4 v14, 0x0

    move-object v1, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v1 .. v14}, Lcom/netease/gpdd/fcount/FCount;-><init>(Landroid/content/Context;Ljava/lang/String;ZZZZJLcom/netease/gpdd/fcount/AndroidIdOverrider;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZZZJLcom/netease/gpdd/fcount/AndroidIdOverrider;ZLjava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "The primary constructor is no longer intended to be maintained for the users"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "FCount.newInstance(context = context, appKey = appKey, androidIdOverride = androidIdOverride, strictModeFlags = strictModeFlags)"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p2, p0, Lcom/netease/gpdd/fcount/FCount;->appKey:Ljava/lang/String;

    .line 62
    iput-boolean p3, p0, Lcom/netease/gpdd/fcount/FCount;->autoLogPageView:Z

    .line 66
    iput-boolean p4, p0, Lcom/netease/gpdd/fcount/FCount;->logLaunch:Z

    .line 70
    iput-boolean p5, p0, Lcom/netease/gpdd/fcount/FCount;->logChangeUser:Z

    .line 74
    iput-boolean p6, p0, Lcom/netease/gpdd/fcount/FCount;->recordSessions:Z

    .line 99
    iput-wide p7, p0, Lcom/netease/gpdd/fcount/FCount;->strictModeFlags:J

    .line 108
    iput-object p9, p0, Lcom/netease/gpdd/fcount/FCount;->androidIdOverride:Lcom/netease/gpdd/fcount/AndroidIdOverrider;

    .line 119
    iput-boolean p10, p0, Lcom/netease/gpdd/fcount/FCount;->mainProcessOnly:Z

    .line 163
    iget-object p2, p0, Lcom/netease/gpdd/fcount/FCount;->androidIdOverride:Lcom/netease/gpdd/fcount/AndroidIdOverrider;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 164
    sget-object p2, Lcom/netease/gpdd/fcount/repo/EventRepo;->INSTANCE:Lcom/netease/gpdd/fcount/repo/EventRepo;

    iget-object p4, p0, Lcom/netease/gpdd/fcount/FCount;->androidIdOverride:Lcom/netease/gpdd/fcount/AndroidIdOverrider;

    invoke-virtual {p2, p4}, Lcom/netease/gpdd/fcount/repo/EventRepo;->setAndroidIdFetcher(Lcom/netease/gpdd/fcount/AndroidIdOverrider;)V

    .line 165
    iput-object p3, p0, Lcom/netease/gpdd/fcount/FCount;->androidIdOverride:Lcom/netease/gpdd/fcount/AndroidIdOverrider;

    .line 188
    :cond_0
    new-instance p2, Lcom/netease/gpdd/fcount/FCount$enabled$2;

    invoke-direct {p2, p0}, Lcom/netease/gpdd/fcount/FCount$enabled$2;-><init>(Lcom/netease/gpdd/fcount/FCount;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/gpdd/fcount/FCount;->enabled$delegate:Lkotlin/Lazy;

    .line 192
    sget-object p2, Lcom/netease/gpdd/fcount/FCount$delayedEvents$2;->INSTANCE:Lcom/netease/gpdd/fcount/FCount$delayedEvents$2;

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/gpdd/fcount/FCount;->delayedEvents$delegate:Lkotlin/Lazy;

    .line 196
    sget-object p2, Lcom/netease/gpdd/fcount/FCount$uiThreadHandler$2;->INSTANCE:Lcom/netease/gpdd/fcount/FCount$uiThreadHandler$2;

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/gpdd/fcount/FCount;->uiThreadHandler$delegate:Lkotlin/Lazy;

    .line 198
    new-instance p2, Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2;

    invoke-direct {p2, p0}, Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2;-><init>(Lcom/netease/gpdd/fcount/FCount;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/gpdd/fcount/FCount;->activityLifecycleCallback$delegate:Lkotlin/Lazy;

    .line 258
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netease/gpdd/fcount/FCount;->launchLoggedLock:Ljava/lang/Object;

    .line 288
    invoke-direct {p0}, Lcom/netease/gpdd/fcount/FCount;->generateSessionId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/gpdd/fcount/FCount;->sessionId:Ljava/lang/String;

    .line 291
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 292
    sget-object p2, Lcom/netease/gpdd/fcount/util/ContextUtil;->INSTANCE:Lcom/netease/gpdd/fcount/util/ContextUtil;

    const-string p4, "applicationContext"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/netease/gpdd/fcount/util/ContextUtil;->setApp(Landroid/content/Context;)V

    .line 294
    invoke-direct {p0}, Lcom/netease/gpdd/fcount/FCount;->getEnabled()Z

    move-result p2

    if-eqz p2, :cond_5

    if-eqz p11, :cond_1

    .line 296
    sget-object p2, Lcom/netease/gpdd/fcount/repo/AppConfigRepo;->INSTANCE:Lcom/netease/gpdd/fcount/repo/AppConfigRepo;

    iget-object p4, p0, Lcom/netease/gpdd/fcount/FCount;->appKey:Ljava/lang/String;

    invoke-virtual {p2, p4, p11}, Lcom/netease/gpdd/fcount/repo/AppConfigRepo;->overrideAppKeyApi(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_1
    iget-boolean p2, p0, Lcom/netease/gpdd/fcount/FCount;->autoLogPageView:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcom/netease/gpdd/fcount/FCount;->recordSessions:Z

    if-eqz p2, :cond_4

    .line 300
    :cond_2
    instance-of p2, p1, Landroid/app/Application;

    if-eqz p2, :cond_3

    .line 302
    check-cast p1, Landroid/app/Application;

    invoke-direct {p0}, Lcom/netease/gpdd/fcount/FCount;->getActivityLifecycleCallback()Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2$1;

    move-result-object p2

    check-cast p2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    .line 304
    :cond_3
    sget-object p1, Lcom/netease/gpdd/fcount/util/Logger;->INSTANCE:Lcom/netease/gpdd/fcount/util/Logger;

    const/4 p2, 0x4

    .line 621
    invoke-virtual {p1}, Lcom/netease/gpdd/fcount/util/Logger;->getLogLevel()I

    move-result p1

    if-lt p2, p1, :cond_4

    .line 622
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    .line 623
    sget-object p2, Lcom/netease/gpdd/fcount/repo/FCountScope;->INSTANCE:Lcom/netease/gpdd/fcount/repo/FCountScope;

    move-object p4, p2

    check-cast p4, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    move-object p5, p2

    check-cast p5, Lkotlin/coroutines/CoroutineContext;

    const/4 p6, 0x0

    new-instance p2, Lcom/netease/gpdd/fcount/FCount$special$$inlined$info$1;

    invoke-direct {p2, p1, p3}, Lcom/netease/gpdd/fcount/FCount$special$$inlined$info$1;-><init>([Ljava/lang/StackTraceElement;Lkotlin/coroutines/Continuation;)V

    move-object p7, p2

    check-cast p7, Lkotlin/jvm/functions/Function2;

    const/4 p8, 0x2

    const/4 p9, 0x0

    invoke-static/range {p4 .. p9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 307
    :cond_4
    :goto_0
    iget-boolean p1, p0, Lcom/netease/gpdd/fcount/FCount;->logLaunch:Z

    if-eqz p1, :cond_5

    .line 308
    new-instance p1, Ljava/lang/Thread;

    .line 311
    new-instance p2, Lcom/netease/gpdd/fcount/-$$Lambda$FCount$822CWFrQR0GtixWOuRvh9dLEWx8;

    invoke-direct {p2, p0}, Lcom/netease/gpdd/fcount/-$$Lambda$FCount$822CWFrQR0GtixWOuRvh9dLEWx8;-><init>(Lcom/netease/gpdd/fcount/FCount;)V

    .line 308
    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 311
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 379
    :cond_5
    sget-object p1, Lcom/netease/gpdd/fcount/FCount$eventNameRule$2;->INSTANCE:Lcom/netease/gpdd/fcount/FCount$eventNameRule$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/gpdd/fcount/FCount;->eventNameRule$delegate:Lkotlin/Lazy;

    .line 383
    sget-object p1, Lcom/netease/gpdd/fcount/FCount$eventParamNameRule$2;->INSTANCE:Lcom/netease/gpdd/fcount/FCount$eventParamNameRule$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/gpdd/fcount/FCount;->eventParamNameRule$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZZZJLcom/netease/gpdd/fcount/AndroidIdOverrider;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p12

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v12, v0

    goto :goto_0

    :cond_0
    move-object/from16 v12, p11

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    move/from16 v11, p10

    .line 55
    invoke-direct/range {v1 .. v12}, Lcom/netease/gpdd/fcount/FCount;-><init>(Landroid/content/Context;Ljava/lang/String;ZZZZJLcom/netease/gpdd/fcount/AndroidIdOverrider;ZLjava/lang/String;)V

    return-void
.end method

.method private static final _init_$lambda$1(Lcom/netease/gpdd/fcount/FCount;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x1f4

    .line 309
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 310
    invoke-direct {p0}, Lcom/netease/gpdd/fcount/FCount;->ensureLaunchLogged()V

    return-void
.end method

.method public static final synthetic access$flushEvents(Lcom/netease/gpdd/fcount/FCount;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/netease/gpdd/fcount/FCount;->flushEvents(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$generatePageName(Lcom/netease/gpdd/fcount/FCount;Landroid/app/Activity;)Ljava/lang/String;
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/netease/gpdd/fcount/FCount;->generatePageName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$generateSessionId(Lcom/netease/gpdd/fcount/FCount;)Ljava/lang/String;
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/netease/gpdd/fcount/FCount;->generateSessionId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAutoLogPageView$p(Lcom/netease/gpdd/fcount/FCount;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/netease/gpdd/fcount/FCount;->autoLogPageView:Z

    return p0
.end method

.method public static final synthetic access$getDelayedEvents(Lcom/netease/gpdd/fcount/FCount;)Ljava/util/ArrayList;
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/netease/gpdd/fcount/FCount;->getDelayedEvents()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLOG_LEVEL$cp()I
    .locals 1

    .line 49
    sget v0, Lcom/netease/gpdd/fcount/FCount;->LOG_LEVEL:I

    return v0
.end method

.method public static final synthetic access$getMAX_UPLOAD_BATCH_SIZE$cp()I
    .locals 1

    .line 49
    sget v0, Lcom/netease/gpdd/fcount/FCount;->MAX_UPLOAD_BATCH_SIZE:I

    return v0
.end method

.method public static final synthetic access$getMainProcessOnly$p(Lcom/netease/gpdd/fcount/FCount;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/netease/gpdd/fcount/FCount;->mainProcessOnly:Z

    return p0
.end method

.method public static final synthetic access$getRecordSessions$p(Lcom/netease/gpdd/fcount/FCount;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/netease/gpdd/fcount/FCount;->recordSessions:Z

    return p0
.end method

.method public static final synthetic access$getSessionId$p(Lcom/netease/gpdd/fcount/FCount;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/netease/gpdd/fcount/FCount;->sessionId:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getUiThreadHandler(Lcom/netease/gpdd/fcount/FCount;)Landroid/os/Handler;
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/netease/gpdd/fcount/FCount;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getUid$p(Lcom/netease/gpdd/fcount/FCount;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/netease/gpdd/fcount/FCount;->uid:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getUncaughtExceptionHandler$cp()Lcom/netease/gpdd/fcount/UncaughtExceptionHandler;
    .locals 1

    .line 49
    sget-object v0, Lcom/netease/gpdd/fcount/FCount;->uncaughtExceptionHandler:Lcom/netease/gpdd/fcount/UncaughtExceptionHandler;

    return-object v0
.end method

.method public static final synthetic access$logEventImpl(Lcom/netease/gpdd/fcount/FCount;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/gpdd/fcount/FCount;->logEventImpl(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setLOG_LEVEL$cp(I)V
    .locals 0

    .line 49
    sput p0, Lcom/netease/gpdd/fcount/FCount;->LOG_LEVEL:I

    return-void
.end method

.method public static final synthetic access$setMAX_UPLOAD_BATCH_SIZE$cp(I)V
    .locals 0

    .line 49
    sput p0, Lcom/netease/gpdd/fcount/FCount;->MAX_UPLOAD_BATCH_SIZE:I

    return-void
.end method

.method public static final synthetic access$setSessionId$p(Lcom/netease/gpdd/fcount/FCount;Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/netease/gpdd/fcount/FCount;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setUncaughtExceptionHandler$cp(Lcom/netease/gpdd/fcount/UncaughtExceptionHandler;)V
    .locals 0

    .line 49
    sput-object p0, Lcom/netease/gpdd/fcount/FCount;->uncaughtExceptionHandler:Lcom/netease/gpdd/fcount/UncaughtExceptionHandler;

    return-void
.end method

.method private final checkEventName(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 393
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x3c2d7709

    if-eq v0, v1, :cond_2

    const v1, -0x114d0ae4

    if-eq v0, v1, :cond_1

    const v1, 0x75cad933

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "FLERKEN_launch_app"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_1
    const-string v0, "FLERKEN_change_user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_2
    const-string v0, "FLERKEN_page_view"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 400
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/netease/gpdd/fcount/FCount;->getEventNameRule()Lkotlin/text/Regex;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lkotlin/text/Regex;->matchEntire(Ljava/lang/CharSequence;)Lkotlin/text/MatchResult;

    move-result-object v0

    if-eqz v0, :cond_4

    return-void

    .line 401
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event name illegal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", the correct name pattern is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/netease/gpdd/fcount/FCount;->getEventNameRule()Lkotlin/text/Regex;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/text/Regex;->getPattern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    return-void
.end method

.method private final checkEventParams(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 635
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 410
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "event"

    .line 411
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    invoke-direct {p0, v0}, Lcom/netease/gpdd/fcount/FCount;->checkEventName(Ljava/lang/String;)V

    goto :goto_0

    .line 414
    :cond_0
    invoke-direct {p0}, Lcom/netease/gpdd/fcount/FCount;->getEventParamNameRule()Lkotlin/text/Regex;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lkotlin/text/Regex;->matchEntire(Ljava/lang/CharSequence;)Lkotlin/text/MatchResult;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 415
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event param name illegal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", the correct name pattern is "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/netease/gpdd/fcount/FCount;->getEventParamNameRule()Lkotlin/text/Regex;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/text/Regex;->getPattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method private final ensureLaunchLogged()V
    .locals 3

    .line 336
    iget-boolean v0, p0, Lcom/netease/gpdd/fcount/FCount;->logLaunch:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/netease/gpdd/fcount/FCount;->launchLogged:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/netease/gpdd/fcount/FCount;->launchLoggedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_0
    iget-boolean v1, p0, Lcom/netease/gpdd/fcount/FCount;->launchLogged:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 342
    :cond_1
    iput-boolean v2, p0, Lcom/netease/gpdd/fcount/FCount;->launchLogged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 338
    :goto_0
    monitor-exit v0

    if-nez v2, :cond_2

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "FLERKEN_launch_app"

    .line 347
    invoke-static {p0, v2, v1, v0, v1}, Lcom/netease/gpdd/fcount/FCount;->logEvent$default(Lcom/netease/gpdd/fcount/FCount;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 338
    monitor-exit v0

    throw v1

    :cond_3
    :goto_1
    return-void
.end method

.method private final flushEvents(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/netease/gpdd/fcount/FCount$flushEvents$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/netease/gpdd/fcount/FCount$flushEvents$1;

    iget v1, v0, Lcom/netease/gpdd/fcount/FCount$flushEvents$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/netease/gpdd/fcount/FCount$flushEvents$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/netease/gpdd/fcount/FCount$flushEvents$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/netease/gpdd/fcount/FCount$flushEvents$1;

    invoke-direct {v0, p0, p1}, Lcom/netease/gpdd/fcount/FCount$flushEvents$1;-><init>(Lcom/netease/gpdd/fcount/FCount;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/netease/gpdd/fcount/FCount$flushEvents$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 421
    iget v2, v0, Lcom/netease/gpdd/fcount/FCount$flushEvents$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcom/netease/gpdd/fcount/FCount$flushEvents$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v4, v0, Lcom/netease/gpdd/fcount/FCount$flushEvents$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/netease/gpdd/fcount/FCount;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/netease/gpdd/fcount/FCount$flushEvents$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/netease/gpdd/fcount/FCount;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 422
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/netease/gpdd/fcount/FCount$flushEvents$events$1;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Lcom/netease/gpdd/fcount/FCount$flushEvents$events$1;-><init>(Lcom/netease/gpdd/fcount/FCount;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iput-object p0, v0, Lcom/netease/gpdd/fcount/FCount$flushEvents$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/netease/gpdd/fcount/FCount$flushEvents$1;->label:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 421
    :goto_1
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_6

    .line 429
    check-cast p1, Ljava/lang/Iterable;

    .line 637
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v4, v2

    move-object v2, p1

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/gpdd/fcount/model/EventFromUser;

    .line 430
    invoke-virtual {p1}, Lcom/netease/gpdd/fcount/model/EventFromUser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/netease/gpdd/fcount/model/EventFromUser;->getParams()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {p1}, Lcom/netease/gpdd/fcount/model/EventFromUser;->getTimestamp()J

    move-result-wide v7

    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p1

    iput-object v4, v0, Lcom/netease/gpdd/fcount/FCount$flushEvents$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/netease/gpdd/fcount/FCount$flushEvents$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/netease/gpdd/fcount/FCount$flushEvents$1;->label:I

    invoke-direct {v4, v5, v6, p1, v0}, Lcom/netease/gpdd/fcount/FCount;->logEventImpl(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 432
    :cond_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final generatePageName(Landroid/app/Activity;)Ljava/lang/String;
    .locals 6

    .line 487
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 488
    instance-of v1, p1, Lcom/netease/gpdd/fcount/FCountActivityName;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/netease/gpdd/fcount/FCountActivityName;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/netease/gpdd/fcount/FCountActivityName;->getFCountActivityName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    .line 489
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 490
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_2

    const-string v0, "it"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_4

    .line 491
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 492
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 493
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2e

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x2

    invoke-static {v0, v1, v4, v5, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 495
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v3

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string p1, "this as java.lang.String).substring(startIndex)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    const-string p1, "Activity"

    .line 498
    invoke-static {v0, p1, v4, v5, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 499
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x8

    invoke-virtual {v0, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    goto :goto_3

    :cond_6
    move-object v1, v0

    :cond_7
    :goto_3
    return-object v1
.end method

.method private final generateSessionId()Ljava/lang/String;
    .locals 2

    .line 282
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "randomUUID().toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getActivityLifecycleCallback()Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2$1;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/netease/gpdd/fcount/FCount;->activityLifecycleCallback$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2$1;

    return-object v0
.end method

.method private final getDelayedEvents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/netease/gpdd/fcount/model/EventFromUser;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/netease/gpdd/fcount/FCount;->delayedEvents$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method private final getEnabled()Z
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/netease/gpdd/fcount/FCount;->enabled$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final getEventNameRule()Lkotlin/text/Regex;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/netease/gpdd/fcount/FCount;->eventNameRule$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/text/Regex;

    return-object v0
.end method

.method private final getEventParamNameRule()Lkotlin/text/Regex;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/netease/gpdd/fcount/FCount;->eventParamNameRule$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/text/Regex;

    return-object v0
.end method

.method public static synthetic getStarted$annotations()V
    .locals 0

    return-void
.end method

.method private final getUiThreadHandler()Landroid/os/Handler;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/netease/gpdd/fcount/FCount;->uiThreadHandler$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic lambda$822CWFrQR0GtixWOuRvh9dLEWx8(Lcom/netease/gpdd/fcount/FCount;)V
    .locals 0

    invoke-static {p0}, Lcom/netease/gpdd/fcount/FCount;->_init_$lambda$1(Lcom/netease/gpdd/fcount/FCount;)V

    return-void
.end method

.method public static synthetic logEvent$default(Lcom/netease/gpdd/fcount/FCount;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 358
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/netease/gpdd/fcount/FCount;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final logEventImpl(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Long;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    instance-of v4, v3, Lcom/netease/gpdd/fcount/FCount$logEventImpl$1;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/netease/gpdd/fcount/FCount$logEventImpl$1;

    iget v5, v4, Lcom/netease/gpdd/fcount/FCount$logEventImpl$1;->label:I

    const/high16 v6, -0x80000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    iget v3, v4, Lcom/netease/gpdd/fcount/FCount$logEventImpl$1;->label:I

    sub-int/2addr v3, v6

    iput v3, v4, Lcom/netease/gpdd/fcount/FCount$logEventImpl$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/netease/gpdd/fcount/FCount$logEventImpl$1;

    invoke-direct {v4, v0, v3}, Lcom/netease/gpdd/fcount/FCount$logEventImpl$1;-><init>(Lcom/netease/gpdd/fcount/FCount;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v3, v4, Lcom/netease/gpdd/fcount/FCount$logEventImpl$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    .line 434
    iget v6, v4, Lcom/netease/gpdd/fcount/FCount$logEventImpl$1;->label:I

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    if-ne v6, v7, :cond_1

    iget-object v1, v4, Lcom/netease/gpdd/fcount/FCount$logEventImpl$1;->L$3:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    iget-object v2, v4, Lcom/netease/gpdd/fcount/FCount$logEventImpl$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    iget-object v5, v4, Lcom/netease/gpdd/fcount/FCount$logEventImpl$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v4, v4, Lcom/netease/gpdd/fcount/FCount$logEventImpl$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/netease/gpdd/fcount/FCount;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v2

    move-object v11, v4

    move-object v2, v5

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 435
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v6, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1;

    const/4 v8, 0x0

    invoke-direct {v6, v0, v1, v2, v8}, Lcom/netease/gpdd/fcount/FCount$logEventImpl$shouldStop$1;-><init>(Lcom/netease/gpdd/fcount/FCount;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    iput-object v0, v4, Lcom/netease/gpdd/fcount/FCount$logEventImpl$1;->L$0:Ljava/lang/Object;

    iput-object v1, v4, Lcom/netease/gpdd/fcount/FCount$logEventImpl$1;->L$1:Ljava/lang/Object;

    iput-object v2, v4, Lcom/netease/gpdd/fcount/FCount$logEventImpl$1;->L$2:Ljava/lang/Object;

    move-object/from16 v8, p3

    iput-object v8, v4, Lcom/netease/gpdd/fcount/FCount$logEventImpl$1;->L$3:Ljava/lang/Object;

    iput v7, v4, Lcom/netease/gpdd/fcount/FCount$logEventImpl$1;->label:I

    invoke-static {v3, v6, v4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_3

    return-object v5

    :cond_3
    move-object v11, v0

    move-object v10, v2

    move-object v2, v1

    move-object v1, v8

    :goto_1
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 453
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 456
    :cond_4
    sget-object v3, Lcom/netease/gpdd/fcount/util/Logger;->INSTANCE:Lcom/netease/gpdd/fcount/util/Logger;

    const/4 v4, 0x3

    .line 639
    invoke-virtual {v3}, Lcom/netease/gpdd/fcount/util/Logger;->getLogLevel()I

    move-result v3

    if-lt v4, v3, :cond_5

    .line 640
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 641
    sget-object v3, Lcom/netease/gpdd/fcount/repo/FCountScope;->INSTANCE:Lcom/netease/gpdd/fcount/repo/FCountScope;

    move-object v12, v3

    check-cast v12, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lkotlin/coroutines/CoroutineContext;

    const/4 v14, 0x0

    new-instance v3, Lcom/netease/gpdd/fcount/FCount$logEventImpl$$inlined$debug$1;

    const/4 v6, 0x0

    move-object v4, v3

    move-object v7, v1

    move-object v8, v2

    move-object v9, v10

    invoke-direct/range {v4 .. v9}, Lcom/netease/gpdd/fcount/FCount$logEventImpl$$inlined$debug$1;-><init>([Ljava/lang/StackTraceElement;Lkotlin/coroutines/Continuation;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Map;)V

    move-object v15, v3

    check-cast v15, Lkotlin/jvm/functions/Function2;

    const/16 v16, 0x2

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 460
    :cond_5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v3, "randomUUID().toString()"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    new-instance v3, Lorg/json/JSONObject;

    if-nez v10, :cond_6

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v10

    :cond_6
    invoke-direct {v3, v10}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 463
    iget-object v4, v11, Lcom/netease/gpdd/fcount/FCount;->uid:Ljava/lang/String;

    if-nez v4, :cond_7

    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_7
    const-string v6, "uid"

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 464
    iget-object v4, v11, Lcom/netease/gpdd/fcount/FCount;->channel:Ljava/lang/String;

    if-nez v4, :cond_8

    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_8
    const-string v6, "__channel"

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 465
    iget-object v4, v11, Lcom/netease/gpdd/fcount/FCount;->oaid:Ljava/lang/String;

    if-nez v4, :cond_9

    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_9
    const-string v6, "__oaid"

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 468
    iget-boolean v4, v11, Lcom/netease/gpdd/fcount/FCount;->recordSessions:Z

    if-eqz v4, :cond_a

    .line 469
    iget-object v4, v11, Lcom/netease/gpdd/fcount/FCount;->sessionId:Ljava/lang/String;

    goto :goto_2

    :cond_a
    const-string v4, ""

    :goto_2
    const-string v6, "session_id"

    .line 466
    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 474
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v3, "JSONObject(params ?: map\u2026   )\n        }.toString()"

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 475
    sget-object v3, Lcom/netease/gpdd/fcount/repo/EventRepo;->INSTANCE:Lcom/netease/gpdd/fcount/repo/EventRepo;

    .line 476
    new-instance v10, Lcom/netease/gpdd/fcount/model/FCountEvent;

    .line 478
    iget-object v6, v11, Lcom/netease/gpdd/fcount/FCount;->appKey:Ljava/lang/String;

    move-object v4, v10

    move-object v7, v2

    move-object v9, v1

    .line 476
    invoke-direct/range {v4 .. v9}, Lcom/netease/gpdd/fcount/model/FCountEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 475
    invoke-virtual {v3, v10}, Lcom/netease/gpdd/fcount/repo/EventRepo;->enqueue(Lcom/netease/gpdd/fcount/model/FCountEvent;)V

    .line 484
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method static synthetic logEventImpl$default(Lcom/netease/gpdd/fcount/FCount;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    .line 434
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/gpdd/fcount/FCount;->logEventImpl(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic logPageView$default(Lcom/netease/gpdd/fcount/FCount;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 507
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/netease/gpdd/fcount/FCount;->logPageView(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static final newInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/gpdd/fcount/FCount;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/netease/gpdd/fcount/FCount;->Companion:Lcom/netease/gpdd/fcount/FCount$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/netease/gpdd/fcount/FCount$Companion;->newInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/gpdd/fcount/FCount;

    move-result-object p0

    return-object p0
.end method

.method public static final newInstance(Landroid/content/Context;Ljava/lang/String;Lcom/netease/gpdd/fcount/AndroidIdOverrider;)Lcom/netease/gpdd/fcount/FCount;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/netease/gpdd/fcount/FCount;->Companion:Lcom/netease/gpdd/fcount/FCount$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/netease/gpdd/fcount/FCount$Companion;->newInstance(Landroid/content/Context;Ljava/lang/String;Lcom/netease/gpdd/fcount/AndroidIdOverrider;)Lcom/netease/gpdd/fcount/FCount;

    move-result-object p0

    return-object p0
.end method

.method public static final newInstance(Landroid/content/Context;Ljava/lang/String;Lcom/netease/gpdd/fcount/AndroidIdOverrider;J)Lcom/netease/gpdd/fcount/FCount;
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/netease/gpdd/fcount/FCount;->Companion:Lcom/netease/gpdd/fcount/FCount$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/netease/gpdd/fcount/FCount$Companion;->newInstance(Landroid/content/Context;Ljava/lang/String;Lcom/netease/gpdd/fcount/AndroidIdOverrider;J)Lcom/netease/gpdd/fcount/FCount;

    move-result-object p0

    return-object p0
.end method

.method public static final newInstance(Landroid/content/Context;Ljava/lang/String;Lcom/netease/gpdd/fcount/AndroidIdOverrider;JZ)Lcom/netease/gpdd/fcount/FCount;
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/netease/gpdd/fcount/FCount;->Companion:Lcom/netease/gpdd/fcount/FCount$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/netease/gpdd/fcount/FCount$Companion;->newInstance(Landroid/content/Context;Ljava/lang/String;Lcom/netease/gpdd/fcount/AndroidIdOverrider;JZ)Lcom/netease/gpdd/fcount/FCount;

    move-result-object p0

    return-object p0
.end method

.method public static final newRawLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/gpdd/fcount/FCount;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/netease/gpdd/fcount/FCount;->Companion:Lcom/netease/gpdd/fcount/FCount$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/netease/gpdd/fcount/FCount$Companion;->newRawLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/gpdd/fcount/FCount;

    move-result-object p0

    return-object p0
.end method

.method public static final newRawLogger(Landroid/content/Context;Ljava/lang/String;Lcom/netease/gpdd/fcount/AndroidIdOverrider;)Lcom/netease/gpdd/fcount/FCount;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/netease/gpdd/fcount/FCount;->Companion:Lcom/netease/gpdd/fcount/FCount$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/netease/gpdd/fcount/FCount$Companion;->newRawLogger(Landroid/content/Context;Ljava/lang/String;Lcom/netease/gpdd/fcount/AndroidIdOverrider;)Lcom/netease/gpdd/fcount/FCount;

    move-result-object p0

    return-object p0
.end method

.method public static final newRawLogger(Landroid/content/Context;Ljava/lang/String;Lcom/netease/gpdd/fcount/AndroidIdOverrider;J)Lcom/netease/gpdd/fcount/FCount;
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/netease/gpdd/fcount/FCount;->Companion:Lcom/netease/gpdd/fcount/FCount$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/netease/gpdd/fcount/FCount$Companion;->newRawLogger(Landroid/content/Context;Ljava/lang/String;Lcom/netease/gpdd/fcount/AndroidIdOverrider;J)Lcom/netease/gpdd/fcount/FCount;

    move-result-object p0

    return-object p0
.end method

.method public static final newRawLogger(Landroid/content/Context;Ljava/lang/String;Lcom/netease/gpdd/fcount/AndroidIdOverrider;JZ)Lcom/netease/gpdd/fcount/FCount;
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/netease/gpdd/fcount/FCount;->Companion:Lcom/netease/gpdd/fcount/FCount$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/netease/gpdd/fcount/FCount$Companion;->newRawLogger(Landroid/content/Context;Ljava/lang/String;Lcom/netease/gpdd/fcount/AndroidIdOverrider;JZ)Lcom/netease/gpdd/fcount/FCount;

    move-result-object p0

    return-object p0
.end method

.method private final strictModeEnabled(J)Z
    .locals 3

    .line 520
    iget-wide v0, p0, Lcom/netease/gpdd/fcount/FCount;->strictModeFlags:J

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public final detachFromLifeCycle()V
    .locals 2

    .line 326
    sget-object v0, Lcom/netease/gpdd/fcount/util/ContextUtil;->INSTANCE:Lcom/netease/gpdd/fcount/util/ContextUtil;

    invoke-virtual {v0}, Lcom/netease/gpdd/fcount/util/ContextUtil;->getApp()Landroid/content/Context;

    move-result-object v0

    .line 327
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 328
    check-cast v0, Landroid/app/Application;

    invoke-direct {p0}, Lcom/netease/gpdd/fcount/FCount;->getActivityLifecycleCallback()Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2$1;

    move-result-object v1

    check-cast v1, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public final getChannel()Ljava/lang/String;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/netease/gpdd/fcount/FCount;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public final getOaid()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/netease/gpdd/fcount/FCount;->oaid:Ljava/lang/String;

    return-object v0
.end method

.method public final getStarted()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lcom/netease/gpdd/fcount/FCount;->started:Z

    return v0
.end method

.method public final getUid()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/netease/gpdd/fcount/FCount;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public final logEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    invoke-direct {p0}, Lcom/netease/gpdd/fcount/FCount;->getEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 360
    sget-object v0, Lcom/netease/gpdd/fcount/util/Logger;->INSTANCE:Lcom/netease/gpdd/fcount/util/Logger;

    const/4 v2, 0x3

    .line 628
    invoke-virtual {v0}, Lcom/netease/gpdd/fcount/util/Logger;->getLogLevel()I

    move-result v0

    if-lt v2, v0, :cond_0

    .line 629
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 630
    sget-object v2, Lcom/netease/gpdd/fcount/repo/FCountScope;->INSTANCE:Lcom/netease/gpdd/fcount/repo/FCountScope;

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    const/4 v5, 0x0

    new-instance v2, Lcom/netease/gpdd/fcount/FCount$logEvent$$inlined$debug$1;

    invoke-direct {v2, v0, v1, p1, p2}, Lcom/netease/gpdd/fcount/FCount$logEvent$$inlined$debug$1;-><init>([Ljava/lang/StackTraceElement;Lkotlin/coroutines/Continuation;Ljava/lang/String;Ljava/util/Map;)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void

    .line 364
    :cond_1
    invoke-direct {p0}, Lcom/netease/gpdd/fcount/FCount;->ensureLaunchLogged()V

    if-eqz p2, :cond_2

    .line 365
    invoke-static {p2}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    const-wide/16 v2, 0x1

    .line 367
    invoke-direct {p0, v2, v3}, Lcom/netease/gpdd/fcount/FCount;->strictModeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 368
    invoke-direct {p0, p1}, Lcom/netease/gpdd/fcount/FCount;->checkEventName(Ljava/lang/String;)V

    :cond_3
    if-eqz p2, :cond_5

    .line 370
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_6

    const-wide/16 v2, 0x2

    invoke-direct {p0, v2, v3}, Lcom/netease/gpdd/fcount/FCount;->strictModeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 371
    invoke-direct {p0, p2}, Lcom/netease/gpdd/fcount/FCount;->checkEventParams(Ljava/util/Map;)V

    .line 374
    :cond_6
    sget-object p2, Lcom/netease/gpdd/fcount/repo/FCountScope;->INSTANCE:Lcom/netease/gpdd/fcount/repo/FCountScope;

    move-object v2, p2

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    const/4 v4, 0x0

    new-instance p2, Lcom/netease/gpdd/fcount/FCount$logEvent$2;

    invoke-direct {p2, p0, p1, v0, v1}, Lcom/netease/gpdd/fcount/FCount$logEvent$2;-><init>(Lcom/netease/gpdd/fcount/FCount;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    move-object v5, p2

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final logPageView(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 508
    invoke-direct {p0}, Lcom/netease/gpdd/fcount/FCount;->getEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 510
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "page_name"

    if-eqz v0, :cond_3

    .line 511
    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    goto :goto_2

    .line 513
    :cond_3
    invoke-static {p2}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 514
    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    :goto_2
    const-string p2, "FLERKEN_page_view"

    .line 517
    invoke-virtual {p0, p2, p1}, Lcom/netease/gpdd/fcount/FCount;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final setChannel(Ljava/lang/String;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/netease/gpdd/fcount/FCount;->channel:Ljava/lang/String;

    return-void
.end method

.method public final setOaid(Ljava/lang/String;)V
    .locals 1

    .line 276
    iput-object p1, p0, Lcom/netease/gpdd/fcount/FCount;->oaid:Ljava/lang/String;

    .line 277
    sget-object v0, Lcom/netease/gpdd/fcount/repo/EventRepo;->INSTANCE:Lcom/netease/gpdd/fcount/repo/EventRepo;

    invoke-virtual {v0, p1}, Lcom/netease/gpdd/fcount/repo/EventRepo;->setDefaultOaid(Ljava/lang/String;)V

    return-void
.end method

.method public final setStarted(Z)V
    .locals 6

    .line 179
    iput-boolean p1, p0, Lcom/netease/gpdd/fcount/FCount;->started:Z

    if-eqz p1, :cond_0

    .line 181
    sget-object p1, Lcom/netease/gpdd/fcount/repo/EventRepo;->INSTANCE:Lcom/netease/gpdd/fcount/repo/EventRepo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/netease/gpdd/fcount/repo/EventRepo;->setReportToServerEnabled(Z)V

    .line 182
    sget-object p1, Lcom/netease/gpdd/fcount/repo/FCountScope;->INSTANCE:Lcom/netease/gpdd/fcount/repo/FCountScope;

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance p1, Lcom/netease/gpdd/fcount/FCount$started$1;

    const/4 v3, 0x0

    invoke-direct {p1, p0, v3}, Lcom/netease/gpdd/fcount/FCount$started$1;-><init>(Lcom/netease/gpdd/fcount/FCount;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public final setUid(Ljava/lang/String;)V
    .locals 7

    .line 262
    iget-object v0, p0, Lcom/netease/gpdd/fcount/FCount;->uid:Ljava/lang/String;

    .line 263
    iput-object p1, p0, Lcom/netease/gpdd/fcount/FCount;->uid:Ljava/lang/String;

    .line 264
    iget-boolean v1, p0, Lcom/netease/gpdd/fcount/FCount;->logChangeUser:Z

    if-eqz v1, :cond_0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    sget-object v0, Lcom/netease/gpdd/fcount/repo/FCountScope;->INSTANCE:Lcom/netease/gpdd/fcount/repo/FCountScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    const/4 v3, 0x0

    new-instance v0, Lcom/netease/gpdd/fcount/FCount$uid$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4}, Lcom/netease/gpdd/fcount/FCount$uid$1;-><init>(Lcom/netease/gpdd/fcount/FCount;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method
