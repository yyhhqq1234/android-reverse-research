.class public Lcom/tencent/android/tpush/common/p;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static volatile a:Lcom/tencent/android/tpush/common/p;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/common/p;->a:Lcom/tencent/android/tpush/common/p;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/common/p;->b:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/android/tpush/common/p;
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lcom/tencent/android/tpush/common/p;->a:Lcom/tencent/android/tpush/common/p;

    if-nez v0, :cond_1

    .line 16
    const-class v1, Lcom/tencent/android/tpush/common/p;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/common/p;->a:Lcom/tencent/android/tpush/common/p;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/tencent/android/tpush/common/p;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/common/p;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/android/tpush/common/p;->a:Lcom/tencent/android/tpush/common/p;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/tencent/android/tpush/common/p;->a:Lcom/tencent/android/tpush/common/p;

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 6

    .prologue
    .line 94
    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/common/p;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/common/p;->b:Landroid/content/Context;

    const-string v2, "integer"

    invoke-static {v1, p1, v2}, Lcom/tencent/android/tpush/SettingsContentProvider;->getContentUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 100
    invoke-static {v0, p2}, Lcom/tencent/android/tpush/SettingsContentProvider;->getIntValue(Landroid/database/Cursor;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 103
    :goto_0
    return v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    const-string v1, "SettingsPreferences"

    const-string v2, "error = "

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;J)J
    .locals 6

    .prologue
    .line 52
    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/common/p;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/common/p;->b:Landroid/content/Context;

    const-string v2, "long"

    invoke-static {v1, p1, v2}, Lcom/tencent/android/tpush/SettingsContentProvider;->getContentUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 58
    invoke-static {v0, p2, p3}, Lcom/tencent/android/tpush/SettingsContentProvider;->getLongValue(Landroid/database/Cursor;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 61
    :goto_0
    return-wide v0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-string v1, "SettingsPreferences"

    const-string v2, "error = "

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public a()Lcom/tencent/android/tpush/common/r;
    .locals 3

    .prologue
    .line 32
    new-instance v0, Lcom/tencent/android/tpush/common/r;

    iget-object v1, p0, Lcom/tencent/android/tpush/common/p;->b:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/android/tpush/common/r;-><init>(Landroid/content/Context;Lcom/tencent/android/tpush/common/q;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 36
    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/common/p;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/common/p;->b:Landroid/content/Context;

    const-string/jumbo v2, "string"

    invoke-static {v1, p1, v2}, Lcom/tencent/android/tpush/SettingsContentProvider;->getContentUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 43
    invoke-static {v0, p2}, Lcom/tencent/android/tpush/SettingsContentProvider;->getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    const-string v1, "SettingsPreferences"

    const-string v2, "error = "

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    const-string v0, ""

    goto :goto_0
.end method
