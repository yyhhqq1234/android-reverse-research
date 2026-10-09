.class public Lcom/tencent/friday/uikit/a/b/c;
.super Ljava/lang/Object;
.source "JLocalImageFetcher.java"


# static fields
.field private static volatile d:Lcom/tencent/friday/uikit/a/b/c;


# instance fields
.field private a:Lcom/tencent/friday/uikit/a/b/a;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/friday/uikit/a/b/c;->d:Lcom/tencent/friday/uikit/a/b/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/friday/uikit/a/b/c;->b:Ljava/util/HashMap;

    .line 31
    iput-object p1, p0, Lcom/tencent/friday/uikit/a/b/c;->c:Landroid/content/Context;

    .line 32
    new-instance v0, Lcom/tencent/friday/uikit/a/b/a;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/a/b/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/friday/uikit/a/b/c;->a:Lcom/tencent/friday/uikit/a/b/a;

    .line 33
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/friday/uikit/a/b/c;
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/tencent/friday/uikit/a/b/c;->d:Lcom/tencent/friday/uikit/a/b/c;

    if-nez v0, :cond_0

    .line 42
    const-class v1, Lcom/tencent/friday/uikit/a/b/c;

    monitor-enter v1

    .line 43
    :try_start_0
    new-instance v0, Lcom/tencent/friday/uikit/a/b/c;

    invoke-direct {v0, p0}, Lcom/tencent/friday/uikit/a/b/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/friday/uikit/a/b/c;->d:Lcom/tencent/friday/uikit/a/b/c;

    .line 44
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_0
    sget-object v0, Lcom/tencent/friday/uikit/a/b/c;->d:Lcom/tencent/friday/uikit/a/b/c;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/tencent/friday/uikit/a/b/c;->d:Lcom/tencent/friday/uikit/a/b/c;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/friday/uikit/a/b/c;->d:Lcom/tencent/friday/uikit/a/b/c;

    iget-object v0, v0, Lcom/tencent/friday/uikit/a/b/c;->a:Lcom/tencent/friday/uikit/a/b/a;

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/tencent/friday/uikit/a/b/c;->d:Lcom/tencent/friday/uikit/a/b/c;

    iget-object v0, v0, Lcom/tencent/friday/uikit/a/b/c;->a:Lcom/tencent/friday/uikit/a/b/a;

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/a/b/a;->a()V

    .line 116
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/friday/uikit/a/b/c;->d:Lcom/tencent/friday/uikit/a/b/c;

    .line 117
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/widget/ImageView;Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;)V
    .locals 1

    .prologue
    .line 50
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/friday/uikit/a/b/c;->a(Landroid/widget/ImageView;Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;Lcom/tencent/friday/uikit/a/b/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/widget/ImageView;Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;Lcom/tencent/friday/uikit/a/b/d;)V
    .locals 5

    .prologue
    .line 55
    monitor-enter p0

    if-nez p2, :cond_1

    .line 110
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 59
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->getFilePath()Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->getFilePath()Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKString;->getVal()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/b/c;->c:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/tencent/friday/uikit/d/c/b;->a(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 64
    :cond_3
    :try_start_1
    invoke-virtual {p2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;->getFilePath()Lcom/tencent/friday/uikit/jce/UnityKit/UKString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKString;->getVal()Ljava/lang/String;

    move-result-object v1

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 67
    const/4 v0, 0x0

    .line 69
    iget-object v3, p0, Lcom/tencent/friday/uikit/a/b/c;->a:Lcom/tencent/friday/uikit/a/b/a;

    if-eqz v3, :cond_4

    .line 70
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/b/c;->a:Lcom/tencent/friday/uikit/a/b/a;

    invoke-virtual {v0, v2}, Lcom/tencent/friday/uikit/a/b/a;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 73
    :cond_4
    if-eqz v0, :cond_5

    .line 74
    const-string v1, "jsimage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drawable cache found.  key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/friday/uikit/a/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 76
    if-eqz p3, :cond_0

    .line 77
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcom/tencent/friday/uikit/a/b/d;->a(I)V

    goto :goto_0

    .line 80
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 81
    if-eqz p3, :cond_0

    .line 82
    const-string v0, "jsimage"

    const-string v1, "load drawable error:empty filepath"

    invoke-static {v0, v1}, Lcom/tencent/friday/uikit/a/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x1

    invoke-interface {p3, v0}, Lcom/tencent/friday/uikit/a/b/d;->a(I)V

    goto/16 :goto_0

    .line 88
    :cond_6
    if-eqz p1, :cond_0

    .line 89
    if-eqz p3, :cond_7

    .line 90
    invoke-interface {p3}, Lcom/tencent/friday/uikit/a/b/d;->a()V

    .line 101
    :cond_7
    iget-object v0, p0, Lcom/tencent/friday/uikit/a/b/c;->c:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/tencent/friday/uikit/d/c/b;->a(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    .line 103
    iget-object v1, p0, Lcom/tencent/friday/uikit/a/b/c;->a:Lcom/tencent/friday/uikit/a/b/a;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/friday/uikit/a/b/a;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 104
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
