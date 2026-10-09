.class public Lcom/tencent/tp/a/e;
.super Ljava/lang/Object;


# static fields
.field private static volatile f:Lcom/tencent/tp/a/e;


# instance fields
.field public a:Lcom/tencent/tp/a/af$a;

.field private b:Lcom/tencent/tp/a/d;

.field private c:Lcom/tencent/tp/a/j;

.field private d:Lcom/tencent/tp/a/i;

.field private e:Lcom/tencent/tp/a/af;

.field private g:Lcom/tencent/tp/a/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tp/a/e;->f:Lcom/tencent/tp/a/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/tp/a/f;

    invoke-direct {v0, p0}, Lcom/tencent/tp/a/f;-><init>(Lcom/tencent/tp/a/e;)V

    iput-object v0, p0, Lcom/tencent/tp/a/e;->g:Lcom/tencent/tp/a/a$a;

    new-instance v0, Lcom/tencent/tp/a/g;

    invoke-direct {v0, p0}, Lcom/tencent/tp/a/g;-><init>(Lcom/tencent/tp/a/e;)V

    iput-object v0, p0, Lcom/tencent/tp/a/e;->a:Lcom/tencent/tp/a/af$a;

    return-void
.end method

.method public static a()Lcom/tencent/tp/a/e;
    .locals 2

    sget-object v0, Lcom/tencent/tp/a/e;->f:Lcom/tencent/tp/a/e;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/tp/a/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tp/a/e;->f:Lcom/tencent/tp/a/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/tp/a/e;

    invoke-direct {v0}, Lcom/tencent/tp/a/e;-><init>()V

    sput-object v0, Lcom/tencent/tp/a/e;->f:Lcom/tencent/tp/a/e;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/tp/a/e;->f:Lcom/tencent/tp/a/e;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tp/a/af$a;)V
    .locals 6

    new-instance v0, Lcom/tencent/tp/a/af;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tp/a/af;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tp/a/af$a;)V

    iput-object v0, p0, Lcom/tencent/tp/a/e;->e:Lcom/tencent/tp/a/af;

    iget-object v0, p0, Lcom/tencent/tp/a/e;->e:Lcom/tencent/tp/a/af;

    invoke-virtual {v0}, Lcom/tencent/tp/a/af;->a()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tencent/tp/a/a$a;)V
    .locals 8

    new-instance v0, Lcom/tencent/tp/a/j;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/tencent/tp/a/j;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tencent/tp/a/a$a;)V

    iput-object v0, p0, Lcom/tencent/tp/a/e;->c:Lcom/tencent/tp/a/j;

    iget-object v0, p0, Lcom/tencent/tp/a/e;->c:Lcom/tencent/tp/a/j;

    invoke-virtual {v0}, Lcom/tencent/tp/a/j;->b()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tp/a/a$a;)V
    .locals 7

    new-instance v0, Lcom/tencent/tp/a/i;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tp/a/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tp/a/a$a;)V

    iput-object v0, p0, Lcom/tencent/tp/a/e;->d:Lcom/tencent/tp/a/i;

    iget-object v0, p0, Lcom/tencent/tp/a/e;->d:Lcom/tencent/tp/a/i;

    invoke-virtual {v0}, Lcom/tencent/tp/a/i;->b()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tencent/tp/a/a$a;)V
    .locals 10

    new-instance v0, Lcom/tencent/tp/a/d;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/tencent/tp/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tencent/tp/a/a$a;)V

    iput-object v0, p0, Lcom/tencent/tp/a/e;->b:Lcom/tencent/tp/a/d;

    iget-object v0, p0, Lcom/tencent/tp/a/e;->b:Lcom/tencent/tp/a/d;

    invoke-virtual {v0}, Lcom/tencent/tp/a/d;->b()V

    return-void
.end method

.method private a(Lcom/tencent/tp/a/a;)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/tp/a/e;->b:Lcom/tencent/tp/a/d;

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/tencent/tp/a/e;->b:Lcom/tencent/tp/a/d;

    invoke-virtual {v0}, Lcom/tencent/tp/a/d;->c()V

    iput-object v1, p0, Lcom/tencent/tp/a/e;->b:Lcom/tencent/tp/a/d;

    :cond_2
    iget-object v0, p0, Lcom/tencent/tp/a/e;->c:Lcom/tencent/tp/a/j;

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Lcom/tencent/tp/a/e;->c:Lcom/tencent/tp/a/j;

    invoke-virtual {v0}, Lcom/tencent/tp/a/j;->c()V

    iput-object v1, p0, Lcom/tencent/tp/a/e;->c:Lcom/tencent/tp/a/j;

    :cond_3
    iget-object v0, p0, Lcom/tencent/tp/a/e;->d:Lcom/tencent/tp/a/i;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/a/e;->d:Lcom/tencent/tp/a/i;

    invoke-virtual {v0}, Lcom/tencent/tp/a/i;->c()V

    iput-object v1, p0, Lcom/tencent/tp/a/e;->d:Lcom/tencent/tp/a/i;

    goto :goto_0
