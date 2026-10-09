.class Lcom/subao/common/i/h$a$o;
.super Ljava/lang/Object;
.source "MessageSenderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/i/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "o"
.end annotation


# instance fields
.field final synthetic a:Lcom/subao/common/i/h$a;

.field private final b:I


# direct methods
.method constructor <init>(Lcom/subao/common/i/h$a;I)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/subao/common/i/h$a$o;->a:Lcom/subao/common/i/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    iput p2, p0, Lcom/subao/common/i/h$a$o;->b:I

    .line 477
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 482
    invoke-static {}, Lcom/subao/common/i/d$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    iget v0, p0, Lcom/subao/common/i/h$a$o;->b:I

    .line 485
    add-int/lit8 v0, v0, 0x4

    .line 486
    div-int/lit8 v0, v0, 0x5

    .line 487
    mul-int/lit8 v0, v0, 0x5

    .line 488
    new-instance v1, Lcom/subao/common/i/h$a$g;

    iget-object v2, p0, Lcom/subao/common/i/h$a$o;->a:Lcom/subao/common/i/h$a;

    const-string v3, "missed_link"

    .line 489
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/subao/common/i/h$a$g;-><init>(Lcom/subao/common/i/h$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/subao/common/i/h$a$o;->a:Lcom/subao/common/i/h$a;

    invoke-virtual {v0, v1}, Lcom/subao/common/i/h$a;->post(Ljava/lang/Runnable;)Z

    .line 495
    :goto_0
    return-void

    .line 493
    :cond_0
    const-string v0, "SubaoMessage"

    const-string v1, "Missed-Links event report is not allowed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
