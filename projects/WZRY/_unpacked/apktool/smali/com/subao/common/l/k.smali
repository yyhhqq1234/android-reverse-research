.class public Lcom/subao/common/l/k;
.super Ljava/lang/Object;
.source "QosUser4GRegionAndISP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/l/k$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/subao/common/l/k;


# instance fields
.field private b:Lcom/subao/common/e/aj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/subao/common/l/k;

    invoke-direct {v0}, Lcom/subao/common/l/k;-><init>()V

    sput-object v0, Lcom/subao/common/l/k;->a:Lcom/subao/common/l/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static a()Lcom/subao/common/l/k;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/subao/common/l/k;->a:Lcom/subao/common/l/k;

    return-object v0
.end method

.method private a(Lcom/subao/common/j/d$c;)V
    .locals 3

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 133
    if-eqz p1, :cond_0

    .line 134
    invoke-virtual {p1}, Lcom/subao/common/j/d$c;->a()Lcom/subao/common/e/j;

    move-result-object v1

    .line 135
    if-eqz v1, :cond_0

    .line 136
    new-instance v0, Lcom/subao/common/e/aj;

    iget v2, p1, Lcom/subao/common/j/d$c;->b:I

    iget v1, v1, Lcom/subao/common/e/j;->d:I

    invoke-direct {v0, v2, v1}, Lcom/subao/common/e/aj;-><init>(II)V

    .line 139
    :cond_0
    invoke-virtual {p0, v0}, Lcom/subao/common/l/k;->a(Lcom/subao/common/e/aj;)V

    .line 140
    return-void
.end method

.method static synthetic a(Lcom/subao/common/l/k;Lcom/subao/common/j/d$c;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/subao/common/l/k;->a(Lcom/subao/common/j/d$c;)V

    return-void
.end method

.method static a(Lcom/subao/common/f;Lcom/subao/common/l/f;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    if-nez p0, :cond_0

    .line 48
    :goto_0
    return v2

    .line 41
    :cond_0
    const-string v3, "key_enable_qos"

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {p0, v2, v3, v0}, Lcom/subao/common/f;->a(ILjava/lang/String;I)V

    .line 42
    if-eqz p1, :cond_1

    .line 43
    const-string v0, "QOS.AccelTime"

    iget v2, p1, Lcom/subao/common/l/f;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lcom/subao/common/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v0, "QOS.AccelThreshold"

    iget v2, p1, Lcom/subao/common/l/f;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lcom/subao/common/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v0, "QOS.DropThreshold"

    iget v2, p1, Lcom/subao/common/l/f;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lcom/subao/common/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v0, "QOS.StandardThreshold"

    iget v2, p1, Lcom/subao/common/l/f;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lcom/subao/common/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v2, v1

    .line 48
    goto :goto_0

    :cond_2
    move v0, v2

    .line 41
    goto :goto_1
.end method


# virtual methods
.method a(Lcom/subao/common/e/aj;)V
    .locals 4

    .prologue
    .line 68
    const-string v0, "SubaoQos"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "Current=%s, setTo=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/subao/common/l/k;->b:Lcom/subao/common/e/aj;

    .line 71
    invoke-static {v3}, Lcom/subao/common/n/h;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/subao/common/n/h;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 69
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 72
    const-string v1, "SubaoQos"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/subao/common/l/k;->b:Lcom/subao/common/e/aj;

    if-eq v0, p1, :cond_1

    .line 75
    iput-object p1, p0, Lcom/subao/common/l/k;->b:Lcom/subao/common/e/aj;

    .line 76
    invoke-virtual {p0}, Lcom/subao/common/l/k;->b()V

    .line 78
    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Lcom/subao/common/f$a;->a()Lcom/subao/common/f;

    move-result-object v0

    sget-object v1, Lcom/subao/common/l/k;->a:Lcom/subao/common/l/k;

    invoke-virtual {v1}, Lcom/subao/common/l/k;->d()Lcom/subao/common/l/f;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/subao/common/l/k;->a(Lcom/subao/common/f;Lcom/subao/common/l/f;)Z

    .line 56
    return-void
.end method

.method public final c()Lcom/subao/common/e/aj;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/subao/common/l/k;->b:Lcom/subao/common/e/aj;

    return-object v0
.end method

.method public d()Lcom/subao/common/l/f;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 86
    const-string v1, "SubaoQos"

    invoke-static {v1}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v1

    .line 87
    invoke-static {}, Lcom/subao/common/e/ai;->d()Z

    move-result v2

    if-nez v2, :cond_1

    .line 89
    if-eqz v1, :cond_0

    .line 90
    const-string v1, "SubaoQos"

    const-string v2, "Qos switch off, getQosParam() return null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    :goto_0
    return-object v0

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/subao/common/l/k;->c()Lcom/subao/common/e/aj;

    move-result-object v2

    .line 96
    if-eqz v1, :cond_2

    .line 97
    const-string v3, "SubaoQos"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current Region-ISP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/subao/common/n/h;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_2
    if-nez v2, :cond_3

    .line 100
    :goto_1
    if-eqz v1, :cond_0

    .line 101
    const-string v1, "SubaoQos"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User region and ISP qos param is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/subao/common/n/h;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    :cond_3
    iget v0, v2, Lcom/subao/common/e/aj;->a:I

    iget v2, v2, Lcom/subao/common/e/aj;->b:I

    invoke-static {v0, v2}, Lcom/subao/common/e/ai;->a(II)Lcom/subao/common/l/f;

    move-result-object v0

    goto :goto_1
.end method

.method public e()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/subao/common/l/k;->a(Lcom/subao/common/e/aj;)V

    .line 111
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    const-string v0, "SubaoQos"

    const-string v1, "Network change to 4G"

    invoke-static {v0, v1}, Lcom/subao/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/subao/common/j/d;->b()Lcom/subao/common/j/d$c;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    invoke-direct {p0, v0}, Lcom/subao/common/l/k;->a(Lcom/subao/common/j/d$c;)V

    .line 129
    :goto_0
    return-void

    .line 122
    :cond_0
    new-instance v0, Lcom/subao/common/l/k$1;

    invoke-direct {v0, p0}, Lcom/subao/common/l/k$1;-><init>(Lcom/subao/common/l/k;)V

    invoke-static {v2, v0, v2}, Lcom/subao/common/j/d;->a(Ljava/lang/String;Lcom/subao/common/j/d$a;Ljava/lang/Object;)V

    goto :goto_0
.end method
