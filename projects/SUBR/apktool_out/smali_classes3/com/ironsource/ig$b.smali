.class public Lcom/ironsource/ig$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/ig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Landroid/content/Context;

.field e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)Lcom/ironsource/ig$b;
    .locals 0

    iput-object p1, p0, Lcom/ironsource/ig$b;->d:Landroid/content/Context;

    return-object p0
.end method

.method a(Ljava/lang/String;)Lcom/ironsource/ig$b;
    .locals 0

    iput-object p1, p0, Lcom/ironsource/ig$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/ironsource/ig;
    .locals 2

    new-instance v0, Lcom/ironsource/ig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ironsource/ig;-><init>(Lcom/ironsource/ig$b;Lcom/ironsource/ig$a;)V

    return-object v0
.end method

.method b(Ljava/lang/String;)Lcom/ironsource/ig$b;
    .locals 0

    iput-object p1, p0, Lcom/ironsource/ig$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method c(Ljava/lang/String;)Lcom/ironsource/ig$b;
    .locals 0

    iput-object p1, p0, Lcom/ironsource/ig$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method d(Ljava/lang/String;)Lcom/ironsource/ig$b;
    .locals 0

    iput-object p1, p0, Lcom/ironsource/ig$b;->e:Ljava/lang/String;

    return-object p0
.end method
