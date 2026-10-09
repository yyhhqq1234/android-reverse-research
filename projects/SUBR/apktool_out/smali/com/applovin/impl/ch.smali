.class public Lcom/applovin/impl/ch;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V
    .locals 0

    .line 105
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    iput-boolean p3, p0, Lcom/applovin/impl/ch;->a:Z

    .line 107
    iput p4, p0, Lcom/applovin/impl/ch;->b:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/applovin/impl/ch;
    .locals 4

    .line 2
    new-instance v0, Lcom/applovin/impl/ch;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/applovin/impl/ch;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/impl/ch;
    .locals 2

    .line 1
    new-instance v0, Lcom/applovin/impl/ch;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/applovin/impl/ch;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/impl/ch;
    .locals 3

    .line 1
    new-instance v0, Lcom/applovin/impl/ch;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/applovin/impl/ch;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    return-object v0
.end method
