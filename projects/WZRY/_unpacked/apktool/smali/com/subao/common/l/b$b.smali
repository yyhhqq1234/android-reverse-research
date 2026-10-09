.class Lcom/subao/common/l/b$b;
.super Ljava/lang/Object;
.source "QosHelper.java"

# interfaces
.implements Lcom/subao/common/l/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/l/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/subao/common/l/b$a;


# direct methods
.method public constructor <init>(Lcom/subao/common/l/b$a;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/subao/common/l/b$b;->a:Lcom/subao/common/l/b$a;

    .line 70
    return-void
.end method


# virtual methods
.method public a(Lcom/subao/common/l/c$a;Lcom/subao/common/l/c$c;)V
    .locals 4

    .prologue
    .line 74
    const-string v0, "SubaoQos"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "SubaoQos"

    const-string v1, "Qos request [%s] result: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/subao/common/l/b$b;->a:Lcom/subao/common/l/b$a;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/subao/common/l/b$b;->a:Lcom/subao/common/l/b$a;

    invoke-interface {v0, p1, p2}, Lcom/subao/common/l/b$a;->a(Lcom/subao/common/l/c$a;Lcom/subao/common/l/c$c;)V

    .line 80
    :cond_1
    return-void
.end method
