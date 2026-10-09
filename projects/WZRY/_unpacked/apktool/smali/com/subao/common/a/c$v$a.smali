.class Lcom/subao/common/a/c$v$a;
.super Ljava/lang/Object;
.source "EngineWrapper.java"

# interfaces
.implements Lcom/subao/common/j/o$a;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/a/c$v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:I

.field private final c:Lcom/subao/common/g/c;

.field private final d:I

.field private e:Lcom/subao/common/j/o;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2109
    const-class v0, Lcom/subao/common/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/subao/common/a/c$v$a;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(ILcom/subao/common/g/c;I)V
    .locals 1

    .prologue
    .line 2122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2120
    const/4 v0, -0x1

    iput v0, p0, Lcom/subao/common/a/c$v$a;->f:I

    .line 2123
    iput p1, p0, Lcom/subao/common/a/c$v$a;->b:I

    .line 2124
    iput-object p2, p0, Lcom/subao/common/a/c$v$a;->c:Lcom/subao/common/g/c;

    .line 2125
    iput p3, p0, Lcom/subao/common/a/c$v$a;->d:I

    .line 2126
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 2137
    iput p1, p0, Lcom/subao/common/a/c$v$a;->f:I

    .line 2138
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/subao/common/m/a;)V
    .locals 2

    .prologue
    .line 2129
    sget-boolean v0, Lcom/subao/common/a/c$v$a;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/subao/common/a/c$v$a;->e:Lcom/subao/common/j/o;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2130
    :cond_0
    new-instance v0, Lcom/subao/common/j/p;

    invoke-direct {v0, p0}, Lcom/subao/common/j/p;-><init>(Lcom/subao/common/j/o$a;)V

    iput-object v0, p0, Lcom/subao/common/a/c$v$a;->e:Lcom/subao/common/j/o;

    .line 2131
    iget-object v0, p0, Lcom/subao/common/a/c$v$a;->e:Lcom/subao/common/j/o;

    invoke-virtual {v0, p1}, Lcom/subao/common/j/o;->a(Landroid/content/Context;)V

    .line 2132
    const-wide/16 v0, 0x3e8

    invoke-interface {p2, p0, v0, v1}, Lcom/subao/common/m/a;->a(Ljava/lang/Runnable;J)Z

    .line 2133
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 2142
    iget-object v0, p0, Lcom/subao/common/a/c$v$a;->e:Lcom/subao/common/j/o;

    invoke-virtual {v0}, Lcom/subao/common/j/o;->a()V

    .line 2144
    iget v0, p0, Lcom/subao/common/a/c$v$a;->f:I

    if-gez v0, :cond_0

    .line 2145
    iget v0, p0, Lcom/subao/common/a/c$v$a;->b:I

    .line 2149
    :goto_0
    iget-object v1, p0, Lcom/subao/common/a/c$v$a;->c:Lcom/subao/common/g/c;

    iget v2, p0, Lcom/subao/common/a/c$v$a;->d:I

    const/4 v3, -0x1

    invoke-static {v1, v2, v0, v3}, Lcom/subao/common/a/c;->a(Lcom/subao/common/g/c;III)V

    .line 2150
    return-void

    .line 2147
    :cond_0
    iget v0, p0, Lcom/subao/common/a/c$v$a;->f:I

    add-int/lit16 v0, v0, 0x834

    goto :goto_0
.end method
