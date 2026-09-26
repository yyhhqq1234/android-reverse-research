.class public Lcom/netease/mpay/skin/SkinManager;
.super Ljava/lang/Object;


# static fields
.field public static final MPAY_SKINE_CHINESE_BLACK:Ljava/lang/String; = "mpay-chinese-black.skin"

.field public static final MPAY_SKINE_CHINESE_WHITE:Ljava/lang/String; = "mpay-chinese-white.skin"

.field public static final MPAY_SKIN_BLACK:Ljava/lang/String; = "mpay-black.skin"

.field public static final MPAY_SKIN_DEFAULT:Ljava/lang/String; = "mpay-white.skin"

.field private static b:Lcom/netease/mpay/skin/SkinManager;


# instance fields
.field private a:Landroid/content/Context;

.field private c:Lcom/netease/mpay/skin/g$a;

.field private d:Lcom/netease/mpay/skin/g;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/mpay/skin/SkinManager;->e:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/netease/mpay/skin/SkinManager;
    .locals 2

    const-class v1, Lcom/netease/mpay/skin/SkinManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/netease/mpay/skin/SkinManager;->b:Lcom/netease/mpay/skin/SkinManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/skin/SkinManager;

    invoke-direct {v0}, Lcom/netease/mpay/skin/SkinManager;-><init>()V

    sput-object v0, Lcom/netease/mpay/skin/SkinManager;->b:Lcom/netease/mpay/skin/SkinManager;

    :cond_0
    sget-object v0, Lcom/netease/mpay/skin/SkinManager;->b:Lcom/netease/mpay/skin/SkinManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method a(I)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netease/mpay/skin/SkinManager;->c:Lcom/netease/mpay/skin/g$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/skin/SkinManager;->c:Lcom/netease/mpay/skin/g$a;

    iget-object v1, v1, Lcom/netease/mpay/skin/g$a;->d:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/skin/SkinManager;->c:Lcom/netease/mpay/skin/g$a;

    iget-object v1, v1, Lcom/netease/mpay/skin/g$a;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/skin/SkinManager;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/skin/SkinManager;->c:Lcom/netease/mpay/skin/g$a;

    iget-object v2, v2, Lcom/netease/mpay/skin/g$a;->d:Landroid/content/res/Resources;

    const-string v3, "drawable"

    iget-object v4, p0, Lcom/netease/mpay/skin/SkinManager;->c:Lcom/netease/mpay/skin/g$a;

    iget-object v4, v4, Lcom/netease/mpay/skin/g$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/netease/mpay/skin/SkinManager;->c:Lcom/netease/mpay/skin/g$a;

    iget-object v2, v2, Lcom/netease/mpay/skin/g$a;->d:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/netease/mpay/skin/SkinManager;->c:Lcom/netease/mpay/skin/g$a;

    iget-object v2, v2, Lcom/netease/mpay/skin/g$a;->d:Landroid/content/res/Resources;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method b(I)I
    .locals 4

    iget-object v0, p0, Lcom/netease/mpay/skin/SkinManager;->c:Lcom/netease/mpay/skin/g$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/skin/SkinManager;->c:Lcom/netease/mpay/skin/g$a;

    iget-object v0, v0, Lcom/netease/mpay/skin/g$a;->d:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/skin/SkinManager;->c:Lcom/netease/mpay/skin/g$a;

    iget-object v0, v0, Lcom/netease/mpay/skin/g$a;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/skin/SkinManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/skin/SkinManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/skin/SkinManager;->c:Lcom/netease/mpay/skin/g$a;

    iget-object v1, v1, Lcom/netease/mpay/skin/g$a;->d:Landroid/content/res/Resources;

    const-string v2, "color"

    iget-object v3, p0, Lcom/netease/mpay/skin/SkinManager;->c:Lcom/netease/mpay/skin/g$a;

    iget-object v3, v3, Lcom/netease/mpay/skin/g$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :try_start_0
    iget-object v1, p0, Lcom/netease/mpay/skin/SkinManager;->c:Lcom/netease/mpay/skin/g$a;

    iget-object v1, v1, Lcom/netease/mpay/skin/g$a;->d:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/netease/mpay/skin/SkinManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method public loadSkin(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/skin/SkinManager;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/netease/mpay/skin/SkinManager;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/skin/SkinManager;->e:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/netease/mpay/skin/SkinManager;->e:Ljava/lang/String;

    new-instance v0, Lcom/netease/mpay/skin/g;

    iget-object v1, p0, Lcom/netease/mpay/skin/SkinManager;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/netease/mpay/skin/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/skin/SkinManager;->d:Lcom/netease/mpay/skin/g;

    iget-object v0, p0, Lcom/netease/mpay/skin/SkinManager;->d:Lcom/netease/mpay/skin/g;

    invoke-virtual {v0}, Lcom/netease/mpay/skin/g;->a()Lcom/netease/mpay/skin/g$a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/skin/SkinManager;->c:Lcom/netease/mpay/skin/g$a;

    goto :goto_0
.end method
