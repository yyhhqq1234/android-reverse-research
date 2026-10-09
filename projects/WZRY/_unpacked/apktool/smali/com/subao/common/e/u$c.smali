.class Lcom/subao/common/e/u$c;
.super Ljava/lang/Object;
.source "HRDataTrans.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/e/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/subao/common/e/u;


# direct methods
.method private constructor <init>(Lcom/subao/common/e/u;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/subao/common/e/u$c;->a:Lcom/subao/common/e/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/subao/common/e/u;Lcom/subao/common/e/u$1;)V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/subao/common/e/u$c;-><init>(Lcom/subao/common/e/u;)V

    return-void
.end method

.method private a()Lcom/subao/common/e/u$b;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/subao/common/e/u$c;->a:Lcom/subao/common/e/u;

    invoke-static {v0}, Lcom/subao/common/e/u;->a(Lcom/subao/common/e/u;)Ljava/net/URL;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 219
    iget-object v0, p0, Lcom/subao/common/e/u$c;->a:Lcom/subao/common/e/u;

    invoke-virtual {v0}, Lcom/subao/common/e/u;->a()I

    move-result v1

    const/16 v0, 0x2710

    .line 222
    :goto_0
    iget-object v2, p0, Lcom/subao/common/e/u$c;->a:Lcom/subao/common/e/u;

    invoke-static {v2, v3}, Lcom/subao/common/e/u;->a(Lcom/subao/common/e/u;Ljava/net/URL;)Lcom/subao/common/e/u$b;

    move-result-object v2

    .line 223
    if-gtz v1, :cond_0

    move-object v0, v2

    .line 229
    :goto_1
    return-object v0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 217
    const/4 v0, 0x0

    goto :goto_1

    .line 226
    :cond_0
    iget-object v4, v2, Lcom/subao/common/e/u$b;->b:Lcom/subao/common/j/a$c;

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/subao/common/e/u$b;->b:Lcom/subao/common/j/a$c;

    iget v4, v4, Lcom/subao/common/j/a$c;->a:I

    const/16 v5, 0x1f4

    if-ne v4, v5, :cond_2

    .line 227
    :cond_1
    int-to-long v4, v0

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 220
    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 229
    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/subao/common/e/u$c;->a()Lcom/subao/common/e/u$b;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/subao/common/e/u$c;->a:Lcom/subao/common/e/u;

    invoke-virtual {v1, v0}, Lcom/subao/common/e/u;->a(Lcom/subao/common/e/u$b;)V

    .line 238
    return-void
.end method
