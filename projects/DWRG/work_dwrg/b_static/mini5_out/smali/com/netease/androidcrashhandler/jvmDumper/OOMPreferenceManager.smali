.class public final Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;
.super Ljava/lang/Object;
.source "OOMPreferenceManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOOMPreferenceManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OOMPreferenceManager.kt\ncom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,95:1\n1#2:96\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\n\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u0015\u001a\u00020\u0016J\u0006\u0010\u0017\u001a\u00020\u0004J\u0006\u0010\u0018\u001a\u00020\u000fJ\u001a\u0010\u0019\u001a\u00020\u000f2\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\rJ\u0006\u0010\u001b\u001a\u00020\u000fJ\u000e\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u0004J\u000e\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\rX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;",
        "",
        "()V",
        "PREFERENCE_NAME",
        "",
        "mPreferences",
        "Landroid/content/SharedPreferences;",
        "getMPreferences",
        "()Landroid/content/SharedPreferences;",
        "mPreferences$delegate",
        "Lkotlin/Lazy;",
        "mPrefix",
        "mSharedPreferencesInvoker",
        "Lkotlin/Function1;",
        "clearUnusedPreference",
        "",
        "preferences",
        "editor",
        "Landroid/content/SharedPreferences$Editor;",
        "getAnalysisTimes",
        "",
        "getFirstLaunchTime",
        "",
        "getTriggeredHprofName",
        "increaseAnalysisTimes",
        "init",
        "sharedPreferencesInvoker",
        "resetAnalysisTimes",
        "saveTriggeredHprofName",
        "hprofFileName",
        "setFirstLaunchTime",
        "time",
        "CrashHunterLib_release"
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
.field public static final INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "appdump_hprof_analysis"

.field private static final mPreferences$delegate:Lkotlin/Lazy;

.field private static mPrefix:Ljava/lang/String;

.field private static mSharedPreferencesInvoker:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;

    .line 29
    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager$mPreferences$2;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager$mPreferences$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->mPreferences$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMSharedPreferencesInvoker$p()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 26
    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->mSharedPreferencesInvoker:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method private final clearUnusedPreference(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    .locals 5

    .line 89
    invoke-static {p1}, Lcom/netease/androidcrashhandler/jvmDumper/base/Monitor_SharedPreferencesKt;->getAllKeys(Landroid/content/SharedPreferences;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    sget-object v1, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->mPrefix:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "mPrefix"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v1, v3, v4, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    invoke-interface {p2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final getMPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 29
    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->mPreferences$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public final getAnalysisTimes()I
    .locals 3

    .line 40
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->getMPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->mPrefix:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "mPrefix"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "times"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getFirstLaunchTime()J
    .locals 5

    .line 57
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->getMPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->mPrefix:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "mPrefix"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "first_analysis_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 60
    invoke-virtual {p0, v0, v1}, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->setFirstLaunchTime(J)V

    :cond_1
    return-wide v0
.end method

.method public final getTriggeredHprofName()Ljava/lang/String;
    .locals 3

    .line 82
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->getMPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->mPrefix:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "mPrefix"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "triggered_hprof_name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    return-object v2
.end method

.method public final increaseAnalysisTimes()V
    .locals 8

    .line 44
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->getMPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 45
    sget-object v1, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;

    invoke-direct {v1}, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->getMPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->clearUnusedPreference(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->mPrefix:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mPrefix"

    if-nez v2, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "times"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->getMPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->mPrefix:Ljava/lang/String;

    if-nez v7, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v3, v7

    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final init(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Landroid/content/SharedPreferences;",
            ">;)V"
        }
    .end annotation

    .line 35
    sput-object p1, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->mSharedPreferencesInvoker:Lkotlin/jvm/functions/Function1;

    const-string p1, "appdump_3.20.2_"

    .line 36
    sput-object p1, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->mPrefix:Ljava/lang/String;

    return-void
.end method

.method public final resetAnalysisTimes()V
    .locals 3

    .line 50
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->getMPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 51
    sget-object v1, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;

    invoke-direct {v1}, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->getMPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->clearUnusedPreference(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->mPrefix:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "mPrefix"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "times"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 53
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveTriggeredHprofName(Ljava/lang/String;)V
    .locals 3

    .line 76
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->getMPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->mPrefix:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "mPrefix"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "triggered_hprof_name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 78
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setFirstLaunchTime(J)V
    .locals 6

    .line 66
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->getMPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->mPrefix:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mPrefix"

    if-nez v2, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "first_analysis_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 70
    :cond_1
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->getMPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->mPrefix:Ljava/lang/String;

    if-nez v5, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v3, v5

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 72
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
