.class public Lcom/tencent/igame/priority/sdk/c;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/tencent/igame/priority/sdk/c;


# instance fields
.field private a:I

.field private a:J

.field private a:Landroid/content/Context;

.field private a:Lcom/tencent/igame/priority/sdk/IGamePriority;

.field private a:Z

.field private b:I

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/igame/priority/sdk/c;->a:Lcom/tencent/igame/priority/sdk/c;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/tencent/igame/priority/sdk/c;->a:I

    iput-boolean v2, p0, Lcom/tencent/igame/priority/sdk/c;->a:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/igame/priority/sdk/c;->b:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/igame/priority/sdk/c;->a:J

    iput-boolean v2, p0, Lcom/tencent/igame/priority/sdk/c;->b:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/c;->a:Landroid/content/Context;

    :cond_0
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/e/c;->a(Landroid/content/Context;)V

    iput v2, p0, Lcom/tencent/igame/priority/sdk/c;->a:I

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/igame/priority/sdk/c;
    .locals 2

    sget-object v0, Lcom/tencent/igame/priority/sdk/c;->a:Lcom/tencent/igame/priority/sdk/c;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/igame/priority/sdk/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/igame/priority/sdk/c;->a:Lcom/tencent/igame/priority/sdk/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/igame/priority/sdk/c;

    invoke-direct {v0, p0}, Lcom/tencent/igame/priority/sdk/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/igame/priority/sdk/c;->a:Lcom/tencent/igame/priority/sdk/c;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/igame/priority/sdk/c;->a:Lcom/tencent/igame/priority/sdk/c;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/igame/priority/sdk/c;->b:Z

    return-void
.end method

.method public a(I)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/igame/priority/sdk/c;->a(IJ)V

    return-void
.end method

