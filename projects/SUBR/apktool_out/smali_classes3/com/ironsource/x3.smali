.class public Lcom/ironsource/x3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/ironsource/l4;

.field private b:Lcom/ironsource/hr;

.field private c:Lcom/ironsource/xt;

.field private d:Z

.field private e:Lcom/ironsource/b4;

.field private f:Lcom/ironsource/h4;

.field private g:Lcom/ironsource/g4;

.field private h:Lcom/ironsource/fo;

.field private i:Lcom/ironsource/v3;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ironsource/l4;

    invoke-direct {v0}, Lcom/ironsource/l4;-><init>()V

    iput-object v0, p0, Lcom/ironsource/x3;->a:Lcom/ironsource/l4;

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/l4;Lcom/ironsource/hr;Lcom/ironsource/xt;ZLcom/ironsource/b4;Lcom/ironsource/h4;Lcom/ironsource/g4;Lcom/ironsource/fo;Lcom/ironsource/v3;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/x3;->a:Lcom/ironsource/l4;

    iput-object p2, p0, Lcom/ironsource/x3;->b:Lcom/ironsource/hr;

    iput-object p3, p0, Lcom/ironsource/x3;->c:Lcom/ironsource/xt;

    iput-boolean p4, p0, Lcom/ironsource/x3;->d:Z

    iput-object p5, p0, Lcom/ironsource/x3;->e:Lcom/ironsource/b4;

    iput-object p6, p0, Lcom/ironsource/x3;->f:Lcom/ironsource/h4;

    iput-object p7, p0, Lcom/ironsource/x3;->g:Lcom/ironsource/g4;

    iput-object p8, p0, Lcom/ironsource/x3;->h:Lcom/ironsource/fo;

    iput-object p9, p0, Lcom/ironsource/x3;->i:Lcom/ironsource/v3;

    iput-object p10, p0, Lcom/ironsource/x3;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/x3;->j:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/ironsource/v3;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/x3;->i:Lcom/ironsource/v3;

    return-object v0
.end method

.method public c()Lcom/ironsource/b4;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/x3;->e:Lcom/ironsource/b4;

    return-object v0
.end method

.method public d()Lcom/ironsource/g4;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/x3;->g:Lcom/ironsource/g4;

    return-object v0
.end method

.method public e()Lcom/ironsource/h4;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/x3;->f:Lcom/ironsource/h4;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ironsource/x3;->d:Z

    return v0
.end method

.method public g()Lcom/ironsource/l4;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/x3;->a:Lcom/ironsource/l4;

    return-object v0
.end method

.method public h()Lcom/ironsource/fo;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/x3;->h:Lcom/ironsource/fo;

    return-object v0
.end method

.method public i()Lcom/ironsource/hr;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/x3;->b:Lcom/ironsource/hr;

    return-object v0
.end method

.method public j()Lcom/ironsource/xt;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/x3;->c:Lcom/ironsource/xt;

    return-object v0
.end method
