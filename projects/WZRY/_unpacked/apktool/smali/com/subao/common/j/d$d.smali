.class Lcom/subao/common/j/d$d;
.super Ljava/lang/Object;
.source "IPInfoQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/j/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Lcom/subao/common/j/d$e;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/subao/common/j/d$b;


# direct methods
.method constructor <init>(Lcom/subao/common/j/d$e;Ljava/lang/String;Lcom/subao/common/j/d$b;)V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/subao/common/j/d$d;->a:Lcom/subao/common/j/d$e;

    .line 201
    iput-object p2, p0, Lcom/subao/common/j/d$d;->b:Ljava/lang/String;

    .line 202
    iput-object p3, p0, Lcom/subao/common/j/d$d;->c:Lcom/subao/common/j/d$b;

    .line 203
    return-void

    .line 200
    :cond_0
    invoke-static {}, Lcom/subao/common/j/d;->d()Lcom/subao/common/j/d$e;

    move-result-object p1

    goto :goto_0
.end method

.method private a(Lcom/subao/common/j/d$c;)V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/subao/common/j/d$d;->c:Lcom/subao/common/j/d$b;

    invoke-virtual {v0, p1}, Lcom/subao/common/j/d$b;->a(Lcom/subao/common/j/d$c;)V

    .line 224
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 207
    const/4 v1, 0x0

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/subao/common/j/d$d;->a:Lcom/subao/common/j/d$e;

    iget-object v2, p0, Lcom/subao/common/j/d$d;->b:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/subao/common/j/d$e;->a(Ljava/lang/String;)Lcom/subao/common/j/d$c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 213
    :goto_0
    iget-object v1, p0, Lcom/subao/common/j/d$d;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    invoke-static {v0}, Lcom/subao/common/j/d;->a(Lcom/subao/common/j/d$c;)V

    .line 216
    :cond_0
    const-string v1, "SubaoNet"

    invoke-static {v1}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    const-string v1, "SubaoNet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IPInfoQuery Result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/subao/common/n/h;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/subao/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_1
    invoke-direct {p0, v0}, Lcom/subao/common/j/d$d;->a(Lcom/subao/common/j/d$c;)V

    .line 220
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 210
    :catch_1
    move-exception v0

    goto :goto_1
.end method
