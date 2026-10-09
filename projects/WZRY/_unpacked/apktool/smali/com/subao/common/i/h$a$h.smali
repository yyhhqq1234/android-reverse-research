.class Lcom/subao/common/i/h$a$h;
.super Lcom/subao/common/i/h$a$e;
.source "MessageSenderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/i/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field final synthetic e:Lcom/subao/common/i/h$a;

.field private f:Lcom/subao/common/i/n;


# direct methods
.method constructor <init>(Lcom/subao/common/i/h$a;Lcom/subao/common/i/n;)V
    .locals 0

    .prologue
    .line 917
    iput-object p1, p0, Lcom/subao/common/i/h$a$h;->e:Lcom/subao/common/i/h$a;

    invoke-direct {p0, p1}, Lcom/subao/common/i/h$a$e;-><init>(Lcom/subao/common/i/h$a;)V

    .line 918
    iput-object p2, p0, Lcom/subao/common/i/h$a$h;->f:Lcom/subao/common/i/n;

    .line 919
    return-void
.end method


# virtual methods
.method protected c()[B
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 923
    iget-object v0, p0, Lcom/subao/common/i/h$a$h;->f:Lcom/subao/common/i/n;

    if-eqz v0, :cond_1

    .line 924
    iget-object v0, p0, Lcom/subao/common/i/h$a$h;->f:Lcom/subao/common/i/n;

    invoke-static {v0}, Lcom/subao/common/i/h;->a(Lcom/subao/common/c;)[B

    move-result-object v0

    .line 925
    iput-object v1, p0, Lcom/subao/common/i/h$a$h;->f:Lcom/subao/common/i/n;

    .line 926
    const-string v1, "SubaoMessage"

    invoke-static {v1}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 927
    const-string v1, "SubaoMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MessageEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
