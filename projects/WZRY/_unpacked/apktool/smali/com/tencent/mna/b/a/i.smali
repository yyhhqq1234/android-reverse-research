.class public Lcom/tencent/mna/b/a/i;
.super Ljava/lang/Object;
.source "TosManager.java"


# static fields
.field private static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mna/b/a/i;->a:Z

    return-void
.end method

.method public static a(I)I
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/tencent/mna/b/a/i;->a:Z

    invoke-static {p0, v0}, Lcom/tencent/mna/b/a/i;->b(IZ)I

    move-result v0

    return v0
.end method

.method public static a(IZ)I
    .locals 3

    .prologue
    .line 38
    if-nez p1, :cond_0

    .line 39
    const/4 v0, -0x2

    .line 57
    :goto_0
    return v0

    .line 41
    :cond_0
    const/4 v0, 0x7

    if-le p0, v0, :cond_1

    .line 42
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/f/c;->a()Z

    move-result v0

    sput-boolean v0, Lcom/tencent/mna/b/a/i;->a:Z

    .line 43
    sget-boolean v0, Lcom/tencent/mna/b/a/i;->a:Z

    if-nez v0, :cond_1

    .line 44
    const/16 v0, 0xa

    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/tencent/mna/b/a/i;->b(IZ)I

    move-result v0

    .line 48
    if-nez v0, :cond_2

    .line 49
    const/4 v0, -0x1

    goto :goto_0

    .line 51
    :cond_2
    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->g(I)V

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "turnTos: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    const/4 v0, 0x0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "turnTos exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 55
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mna/b/a/i;->a:Z

    .line 89
    return-void
.end method

.method private static b(IZ)I
    .locals 4

    .prologue
    const/16 v3, 0xe0

    const/16 v2, 0xc0

    const/16 v0, 0xb8

    const/4 v1, 0x0

    .line 65
    sparse-switch p0, :sswitch_data_0

    .line 84
    :cond_0
    :goto_0
    :sswitch_0
    return v1

    :sswitch_1
    move v1, v0

    .line 69
    goto :goto_0

    :sswitch_2
    move v1, v2

    .line 71
    goto :goto_0

    :sswitch_3
    move v1, v3

    .line 73
    goto :goto_0

    .line 76
    :sswitch_4
    if-eqz p1, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 78
    :sswitch_5
    if-eqz p1, :cond_0

    move v1, v2

    goto :goto_0

    .line 80
    :sswitch_6
    if-eqz p1, :cond_0

    move v1, v3

    goto :goto_0

    .line 65
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_3
        0x32 -> :sswitch_4
        0x3c -> :sswitch_5
        0x46 -> :sswitch_6
    .end sparse-switch
.end method
