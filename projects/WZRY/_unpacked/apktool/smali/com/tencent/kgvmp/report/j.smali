.class public Lcom/tencent/kgvmp/report/j;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:J

.field private static e:J

.field private static f:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x0

    sget-object v0, Lcom/tencent/kgvmp/a/b;->a:Ljava/lang/String;

    sput-object v0, Lcom/tencent/kgvmp/report/j;->b:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/tencent/kgvmp/report/j;->a:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/tencent/kgvmp/report/j;->c:Ljava/lang/String;

    sput-wide v2, Lcom/tencent/kgvmp/report/j;->d:J

    sput-wide v2, Lcom/tencent/kgvmp/report/j;->e:J

    sput-wide v2, Lcom/tencent/kgvmp/report/j;->f:J

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/report/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/tencent/kgvmp/report/j;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->v()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/tencent/kgvmp/f/c;->PATTERN2:Lcom/tencent/kgvmp/f/c;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/f/c;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/kgvmp/f/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "start_time"

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "end_time"

    invoke-static {}, Lcom/tencent/kgvmp/f/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/tencent/kgvmp/a/e;->VMP_NUMBER:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v2}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/kgvmp/report/j;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "scene_id"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "next_scene"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/tencent/kgvmp/a/e;->SCENE_OPEN:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v2}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->t()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_JP:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v2}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->G()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_CJ:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v2}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->H()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_DH:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v2}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->I()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_XH:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v2}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->J()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_TP:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v2}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->K()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_WL:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v2}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->L()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_CS:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v2}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->M()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_GS:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v2}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->N()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/tencent/kgvmp/a/e;->SDK_SCENEID_SUPPORT:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v2}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/kgvmp/report/e;->u(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/tencent/kgvmp/a/e;->SDK_SUPPORT:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v2}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->F()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/tencent/kgvmp/a/e;->SDK_TYPE:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v2}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/tencent/kgvmp/e/f;->a:Lcom/tencent/kgvmp/d/j;

    invoke-virtual {v3}, Lcom/tencent/kgvmp/d/j;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/tencent/kgvmp/a/e;->TIME_REPORT:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v2}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->OPEN_ID:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->MOBILE_TYPE:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->E()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/report/a;->VMP_SCENETIME:Lcom/tencent/kgvmp/report/a;

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/report/b;->b(Lcom/tencent/kgvmp/report/a;Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method public static a(Ljava/util/ArrayList;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->g()J

    move-result-wide v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v0

    move v2, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-int/lit8 v2, v2, 0x1

    const/16 v7, 0xc

    if-ge v2, v7, :cond_0

    sget-object v7, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v8, "%.2f"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v9, v3

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, "|"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v7, "%.2f"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v8, v3

    invoke-static {v2, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/tencent/kgvmp/f/c;->PATTERN2:Lcom/tencent/kgvmp/f/c;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/f/c;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/tencent/kgvmp/f/b;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tencent/kgvmp/report/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v0, 0xea60

    add-long/2addr v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v3

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_3

    :goto_2
    rsub-int/lit8 v0, v2, 0xb

    if-ge v3, v0, :cond_2

    const-string/jumbo v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/tencent/kgvmp/f/c;->PATTERN2:Lcom/tencent/kgvmp/f/c;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/f/c;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/tencent/kgvmp/f/b;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tencent/kgvmp/report/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static a(Ljava/util/HashMap;)V
    .locals 2

    const-string v0, "report_time"

    sget-object v1, Lcom/tencent/kgvmp/f/c;->PATTERN2:Lcom/tencent/kgvmp/f/c;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/f/c;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/kgvmp/f/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "version_code"

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "version_name"

    const-string v1, "1.2.1.118"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "vmp_number"

    invoke-static {}, Lcom/tencent/kgvmp/report/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "open_id"

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "manufacturer"

    invoke-static {}, Lcom/tencent/kgvmp/f/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "model"

    invoke-static {}, Lcom/tencent/kgvmp/f/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mobile_type"

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sdk_tag"

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->O()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->SCENE_OPEN:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->t()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->CALLBACK_OPEN:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->s()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->THREAD_OPEN:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->u()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->LIGHT_THREAD_OPEN:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->w()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->USER_COUNT_OPEN:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->x()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->NET_LATENCY_OPEN:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->y()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->CPU_APPLY_OPEN:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->z()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->GPU_APPLY_OPEN:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->A()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->FPS_REPORT_OPEN:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->v()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->DEVICE_CHECK_OPEN:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->B()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->OPTCONFIG_OPEN:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->C()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/report/a;->VMP_INIT:Lcom/tencent/kgvmp/report/a;

    invoke-static {v0, p0}, Lcom/tencent/kgvmp/report/b;->a(Lcom/tencent/kgvmp/report/a;Ljava/util/Map;)V

    return-void
.end method

.method public static b()V
    .locals 2

    sget-object v0, Lcom/tencent/kgvmp/f/c;->PATTERN1:Lcom/tencent/kgvmp/f/c;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/f/c;->getFormat()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/tencent/kgvmp/f/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/kgvmp/report/j;->c:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/kgvmp/report/j;->d:J

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "report_time"

    sget-object v2, Lcom/tencent/kgvmp/f/c;->PATTERN2:Lcom/tencent/kgvmp/f/c;

    invoke-virtual {v2}, Lcom/tencent/kgvmp/f/c;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/kgvmp/f/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "vmp_number"

    invoke-static {}, Lcom/tencent/kgvmp/report/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dynamic_setting"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "openid"

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mobile_type"

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "manufacturer"

    invoke-static {}, Lcom/tencent/kgvmp/f/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "model"

    invoke-static {}, Lcom/tencent/kgvmp/f/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/tencent/kgvmp/a/e;->CALLBACK_OPEN:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->s()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/tencent/kgvmp/a/e;->SDK_TYPE:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tencent/kgvmp/e/f;->a:Lcom/tencent/kgvmp/d/j;

    invoke-virtual {v2}, Lcom/tencent/kgvmp/d/j;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/tencent/kgvmp/report/a;->VMP_SETTINGS:Lcom/tencent/kgvmp/report/a;

    invoke-static {v1, v0}, Lcom/tencent/kgvmp/report/b;->a(Lcom/tencent/kgvmp/report/a;Ljava/util/Map;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "report_time"

    sget-object v1, Lcom/tencent/kgvmp/f/c;->PATTERN2:Lcom/tencent/kgvmp/f/c;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/f/c;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/kgvmp/f/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "start_time"

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "vmp_number"

    invoke-static {}, Lcom/tencent/kgvmp/report/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "map_id"

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "match_mark"

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->i()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fps"

    invoke-interface {v3, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/report/e;->r:Ljava/util/HashMap;

    sget-object v1, Lcom/tencent/kgvmp/a/d;->FPS_TARGET:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/a/d;->getKeyStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/tencent/kgvmp/report/e;->r:Ljava/util/HashMap;

    sget-object v2, Lcom/tencent/kgvmp/a/d;->HD_MODEL:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v2}, Lcom/tencent/kgvmp/a/d;->getKeyStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/tencent/kgvmp/report/e;->r:Ljava/util/HashMap;

    sget-object v4, Lcom/tencent/kgvmp/a/d;->MODEL_LEVEL:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v4}, Lcom/tencent/kgvmp/a/d;->getKeyStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v4, Lcom/tencent/kgvmp/a/d;->FPS_TARGET:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v4}, Lcom/tencent/kgvmp/a/d;->getKeyStr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v1, :cond_1

    sget-object v0, Lcom/tencent/kgvmp/a/d;->HD_MODEL:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/d;->getKeyStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v2, :cond_2

    sget-object v0, Lcom/tencent/kgvmp/a/d;->MODEL_LEVEL:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/d;->getKeyStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "open_id"

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mobile_type"

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->E()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v4, Lcom/tencent/kgvmp/report/j;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VmpReport:reportFpsInMatchByPart: key: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " , value: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/tencent/kgvmp/report/a;->VMP_MATCH_FPS:Lcom/tencent/kgvmp/report/a;

    invoke-static {v0, v3}, Lcom/tencent/kgvmp/report/b;->b(Lcom/tencent/kgvmp/report/a;Ljava/util/Map;)V

    return-void
.end method

.method public static b(Ljava/util/HashMap;)V
    .locals 2

    const-string v0, "report_time"

    sget-object v1, Lcom/tencent/kgvmp/f/c;->PATTERN2:Lcom/tencent/kgvmp/f/c;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/f/c;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/kgvmp/f/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "version_code"

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "version_name"

    const-string v1, "1.2.1.118"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "vmp_number"

    invoke-static {}, Lcom/tencent/kgvmp/report/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "open_id"

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/report/a;->VMP_DEVICE_CHECK:Lcom/tencent/kgvmp/report/a;

    invoke-static {v0, p0}, Lcom/tencent/kgvmp/report/b;->a(Lcom/tencent/kgvmp/report/a;Ljava/util/Map;)V

    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/report/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Ljava/util/HashMap;)V
    .locals 2

    const-string v0, "report_time"

    sget-object v1, Lcom/tencent/kgvmp/f/c;->PATTERN2:Lcom/tencent/kgvmp/f/c;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/f/c;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/kgvmp/f/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "vmp_number"

    invoke-static {}, Lcom/tencent/kgvmp/report/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "open_id"

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mobile_type"

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/report/a;->VMP_DOWNLOAD_CONFIG:Lcom/tencent/kgvmp/report/a;

    invoke-static {v0, p0}, Lcom/tencent/kgvmp/report/b;->a(Lcom/tencent/kgvmp/report/a;Ljava/util/Map;)V

    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/tencent/kgvmp/report/j;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/util/HashMap;)V
    .locals 2

    const-string v0, "report_time"

    sget-object v1, Lcom/tencent/kgvmp/f/c;->PATTERN2:Lcom/tencent/kgvmp/f/c;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/f/c;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/kgvmp/f/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "vmp_number"

    invoke-static {}, Lcom/tencent/kgvmp/report/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "open_id"

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mobile_type"

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/report/a;->VMP_REGCALL:Lcom/tencent/kgvmp/report/a;

    invoke-static {v0, p0}, Lcom/tencent/kgvmp/report/b;->a(Lcom/tencent/kgvmp/report/a;Ljava/util/Map;)V

    return-void
