.class public Lcom/subao/common/e/u$b;
.super Ljava/lang/Object;
.source "HRDataTrans.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/e/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/net/HttpURLConnection;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final b:Lcom/subao/common/j/a$c;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;Lcom/subao/common/j/a$c;)V
    .locals 0
    .param p1    # Ljava/net/HttpURLConnection;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/subao/common/j/a$c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Lcom/subao/common/e/u$b;->a:Ljava/net/HttpURLConnection;

    .line 204
    iput-object p2, p0, Lcom/subao/common/e/u$b;->b:Lcom/subao/common/j/a$c;

    .line 205
    return-void
.end method
