.class public Lcom/tencent/mna/b/a/a;
.super Ljava/lang/Object;
.source "AccelerateHook.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:I

.field public static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, ""

    sput-object v0, Lcom/tencent/mna/b/a/a;->a:Ljava/lang/String;

    .line 21
    const/4 v0, -0x1

    sput v0, Lcom/tencent/mna/b/a/a;->b:I

    .line 23
    const-string v0, ""

    sput-object v0, Lcom/tencent/mna/b/a/a;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 33
    invoke-static {p0}, Lcom/tencent/mna/base/jni/e;->a(Z)V

    .line 34
    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    const/16 v1, 0x17

    .line 28
    invoke-static {}, Lcom/tencent/mna/base/a/a;->aI()Z

    move-result v0

    .line 29
    if-nez v0, :cond_0

    sget v0, Lcom/tencent/mna/a/a;->c:I

    if-le v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(ILjava/lang/String;Lcom/tencent/mna/b/a/e;)Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 37
    if-nez p2, :cond_1

    .line 38
    const-string v0, "hookByType warning: udpPtr is null"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->c(Ljava/lang/String;)V

    .line 75
    :cond_0
    :goto_0
    return v8

    .line 41
    :cond_1
    invoke-static {}, Lcom/tencent/mna/b/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    sput p0, Lcom/tencent/mna/b/a/a;->b:I

    .line 46
    sput-object p1, Lcom/tencent/mna/b/a/a;->a:Ljava/lang/String;

    .line 48
    packed-switch p0, :pswitch_data_0

    :goto_1
    move v0, v8

    .line 75
    :goto_2
    if-eqz v0, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    .line 51
    :pswitch_0
    :try_start_0
    iget-wide v0, p2, Lcom/tencent/mna/b/a/e;->a:J

    iget-wide v2, p2, Lcom/tencent/mna/b/a/e;->b:J

    invoke-static {p1, v0, v1, v2, v3}, Lcom/tencent/mna/base/jni/e;->a(Ljava/lang/String;JJ)I

    move-result v0

    goto :goto_2

    .line 55
    :pswitch_1
    iget-wide v0, p2, Lcom/tencent/mna/b/a/e;->c:J

    iget-wide v2, p2, Lcom/tencent/mna/b/a/e;->d:J

    invoke-static {p1, v0, v1, v2, v3}, Lcom/tencent/mna/base/jni/e;->b(Ljava/lang/String;JJ)I

    move-result v0

    goto :goto_2

    .line 59
    :pswitch_2
    iget-wide v2, p2, Lcom/tencent/mna/b/a/e;->e:J

    iget-wide v4, p2, Lcom/tencent/mna/b/a/e;->f:J

    iget-wide v6, p2, Lcom/tencent/mna/b/a/e;->g:J

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/tencent/mna/base/jni/e;->a(Ljava/lang/String;JJJ)I

    move-result v0

    goto :goto_2

    .line 63
    :pswitch_3
    iget-wide v2, p2, Lcom/tencent/mna/b/a/e;->e:J

    iget-wide v4, p2, Lcom/tencent/mna/b/a/e;->a:J

    iget-wide v6, p2, Lcom/tencent/mna/b/a/e;->b:J

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/tencent/mna/base/jni/e;->b(Ljava/lang/String;JJJ)I

    move-result v0

    goto :goto_2

    .line 67
    :pswitch_4
    iget-wide v2, p2, Lcom/tencent/mna/b/a/e;->e:J

    iget-wide v4, p2, Lcom/tencent/mna/b/a/e;->c:J

    iget-wide v6, p2, Lcom/tencent/mna/b/a/e;->d:J

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/tencent/mna/base/jni/e;->c(Ljava/lang/String;JJJ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_2

    .line 72
    :catch_0
    move-exception v0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hookByType exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static a(Ljava/lang/String;J)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-static {}, Lcom/tencent/mna/b/a/a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v0

    .line 125
    :cond_1
    sput-object p0, Lcom/tencent/mna/b/a/a;->c:Ljava/lang/String;

    .line 128
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/base/jni/e;->a(Ljava/lang/String;J)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 132
    :goto_1
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 129
    :catch_0
    move-exception v1

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hookClose exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    move v1, v0

    goto :goto_1
.end method

.method public static b()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 79
    invoke-static {}, Lcom/tencent/mna/b/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v1

    .line 82
    :cond_1
    sget-object v0, Lcom/tencent/mna/b/a/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/mna/b/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    sget v0, Lcom/tencent/mna/b/a/a;->b:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    :cond_2
    move v1, v2

    .line 84
    goto :goto_0

    .line 88
    :cond_3
    :try_start_0
    sget v0, Lcom/tencent/mna/b/a/a;->b:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    move v0, v1

    .line 115
    :goto_2
    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 91
    :pswitch_0
    sget-object v0, Lcom/tencent/mna/b/a/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->b(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 95
    :pswitch_1
    sget-object v0, Lcom/tencent/mna/b/a/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->c(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 99
    :pswitch_2
    sget-object v0, Lcom/tencent/mna/b/a/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->d(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 103
    :pswitch_3
    sget-object v0, Lcom/tencent/mna/b/a/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->e(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 107
    :pswitch_4
    sget-object v0, Lcom/tencent/mna/b/a/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->f(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_2

    .line 112
    :catch_0
    move-exception v0

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unhookByType exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static c()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 136
    invoke-static {}, Lcom/tencent/mna/b/a/a;->a()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 150
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    sget-object v2, Lcom/tencent/mna/b/a/a;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/tencent/mna/b/a/a;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 146
    :try_start_0
    sget-object v2, Lcom/tencent/mna/b/a/a;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mna/base/jni/e;->g(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 150
    :goto_1
    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 147
    :catch_0
    move-exception v2

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unhookClose exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    move v2, v1

    goto :goto_1
.end method

.method public static d()V
    .locals 1

    .prologue
    .line 154
    const-string v0, ""

    sput-object v0, Lcom/tencent/mna/b/a/a;->a:Ljava/lang/String;

    .line 155
    const-string v0, ""

    sput-object v0, Lcom/tencent/mna/b/a/a;->c:Ljava/lang/String;

    .line 156
    const/4 v0, -0x1

    sput v0, Lcom/tencent/mna/b/a/a;->b:I

    .line 157
    return-void
.end method
