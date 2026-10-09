.class Lcom/subao/common/a/c$v;
.super Ljava/lang/Object;
.source "EngineWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "v"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/a/c$v$a;
    }
.end annotation


# direct methods
.method static a(Landroid/content/Context;Lcom/subao/common/m/a;ILcom/subao/common/g/c;I)V
    .locals 1

    .prologue
    .line 2105
    new-instance v0, Lcom/subao/common/a/c$v$a;

    invoke-direct {v0, p2, p3, p4}, Lcom/subao/common/a/c$v$a;-><init>(ILcom/subao/common/g/c;I)V

    .line 2106
    invoke-virtual {v0, p0, p1}, Lcom/subao/common/a/c$v$a;->a(Landroid/content/Context;Lcom/subao/common/m/a;)V

    .line 2107
    return-void
.end method
