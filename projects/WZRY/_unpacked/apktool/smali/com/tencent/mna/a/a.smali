.class public Lcom/tencent/mna/a/a;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final a:Ljava/util/Locale;

.field public static final b:Ljava/util/Locale;

.field public static c:I

.field public static d:Z

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sput-object v0, Lcom/tencent/mna/a/a;->a:Ljava/util/Locale;

    .line 19
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/tencent/mna/a/a;->b:Ljava/util/Locale;

    .line 27
    const/16 v0, 0x1a

    sput v0, Lcom/tencent/mna/a/a;->c:I

    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/mna/a/a;->d:Z

    .line 31
    const-string v0, "com/tencent/mna/nopackage/"

    sput-object v0, Lcom/tencent/mna/a/a;->e:Ljava/lang/String;

    .line 33
    const-string v0, "control.mna.qq.com"

    sput-object v0, Lcom/tencent/mna/a/a;->f:Ljava/lang/String;

    .line 34
    const/16 v0, 0x791b

    sput v0, Lcom/tencent/mna/a/a;->g:I

    return-void
.end method
