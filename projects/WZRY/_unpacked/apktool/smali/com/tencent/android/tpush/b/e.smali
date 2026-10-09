.class public Lcom/tencent/android/tpush/b/e;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static f:Ljava/lang/String;


# instance fields
.field private a:J

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/Context;

.field private g:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/b/e;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide v2, p0, Lcom/tencent/android/tpush/b/e;->a:J

    .line 51
    iput-wide v2, p0, Lcom/tencent/android/tpush/b/e;->b:J

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/b/e;->c:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/tencent/android/tpush/b/e;->d:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/tencent/android/tpush/b/e;->e:Landroid/content/Context;

    .line 60
    iput-object v1, p0, Lcom/tencent/android/tpush/b/e;->g:Landroid/content/Intent;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/b/e;->e:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/tencent/android/tpush/b/e;->g:Landroid/content/Intent;

    .line 65
    return-void
.end method

.method private a()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 68
    sget-object v1, Lcom/tencent/android/tpush/b/e;->f:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/tencent/android/tpush/b/e;->e:Landroid/content/Context;

    const-string v2, ".xg.push.cm.vrf"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/android/tpush/b/e;->f:Ljava/lang/String;

    .line 71
    :cond_0
    sget-object v1, Lcom/tencent/android/tpush/b/e;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/android/tpush/b/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/android/tpush/b/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/android/tpush/b/e;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/android/tpush/b/e;->f:Ljava/lang/String;

    .line 73
    sget-object v1, Lcom/tencent/android/tpush/b/e;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2800

    if-le v1, v2, :cond_1

    .line 74
    sget-object v1, Lcom/tencent/android/tpush/b/e;->f:Ljava/lang/String;

    const/16 v2, 0x800

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/android/tpush/b/e;->f:Ljava/lang/String;

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/tencent/android/tpush/b/e;->e:Landroid/content/Context;

    const-string v2, ".xg.push.cm.vrf"

    sget-object v3, Lcom/tencent/android/tpush/b/e;->f:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/tencent/android/tpush/b/n;JJJ)Z
    .locals 6

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/tencent/android/tpush/b/n;->g()Lcom/tencent/android/tpush/b/a;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/tencent/android/tpush/b/e;->g:Landroid/content/Intent;

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    const-wide/16 v2, 0x0

    cmp-long v2, p6, v2

    if-lez v2, :cond_4

    if-eqz v1, :cond_4

    .line 87
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 88
    const-string v1, "TPush"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "title encry obj:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/android/tpush/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v1, "cipher"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/service/channel/security/a;->a(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/android/tpush/service/channel/security/f;->a([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/android/tpush/b/e;->c:Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lcom/tencent/android/tpush/b/e;->c:Ljava/lang/String;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 92
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/android/tpush/b/e;->b:J

    .line 93
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/android/tpush/b/e;->d:Ljava/lang/String;

    .line 94
    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/android/tpush/b/e;->a:J

    .line 95
    const/4 v1, 0x1

    .line 96
    iget-wide v2, p0, Lcom/tencent/android/tpush/b/e;->b:J

    cmp-long v2, v2, p4

    if-nez v2, :cond_2

    .line 97
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-nez v2, :cond_0

    .line 98
    iget-wide v2, p0, Lcom/tencent/android/tpush/b/e;->a:J

    cmp-long v1, p2, v2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 103
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/tencent/android/tpush/b/e;->a()Z

    move-result v1

    if-nez v1, :cond_3

    iget-wide v2, p0, Lcom/tencent/android/tpush/b/e;->b:J

    cmp-long v1, p4, v2

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/a;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/b/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 130
    :goto_1
    return v0

    .line 98
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 101
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 103
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 105
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 106
    invoke-virtual {p1}, Lcom/tencent/android/tpush/b/n;->c()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/android/tpush/b/e;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, ""

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, ""

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/a;->g()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-nez v3, :cond_9

    .line 111
    :cond_5
    const-string v1, ""

    .line 115
    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    instance-of v1, v0, Lcom/tencent/android/tpush/b/f;

    if-eqz v1, :cond_6

    .line 117
    check-cast v0, Lcom/tencent/android/tpush/b/f;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/f;->m()Lcom/tencent/android/tpush/b/g;

    move-result-object v1

    .line 118
    iget-object v0, v1, Lcom/tencent/android/tpush/b/g;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, ""

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v1, Lcom/tencent/android/tpush/b/g;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    :goto_6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v1, Lcom/tencent/android/tpush/b/g;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, ""

    :goto_7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tpush.local.msg."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    iget-object v2, p0, Lcom/tencent/android/tpush/b/e;->e:Landroid/content/Context;

    const-wide/16 v4, 0x0

    invoke-static {v2, v1, v4, v5}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 127
    iget-object v4, p0, Lcom/tencent/android/tpush/b/e;->e:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 129
    const-string v4, "TPush"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ",localMsgTag:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",diff:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_d

    const/4 v0, 0x1

    goto/16 :goto_1

    .line 106
    :cond_7
    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/a;->e()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v0}, Lcom/tencent/android/tpush/b/a;->f()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 113
    :cond_9
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    .line 118
    :cond_a
    iget-object v0, v1, Lcom/tencent/android/tpush/b/g;->f:Ljava/lang/String;

    goto/16 :goto_5

    :cond_b
    iget-object v0, v1, Lcom/tencent/android/tpush/b/g;->d:Ljava/lang/String;

    goto/16 :goto_6

    :cond_c
    iget-object v0, v1, Lcom/tencent/android/tpush/b/g;->b:Ljava/lang/String;

    goto/16 :goto_7

    .line 130
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_1
.end method
