.class public Lcom/subao/common/l/c$c;
.super Ljava/lang/Object;
.source "QosManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/l/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Lcom/subao/common/i/n$a;


# direct methods
.method constructor <init>(IILjava/lang/String;Ljava/lang/String;ILcom/subao/common/i/n$a;)V
    .locals 0

    .prologue
    .line 1033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1034
    iput p1, p0, Lcom/subao/common/l/c$c;->a:I

    .line 1035
    iput p2, p0, Lcom/subao/common/l/c$c;->b:I

    .line 1036
    iput-object p3, p0, Lcom/subao/common/l/c$c;->c:Ljava/lang/String;

    .line 1037
    iput-object p4, p0, Lcom/subao/common/l/c$c;->d:Ljava/lang/String;

    .line 1038
    iput p5, p0, Lcom/subao/common/l/c$c;->e:I

    .line 1039
    iput-object p6, p0, Lcom/subao/common/l/c$c;->f:Lcom/subao/common/i/n$a;

    .line 1040
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1044
    sget-object v0, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v1, "[cid=%d, Error=%d, SessionId=%s, SpeedId=%s, TimeLength=%d]"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/subao/common/l/c$c;->a:I

    .line 1045
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/subao/common/l/c$c;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/subao/common/l/c$c;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/subao/common/l/c$c;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/subao/common/l/c$c;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1044
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
