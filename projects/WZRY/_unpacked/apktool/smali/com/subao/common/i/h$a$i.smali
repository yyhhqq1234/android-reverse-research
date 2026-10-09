.class Lcom/subao/common/i/h$a$i;
.super Lcom/subao/common/i/h$a$e;
.source "MessageSenderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/i/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "i"
.end annotation


# instance fields
.field final synthetic e:Lcom/subao/common/i/h$a;

.field private final f:[B


# direct methods
.method constructor <init>(Lcom/subao/common/i/h$a;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 983
    iput-object p1, p0, Lcom/subao/common/i/h$a$i;->e:Lcom/subao/common/i/h$a;

    invoke-direct {p0, p1}, Lcom/subao/common/i/h$a$e;-><init>(Lcom/subao/common/i/h$a;)V

    .line 984
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/subao/common/i/h$a$i;->f:[B

    .line 985
    const-string v0, "SubaoMessage"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 986
    const-string v0, "SubaoMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessageEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :cond_0
    return-void

    .line 984
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected c()[B
    .locals 1

    .prologue
    .line 992
    iget-object v0, p0, Lcom/subao/common/i/h$a$i;->f:[B

    return-object v0
.end method
