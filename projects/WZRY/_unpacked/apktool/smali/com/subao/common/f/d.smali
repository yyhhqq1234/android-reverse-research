.class public Lcom/subao/common/f/d;
.super Ljava/lang/Object;
.source "PersistentFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/f/d$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/io/File;)Lcom/subao/common/f/c;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/subao/common/f/d$a;

    invoke-direct {v0, p0}, Lcom/subao/common/f/d$a;-><init>(Ljava/io/File;)V

    return-object v0
.end method
