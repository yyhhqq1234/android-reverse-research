.class final Lc/t/m/g/cf;
.super Ljava/lang/Object;
.source "TL"


# instance fields
.field a:Ljava/lang/String;

.field b:Z

.field c:Lc/t/m/g/cj;


# direct methods
.method public constructor <init>(Lc/t/m/g/cj;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lc/t/m/g/cf;->a:Ljava/lang/String;

    .line 15
    iput-boolean v1, p0, Lc/t/m/g/cf;->b:Z

    .line 19
    iput-object p2, p0, Lc/t/m/g/cf;->a:Ljava/lang/String;

    .line 20
    iput-boolean v1, p0, Lc/t/m/g/cf;->b:Z

    .line 21
    iput-object p1, p0, Lc/t/m/g/cf;->c:Lc/t/m/g/cj;

    .line 22
    return-void
.end method
