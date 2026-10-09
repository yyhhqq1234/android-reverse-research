.class public Lcom/tencent/friday/uikit/d/c/c;
.super Ljava/lang/Object;
.source "FontStyle.java"


# static fields
.field private static volatile a:Lcom/tencent/friday/uikit/d/c/c;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/friday/uikit/d/c/c;->a:Lcom/tencent/friday/uikit/d/c/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/friday/uikit/d/c/c;->b:Ljava/util/HashMap;

    .line 27
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/c/c;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    const/4 v0, 0x0

    .line 72
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/c/c;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public static a()Lcom/tencent/friday/uikit/d/c/c;
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcom/tencent/friday/uikit/d/c/c;->a:Lcom/tencent/friday/uikit/d/c/c;

    if-nez v0, :cond_0

    .line 35
    const-class v1, Lcom/tencent/friday/uikit/d/c/c;

    monitor-enter v1

    .line 36
    :try_start_0
    new-instance v0, Lcom/tencent/friday/uikit/d/c/c;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/d/c/c;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/d/c/c;->a:Lcom/tencent/friday/uikit/d/c/c;

    .line 37
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_0
    sget-object v0, Lcom/tencent/friday/uikit/d/c/c;->a:Lcom/tencent/friday/uikit/d/c/c;

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;Landroid/widget/TextView;Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;)V
    .locals 3

    .prologue
    .line 76
    if-eqz p2, :cond_2

    .line 77
    invoke-virtual {p2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;->getFontName()Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {p2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;->getFontName()Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKString;->getVal()Ljava/lang/String;

    move-result-object v1

    .line 80
    :try_start_0
    invoke-static {}, Lcom/tencent/friday/uikit/d/c/c;->a()Lcom/tencent/friday/uikit/d/c/c;

    move-result-object v0

    invoke-direct {v0, v1}, Lcom/tencent/friday/uikit/d/c/c;->a(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 81
    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "try to get new font:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/d/a;->a(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 84
    invoke-static {}, Lcom/tencent/friday/uikit/d/c/c;->a()Lcom/tencent/friday/uikit/d/c/c;

    move-result-object v2

    invoke-direct {v2, v1, v0}, Lcom/tencent/friday/uikit/d/c/c;->a(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 86
    :cond_0
    if-eqz v0, :cond_3

    .line 87
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;->getFontSize()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {p2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;->getFontSize()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v0

    .line 100
    int-to-float v0, v0

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/e;->a(F)I

    move-result v0

    .line 101
    const/4 v1, 0x0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 104
    :cond_2
    return-void

    .line 89
    :cond_3
    :try_start_1
    const-string v0, "font typeFace is null file not found"

    invoke-static {v0}, Lcom/tencent/friday/uikit/b/b/b;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "font res "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;->getFontName()Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "file not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/friday/uikit/b/b/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :catch_1
    move-exception v0

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "font res "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKFont;->getFontName()Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " throw exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/friday/uikit/b/b/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/graphics/Typeface;)V
    .locals 2

    .prologue
    .line 58
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/c/c;->b:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/friday/uikit/d/c/c;->b:Ljava/util/HashMap;

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/c/c;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public b()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/c/c;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/c/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/friday/uikit/d/c/c;->b:Ljava/util/HashMap;

    .line 52
    :cond_0
    return-void
.end method
