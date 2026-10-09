.class public Lcom/subao/common/f/a;
.super Ljava/lang/Object;
.source "FileOperator.java"


# static fields
.field private static a:Ljava/io/File;


# direct methods
.method public static a()Ljava/io/File;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/subao/common/f/a;->a:Ljava/io/File;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/subao/common/e/q$a;)Ljava/io/File;
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lcom/subao/common/e/q$a;->a:Lcom/subao/common/e/q$a;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/subao/common/e/q$a;->d:Lcom/subao/common/e/q$a;

    if-ne p1, v0, :cond_1

    .line 33
    :cond_0
    const-string v0, "cn.wsds.sdk.game.data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/subao/common/f/a;->a:Ljava/io/File;

    .line 37
    :goto_0
    sget-object v0, Lcom/subao/common/f/a;->a:Ljava/io/File;

    return-object v0

    .line 35
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/subao/common/f/a;->a:Ljava/io/File;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/subao/common/f/a;->a:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
