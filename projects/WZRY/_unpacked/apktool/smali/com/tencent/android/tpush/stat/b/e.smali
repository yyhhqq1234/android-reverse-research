.class public Lcom/tencent/android/tpush/stat/b/e;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Lcom/tencent/android/tpush/stat/b/e;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/content/SharedPreferences;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/stat/b/e;->a:Lcom/tencent/android/tpush/stat/b/e;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/tencent/android/tpush/stat/b/e;->b:Landroid/content/Context;

    .line 10
    iput-object v0, p0, Lcom/tencent/android/tpush/stat/b/e;->c:Landroid/content/SharedPreferences;

    .line 11
    const-string v0, "__QQ_MID_STR__"

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/b/e;->d:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/b/e;->b:Landroid/content/Context;

    .line 21
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/e;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/b/e;->c:Landroid/content/SharedPreferences;

    .line 23
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/android/tpush/stat/b/e;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcom/tencent/android/tpush/stat/b/e;->a:Lcom/tencent/android/tpush/stat/b/e;

    if-nez v0, :cond_1

    .line 38
    const-class v1, Lcom/tencent/android/tpush/stat/b/e;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/stat/b/e;->a:Lcom/tencent/android/tpush/stat/b/e;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/tencent/android/tpush/stat/b/e;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/stat/b/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/android/tpush/stat/b/e;->a:Lcom/tencent/android/tpush/stat/b/e;

    .line 42
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_1
    sget-object v0, Lcom/tencent/android/tpush/stat/b/e;->a:Lcom/tencent/android/tpush/stat/b/e;

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/e;->c:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/tencent/android/tpush/stat/b/e;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 26
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/android/tpush/stat/b/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    :goto_0
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/e;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/stat/b/e;->d:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
