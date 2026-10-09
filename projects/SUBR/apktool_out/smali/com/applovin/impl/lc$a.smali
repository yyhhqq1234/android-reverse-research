.class public final Lcom/applovin/impl/lc$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/lc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/applovin/impl/mc;

.field public final b:Lcom/applovin/impl/td;

.field public final c:Ljava/io/IOException;

.field public final d:I


# direct methods
.method public constructor <init>(Lcom/applovin/impl/mc;Lcom/applovin/impl/td;Ljava/io/IOException;I)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/applovin/impl/lc$a;->a:Lcom/applovin/impl/mc;

    .line 89
    iput-object p2, p0, Lcom/applovin/impl/lc$a;->b:Lcom/applovin/impl/td;

    .line 90
    iput-object p3, p0, Lcom/applovin/impl/lc$a;->c:Ljava/io/IOException;

    .line 91
    iput p4, p0, Lcom/applovin/impl/lc$a;->d:I

    return-void
.end method
