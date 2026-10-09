.class public Lcom/subao/common/e/o$b;
.super Ljava/lang/Object;
.source "CustomerScriptDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/e/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/subao/common/e/o$b;->a:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/subao/common/e/o$b;->b:Ljava/lang/String;

    .line 73
    return-void
.end method
