.class public final Lcom/tencent/mna/base/f/h;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/base/f/h$a;
    }
.end annotation


# static fields
.field public static a:I

.field private static b:Ljava/lang/String;

.field private static c:Lcom/tencent/mna/base/f/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput v0, Lcom/tencent/mna/base/f/h;->a:I

    .line 25
    const-string v0, "MNA"

    sput-object v0, Lcom/tencent/mna/base/f/h;->b:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mna/base/f/h;->c:Lcom/tencent/mna/base/f/h$a;

    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/tencent/mna/base/f/h;->a:I

    return v0
.end method

.method public static a(I)V
    .locals 1

    .prologue
    .line 29
    if-ltz p0, :cond_0

    const/16 v0, 0x8

    if-le p0, v0, :cond_1

    .line 30
    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/tencent/mna/base/f/h;->a:I

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_1
    sput p0, Lcom/tencent/mna/base/f/h;->a:I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 42
    sget v0, Lcom/tencent/mna/base/f/h;->a:I

    if-lez v0, :cond_0

    sget v0, Lcom/tencent/mna/base/f/h;->a:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 43
    sget-object v0, Lcom/tencent/mna/base/f/h;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 48
    sget v0, Lcom/tencent/mna/base/f/h;->a:I

    if-lez v0, :cond_0

    sget v0, Lcom/tencent/mna/base/f/h;->a:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 49
    sget-object v0, Lcom/tencent/mna/base/f/h;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 54
    sget v0, Lcom/tencent/mna/base/f/h;->a:I

    if-lez v0, :cond_0

    sget v0, Lcom/tencent/mna/base/f/h;->a:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 55
    sget-object v0, Lcom/tencent/mna/base/f/h;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 60
    sget v0, Lcom/tencent/mna/base/f/h;->a:I

    if-lez v0, :cond_0

    sget v0, Lcom/tencent/mna/base/f/h;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 61
    sget-object v0, Lcom/tencent/mna/base/f/h;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/tencent/mna/base/f/h;->c:Lcom/tencent/mna/base/f/h$a;

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lcom/tencent/mna/base/f/h;->c:Lcom/tencent/mna/base/f/h$a;

    invoke-interface {v0, p0}, Lcom/tencent/mna/base/f/h$a;->a(Ljava/lang/String;)V

    .line 73
    :cond_0
    return-void
.end method
