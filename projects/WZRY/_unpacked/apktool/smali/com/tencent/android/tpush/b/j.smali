.class Lcom/tencent/android/tpush/b/j;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/tencent/android/tpush/b/i;


# direct methods
.method constructor <init>(Lcom/tencent/android/tpush/b/i;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/tencent/android/tpush/b/j;->b:Lcom/tencent/android/tpush/b/i;

    iput-object p2, p0, Lcom/tencent/android/tpush/b/j;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 254
    iget-object v0, p0, Lcom/tencent/android/tpush/b/j;->a:Landroid/content/Intent;

    const-string v1, "date"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-static {v0}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    if-nez v2, :cond_2

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/tencent/android/tpush/b/j;->a:Landroid/content/Intent;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/e/h;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/tencent/android/tpush/b/j;->b:Lcom/tencent/android/tpush/b/i;

    iget-object v1, p0, Lcom/tencent/android/tpush/b/j;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/b/i;->a(Landroid/content/Intent;)V

    .line 272
    :cond_1
    :goto_0
    return-void

    .line 265
    :cond_2
    invoke-static {v0}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-gez v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/tencent/android/tpush/b/j;->b:Lcom/tencent/android/tpush/b/i;

    iget-object v1, p0, Lcom/tencent/android/tpush/b/j;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/b/i;->a(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    invoke-static {}, Lcom/tencent/android/tpush/b/i;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "try to handlerPushMessage, but ParseException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/a/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
