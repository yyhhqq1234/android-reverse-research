.class Lcom/tencent/tp/w;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZZ)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/tencent/tp/w;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/tencent/tp/w;->b:Z

    iput-boolean p3, p0, Lcom/tencent/tp/w;->c:Z

    iput-boolean p4, p0, Lcom/tencent/tp/w;->d:Z

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    :try_start_0
    new-instance v0, Lcom/tencent/tp/u;

    iget-boolean v1, p0, Lcom/tencent/tp/w;->b:Z

    iget-boolean v2, p0, Lcom/tencent/tp/w;->c:Z

    iget-boolean v3, p0, Lcom/tencent/tp/w;->d:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tp/u;-><init>(ZZZ)V

    iget-object v1, p0, Lcom/tencent/tp/w;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tp/u;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tencent/tp/w;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
