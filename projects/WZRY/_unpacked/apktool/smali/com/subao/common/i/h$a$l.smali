.class Lcom/subao/common/i/h$a$l;
.super Lcom/subao/common/i/h$a$m;
.source "MessageSenderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/i/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "l"
.end annotation


# instance fields
.field final synthetic d:Lcom/subao/common/i/h$a;

.field private final e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/subao/common/i/h$a;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 751
    iput-object p1, p0, Lcom/subao/common/i/h$a$l;->d:Lcom/subao/common/i/h$a;

    .line 752
    const-string v0, "Qos"

    invoke-direct {p0, p1, v0}, Lcom/subao/common/i/h$a$m;-><init>(Lcom/subao/common/i/h$a;Ljava/lang/String;)V

    .line 753
    iput-object p2, p0, Lcom/subao/common/i/h$a$l;->e:Ljava/lang/String;

    .line 754
    const-string v0, "SubaoMessage"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    const-string v0, "SubaoMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Perform Qos Message:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/subao/common/i/h$a$l;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :cond_0
    return-void
.end method


# virtual methods
.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 761
    const-string v0, "/v3/report/client/qos"

    return-object v0
.end method

.method protected c()[B
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/subao/common/i/h$a$l;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method
