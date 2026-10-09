.class Lcom/tencent/mna/base/a/b;
.super Ljava/lang/Object;
.source "CloudHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/base/a/b$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "0.0.0.0"

    sput-object v0, Lcom/tencent/mna/base/a/b;->a:Ljava/lang/String;

    .line 18
    const-string v0, "0.0.0.0"

    sput-object v0, Lcom/tencent/mna/base/a/b;->b:Ljava/lang/String;

    return-void
.end method

.method static a(Lcom/tencent/mna/base/a/b$a;Ljava/lang/String;)Lcom/tencent/mna/base/jni/entity/CloudRet;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-static {p0, p1, v0, v0}, Lcom/tencent/mna/base/a/b;->a(Lcom/tencent/mna/base/a/b$a;Ljava/lang/String;II)Lcom/tencent/mna/base/jni/entity/CloudRet;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/tencent/mna/base/a/b$a;Ljava/lang/String;II)Lcom/tencent/mna/base/jni/entity/CloudRet;
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 47
    .line 48
    sget-object v0, Lcom/tencent/mna/base/a/b$1;->a:[I

    invoke-virtual {p0}, Lcom/tencent/mna/base/a/b$a;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 60
    :goto_0
    :pswitch_0
    const-string v0, ""

    .line 61
    if-eqz p3, :cond_1

    .line 63
    sget-object v0, Lcom/tencent/mna/a/a;->f:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/tencent/mna/base/f/f;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 65
    sput-object v0, Lcom/tencent/mna/base/a/b;->b:Ljava/lang/String;

    .line 68
    :cond_0
    sget-object v2, Lcom/tencent/mna/base/a/b;->b:Ljava/lang/String;

    .line 79
    :goto_1
    invoke-static {v2}, Lcom/tencent/mna/base/f/f;->c(Ljava/lang/String;)Z

    move-result v0

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", useIpv6:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", netId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 81
    sget v3, Lcom/tencent/mna/a/a;->g:I

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/tencent/mna/base/jni/e;->a(ZILjava/lang/String;ILjava/lang/String;I)Lcom/tencent/mna/base/jni/entity/CloudRet;

    move-result-object v0

    return-object v0

    .line 54
    :pswitch_1
    const/4 v1, 0x2

    .line 55
    goto :goto_0

    .line 57
    :pswitch_2
    const/4 v1, 0x3

    goto :goto_0

    .line 71
    :cond_1
    sget-object v0, Lcom/tencent/mna/a/a;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mna/base/f/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 73
    sput-object v0, Lcom/tencent/mna/base/a/b;->a:Ljava/lang/String;

    .line 76
    :cond_2
    sget-object v2, Lcom/tencent/mna/base/a/b;->a:Ljava/lang/String;

    goto :goto_1

    .line 48
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/tencent/mna/base/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    sget-object v0, Lcom/tencent/mna/a/a;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mna/base/f/f;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
