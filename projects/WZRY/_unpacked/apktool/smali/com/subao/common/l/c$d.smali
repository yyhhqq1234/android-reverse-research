.class public Lcom/subao/common/l/c$d;
.super Ljava/lang/Object;
.source "QosManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/l/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field final c:Ljava/lang/String;

.field final d:I

.field public final e:Lcom/subao/common/j/l;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ILcom/subao/common/j/l;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/subao/common/l/c$d;->a:Ljava/lang/String;

    .line 106
    iput p2, p0, Lcom/subao/common/l/c$d;->b:I

    .line 107
    iput-object p3, p0, Lcom/subao/common/l/c$d;->c:Ljava/lang/String;

    .line 108
    iput p4, p0, Lcom/subao/common/l/c$d;->d:I

    .line 109
    iput-object p5, p0, Lcom/subao/common/l/c$d;->e:Lcom/subao/common/j/l;

    .line 110
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 114
    sget-object v0, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v1, "[%s:%d-%s:%d(%s)]"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/subao/common/l/c$d;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/subao/common/l/c$d;->b:I

    .line 115
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/subao/common/l/c$d;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/subao/common/l/c$d;->d:I

    .line 116
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/subao/common/l/c$d;->e:Lcom/subao/common/j/l;

    iget-object v4, v4, Lcom/subao/common/j/l;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 114
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
