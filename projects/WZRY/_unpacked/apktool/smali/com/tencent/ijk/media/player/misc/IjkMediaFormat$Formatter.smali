.class abstract Lcom/tencent/ijk/media/player/misc/IjkMediaFormat$Formatter;
.super Ljava/lang/Object;
.source "IjkMediaFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/ijk/media/player/misc/IjkMediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Formatter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/ijk/media/player/misc/IjkMediaFormat$1;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/tencent/ijk/media/player/misc/IjkMediaFormat$Formatter;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract doFormat(Lcom/tencent/ijk/media/player/misc/IjkMediaFormat;)Ljava/lang/String;
.end method

.method public format(Lcom/tencent/ijk/media/player/misc/IjkMediaFormat;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/tencent/ijk/media/player/misc/IjkMediaFormat$Formatter;->doFormat(Lcom/tencent/ijk/media/player/misc/IjkMediaFormat;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/tencent/ijk/media/player/misc/IjkMediaFormat$Formatter;->getDefaultString()Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_0
    return-object v0
.end method

.method protected getDefaultString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string v0, "N/A"

    return-object v0
.end method
