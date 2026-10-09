.class public abstract Lcom/subao/common/j/o;
.super Ljava/lang/Object;
.source "SignalWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/j/o$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/subao/common/j/o$a;


# direct methods
.method protected constructor <init>(Lcom/subao/common/j/o$a;)V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    if-nez p1, :cond_0

    .line 15
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Callback can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_0
    iput-object p1, p0, Lcom/subao/common/j/o;->a:Lcom/subao/common/j/o$a;

    .line 18
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method protected final a(I)V
    .locals 1

    .prologue
    const/16 v0, 0x64

    .line 21
    if-gez p1, :cond_1

    .line 22
    const/4 p1, 0x0

    .line 26
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/subao/common/j/o;->a:Lcom/subao/common/j/o$a;

    invoke-interface {v0, p1}, Lcom/subao/common/j/o$a;->a(I)V

    .line 27
    return-void

    .line 23
    :cond_1
    if-le p1, v0, :cond_0

    move p1, v0

    .line 24
    goto :goto_0
.end method

.method public abstract a(Landroid/content/Context;)V
.end method