.end method

.method public static e()Ljava/lang/String;
    .locals 12

    invoke-static {}, Lcom/tencent/kgvmp/f/d;->c()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/report/j;->b:Ljava/lang/String;

    const-string v1, "getCPURate: sdk > 25, can not get cpu rate."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/kgvmp/f/d;->d()J

    move-result-wide v0

    invoke-static {}, Lcom/tencent/kgvmp/f/d;->e()J

    move-result-wide v2

    sget-object v8, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v9, "%.2f"

    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-wide v4, Lcom/tencent/kgvmp/report/j;->e:J

    sget-wide v6, Lcom/tencent/kgvmp/report/j;->f:J

    invoke-static/range {v0 .. v7}, Lcom/tencent/kgvmp/f/d;->a(JJJJ)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sput-wide v2, Lcom/tencent/kgvmp/report/j;->f:J

    sput-wide v0, Lcom/tencent/kgvmp/report/j;->e:J

    move-object v0, v4

    goto :goto_0
.end method

.method public static e(Ljava/util/HashMap;)V
    .locals 2

    const-string v0, "report_time"

    sget-object v1, Lcom/tencent/kgvmp/f/c;->PATTERN2:Lcom/tencent/kgvmp/f/c;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/f/c;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/kgvmp/f/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "vmp_number"

    invoke-static {}, Lcom/tencent/kgvmp/report/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "open_id"

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mobile_type"

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->CALLBACK_OPEN:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->s()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->SDK_TYPE:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/kgvmp/e/f;->a:Lcom/tencent/kgvmp/d/j;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/d/j;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_JP:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->G()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_CJ:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->H()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_DH:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->I()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_XH:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->J()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_TP:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->K()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_WL:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->L()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_CS:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->M()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_GS:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->N()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/report/a;->VMP_CALLBACK:Lcom/tencent/kgvmp/report/a;

    invoke-static {v0, p0}, Lcom/tencent/kgvmp/report/b;->b(Lcom/tencent/kgvmp/report/a;Ljava/util/Map;)V

    return-void
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/tencent/kgvmp/f/d;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Ljava/util/HashMap;)V
    .locals 2

    const-string v0, "report_time"

    sget-object v1, Lcom/tencent/kgvmp/f/c;->PATTERN2:Lcom/tencent/kgvmp/f/c;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/f/c;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/kgvmp/f/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "vmp_number"

    invoke-static {}, Lcom/tencent/kgvmp/report/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "open_id"

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mobile_type"

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/report/a;->VMP_STRATEGY_INFO:Lcom/tencent/kgvmp/report/a;

    invoke-static {v0, p0}, Lcom/tencent/kgvmp/report/b;->b(Lcom/tencent/kgvmp/report/a;Ljava/util/Map;)V

    return-void