.method public a(IJ)V
    .locals 6

    const/16 v5, 0x21

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/tencent/igame/priority/sdk/c;->b:Z

    if-nez v0, :cond_d

    const-string v0, "igame_priority_sdk_pref_wzry_key_security_device_may_ips"

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/e/c;->a(Ljava/lang/String;)Lcom/tencent/igame/priority/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/e/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/igame/priority/sdk/c;->a:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/tencent/igame/priority/sdk/c;->a:I

    if-ge v0, v4, :cond_0

    if-ne p1, v1, :cond_0

    const/16 v0, 0x12

    const-string v1, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/igame/priority/sdk/c;->a(ILjava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    if-gt p1, v1, :cond_1

    iput v3, p0, Lcom/tencent/igame/priority/sdk/c;->b:I

    :cond_1
    iget v0, p0, Lcom/tencent/igame/priority/sdk/c;->b:I

    if-gt v0, v3, :cond_b

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/igame/a/a/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    packed-switch p1, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    iget v0, p0, Lcom/tencent/igame/priority/sdk/c;->a:I

    if-le v0, p1, :cond_3

    iget v0, p0, Lcom/tencent/igame/priority/sdk/c;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/igame/priority/sdk/c;->b:I

    :cond_3
    iput p1, p0, Lcom/tencent/igame/priority/sdk/c;->a:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c;->a:Lcom/tencent/igame/priority/sdk/IGamePriority;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c;->a:Lcom/tencent/igame/priority/sdk/IGamePriority;

    const-string/jumbo v1, "\u6b63\u5728\u68c0\u67e5\u7279\u6743\u73af\u5883..."

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/IGamePriority;->a(Ljava/lang/String;)V

    :cond_4
    new-instance v0, Lcom/tencent/igame/priority/sdk/c/d;

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/igame/priority/sdk/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/c/d;->c()V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c;->a:Lcom/tencent/igame/priority/sdk/IGamePriority;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c;->a:Lcom/tencent/igame/priority/sdk/IGamePriority;

    const-string/jumbo v1, "\u6b63\u5728\u8bf7\u6c42\u540e\u53f0\u5e76\u68c0\u67e5\u7279\u6743\u73af\u5883..."

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/IGamePriority;->a(Ljava/lang/String;)V

    :cond_5
    new-instance v0, Lcom/tencent/igame/priority/sdk/c/e;

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/igame/priority/sdk/c/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/c/e;->c()V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c;->a:Lcom/tencent/igame/priority/sdk/IGamePriority;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c;->a:Lcom/tencent/igame/priority/sdk/IGamePriority;

    const-string/jumbo v1, "\u6b63\u5728\u8bf7\u6c42\u5b89\u5168\u5bc6\u94a5..."

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/IGamePriority;->a(Ljava/lang/String;)V

    :cond_6
    new-instance v0, Lcom/tencent/igame/priority/sdk/c/g;

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/igame/priority/sdk/c/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/c/g;->c()V

    goto :goto_1

    :pswitch_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/igame/priority/sdk/c;->a:J

    iget-boolean v0, p0, Lcom/tencent/igame/priority/sdk/c;->a:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c;->a:Lcom/tencent/igame/priority/sdk/IGamePriority;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c;->a:Lcom/tencent/igame/priority/sdk/IGamePriority;

    const-string/jumbo v1, "\u6b63\u5728\u8bf7\u6c42\u7279\u6743Token..."

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/IGamePriority;->a(Ljava/lang/String;)V

    :cond_7
    new-instance v0, Lcom/tencent/igame/priority/sdk/c/h;

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/igame/priority/sdk/c/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/c/h;->c()V

    goto :goto_1

    :cond_8
    invoke-virtual {p0, v4}, Lcom/tencent/igame/priority/sdk/c;->a(I)V

    goto :goto_1

    :pswitch_5
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_9

    iget-wide v0, p0, Lcom/tencent/igame/priority/sdk/c;->a:J

    cmp-long v0, v0, p2

    if-nez v0, :cond_2

    :cond_9
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c;->a:Lcom/tencent/igame/priority/sdk/IGamePriority;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c;->a:Lcom/tencent/igame/priority/sdk/IGamePriority;

    const-string/jumbo v1, "\u6b63\u5728\u53d1\u9001\u5fc3\u8df3..."

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/IGamePriority;->a(Ljava/lang/String;)V

    :cond_a
    new-instance v0, Lcom/tencent/igame/priority/sdk/c/f;

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/c;->a:Landroid/content/Context;

    iget-wide v2, p0, Lcom/tencent/igame/priority/sdk/c;->a:J

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/igame/priority/sdk/c/f;-><init>(Landroid/content/Context;J)V

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/c/f;->c()V

    goto/16 :goto_1

    :cond_b
    if-ne p1, v1, :cond_c

    invoke-virtual {p0, v5}, Lcom/tencent/igame/priority/sdk/c;->b(I)V

    goto/16 :goto_1

    :cond_c
    const-string v0, ""

    invoke-virtual {p0, v5, v0, v2}, Lcom/tencent/igame/priority/sdk/c;->a(ILjava/lang/String;I)V

    goto/16 :goto_1

    :cond_d
    const/16 v0, 0x40

    const-string v1, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/igame/priority/sdk/c;->a(ILjava/lang/String;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public a(ILjava/lang/String;I)V
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/igame/priority/sdk/c;->a:I

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/igame/priority/sdk/c;->a:J

    :cond_0
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c;->a:Lcom/tencent/igame/priority/sdk/IGamePriority;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c;->a:Lcom/tencent/igame/priority/sdk/IGamePriority;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/igame/priority/sdk/IGamePriority;->a(ILjava/lang/String;I)V

    :cond_1
    invoke-static {}, Lcom/tencent/igame/priority/sdk/b/a;->a()Lcom/tencent/igame/priority/sdk/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/b/a;->b()V

    return-void
.end method

.method public a(Lcom/tencent/igame/priority/sdk/IGamePriority;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/igame/priority/sdk/c;->a:Lcom/tencent/igame/priority/sdk/IGamePriority;

    return-void
.end method

.method public a(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/tencent/igame/priority/sdk/c;->a:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/igame/priority/sdk/c;->b:Z

    const-string v0, "igame_priority_sdk_pref_wzry_key_security_device_may_ips"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tencent/igame/priority/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/igame/priority/sdk/c;->a(I)V

    return-void
.end method

.method public b(I)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/igame/priority/sdk/c;->a:I

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/igame/priority/sdk/c;->a:J

    :cond_0
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c;->a:Lcom/tencent/igame/priority/sdk/IGamePriority;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c;->a:Lcom/tencent/igame/priority/sdk/IGamePriority;

    invoke-virtual {v0, p1}, Lcom/tencent/igame/priority/sdk/IGamePriority;->a(I)V

    :cond_1
    invoke-static {}, Lcom/tencent/igame/priority/sdk/b/a;->a()Lcom/tencent/igame/priority/sdk/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/b/a;->b()V

    return-void
.end method
