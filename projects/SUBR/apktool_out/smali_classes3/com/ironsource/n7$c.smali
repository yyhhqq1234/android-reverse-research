.class Lcom/ironsource/n7$c;
.super Lcom/ironsource/cq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/n7;->onInitFailed(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ironsource/n7;


# direct methods
.method constructor <init>(Lcom/ironsource/n7;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/n7$c;->c:Lcom/ironsource/n7;

    iput p2, p0, Lcom/ironsource/n7$c;->a:I

    iput-object p3, p0, Lcom/ironsource/n7$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ironsource/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/ironsource/n7$c;->c:Lcom/ironsource/n7;

    iget v1, p0, Lcom/ironsource/n7$c;->a:I

    iget-object v2, p0, Lcom/ironsource/n7$c;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ironsource/n7;->a(Lcom/ironsource/n7;ILjava/lang/String;)V

    return-void
.end method
