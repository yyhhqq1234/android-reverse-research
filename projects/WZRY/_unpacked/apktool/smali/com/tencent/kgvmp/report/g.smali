.class public Lcom/tencent/kgvmp/report/g;
.super Ljava/lang/Object;


# static fields
.field private static a:J

.field private static b:I

.field private static c:Ljava/util/ArrayList;

.field private static d:Ljava/util/ArrayList;

.field private static e:Ljava/util/ArrayList;

.field private static f:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/kgvmp/report/g;->a:J

    const/4 v0, 0x0

    sput v0, Lcom/tencent/kgvmp/report/g;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/kgvmp/report/g;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/kgvmp/report/g;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/kgvmp/report/g;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/kgvmp/report/g;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public static a()J
    .locals 2

    sget-wide v0, Lcom/tencent/kgvmp/report/g;->a:J

    return-wide v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-wide v0, Lcom/tencent/kgvmp/report/g;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/tencent/kgvmp/report/g;->a:J

    sget v0, Lcom/tencent/kgvmp/report/g;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/kgvmp/report/g;->b:I

    sget-object v0, Lcom/tencent/kgvmp/report/g;->c:Ljava/util/ArrayList;

    sget-wide v2, Lcom/tencent/kgvmp/report/g;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/tencent/kgvmp/report/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/tencent/kgvmp/report/g;->e:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/tencent/kgvmp/report/g;->f:Ljava/util/ArrayList;

    invoke-static {}, Lcom/tencent/kgvmp/f/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v0, Lcom/tencent/kgvmp/report/g;->b:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "command"

    sget-object v2, Lcom/tencent/kgvmp/report/g;->c:Ljava/util/ArrayList;

    const-string/jumbo v3, "|"

    invoke-static {v2, v3}, Lcom/tencent/kgvmp/f/a;->a(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "type"

    sget-object v2, Lcom/tencent/kgvmp/report/g;->d:Ljava/util/ArrayList;

    const-string/jumbo v3, "|"

    invoke-static {v2, v3}, Lcom/tencent/kgvmp/f/a;->a(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "level"

    sget-object v2, Lcom/tencent/kgvmp/report/g;->e:Ljava/util/ArrayList;

    const-string/jumbo v3, "|"

    invoke-static {v2, v3}, Lcom/tencent/kgvmp/f/a;->a(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "happen_time"

    sget-object v2, Lcom/tencent/kgvmp/report/g;->f:Ljava/util/ArrayList;

    const-string/jumbo v3, "|"

    invoke-static {v2, v3}, Lcom/tencent/kgvmp/f/a;->a(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/tencent/kgvmp/report/j;->g(Ljava/util/HashMap;)V

    invoke-static {}, Lcom/tencent/kgvmp/report/g;->b()V

    :cond_0
    return-void
.end method

.method private static b()V
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/report/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/tencent/kgvmp/report/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/tencent/kgvmp/report/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/tencent/kgvmp/report/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    sput v0, Lcom/tencent/kgvmp/report/g;->b:I

    return-void
.end method
