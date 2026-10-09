.class public Lcom/tencent/friday/uikit/a/b/b;
.super Ljava/lang/Object;
.source "JImagerLoader.java"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 28
    new-instance v0, Lcom/a/a/b/e$a;

    invoke-direct {v0, p0}, Lcom/a/a/b/e$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x3

    .line 29
    invoke-virtual {v0, v1}, Lcom/a/a/b/e$a;->a(I)Lcom/a/a/b/e$a;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/a/a/b/e$a;->a()Lcom/a/a/b/e$a;

    move-result-object v0

    new-instance v1, Lcom/a/a/a/a/b/c;

    invoke-direct {v1}, Lcom/a/a/a/a/b/c;-><init>()V

    .line 31
    invoke-virtual {v0, v1}, Lcom/a/a/b/e$a;->a(Lcom/a/a/a/a/b/a;)Lcom/a/a/b/e$a;

    move-result-object v0

    sget-object v1, Lcom/a/a/b/a/g;->b:Lcom/a/a/b/a/g;

    .line 32
    invoke-virtual {v0, v1}, Lcom/a/a/b/e$a;->a(Lcom/a/a/b/a/g;)Lcom/a/a/b/e$a;

    move-result-object v0

    new-instance v1, Lcom/a/a/a/a/a/b;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    invoke-static {}, Lcom/tencent/friday/uikit/a/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/tencent/gloryimage"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/a/a/a/a/a/b;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lcom/a/a/b/e$a;->a(Lcom/a/a/a/a/a;)Lcom/a/a/b/e$a;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/a/a/b/e$a;->b()Lcom/a/a/b/e;

    move-result-object v0

    .line 35
    invoke-static {}, Lcom/a/a/b/d;->a()Lcom/a/a/b/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/b/d;->a(Lcom/a/a/b/e;)V

    .line 36
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 44
    new-instance v0, Lcom/a/a/b/c$a;

    invoke-direct {v0}, Lcom/a/a/b/c$a;-><init>()V

    .line 45
    invoke-virtual {v0, v1}, Lcom/a/a/b/c$a;->a(Z)Lcom/a/a/b/c$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/a/a/b/c$a;->b(Z)Lcom/a/a/b/c$a;

    move-result-object v0

    new-instance v1, Lcom/a/a/b/c/b;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lcom/a/a/b/c/b;-><init>(I)V

    .line 46
    invoke-virtual {v0, v1}, Lcom/a/a/b/c$a;->a(Lcom/a/a/b/c/a;)Lcom/a/a/b/c$a;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 47
    invoke-virtual {v0, v1}, Lcom/a/a/b/c$a;->a(Landroid/graphics/Bitmap$Config;)Lcom/a/a/b/c$a;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/a/a/b/c$a;->a()Lcom/a/a/b/c;

    move-result-object v0

    .line 50
    invoke-static {}, Lcom/a/a/b/d;->a()Lcom/a/a/b/d;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v0}, Lcom/a/a/b/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/a/a/b/c;)V

    .line 52
    return-void
.end method
