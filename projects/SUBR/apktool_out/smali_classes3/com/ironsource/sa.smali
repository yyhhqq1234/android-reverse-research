.class Lcom/ironsource/sa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/ironsource/mg;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:I

.field private final e:Ljava/lang/String;

.field private final f:Z


# direct methods
.method public constructor <init>(Lcom/ironsource/mg;Ljava/lang/String;IIZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/sa;->a:Lcom/ironsource/mg;

    iput-object p2, p0, Lcom/ironsource/sa;->b:Ljava/lang/String;

    iput p3, p0, Lcom/ironsource/sa;->c:I

    iput p4, p0, Lcom/ironsource/sa;->d:I

    iput-object p6, p0, Lcom/ironsource/sa;->e:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/ironsource/sa;->f:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/ironsource/sa;->c:I

    return v0
.end method

.method public b()Lcom/ironsource/mg;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/sa;->a:Lcom/ironsource/mg;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/ironsource/sa;->d:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/sa;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/sa;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ironsource/sa;->f:Z

    return v0
.end method
