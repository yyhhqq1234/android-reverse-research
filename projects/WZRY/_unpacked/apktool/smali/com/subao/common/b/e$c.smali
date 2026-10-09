.class Lcom/subao/common/b/e$c;
.super Ljava/lang/Object;
.source "AuthService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/subao/common/j/n;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/subao/common/j/n;)V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p5, p0, Lcom/subao/common/b/e$c;->d:Lcom/subao/common/j/n;

    .line 230
    iput-object p1, p0, Lcom/subao/common/b/e$c;->a:Ljava/lang/String;

    .line 231
    iput-object p2, p0, Lcom/subao/common/b/e$c;->b:Ljava/lang/String;

    .line 232
    iput-object p3, p0, Lcom/subao/common/b/e$c;->c:Ljava/lang/String;

    .line 233
    iput-object p4, p0, Lcom/subao/common/b/e$c;->e:Ljava/lang/String;

    .line 234
    return-void
.end method
