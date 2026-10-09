.class public Lcom/tencent/mna/b;
.super Ljava/lang/Object;
.source "MnaSystem.java"


# static fields
.field public static a:J

.field private static b:Z

.field private static c:Lcom/tencent/mna/MNAObserver;

.field private static d:Lcom/tencent/mna/GHObserver;

.field private static e:Lcom/tencent/mna/NetworkObserver;

.field private static f:Lcom/tencent/mna/RouterObserver;

.field private static g:J

.field private static h:J

.field private static i:Lcom/tencent/mna/NetworkBindingListener;

.field private static j:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mna/b;->b:Z

    .line 40
    sput-object v1, Lcom/tencent/mna/b;->c:Lcom/tencent/mna/MNAObserver;

    .line 41
    sput-object v1, Lcom/tencent/mna/b;->d:Lcom/tencent/mna/GHObserver;

    .line 42
    sput-object v1, Lcom/tencent/mna/b;->e:Lcom/tencent/mna/NetworkObserver;

    .line 43
    sput-object v1, Lcom/tencent/mna/b;->f:Lcom/tencent/mna/RouterObserver;

    .line 44
    sput-wide v2, Lcom/tencent/mna/b;->g:J

    .line 45
    sput-wide v2, Lcom/tencent/mna/b;->h:J

    .line 46
    sput-object v1, Lcom/tencent/mna/b;->i:Lcom/tencent/mna/NetworkBindingListener;

    .line 48
    sput-wide v2, Lcom/tencent/mna/b;->a:J

    .line 51
    sput-object v1, Lcom/tencent/mna/b;->j:Landroid/content/Context;

    return-void
.end method

.method static a(JJ)V
    .locals 2

    .prologue
    .line 266
    sput-wide p0, Lcom/tencent/mna/b;->g:J

    .line 267
    sput-wide p2, Lcom/tencent/mna/b;->h:J

    .line 268
    new-instance v0, Lcom/tencent/mna/b$3;

    invoke-direct {v0}, Lcom/tencent/mna/b$3;-><init>()V

    invoke-static {v0}, Lcom/tencent/mna/b;->a(Lcom/tencent/mna/MNAObserver;)V

    .line 296
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;ZIZZLjava/lang/String;)V
    .locals 8

    .prologue
    .line 61
    const-class v7, Lcom/tencent/mna/b;

    monitor-enter v7

    :try_start_0
    sget-boolean v0, Lcom/tencent/mna/b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    monitor-exit v7

    return-void

    .line 66
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/tencent/mna/base/b/a;->b(Landroid/content/Context;)Z

    move-result v0

    .line 67
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/mna/b;->j:Landroid/content/Context;

    .line 74
    invoke-static {p5}, Lcom/tencent/mna/a;->a(Z)Z

    .line 77
    invoke-static {}, Lcom/tencent/mna/b;->l()V

    .line 80
    invoke-static {}, Lcom/tencent/mna/b;->n()V

    .line 83
    sget-object v0, Lcom/tencent/mna/b;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/tencent/mna/b;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p6

    invoke-static/range {v0 .. v6}, Lcom/tencent/mna/b;->a(Ljava/lang/String;ZIZLjava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 86
    const-string v0, "5.5.0"

    invoke-static {p1, v0}, Lcom/tencent/mna/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {p1, p2}, Lcom/tencent/mna/b;->a(Ljava/lang/String;Z)V

    .line 91
    invoke-static {}, Lcom/tencent/mna/b;->o()V

    .line 94
    invoke-static {}, Lcom/tencent/mna/b/a/b;->a()V

    .line 95
    invoke-static {}, Lcom/tencent/mna/b/d/b;->a()V

    .line 100
    invoke-static {p5}, Lcom/tencent/mna/b;->a(Z)V

    .line 102
    invoke-static {}, Lcom/tencent/mna/b;->m()V

    .line 104
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/mna/b;->b:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init failed, exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 111
    :goto_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mna/b;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 108
    :catch_1
    move-exception v0

    .line 109
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init failed, error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method static a(Lcom/tencent/mna/GHObserver;)V
    .locals 0

    .prologue
    .line 299
    sput-object p0, Lcom/tencent/mna/b;->d:Lcom/tencent/mna/GHObserver;

    .line 300
    return-void
.end method

.method public static a(Lcom/tencent/mna/MNAObserver;)V
    .locals 0

    .prologue
    .line 261
    sput-object p0, Lcom/tencent/mna/b;->c:Lcom/tencent/mna/MNAObserver;

    .line 262
    return-void
.end method

.method public static a(Lcom/tencent/mna/NetworkBindingListener;)V
    .locals 0

    .prologue
    .line 315
    sput-object p0, Lcom/tencent/mna/b;->i:Lcom/tencent/mna/NetworkBindingListener;

    .line 316
    return-void
.end method

.method static a(Lcom/tencent/mna/NetworkObserver;)V
    .locals 0

    .prologue
    .line 303
    sput-object p0, Lcom/tencent/mna/b;->e:Lcom/tencent/mna/NetworkObserver;

    .line 304
    return-void
.end method

.method static a(Lcom/tencent/mna/RouterObserver;)V
    .locals 0

    .prologue
    .line 307
    sput-object p0, Lcom/tencent/mna/b;->f:Lcom/tencent/mna/RouterObserver;

    .line 308
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 209
    invoke-static {p0, p1}, Lcom/tencent/mna/b/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/n;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/n;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-static {v0, v1}, Lcom/tencent/mna/base/jni/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method private static a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 216
    const-string v0, ""

    .line 217
    sget-object v1, Lcom/tencent/mna/b;->j:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/mna/b;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, p1, v0}, Lcom/tencent/mna/base/jni/e;->a(IZLjava/lang/String;)V

    .line 223
    return-void