.end method

.method private a(Lcom/tencent/tp/a/af;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/tp/a/e;->e:Lcom/tencent/tp/a/af;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/a/e;->e:Lcom/tencent/tp/a/af;

    invoke-virtual {v0}, Lcom/tencent/tp/a/af;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tp/a/e;->e:Lcom/tencent/tp/a/af;

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/tp/a/e;Lcom/tencent/tp/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tp/a/e;->a(Lcom/tencent/tp/a/a;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tp/a/e;->b:Lcom/tencent/tp/a/d;

    invoke-direct {p0, v0}, Lcom/tencent/tp/a/e;->a(Lcom/tencent/tp/a/a;)V

    iget-object v0, p0, Lcom/tencent/tp/a/e;->c:Lcom/tencent/tp/a/j;

    invoke-direct {p0, v0}, Lcom/tencent/tp/a/e;->a(Lcom/tencent/tp/a/a;)V

    iget-object v0, p0, Lcom/tencent/tp/a/e;->d:Lcom/tencent/tp/a/i;

    invoke-direct {p0, v0}, Lcom/tencent/tp/a/e;->a(Lcom/tencent/tp/a/a;)V

    iget-object v0, p0, Lcom/tencent/tp/a/e;->e:Lcom/tencent/tp/a/af;

    invoke-direct {p0, v0}, Lcom/tencent/tp/a/e;->a(Lcom/tencent/tp/a/af;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/tp/a/e;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 14

    const/4 v8, 0x7

    const/4 v9, 0x1

    const-string v0, "msgbox:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_3

    :cond_2
    const-string v0, "*#07#:TssSdkMessageBox.parseAndShow cmd err"

    invoke-static {v0}, Lcom/tencent/tp/m;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    aget-object v2, v0, v1

    aget-object v3, v0, v9

    const/4 v1, 0x2

    aget-object v4, v0, v1

    const/4 v1, 0x3

    aget-object v5, v0, v1

    const/4 v1, 0x4

    aget-object v6, v0, v1

    const/4 v1, 0x5

    aget-object v7, v0, v1

    const/4 v1, 0x6

    aget-object v1, v0, v1

    aget-object v0, v0, v8

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/tencent/tp/TssSdkRuntime;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v0, "*#07#:getCurrentActivity failed"

    invoke-static {v0}, Lcom/tencent/tp/m;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-ne v0, v9, :cond_5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/tp/a/e;->b(Ljava/lang/String;)V

    :cond_5
    const-string v0, "1001"

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    iget-object v9, p0, Lcom/tencent/tp/a/e;->g:Lcom/tencent/tp/a/a$a;

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/tencent/tp/a/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tencent/tp/a/a$a;)V

    goto :goto_0

    :cond_6
    const-string v0, "1002"

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    iget-object v7, p0, Lcom/tencent/tp/a/e;->g:Lcom/tencent/tp/a/a$a;

    move-object v0, p0

    move v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/tencent/tp/a/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tencent/tp/a/a$a;)V

    goto :goto_0

    :cond_7
    const-string v0, "1003"

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "1004"

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    iget-object v13, p0, Lcom/tencent/tp/a/e;->g:Lcom/tencent/tp/a/a$a;

    move-object v7, p0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v6

    invoke-direct/range {v7 .. v13}, Lcom/tencent/tp/a/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tp/a/a$a;)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "1010"

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v12, p0, Lcom/tencent/tp/a/e;->a:Lcom/tencent/tp/a/af$a;

    move-object v7, p0

    move-object v8, v1

    move-object v9, v3

    move-object v10, v4

    move-object v11, v6

    invoke-direct/range {v7 .. v12}, Lcom/tencent/tp/a/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tp/a/af$a;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "msgbox:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/tencent/tp/a/e;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "hide_msgbox:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/tencent/tp/a/e;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
