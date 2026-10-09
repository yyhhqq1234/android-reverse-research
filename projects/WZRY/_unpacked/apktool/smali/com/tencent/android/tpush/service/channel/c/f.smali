.class public Lcom/tencent/android/tpush/service/channel/c/f;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static volatile c:Lcom/tencent/android/tpush/service/channel/c/f;


# instance fields
.field private a:I

.field private b:I

.field private d:Landroid/content/Context;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/service/channel/c/f;->c:Lcom/tencent/android/tpush/service/channel/c/f;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/16 v0, 0xa

    iput v0, p0, Lcom/tencent/android/tpush/service/channel/c/f;->a:I

    .line 16
    iput v1, p0, Lcom/tencent/android/tpush/service/channel/c/f;->b:I

    .line 128
    iput-object v2, p0, Lcom/tencent/android/tpush/service/channel/c/f;->d:Landroid/content/Context;

    .line 129
    iput-boolean v1, p0, Lcom/tencent/android/tpush/service/channel/c/f;->e:Z

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/c/f;->d:Landroid/content/Context;

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c/f;->d:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/stat/a/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/android/tpush/service/channel/c/f;->e:Z

    .line 137
    iget-boolean v0, p0, Lcom/tencent/android/tpush/service/channel/c/f;->e:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 138
    const-class v0, Landroid/provider/Settings$System;

    .line 139
    const-string v1, "canWrite"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 141
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 142
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/android/tpush/service/channel/c/f;->d:Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/android/tpush/service/channel/c/f;->e:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    iget v1, p0, Lcom/tencent/android/tpush/service/channel/c/f;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tencent/android/tpush/service/channel/c/f;->b:I

    iget v2, p0, Lcom/tencent/android/tpush/service/channel/c/f;->a:I

    if-ge v1, v2, :cond_0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/channel/c/f;
    .locals 2

    .prologue
    .line 152
    sget-object v0, Lcom/tencent/android/tpush/service/channel/c/f;->c:Lcom/tencent/android/tpush/service/channel/c/f;

    if-nez v0, :cond_1

    .line 153
    const-class v1, Lcom/tencent/android/tpush/service/channel/c/f;

    monitor-enter v1

    .line 154
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/service/channel/c/f;->c:Lcom/tencent/android/tpush/service/channel/c/f;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/tencent/android/tpush/service/channel/c/f;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/service/channel/c/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/android/tpush/service/channel/c/f;->c:Lcom/tencent/android/tpush/service/channel/c/f;

    .line 157
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :cond_1
    sget-object v0, Lcom/tencent/android/tpush/service/channel/c/f;->c:Lcom/tencent/android/tpush/service/channel/c/f;

    return-object v0

    .line 157
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c/f;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    iget v1, p0, Lcom/tencent/android/tpush/service/channel/c/f;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tencent/android/tpush/service/channel/c/f;->b:I

    iget v2, p0, Lcom/tencent/android/tpush/service/channel/c/f;->a:I

    if-ge v1, v2, :cond_0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;F)Z
    .locals 3

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/tencent/android/tpush/service/channel/c/f;->e:Z

    if-eqz v0, :cond_0

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c/f;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 100
    :goto_0
    return v0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    iget v1, p0, Lcom/tencent/android/tpush/service/channel/c/f;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tencent/android/tpush/service/channel/c/f;->b:I

    iget v2, p0, Lcom/tencent/android/tpush/service/channel/c/f;->a:I

    if-ge v1, v2, :cond_0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)Z
    .locals 3

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/tencent/android/tpush/service/channel/c/f;->e:Z

    if-eqz v0, :cond_0

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c/f;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 52
    :goto_0
    return v0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    iget v1, p0, Lcom/tencent/android/tpush/service/channel/c/f;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tencent/android/tpush/service/channel/c/f;->b:I

    iget v2, p0, Lcom/tencent/android/tpush/service/channel/c/f;->a:I

    if-ge v1, v2, :cond_0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;J)Z
    .locals 4

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/tencent/android/tpush/service/channel/c/f;->e:Z

    if-eqz v0, :cond_0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c/f;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 76
    :goto_0
    return v0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    iget v1, p0, Lcom/tencent/android/tpush/service/channel/c/f;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tencent/android/tpush/service/channel/c/f;->b:I

    iget v2, p0, Lcom/tencent/android/tpush/service/channel/c/f;->a:I

    if-ge v1, v2, :cond_0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/tencent/android/tpush/service/channel/c/f;->e:Z

    if-eqz v0, :cond_0

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/c/f;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 28
    :goto_0
    return v0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    iget v1, p0, Lcom/tencent/android/tpush/service/channel/c/f;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tencent/android/tpush/service/channel/c/f;->b:I

    iget v2, p0, Lcom/tencent/android/tpush/service/channel/c/f;->a:I

    if-ge v1, v2, :cond_0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
