.class public final Lcom/netease/mobile/link/j5$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mobile/link/j5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Lcom/netease/mobile/link/j5$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/netease/mobile/link/j5$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mobile/link/j5$b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/mobile/link/j5$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mobile/link/j5$b;->c:Lcom/netease/mobile/link/j5$c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Lcom/netease/mobile/link/j5$d;

    .line 1
    invoke-direct {v0}, Lcom/netease/mobile/link/j5$d;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Lcom/netease/mobile/link/h6;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/mobile/link/j5$b;->c:Lcom/netease/mobile/link/j5$c;

    if-eqz v1, :cond_0

    check-cast v1, Lcom/netease/mobile/link/j5$a;

    .line 3
    iget-object v1, v1, Lcom/netease/mobile/link/j5$a;->a:Lcom/netease/mobile/link/j5;

    iput-object v0, v1, Lcom/netease/mobile/link/j5;->c:Lcom/netease/mobile/link/j5$d;

    :cond_0
    return-void

    .line 4
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/netease/mobile/link/j5$b;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/mobile/link/j5$d;->a:Ljava/lang/String;

    new-instance v2, Lcom/netease/mobile/link/k5;

    iget-object v3, p0, Lcom/netease/mobile/link/j5$b;->a:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/netease/mobile/link/k5;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    iget-object v1, v2, Lcom/netease/mobile/link/k5;->b:Lcom/netease/mobile/link/k5$a;

    .line 6
    iput-object v1, v0, Lcom/netease/mobile/link/j5$d;->b:Lcom/netease/mobile/link/k5$a;

    iget-object v1, v1, Lcom/netease/mobile/link/k5$a;->b:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/font.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mobile/link/j5$d;->c:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/Throwable;)V

    :goto_0
    iget-object v1, p0, Lcom/netease/mobile/link/j5$b;->c:Lcom/netease/mobile/link/j5$c;

    if-eqz v1, :cond_2

    check-cast v1, Lcom/netease/mobile/link/j5$a;

    .line 7
    iget-object v1, v1, Lcom/netease/mobile/link/j5$a;->a:Lcom/netease/mobile/link/j5;

    iput-object v0, v1, Lcom/netease/mobile/link/j5;->c:Lcom/netease/mobile/link/j5$d;

    :cond_2
    return-void
.end method