.end method

.method private static a(Ljava/lang/String;ZIZLjava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .locals 3

    .prologue
    const/16 v1, 0x791b

    const/4 v0, 0x1

    .line 164
    sput-object p0, Lcom/tencent/mna/a/b;->d:Ljava/lang/String;

    .line 165
    sput-boolean p1, Lcom/tencent/mna/a/b;->b:Z

    .line 166
    if-eqz p1, :cond_3

    :goto_0
    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(I)V

    .line 167
    sput p2, Lcom/tencent/mna/a/b;->h:I

    .line 168
    sput-boolean p3, Lcom/tencent/mna/a/a;->d:Z

    .line 169
    if-eqz p6, :cond_0

    .line 170
    iget v0, p6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sput v0, Lcom/tencent/mna/a/a;->c:I

    .line 172
    :cond_0
    if-eqz p3, :cond_4

    .line 173
    const-string v0, "control.mna.qq.com"

    sput-object v0, Lcom/tencent/mna/a/a;->f:Ljava/lang/String;

    .line 174
    sput v1, Lcom/tencent/mna/a/a;->g:I

    .line 184
    :goto_1
    sput-object p4, Lcom/tencent/mna/a/b;->e:Ljava/lang/String;

    .line 185
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com/tencent/mna/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x5f

    invoke-virtual {p5, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mna/a/a;->e:Ljava/lang/String;

    .line 188
    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "UNKNOWN"

    .line 189
    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 190
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/mna/base/c/b;->a(Ljava/lang/String;Landroid/content/Context;)Z

    .line 192
    :cond_2
    return-void

    .line 166
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 176
    :cond_4
    const-string/jumbo v0, "test.mocmna.qq.com"

    sput-object v0, Lcom/tencent/mna/a/a;->f:Ljava/lang/String;

    .line 177
    sput v1, Lcom/tencent/mna/a/a;->g:I

    .line 179
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v0

    const-string v1, "MNA\u6d4b\u8bd5\u73af\u5883"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 180
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static a(Z)V
    .locals 3

    .prologue
    .line 133
    if-eqz p0, :cond_0

    .line 134
    new-instance v0, Lcom/tencent/mna/base/f/b;

    invoke-direct {v0}, Lcom/tencent/mna/base/f/b;-><init>()V

    sget-object v1, Lcom/tencent/mna/b;->j:Landroid/content/Context;

    new-instance v2, Lcom/tencent/mna/b$1;

    invoke-direct {v2}, Lcom/tencent/mna/b$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mna/base/f/b;->a(Landroid/content/Context;Lcom/tencent/mna/base/f/b$a;)V

    .line 156
    :cond_0
    return-void
.end method

.method public static declared-synchronized a()Z
    .locals 2

    .prologue
    .line 54
    const-class v0, Lcom/tencent/mna/b;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/tencent/mna/b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static b()Lcom/tencent/mna/MNAObserver;
    .locals 1

    .prologue
    .line 245
    sget-object v0, Lcom/tencent/mna/b;->c:Lcom/tencent/mna/MNAObserver;

    return-object v0
.end method

.method public static c()Lcom/tencent/mna/GHObserver;
    .locals 1

    .prologue
    .line 249
    sget-object v0, Lcom/tencent/mna/b;->d:Lcom/tencent/mna/GHObserver;

    return-object v0
.end method

.method public static d()Lcom/tencent/mna/NetworkObserver;
    .locals 1

    .prologue
    .line 253
    sget-object v0, Lcom/tencent/mna/b;->e:Lcom/tencent/mna/NetworkObserver;

    return-object v0
.end method

.method public static e()Lcom/tencent/mna/RouterObserver;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/tencent/mna/b;->f:Lcom/tencent/mna/RouterObserver;

    return-object v0
.end method

.method public static f()Lcom/tencent/mna/NetworkBindingListener;
    .locals 1

    .prologue
    .line 311
    sget-object v0, Lcom/tencent/mna/b;->i:Lcom/tencent/mna/NetworkBindingListener;

    return-object v0
.end method

.method public static g()Landroid/content/Context;
    .locals 1

    .prologue
    .line 319
    sget-object v0, Lcom/tencent/mna/b;->j:Landroid/content/Context;

    return-object v0
.end method

.method public static h()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 324
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mna_sp"

    const/4 v2, 0x0

    .line 325
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 327
    :goto_0
    return-object v0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic i()Lcom/tencent/mna/MNAObserver;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/tencent/mna/b;->c:Lcom/tencent/mna/MNAObserver;

    return-object v0
.end method

.method static synthetic j()J
    .locals 2

    .prologue
    .line 36
    sget-wide v0, Lcom/tencent/mna/b;->g:J

    return-wide v0
.end method

.method static synthetic k()J
    .locals 2

    .prologue
    .line 36
    sget-wide v0, Lcom/tencent/mna/b;->h:J

    return-wide v0
.end method

.method private static l()V
    .locals 3

    .prologue
    .line 115
    sget-object v0, Lcom/tencent/mna/b;->j:Landroid/content/Context;

    const-string v1, "BuglySdkInfos"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 117
    const-string v1, "d819a2d50a"

    const-string v2, "5.5.0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 118
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 119
    return-void
.end method

.method private static m()V
    .locals 1

    .prologue
    .line 159
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/g;->a(Landroid/content/Context;)V

    .line 160
    return-void
.end method

.method private static n()V
    .locals 3

    .prologue
    .line 197
    :try_start_0
    sget-object v0, Lcom/tencent/mna/a/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/mna/a/b;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 198
    sget-object v0, Lcom/tencent/mna/base/c/c;->f:Lcom/tencent/mna/base/c/c;

    invoke-static {v0}, Lcom/tencent/mna/base/c/f;->a(Lcom/tencent/mna/base/c/c;)Lcom/tencent/mna/base/c/d;

    move-result-object v0

    const-string v1, "brandvalue"

    sget-object v2, Lcom/tencent/mna/a/b;->c:Ljava/lang/String;

    .line 199
    invoke-interface {v0, v1, v2}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v0

    .line 200
    invoke-interface {v0}, Lcom/tencent/mna/base/c/d;->g()V

    .line 201
    const-string v0, ""

    sput-object v0, Lcom/tencent/mna/a/b;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static o()V
    .locals 2

    .prologue
    .line 226
    sget-object v0, Lcom/tencent/mna/a/b;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mna/b/g/d;->a(ILandroid/content/Context;)V

    .line 227
    new-instance v0, Lcom/tencent/mna/b$2;

    invoke-direct {v0}, Lcom/tencent/mna/b$2;-><init>()V

    invoke-static {v0}, Lcom/tencent/mna/a;->a(Ljava/lang/Runnable;)V

    .line 242
    return-void
.end method