.end method

.method public static g(Ljava/util/HashMap;)V
    .locals 5

    sget-object v0, Lcom/tencent/kgvmp/a/e;->VMP_NUMBER:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->TIME_REPORT:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/kgvmp/f/c;->PATTERN2:Lcom/tencent/kgvmp/f/c;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/f/c;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/kgvmp/f/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->OPEN_ID:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->MOBILE_TYPE:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->SDK_TYPE:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/kgvmp/e/f;->a:Lcom/tencent/kgvmp/d/j;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/d/j;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->SDK_SUPPORT:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->F()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_JP:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->G()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_CJ:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->H()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_DH:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->I()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_XH:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->J()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_TP:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->K()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_WL:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->L()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_CS:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->M()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_GS:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->N()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->SDK_SCENEID_SUPPORT:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/kgvmp/report/e;->u(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v3, Lcom/tencent/kgvmp/report/j;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VmpReport:reportHardwareResourceApply: key: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " ,value: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/tencent/kgvmp/report/a;->VMP_HARDWAREAPPLY:Lcom/tencent/kgvmp/report/a;

    invoke-static {v0, p0}, Lcom/tencent/kgvmp/report/b;->b(Lcom/tencent/kgvmp/report/a;Ljava/util/Map;)V

    return-void
.end method

.method public static h(Ljava/util/HashMap;)V
    .locals 6

    sget-object v0, Lcom/tencent/kgvmp/f/c;->PATTERN2:Lcom/tencent/kgvmp/f/c;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/f/c;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/kgvmp/f/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "manufacturer"

    invoke-static {}, Lcom/tencent/kgvmp/f/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "model"

    invoke-static {}, Lcom/tencent/kgvmp/f/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "version_name"

    const-string v2, "1.2.1.118"

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "version_code"

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/tencent/kgvmp/a/e;->OPEN_ID:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/tencent/kgvmp/a/e;->VMP_NUMBER:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/kgvmp/report/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/tencent/kgvmp/a/e;->TIME_REPORT:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->TIME_INIT:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-wide v2, Lcom/tencent/kgvmp/report/j;->d:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->THREAD_OPEN:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->u()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->SCENE_OPEN:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->t()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->CALLBACK_OPEN:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->s()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->SDK_SUPPORT:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->F()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_JP:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->G()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_CJ:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->H()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_DH:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->I()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_XH:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->J()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_TP:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->K()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_WL:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->L()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_CS:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->M()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->SDK_SUPPROT_GS:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->N()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->SDK_TYPE:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/kgvmp/e/f;->a:Lcom/tencent/kgvmp/d/j;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/d/j;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/e;->MOBILE_TYPE:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/a/e;->APM_KEY:Lcom/tencent/kgvmp/a/e;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/e;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/tencent/kgvmp/a/d;->MAIN_VERCODE:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/d;->getKeyStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/a/d;->SUB_VERCODE:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/d;->getKeyStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v3, Lcom/tencent/kgvmp/report/j;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VmpReport:reportSocketInfo: key: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " ,value: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/kgvmp/report/a;->VMP_SOCKETINFO:Lcom/tencent/kgvmp/report/a;

    invoke-static {v0, p0}, Lcom/tencent/kgvmp/report/b;->b(Lcom/tencent/kgvmp/report/a;Ljava/util/Map;)V

    return-void
.end method

.method public static i(Ljava/util/HashMap;)V
    .locals 2

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->v()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/report/j;->b:Ljava/lang/String;

    const-string v1, "VmpReport:reportHandlerException: report is not open."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "report_time"

    sget-object v1, Lcom/tencent/kgvmp/f/c;->PATTERN2:Lcom/tencent/kgvmp/f/c;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/f/c;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/kgvmp/f/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "vmp_number"

    invoke-static {}, Lcom/tencent/kgvmp/report/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "open_id"

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mobile_type"

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/kgvmp/report/a;->VMP_HANDLE_EXCEPTION:Lcom/tencent/kgvmp/report/a;

    invoke-static {v0, p0}, Lcom/tencent/kgvmp/report/b;->b(Lcom/tencent/kgvmp/report/a;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static j(Ljava/util/HashMap;)V
    .locals 5

    const-string v0, "report_time"

    sget-object v1, Lcom/tencent/kgvmp/f/c;->PATTERN2:Lcom/tencent/kgvmp/f/c;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/f/c;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/kgvmp/f/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "version_code"

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "version_name"

    const-string v1, "1.2.1.118"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "vmp_number"

    invoke-static {}, Lcom/tencent/kgvmp/report/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "open_id"

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "manufacturer"

    invoke-static {}, Lcom/tencent/kgvmp/f/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "model"

    invoke-static {}, Lcom/tencent/kgvmp/f/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v3, Lcom/tencent/kgvmp/report/j;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VmpReport:reportGameUserInfo: key: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " , value: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/tencent/kgvmp/report/a;->VMP_REPORT_UNIQUE_ID:Lcom/tencent/kgvmp/report/a;

    invoke-static {v0, p0}, Lcom/tencent/kgvmp/report/b;->a(Lcom/tencent/kgvmp/report/a;Ljava/util/Map;)V

    return-void
.end method
