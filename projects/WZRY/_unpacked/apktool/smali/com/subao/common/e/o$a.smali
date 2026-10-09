.class public Lcom/subao/common/e/o$a;
.super Ljava/lang/Object;
.source "CustomerScriptDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/e/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/subao/common/j/a$c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/subao/common/j/a$c;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/subao/common/e/o$a;->a:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/subao/common/e/o$a;->b:Lcom/subao/common/j/a$c;

    .line 84
    return-void
.end method
