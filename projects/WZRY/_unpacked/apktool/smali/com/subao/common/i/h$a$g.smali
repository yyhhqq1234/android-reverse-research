.class Lcom/subao/common/i/h$a$g;
.super Lcom/subao/common/i/h$a$e;
.source "MessageSenderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/i/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field final synthetic e:Lcom/subao/common/i/h$a;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private h:Z


# direct methods
.method constructor <init>(Lcom/subao/common/i/h$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 945
    iput-object p1, p0, Lcom/subao/common/i/h$a$g;->e:Lcom/subao/common/i/h$a;

    invoke-direct {p0, p1}, Lcom/subao/common/i/h$a$e;-><init>(Lcom/subao/common/i/h$a;)V

    .line 946
    iput-object p2, p0, Lcom/subao/common/i/h$a$g;->f:Ljava/lang/String;

    .line 947
    iput-object p3, p0, Lcom/subao/common/i/h$a$g;->g:Ljava/lang/String;

    .line 948
    return-void
.end method


# virtual methods
.method protected c()[B
    .locals 4

    .prologue
    .line 960
    iget-boolean v0, p0, Lcom/subao/common/i/h$a$g;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/subao/common/i/h$a$g;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/subao/common/i/h$a$g;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 961
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/subao/common/i/h$a$g;->h:Z

    .line 962
    iget-object v0, p0, Lcom/subao/common/i/h$a$g;->e:Lcom/subao/common/i/h$a;

    iget-object v0, v0, Lcom/subao/common/i/h$a;->a:Lcom/subao/common/i/i;

    invoke-interface {v0}, Lcom/subao/common/i/i;->e()Lcom/subao/common/i/a;

    move-result-object v0

    .line 963
    invoke-static {}, Lcom/subao/common/i/k;->a()Lcom/subao/common/i/k;

    move-result-object v1

    iget-object v2, p0, Lcom/subao/common/i/h$a$g;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/subao/common/i/h$a$g;->g:Ljava/lang/String;

    .line 962
    invoke-virtual {v0, v1, v2, v3}, Lcom/subao/common/i/a;->a(Lcom/subao/common/i/k;Ljava/lang/String;Ljava/lang/String;)Lcom/subao/common/i/n;

    move-result-object v0

    .line 965
    invoke-static {v0}, Lcom/subao/common/i/h;->a(Lcom/subao/common/c;)[B

    move-result-object v0

    .line 966
    const-string v1, "SubaoMessage"

    invoke-static {v1}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 967
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

    .line 971
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
