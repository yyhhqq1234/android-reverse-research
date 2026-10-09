.class Lcom/tencent/kgvmp/e/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/kgvmp/e/f;


# direct methods
.method constructor <init>(Lcom/tencent/kgvmp/e/f;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/kgvmp/e/g;->a:Lcom/tencent/kgvmp/e/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/tencent/kgvmp/d/h;->a()Lcom/tencent/kgvmp/d/h;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/kgvmp/e/f;->a(Lcom/tencent/kgvmp/d/h;)Lcom/tencent/kgvmp/d/h;

    invoke-static {}, Lcom/tencent/kgvmp/d/f;->a()Lcom/tencent/kgvmp/d/f;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/kgvmp/e/f;->a(Lcom/tencent/kgvmp/d/f;)Lcom/tencent/kgvmp/d/f;

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    invoke-static {}, Lcom/tencent/kgvmp/e/f;->c()Lcom/tencent/kgvmp/d/h;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/kgvmp/e/g;->a:Lcom/tencent/kgvmp/e/f;

    invoke-static {v2}, Lcom/tencent/kgvmp/e/f;->b(Lcom/tencent/kgvmp/e/f;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/kgvmp/d/h;->a(Landroid/content/Context;)Lcom/tencent/kgvmp/report/f;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/d/j;->SAMSUNG2:Lcom/tencent/kgvmp/d/j;

    sput-object v0, Lcom/tencent/kgvmp/e/f;->a:Lcom/tencent/kgvmp/d/j;

    invoke-static {}, Lcom/tencent/kgvmp/e/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "samsung2 sdk is available. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    invoke-static {}, Lcom/tencent/kgvmp/e/f;->d()Lcom/tencent/kgvmp/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/kgvmp/d/f;->b()Lcom/tencent/kgvmp/report/f;

    move-result-object v1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/tencent/kgvmp/d/j;->SAMSUNG:Lcom/tencent/kgvmp/d/j;

    sput-object v0, Lcom/tencent/kgvmp/e/f;->a:Lcom/tencent/kgvmp/d/j;

    invoke-static {}, Lcom/tencent/kgvmp/e/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "samsung sdk is available."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/tencent/kgvmp/e/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "samsung2 check available exception. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/tencent/kgvmp/e/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "no samsung sdk is available."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
