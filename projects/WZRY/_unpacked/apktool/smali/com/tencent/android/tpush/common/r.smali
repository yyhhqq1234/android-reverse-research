.class public Lcom/tencent/android/tpush/common/r;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field a:Landroid/content/Context;

.field private b:Landroid/content/ContentValues;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/tencent/android/tpush/common/r;->b:Landroid/content/ContentValues;

    .line 112
    iput-object p1, p0, Lcom/tencent/android/tpush/common/r;->a:Landroid/content/Context;

    .line 113
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/tencent/android/tpush/common/q;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/tencent/android/tpush/common/r;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Lcom/tencent/android/tpush/common/r;
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/tencent/android/tpush/common/r;->b:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    return-object p0
.end method

.method public a(Ljava/lang/String;J)Lcom/tencent/android/tpush/common/r;
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/tencent/android/tpush/common/r;->b:Landroid/content/ContentValues;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 139
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/android/tpush/common/r;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/tencent/android/tpush/common/r;->b:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-object p0
.end method

.method public a()V
    .locals 4

    .prologue
    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/common/r;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/common/r;->a:Landroid/content/Context;

    const-string v2, "key"

    const-string/jumbo v3, "type"

    invoke-static {v1, v2, v3}, Lcom/tencent/android/tpush/SettingsContentProvider;->getContentUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/common/r;->b:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    const-string v1, "SettingsPreferences"

    const-string v2, "apply"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/tencent/android/tpush/common/r;->b:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/tencent/android/tpush/common/r;->a()V

    .line 130
    return-void
.end method
